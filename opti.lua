if _G.Cam == nil then _G.Cam = false end
if _G.Transparent == nil then _G.Transparent = true end
if _G.Gui == nil then _G.Gui = true end
if _G.Render3D == nil then _G.Render3D = true end
if _G.FPSCap == nil then _G.FPSCap = 0 end

if _G.RenderFidelityFlatten == nil then _G.RenderFidelityFlatten = false end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local MaterialService = game:GetService("MaterialService")
local player = Players.LocalPlayer

local isBSS = (game.PlaceId == 1537690962)
local collectibles = isBSS and workspace:FindFirstChild("Collectibles")
local flowerZones = isBSS and workspace:FindFirstChild("FlowerZones")

local FRAME_BUDGET = _G.FPSBudget or 0.004
local TURBO_BUDGET = 0.016
local TURBO_SECONDS = 20
local CHECK_EVERY = 10
local scriptStart = os.clock()

local env = (getgenv and getgenv()) or _G
if env.HakkaOptimizer and env.HakkaOptimizer.Destroy then
	pcall(env.HakkaOptimizer.Destroy)
end
local connections = {}

local DESTROY_CLASSES = {
	Decal = true, Texture = true, Clothing = true, SurfaceAppearance = true,
	PostEffect = true, Light = true, Sound = true, BloomEffect = true,
	BlurEffect = true, ColorCorrectionEffect = true, DepthOfFieldEffect = true,
	SunRaysEffect = true, Atmosphere = true, Sky = true, Clouds = true,
}
local DISABLE_CLASSES = {
	ParticleEmitter = true, Trail = true, Smoke = true, Fire = true,
	Sparkles = true, Beam = true, Highlight = true,
}

local PLASTIC = Enum.Material.Plastic
local GRAY = Color3.fromRGB(163, 162, 165)
local PERFORMANCE = Enum.RenderFidelity.Performance

local function disableEffect(inst)
	if inst.Enabled then inst.Enabled = false end
end

local function flattenPart(part)
	if part.Material ~= PLASTIC then part.Material = PLASTIC end
	if part.Reflectance ~= 0 then part.Reflectance = 0 end
	if part.CastShadow then part.CastShadow = false end
	if part.Color ~= GRAY then part.Color = GRAY end
	if part:IsA("MeshPart") then
		if part.TextureID ~= "" then part.TextureID = "" end
		-- Only touch RenderFidelity when explicitly enabled; writing it on a
		-- solid-model MeshPart logs a warning on every streamed instance.
		if _G.RenderFidelityFlatten and part.RenderFidelity ~= PERFORMANCE then
			part.RenderFidelity = PERFORMANCE
		end
	end
	if _G.Transparent and part.Transparency ~= 1 then part.Transparency = 1 end
end

local function clearMeshTexture(mesh)
	if mesh.TextureId ~= "" then mesh.TextureId = "" end
end

local function processInstance(inst)
	if not inst.Parent then return end
	local character = player.Character
	if character and inst:IsDescendantOf(character) then return end
	if isBSS then
		if collectibles and inst:IsDescendantOf(collectibles) then return end
		if flowerZones and inst:IsDescendantOf(flowerZones) then return end
	end

	local class = inst.ClassName
	if DESTROY_CLASSES[class] or inst:IsA("PostEffect") or inst:IsA("Light") then
		pcall(inst.Destroy, inst)
	elseif DISABLE_CLASSES[class] then
		pcall(disableEffect, inst)
	elseif inst:IsA("BasePart") then
		pcall(flattenPart, inst)
	elseif class == "SpecialMesh" then
		pcall(clearMeshTexture, inst)
	end
end

local queue, head, tail = {}, 1, 0

local function enqueue(inst)
	tail += 1
	queue[tail] = inst
end

connections.worker = RunService.Heartbeat:Connect(function()
	if head > tail then return end
	local startedAt = os.clock()
	local budget = (startedAt - scriptStart < TURBO_SECONDS) and TURBO_BUDGET or FRAME_BUDGET
	local count = 0
	while head <= tail do
		local inst = queue[head]
		queue[head] = nil
		head += 1
		if inst then processInstance(inst) end
		count += 1
		if count % CHECK_EVERY == 0 and os.clock() - startedAt > budget then
			break
		end
	end
	if head > tail then head, tail = 1, 0 end
end)

connections.added = workspace.DescendantAdded:Connect(enqueue)

local sweeping = false
local function sweepAll()
	if sweeping then return end
	sweeping = true
	task.spawn(function()
		local pushed = 0
		for _, root in ipairs({ Lighting, MaterialService, workspace }) do
			for _, inst in ipairs(root:GetDescendants()) do
				enqueue(inst)
				pushed += 1
				if pushed % 2000 == 0 then task.wait() end
			end
		end
		sweeping = false
	end)
end
sweepAll()

pcall(function()
	game:GetService("SoundService").AmbientReverb = Enum.ReverbType.NoReverb
end)
pcall(function()
	local rendering = settings().Rendering
	rendering.QualityLevel = 1
	rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
end)
pcall(function()
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	Lighting.FogStart = 0
	Lighting.Brightness = 0
	Lighting.EnvironmentDiffuseScale = 0
	Lighting.EnvironmentSpecularScale = 0
	Lighting.ExposureCompensation = 0
end)
pcall(function()
	local terrain = workspace:FindFirstChildOfClass("Terrain")
	if terrain then
		terrain.WaterWaveSize = 0
		terrain.WaterWaveSpeed = 0
		terrain.WaterReflectance = 0
		terrain.WaterTransparency = 1
	end
end)

_G.FPSCapToken = (_G.FPSCapToken or 0) + 1
local capToken = _G.FPSCapToken

task.spawn(function()
	while _G.FPSCapToken == capToken do
		local maxFps = _G.FPSCap
		if type(maxFps) == "number" and maxFps > 0 then
			local frameStart = os.clock()
			RunService.RenderStepped:Wait()
			repeat until os.clock() - frameStart >= 1 / maxFps
		else
			RunService.RenderStepped:Wait()
		end
	end
end)

local StarterGui = game:GetService("StarterGui")

local function applyRender3D(enabled)
	_G.Render3D = enabled
	pcall(RunService.Set3dRenderingEnabled, RunService, enabled)
end

local function applyCamera(enabled)
	_G.Cam = enabled
	if connections.camera then
		connections.camera:Disconnect()
		connections.camera = nil
	end
	local camera = workspace.CurrentCamera
	if enabled then
		camera.FieldOfView = 1
		connections.camera = RunService.RenderStepped:Connect(function()
			local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
			if root then
				camera.CameraType = Enum.CameraType.Scriptable
				camera.CFrame = CFrame.new(root.Position, root.Position + Vector3.new(0, 1000, 0))
			end
		end)
	else
		camera.CameraType = Enum.CameraType.Custom
		camera.FieldOfView = 70
	end
end

local function hideGui(obj)
	if obj:IsA("GuiObject") then
		obj.BackgroundTransparency = 1
		obj.BorderSizePixel = 0
		if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
			obj.ImageTransparency = 1
		end
	elseif obj:IsA("UIStroke") or obj:IsA("UIGradient") or obj:IsA("UICorner") then
		pcall(obj.Destroy, obj)
	end
end

local function applyGui(visible)
	_G.Gui = visible
	pcall(StarterGui.SetCoreGuiEnabled, StarterGui, Enum.CoreGuiType.All, visible)
	if visible then
		if connections.gui then
			connections.gui:Disconnect()
			connections.gui = nil
		end
	elseif not connections.gui then
		local playerGui = player:FindFirstChildOfClass("PlayerGui") or player:WaitForChild("PlayerGui", 5)
		if playerGui then
			for _, obj in ipairs(playerGui:GetDescendants()) do
				hideGui(obj)
			end
			connections.gui = playerGui.DescendantAdded:Connect(hideGui)
		end
	end
end

local Optimizer = {}

function Optimizer.SetFPSCap(value)
	_G.FPSCap = math.clamp(tonumber(value) or 0, 0, 1000)
end
function Optimizer.SetRender3D(enabled) applyRender3D(enabled and true or false) end
function Optimizer.SetCamera(enabled) applyCamera(enabled and true or false) end
function Optimizer.SetGui(visible) applyGui(visible and true or false) end
function Optimizer.SetTransparent(enabled) _G.Transparent = enabled and true or false end
function Optimizer.SetFidelityFlatten(enabled) _G.RenderFidelityFlatten = enabled and true or false end
function Optimizer.SetBudget(seconds)
	FRAME_BUDGET = math.clamp(tonumber(seconds) or 0.004, 0.001, 0.033)
end
Optimizer.Rescan = sweepAll

function Optimizer.Destroy()
	for _, connection in pairs(connections) do
		connection:Disconnect()
	end
	table.clear(connections)
	_G.FPSCapToken = (_G.FPSCapToken or 0) + 1
end

env.HakkaOptimizer = Optimizer
if _G.Cam then applyCamera(true) end
if not _G.Render3D then applyRender3D(false) end
if not _G.Gui then applyGui(false) end
