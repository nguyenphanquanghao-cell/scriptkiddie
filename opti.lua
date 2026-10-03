if _G.Cam == nil then _G.Cam = false end
if _G.Transparent == nil then _G.Transparent = true end
if _G.Gui == nil then _G.Gui = true end
if _G.Render3D == nil then _G.Render3D = true end
if _G.FPSCap == nil then _G.FPSCap = 0 end

local a = {}
local b = {}
local c = {}
local d = {}

local p = game:GetService("Players")
local lp = p.LocalPlayer
local r = game:GetService("RunService")
local w = workspace
local bss = (game.PlaceId == 1537690962)
local col = bss and w:FindFirstChild("Collectibles")
local flw = bss and w:FindFirstChild("FlowerZones")

local destroyClasses = {
    Decal = true, Texture = true, Clothing = true, SurfaceAppearance = true,
    PostEffect = true, Light = true, Sound = true, BloomEffect = true,
    BlurEffect = true, ColorCorrectionEffect = true, DepthOfFieldEffect = true,
    SunRaysEffect = true, Atmosphere = true, Sky = true, Clouds = true
}

local disableClasses = {
    ParticleEmitter = true, Trail = true, Smoke = true, Fire = true,
    Sparkles = true, Beam = true, Highlight = true
}

a.a1 = function(v)
    if not v or not v.Parent then return end
    if lp.Character and v:IsDescendantOf(lp.Character) then return end
    if bss then
        if col and v:IsDescendantOf(col) then return end
        if flw and v:IsDescendantOf(flw) then return end
    end

    local class = v.ClassName

    if destroyClasses[class] or v:IsA("PostEffect") or v:IsA("Light") then
        pcall(v.Destroy, v)
    elseif disableClasses[class] then
        pcall(function() v.Enabled = false end)
    elseif v:IsA("BasePart") then
        pcall(function()
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
            v.Color = Color3.fromRGB(163, 162, 165)
            v.CastShadow = false
            
            if v:IsA("MeshPart") then
                v.TextureID = ""
                v.RenderFidelity = Enum.RenderFidelity.Performance
            end
            
            if _G.Transparent then
                v.Transparency = 1
            end
        end)
    elseif v:IsA("SpecialMesh") then
        pcall(function() v.TextureId = "" end)
    end
end

a.a2 = function()
    local e = {w, game:GetService("Lighting"), game:GetService("MaterialService")}
    local count = 0
    for _, k in ipairs(e) do
        for _, v in ipairs(k:GetDescendants()) do
            a.a1(v)
            count += 1
            if count % 250 == 0 then
                task.wait()
            end
        end
    end
end

a.a3 = function()
    w.DescendantAdded:Connect(function(v)
        if v and v.Parent then
            task.defer(a.a1, v)
        end
    end)
end

b.b1 = function()
    local l = game:GetService("Lighting")
    local s = settings()

    pcall(function()
        game:GetService("SoundService").AmbientReverb = Enum.ReverbType.NoReverb
    end)

    pcall(function()
        s.Rendering.QualityLevel = 1
        s.Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
    end)

    pcall(function()
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.FogStart = 0
        l.Brightness = 0
        l.EnvironmentDiffuseScale = 0
        l.EnvironmentSpecularScale = 0
        l.ExposureCompensation = 0
        l.Technology = Enum.Technology.Compatibility
    end)

    pcall(function()
        local terrain = w:FindFirstChildOfClass("Terrain")
        if terrain then
            terrain.WaterWaveSize = 0
            terrain.WaterWaveSpeed = 0
            terrain.WaterReflectance = 0
            terrain.WaterTransparency = 1
        end
    end)

    if setfpscap and type(_G.FPSCap) == "number" and _G.FPSCap > 0 then
        pcall(setfpscap, _G.FPSCap)
    end
end

b.b2 = function()
    if not _G.Render3D then
        pcall(function() r:Set3dRenderingEnabled(false) end)
    end
end

c.c1 = function()
    if not _G.Cam then return end
    local cm = w.CurrentCamera
    cm.FieldOfView = 1
    r.RenderStepped:Connect(function()
        local ch = lp.Character
        local rt = ch and ch:FindFirstChild("HumanoidRootPart")
        if rt then
            cm.CameraType = Enum.CameraType.Scriptable
            cm.CFrame = CFrame.new(rt.Position, rt.Position + Vector3.new(0, 1000, 0))
        end
    end)
end

d.d1 = function(v)
    if v:IsA("GuiObject") then
        v.BackgroundTransparency = 1
        v.BorderSizePixel = 0
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            v.ImageTransparency = 1
        end
    elseif v:IsA("UIStroke") or v:IsA("UIGradient") or v:IsA("UICorner") then
        pcall(v.Destroy, v)
    end
end

d.d2 = function()
    if _G.Gui then return end

    pcall(function()
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
    end)

    local pg = lp:FindFirstChildOfClass("PlayerGui") or lp:WaitForChild("PlayerGui", 5)
    if pg then
        for _, v in ipairs(pg:GetDescendants()) do d.d1(v) end
        pg.DescendantAdded:Connect(d.d1)
    end
end

b.b1()
b.b2()
a.a2()
a.a3()
c.c1()
d.d2()
