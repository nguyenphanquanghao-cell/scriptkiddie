if _G.Cam == nil then _G.Cam = false end
if _G.Transparent == nil then _G.Transparent = true end
if _G.Gui == nil then _G.Gui = true end
if _G.Render3D == nil then _G.Render3D = true end
if _G.FPSCap == nil then _G.FPSCap = 0 end

if _G.RenderFidelityFlatten == nil then _G.RenderFidelityFlatten = false end
if _G.PurgeFX == nil then _G.PurgeFX = true end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local MaterialService = game:GetService("MaterialService")
local player = Players.LocalPlayer

local isBSS = (game.PlaceId == 1537690962)

local FRAME_BUDGET = _G.FPSBudget or 0.004
local TURBO_BUDGET = 0.016
local TURBO_SECONDS = 20
local CHECK_EVERY = 10
local scriptStart = os.clock()

local env = (getgenv and getgenv()) or _G
if env.HakkaOptimizer and env.HakkaOptimizer.Destroy then
	pcall(env.HakkaOptimizer.Destroy)
end
local connections: { [string]: any } = {}

local DISABLE_CLASSES = {
	ParticleEmitter = true, Trail = true, Smoke = true, Fire = true,
	Sparkles = true, Beam = true, Highlight = true,
	Sound = true, Light = true, PostEffect = true,
	BloomEffect = true, BlurEffect = true, ColorCorrectionEffect = true,
	DepthOfFieldEffect = true, SunRaysEffect = true,
	SurfaceGui = true, BillboardGui = true,
	SelectionBox = true, SelectionSphere = true,
}

local PLASTIC = Enum.Material.Plastic
local GRAY = Color3.fromRGB(163, 162, 165)
local PERFORMANCE = Enum.RenderFidelity.Performance

local function disableEffect(inst)
	if inst:IsA("Decal") or inst:IsA("Texture") then
		if inst.Transparency ~= 1 then inst.Transparency = 1 end
	elseif inst:IsA("Clothing") then
		if inst.Transparency ~= 1 then inst.Transparency = 1 end
	elseif inst:IsA("SurfaceAppearance") then
		if inst.Transparency ~= 1 then inst.Transparency = 1 end
	elseif inst:IsA("Atmosphere") then
		if inst.Density ~= 0 then inst.Density = 0 end
		if inst.Haze ~= 0 then inst.Haze = 0 end
	elseif inst:IsA("Sky") then
		pcall(function()
			inst.SkyboxBk = ""
			inst.SkyboxDn = ""
			inst.SkyboxFt = ""
			inst.SkyboxLf = ""
			inst.SkyboxRt = ""
			inst.SkyboxUp = ""
		end)
	elseif inst:IsA("Clouds") then
		if inst.Enabled then inst.Enabled = false end
	elseif inst:IsA("Sound") then

		if inst.Volume ~= 0 then inst.Volume = 0 end
	else
		pcall(function()
			if inst.Enabled then inst.Enabled = false end
		end)
	end
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

local PURGE_CLASSES = {
	ParticleEmitter = true, Smoke = true, Fire = true,
	Sparkles = true, Trail = true,
}

local AGGRESSION = _G.Aggression or "nuke"

local function processInstance(inst)
	if not inst.Parent then return end
	local character = player.Character
	if character and inst:IsDescendantOf(character) then return end
	if inst:IsA("Terrain") or inst == workspace.CurrentCamera then return end

	if inst:IsA("GuiBase2d") or inst:IsA("GuiBase3d") then return end

	if inst:FindFirstAncestor("Honeycombs") then return end

	if AGGRESSION == "nuke" then

		if inst:IsA("Model") or inst:IsA("Folder") or inst:IsA("JointInstance")
			or inst:IsA("Constraint") or inst:IsA("WeldConstraint")
			or inst:IsA("Attachment") or inst:IsA("Bone")
			or inst:IsA("ValueBase") or inst:IsA("ClickDetector")
			or inst:IsA("ProximityPrompt") then
			return
		end

		if inst:IsA("BodyMover") then
			return
		end
		if inst:IsA("Decal") or inst:IsA("Texture") or inst:IsA("Clothing")
			or inst:IsA("SurfaceAppearance") then
			pcall(disableEffect, inst)
			return
		end

		if inst:IsA("Light") or inst:IsA("PostEffect")
			or DISABLE_CLASSES[inst.ClassName] then
			pcall(disableEffect, inst)
			return
		end
		if inst:IsA("BasePart") then
			pcall(flattenPart, inst)
			return
		end

		pcall(function()
			if inst.Enabled ~= nil then inst.Enabled = false end
		end)
		return
	end

	local class = inst.ClassName
	if AGGRESSION == "clean" then
		if DISABLE_CLASSES[class] or inst:IsA("Decal") or inst:IsA("Texture")
			or inst:IsA("Clothing") or inst:IsA("SurfaceAppearance")
			or inst:IsA("Atmosphere") or inst:IsA("Sky") or inst:IsA("Clouds")
			or inst:IsA("PostEffect") or inst:IsA("Light") then
			pcall(disableEffect, inst)
			return
		end
	end
	if PURGE_CLASSES[class] and _G.PurgeFX ~= false then

		pcall(disableEffect, inst)
		return
	end
	if DISABLE_CLASSES[class] then
		pcall(disableEffect, inst)
	elseif inst:IsA("PostEffect") or inst:IsA("Light") then
		pcall(disableEffect, inst)
	elseif inst:IsA("Decal") or inst:IsA("Texture") or inst:IsA("Clothing")
		or inst:IsA("SurfaceAppearance") or inst:IsA("Atmosphere")
		or inst:IsA("Sky") or inst:IsA("Clouds") then
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

local function applyGui(visible)
	_G.Gui = visible
	pcall(StarterGui.SetCoreGuiEnabled, StarterGui, Enum.CoreGuiType.All, visible)

end

local Optimizer: { [string]: any } = {}

function Optimizer.SetFPSCap(value)
	_G.FPSCap = math.clamp(tonumber(value) or 0, 0, 1000)
end
function Optimizer.SetRender3D(enabled) applyRender3D(enabled and true or false) end
function Optimizer.SetCamera(enabled) applyCamera(enabled and true or false) end
function Optimizer.SetGui(visible) applyGui(visible and true or false) end
function Optimizer.SetTransparent(enabled) _G.Transparent = enabled and true or false end
function Optimizer.SetFidelityFlatten(enabled) _G.RenderFidelityFlatten = enabled and true or false end
function Optimizer.SetPurgeFX(enabled) _G.PurgeFX = enabled and true or false end
function Optimizer.SetAggression(level)
	AGGRESSION = (level == "nuke" or level == "clean") and level or "effects"
	_G.Aggression = AGGRESSION
end
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
