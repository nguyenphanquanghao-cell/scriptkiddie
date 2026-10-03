if _G.Cam==nil then _G.Cam=false end
if _G.Transparent==nil then _G.Transparent=true end
if _G.Gui==nil then _G.Gui=true end
if _G.Render3D==nil then _G.Render3D=true end
if _G.FPSCap==nil then _G.FPSCap=0 end

local a={}
local b={}
local c={}
local d={}

local e=game:GetService"Players"
local f=e.LocalPlayer
local g=game:GetService"RunService"
local h=workspace
local i=(game.PlaceId==1537690962)
local j=i and h:FindFirstChild"Collectibles"
local k=i and h:FindFirstChild"FlowerZones"

local l={
Decal=true,Texture=true,Clothing=true,SurfaceAppearance=true,
PostEffect=true,Light=true,Sound=true,BloomEffect=true,
BlurEffect=true,ColorCorrectionEffect=true,DepthOfFieldEffect=true,
SunRaysEffect=true,Atmosphere=true,Sky=true,Clouds=true
}

local m={
ParticleEmitter=true,Trail=true,Smoke=true,Fire=true,
Sparkles=true,Beam=true,Highlight=true
}

a.a1=function(n)
if not n or not n.Parent then return end
if f.Character and n:IsDescendantOf(f.Character)then return end
if i then
if j and n:IsDescendantOf(j)then return end
if k and n:IsDescendantOf(k)then return end
end

local o=n.ClassName

if l[o]or n:IsA"PostEffect"or n:IsA"Light"then
pcall(n.Destroy,n)
elseif m[o]then
pcall(function()n.Enabled=false end)
elseif n:IsA"BasePart"then
pcall(function()
n.Material=Enum.Material.Plastic
n.Reflectance=0
n.Color=Color3.fromRGB(163,162,165)
n.CastShadow=false

if n:IsA"MeshPart"then
n.TextureID=""
n.RenderFidelity=Enum.RenderFidelity.Performance
end

if _G.Transparent then
n.Transparency=1
end
end)
elseif n:IsA"SpecialMesh"then
pcall(function()n.TextureId=""end)
end
end

a.a2=function()
local n={h,game:GetService"Lighting",game:GetService"MaterialService"}
local o=0
for p,q in ipairs(n)do
for r,s in ipairs(q:GetDescendants())do
a.a1(s)
o+=1
if o%250==0 then
task.wait()
end
end
end
end

a.a3=function()
h.DescendantAdded:Connect(function(n)
if n and n.Parent then
task.defer(a.a1,n)
end
end)
end

b.b1=function()
local n=game:GetService"Lighting"
local o=settings()

pcall(function()
game:GetService"SoundService".AmbientReverb=Enum.ReverbType.NoReverb
end)

pcall(function()
o.Rendering.QualityLevel=1
o.Rendering.MeshPartDetailLevel=Enum.MeshPartDetailLevel.Level04
end)

pcall(function()
n.GlobalShadows=false
n.FogEnd=9e9
n.FogStart=0
n.Brightness=0
n.EnvironmentDiffuseScale=0
n.EnvironmentSpecularScale=0
n.ExposureCompensation=0
n.Technology=Enum.Technology.Compatibility
end)

pcall(function()
local p=h:FindFirstChildOfClass"Terrain"
if p then
p.WaterWaveSize=0
p.WaterWaveSpeed=0
p.WaterReflectance=0
p.WaterTransparency=1
end
end)

if setfpscap and type(_G.FPSCap)=="number"and _G.FPSCap>0 then
pcall(setfpscap,_G.FPSCap)
end
end

b.b2=function()
if not _G.Render3D then
pcall(function()g:Set3dRenderingEnabled(false)end)
end
end

c.c1=function()
if not _G.Cam then return end
local n=h.CurrentCamera
n.FieldOfView=1
g.RenderStepped:Connect(function()
local o=f.Character
local p=o and o:FindFirstChild"HumanoidRootPart"
if p then
n.CameraType=Enum.CameraType.Scriptable
n.CFrame=CFrame.new(p.Position,p.Position+Vector3.new(0,1000,0))
end
end)
end

d.d1=function(n)
if n:IsA"GuiObject"then
n.BackgroundTransparency=1
n.BorderSizePixel=0
if n:IsA"ImageLabel"or n:IsA"ImageButton"then
n.ImageTransparency=1
end
elseif n:IsA"UIStroke"or n:IsA"UIGradient"or n:IsA"UICorner"then
pcall(n.Destroy,n)
end
end

d.d2=function()
if _G.Gui then return end

pcall(function()
game:GetService"StarterGui":SetCoreGuiEnabled(Enum.CoreGuiType.All,false)
end)

local n=f:FindFirstChildOfClass"PlayerGui"or f:WaitForChild("PlayerGui",5)
if n then
for o,p in ipairs(n:GetDescendants())do d.d1(p)end
n.DescendantAdded:Connect(d.d1)
end
end

b.b1()
b.b2()
a.a2()
a.a3()
c.c1()
d.d2()
