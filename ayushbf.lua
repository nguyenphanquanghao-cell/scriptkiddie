-- W Sonnet 5.5

repeat task.wait() until game:IsLoaded() and game:GetService("Players").LocalPlayer

while not game:GetService("Players").LocalPlayer.Character or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetTeam2", "Marines")
    task.wait(0.1)
end

task.wait(10)
settings().Rendering.QualityLevel = 1

local function luraph_runtime1(...)
	local args = { ... }

	for _, v in ipairs(args) do
		if type(v) == "function" then return v end
	end

	return table.unpack(args)
end

local Str
Str = "c6949ccd512754b94f27f4029fc0acc15de67945a0d401721f1c2abe46c4a8c3"
local Str2
Str2 = "https://banana-hub.xyz"
local Str3, Str4, Str5
local Str6 = Str2 .. "/api/v4"
Str3 = Str6 .. "/hsk"
Str4 = Str6 .. "/vrf"
Str5 = Str6 .. "/stp"
local Str7
Str7 = "5.0"
local Str8

local Str9
Str9 = tostring(game.GameId)

local V
V = nil

local Fn, Fn2, Fn3

local Flag = getgenv().__BANANA_DEBUG_TIMING == true
local Now
Now = os.clock()
local Fn4

do
	local Str10 = "0b27716f83a289ae8383"
	local N = tonumber("67637") or 27183
	local N2 = tonumber("20267") or 41927
	local N3 = tonumber("779440") or (N * 17 + N2 * 31 + 1337) % 1000003
	local N4 = (N * 17 + N2 * 31 + 1337) % 1000003
	local N5 = (#Str10 * 97 + N4) % 65521

	if not (function()
		if N4 ~= N3 then
			return false
		end
		return N5 == (#Str10 * 97 + N3) % 65521
	end)() then
		return (Fn5("loader_build_integrity"))
	end
end

do
	local function Fn6(Arg)
		if type(Arg) ~= "string" then
			return ""
		end
		return string.lower(Arg)
	end

	local function Fn7(Arg)
		local V2 = Fn6(Arg)
		if string.find(V2, "medal.upio.dev/decompile", 1, true) then
			return "decompile_endpoint"
		end
		local Match = V2:gsub("^https?://", ""):gsub("^wss?://", ""):match("^([^/%?]+)") or ""
		if Match == "localhost:16384" or Match == "127.0.0.1:16384" or Match == "[::1]:16384" then
			return "mcp_bridge"
		end
		return nil
	end

	if type(hookfunction) == "function" then
		local Tbl = {}
		local Tbl2 = {}

		if type(request) == "function" then
			Tbl2[#Tbl2 + 1] = request
		end

		if type(http_request) == "function" and http_request ~= request then
			Tbl2[#Tbl2 + 1] = http_request
		end

		for _, V2 in ipairs(Tbl2) do
			if not Tbl[V2] then
				Tbl[V2] = true
				local V3 = nil

				local function Fn8(Arg)
					local Str10 = ""

					if type(Arg) == "table" then
						Str10 = rawget(Arg, "Url") or rawget(Arg, "URL") or rawget(Arg, "url") or ""
					end

					local V4 = Fn7(Str10)
					if V4 then
						return Fn5(V4)
					end
					return V3(Arg)
				end

				V3 = hookfunction
				V3 = V3(V2, Fn8)
			end
		end

		local V2 = WebSocket

		if type(V2) == "table" and type(V2.connect) == "function" then
			local V3 = nil

			local function Fn8(Arg, ...)
				local V4 = Fn7(Arg)
				if V4 then
					return Fn5(V4)
				end
				return V3(Arg, ...)
			end

			V3 = hookfunction
			V3 = V3(V2.connect, Fn8)
		end

		if type(getscriptbytecode) == "function" then
			local Str10 = string.rep("\0\255\128@ \15\8", 2048)

			hookfunction(getscriptbytecode, function()
				return Str10
			end)
		end

		if type(decompile) == "function" then
			hookfunction(decompile, function()
				return "-- [Chuoi Hub] Protected script\nreturn nil"
			end)
		end
	end

	local Value = rawget(getgenv(), "BridgeURL")

	if Value and Fn7("http://" .. tostring(Value)) == "mcp_bridge" then
		Fn5("mcp_bridge_config")
	end
end

local V2
V2 = pcall
local V3
V3 = select
local V51
V51 = typeof
local V4, V5, V6, Random, V7, V8, V9, V10, V11, V12
local Fn6, V13, V14, V15, V16, V17, V18, V19, V20, Clock
local V21, Fn7, Fn8

do
	local V22 = next
	local V23 = tonumber
	V4 = tostring
	V5 = pairs
	V6 = ipairs
	local Create = table.create
	local V24 = tick
	Random = math.random
	local Randomseed = math.randomseed
	local Info = debug and debug.info or nil
	V7 = readfile or read_file
	V8 = writefile or write_file
	V9 = isfile or is_file
	V10 = isfolder or is_folder
	V11 = makefolder or create_folder
	V12 = delfile or delete_file

	local Fn9 = hidefromgc or function(Arg)
		return Arg
	end

	local Fn10 = protectfunction or function(Arg)
		return Arg
	end

	Fn6 = function(Arg)
		Fn9(Arg)
		Fn10(Arg)
		return Arg
	end

	Fn9(Fn6)

	Fn9(function(Arg)
		Fn9(Arg)
		return Arg
	end)

	V13 = Fn6(V2)
	V14 = Fn6(V3)
	V15 = Fn6(V22)
	V16 = Fn6(V23)
	V17 = Fn6(V5)
	V18 = Fn6(V6)

	Fn6(Create or function()
		return {}
	end)

	V19 = Fn6(Random)
	V20 = Fn6(Randomseed)
	local V25

	if Info then
		local function Fn11()
			local V26, V27 = V13(Info, math.huge, "f")
			if V26 and type(V27) == "function" then
				return V27
			end
			return V24
		end

		V25 = Fn11()
	else
		V25 = Info
	end

	Clock = V25 or V24
	local V26 = Clock()

	if type(V26) ~= "number" or V26 < 1e15 then
		Clock = type(V24) == "function" and V24 or os.clock
	end

	local V27 = Fn6(V4)

	V21 = Fn6(function(Arg)
		local Kind = type(Arg)
		if Kind == "string" then
			return Arg
		end

		if Kind == "number" or Kind == "boolean" then
			return "" .. Arg
		end
		local V28, V29 = V13(V27, Arg)
		if V28 then
			return V29
		end
		return ""
	end)

	Fn9(function(Arg, Arg2)
		local N = 0
		local N2 = 1

		while Arg > 0 and Arg2 > 0 do
			local N3 = Arg % 2
			local N4 = Arg2 % 2

			if N3 ~= N4 then
				N += N2
			end

			Arg = (Arg - N3) / 2
			Arg2 = (Arg2 - N4) / 2
			N2 *= 2
		end

		if not (Arg < Arg2) then
			Arg2 = Arg
		end

		while Arg2 > 0 do
			local N3 = Arg2 % 2

			if N3 > 0 then
				N += N2
			end

			Arg2 = (Arg2 - N3) / 2
			N2 *= 2
		end

		return N
	end)

	Fn9(function(Arg, Arg2)
		local N = 0
		local N2 = 1

		while Arg > 0 and Arg2 > 0 do
			local N3 = Arg % 2
			local N4 = Arg2 % 2

			if N3 + N4 > 1 then
				N += N2
			end

			Arg = (Arg - N3) / 2
			Arg2 = (Arg2 - N4) / 2
			N2 *= 2
		end

		return N
	end)

	local function Fn11(Arg)
		return Arg - Arg % 1
	end

	Fn9(Fn11)

	Fn7 = function(Arg, Arg2)
		return Arg * 2 ^ Arg2 % 4294967296
	end

	Fn9(Fn7)

	Fn9(function(Arg, Arg2)
		return Fn11(Arg / 2 ^ Arg2)
	end)

	local Fn12 = nil

	Fn12 = function(Arg, Arg2)
		local N = Arg2 or 1
		if not Arg[N] then
			return
		end
		return Arg[N], Fn12(Arg, N + 1)
	end

	Fn9(Fn12)

	Fn8 = function(Arg, Arg2)
		if #Arg == 0 then
			return ""
		end
		Arg2 = Arg2 or ""
		local V28 = Arg[1]

		for I = 2, #Arg do
			V28 ..= Arg2 .. Arg[I]
		end

		return V28
	end

	Fn9(Fn8)

	Fn9(function(Arg)
		for K in V17(Arg) do
			Arg[K] = nil
		end
	end)

	Fn9(function(Arg, Arg2)
		local V28

		while true do
			local V29, V30 = V15(Arg, V28)

			if V29 == Arg2 then
				return V30
			else
				if not V29 and not V30 then
					break
				end
				V28 = V29
			end
		end

		return nil
	end)

	local function Fn13(Arg, Arg2)
		return not (Arg > Arg2) and not (Arg < Arg2) and Arg >= Arg2 and Arg <= Arg2
	end

	Fn9(Fn13)

	local Tbl = {
		"\1",
		"\2",
		"\3",
		"\4",
		"\5",
		"\6",
		"\7",
		"\8",
		"\t",
		"\n",
		"\11",
		"\12",
		"\r",
		"\14",
		"\15",
		"\16",
		"\17",
		"\18",
		"\19",
		"\20",
		"\21",
		"\22",
		"\23",
		"\24",
		"\25",
		"\26",
		"\27",
		"\28",
		"\29",
		"\30",
		"\31",
		" ",
		"!",
		"\"",
		"#",
		"$",
		"%",
		"&",
		"'",
		"(",
		")",
		"*",
		"+",
		",",
		"-",
		".",
		"/",
		"0",
		"1",
		"2",
		"3",
		"4",
		"5",
		"6",
		"7",
		"8",
		"9",
		":",
		";",
		"<",
		"=",
		">",
		"?",
		"@",
		"A",
		"B",
		"C",
		"D",
		"E",
		"F",
		"G",
		"H",
		"I",
		"J",
		"K",
		"L",
		"M",
		"N",
		"O",
		"P",
		"Q",
		"R",
		"S",
		"T",
		"U",
		"V",
		"W",
		"X",
		"Y",
		"Z",
		"[",
		"\\",
		"]",
		"^",
		"_",
		"`",
		"a",
		"b",
		"c",
		"d",
		"e",
		"f",
		"g",
		"h",
		"i",
		"j",
		"k",
		"l",
		"m",
		"n",
		"o",
		"p",
		"q",
		"r",
		"s",
		"t",
		"u",
		"v",
		"w",
		"x",
		"y",
		"z",
		"{",
		"|",
		"}",
		"~",
		"\127",
		"\128",
		"\129",
		"\130",
		"\131",
		"\132",
		"\133",
		"\134",
		"\135",
		"\136",
		"\137",
		"\138",
		"\139",
		"\140",
		"\141",
		"\142",
		"\143",
		"\144",
		"\145",
		"\146",
		"\147",
		"\148",
		"\149",
		"\150",
		"\151",
		"\152",
		"\153",
		"\154",
		"\155",
		"\156",
		"\157",
		"\158",
		"\159",
		"\160",
		"\161",
		"\162",
		"\163",
		"\164",
		"\165",
		"\166",
		"\167",
		"\168",
		"\169",
		"\170",
		"\171",
		"\172",
		"\173",
		"\174",
		"\175",
		"\176",
		"\177",
		"\178",
		"\179",
		"\180",
		"\181",
		"\182",
		"\183",
		"\184",
		"\185",
		"\186",
		"\187",
		"\188",
		"\189",
		"\190",
		"\191",
		"\192",
		"\193",
		"\194",
		"\195",
		"\196",
		"\197",
		"\198",
		"\199",
		"\200",
		"\201",
		"\202",
		"\203",
		"\204",
		"\205",
		"\206",
		"\207",
		"\208",
		"\209",
		"\210",
		"\211",
		"\212",
		"\213",
		"\214",
		"\215",
		"\216",
		"\217",
		"\218",
		"\219",
		"\220",
		"\221",
		"\222",
		"\223",
		"\224",
		"\225",
		"\226",
		"\227",
		"\228",
		"\229",
		"\230",
		"\231",
		"\232",
		"\233",
		"\234",
		"\235",
		"\236",
		"\237",
		"\238",
		"\239",
		"\240",
		"\241",
		"\242",
		"\243",
		"\244",
		"\245",
		"\246",
		"\247",
		"\248",
		"\249",
		"\250",
		"\251",
		"\252",
		"\253",
		"\254",
		"\255",
		[0] = "\0",
	}

	Fn9(function(...)
		local Tbl2 = { ... }
		local Str10 = ""

		for I = 1, #Tbl2 do
			Str10 ..= Tbl[Tbl2[I]]
		end

		return Str10
	end)

	local Tbl2 = {}

	Fn9(function(Arg, Arg2, Arg3, Arg4)
		Arg3 = Arg3 or Arg2

		if Tbl2[Arg] then
			local Tbl3 = {}

			for I = Arg2, Arg3 do
				Tbl3[#Tbl3 + 1] = Tbl2[Arg][I]
			end

			return Fn12(Tbl3)
		end

		local Tbl3 = {}
		local Tbl4 = {}
		local Str10 = ""

		for I = 1, #Arg do
			local Flag2 = false

			for I2 = 0, 255 do
				if Arg < Str10 .. Tbl[I2] then
					Str10 ..= Tbl[I2 - 1]
					Tbl3[#Tbl3 + 1] = I2 - 1
					local Flag3 = I >= Arg2 and I <= Arg3
					Flag2 = true

					if Flag3 then
						Tbl4[#Tbl4 + 1] = I2 - 1
					end

					break
				end
			end

			if not Flag2 then
				Str10 ..= "\255"
				Tbl3[#Tbl3 + 1] = 255

				if I >= Arg2 and I <= Arg3 then
					Tbl4[#Tbl4 + 1] = 255
				end
			end
		end

		if not Fn13(Arg, Str10) then
			return Fn5("string_integrity")
		end

		if not Arg4 then
			Tbl2[Arg] = Tbl3
		end

		return Fn12(Tbl4)
	end)

	Fn9(function(Arg, Arg2, Arg3, Arg4)
		if Tbl2[Arg] then
			local Str10 = ""

			for I = Arg2, Arg3 do
				Str10 ..= Tbl[Tbl2[Arg][I]]
			end

			return Str10
		end

		local Tbl3 = {}
		local Str10 = ""
		local Str11 = ""

		for I = 1, #Arg do
			local Flag2 = false

			for I2 = 0, 255 do
				if Arg < Str10 .. Tbl[I2] then
					Str10 ..= Tbl[I2 - 1]
					Tbl3[#Tbl3 + 1] = I2 - 1
					local Flag3 = I >= Arg2 and I <= Arg3
					Flag2 = true

					if Flag3 then
						Str11 ..= Tbl[I2 - 1]
					end

					break
				end
			end

			if not Flag2 then
				Str10 ..= "\255"
				Tbl3[#Tbl3 + 1] = 255

				if I >= Arg2 and I <= Arg3 then
					Str11 ..= "\255"
				end
			end
		end

		if not Fn13(Arg, Str10) then
			return Fn5("substring_integrity")
		end

		if not Arg4 then
			Tbl2[Arg] = Tbl3
		end

		return Str11
	end)
end

local Fn9

Fn9 = function(Arg, Arg2)
	local V22 = nil
	local V23 = nil

	V13(function()
		local V24 = Arg2
		V22 = Arg
		V23 = V24
	end)

	if V22 == nil or V23 == nil then
		V13(function()
			wait()

			while true do
			end
		end)
	end

	if type(V22) ~= type(V23) then
		return false
	end

	if type(V22) ~= type(V23) then
		return false
	end
	local Tbl = { V23, V22, V23, V22 }
	if Tbl[1] ~= Tbl[1] then
		return false
	end

	if Tbl[1] ~= Tbl[2] then
		return false
	end

	if Tbl[2] ~= Tbl[1] then
		return false
	end

	if Tbl[2] ~= Tbl[2] then
		return false
	end
	local N = 74
	local Tbl2 = { 99, 115, 90, 111, 110, 121, 102, 105, 74 }
	local N2 = 88
	local N3 = 95

	local function Fn10()
		return false
	end

	if Fn10() then
	end

	local Flag2 = N == Tbl2[#Tbl2]
	local Flag3

	if Flag2 then
		local function Fn11()
			local N4 = 88

			if N2 then
				N4 = Tbl2[1]
			end

			return N4
		end

		Flag3 = Tbl2[1] == Fn11()
	else
		Flag3 = Flag2
	end

	if Flag3 then
		if 2 == N3 - 1 or not Tbl2 then
			local function Fn11()
				return V22 == N and N3 - 1 == N
			end

			return Fn11() or N == nil
		end

		local Flag4 = V22 and N == ({ 74 })[1]

		if Flag4 then
			local function Fn11(Arg3, Arg4)
				return Arg3 and Arg4
			end

			Flag4 = Fn11(1, 2)
		end

		if Flag4 then
			local Flag5 = not V22 == false
			local Flag6

			if Flag5 then
				local function Fn11()
					if type(V22) ~= "string" or type(V23) ~= "string" then
						return false
					end
					return not V22:find(V23) and V23:find(V22)
				end

				Flag6 = not Fn11()
			else
				Flag6 = Flag5
			end

			return Flag6 and true
		end
	end
end

local HttpService
HttpService = game:GetService("HttpService")
local LocalPlayer, Fn10, Fn11, Fn12, Fn13, Fn14, Fn15, Fn16, Fn17, V22
local Key, Name, Fn18, Proxy, V23, V24, V25, V26, V27, V28
local V29

do
	local Players = game:GetService("Players")

	local function Fn19(Arg)
		return HttpService:GenerateGUID(Arg)
	end

	LocalPlayer = Players.LocalPlayer
	local Newproxy = type(newproxy) == "function" and newproxy or nil

	if not Newproxy and debug and debug.getregistry then
		local V30 = debug.getregistry()
		Newproxy = type(V30.newproxy) == "function" and V30.newproxy or nil
	end

	if not Newproxy then
		return (Fn5("http_proxy_primitives"))
	end
	local Flag2 = type(islclosure) == "function" and islclosure or nil
	local V30 = isexecutorclosure or isourclosure or checkclosure or nil

	local function Fn20(Arg)
		if Flag2 and Flag2(Arg) then
			return false
		end

		if V30 and V30(Arg) then
			return false
		end

		if debug and debug.info then
			local V31, V32 = V13(debug.info, Arg, "s")
			if V31 and V32 ~= "[C]" then
				return false
			end
		end

		return true
	end

	local Env = getfenv(0)

	local Tbl = {
		Env.tostring,
		Env.string.byte,
		Env.string.char,
		Env.string.format,
		Env.pcall,
		Env.getmetatable,
		Env.string.sub,
		Env.math.floor,
	}

	for I = 1, #Tbl do
		if not Fn20(Tbl[I]) then
			return (Fn5("builtin_integrity"))
		end
	end

	local Flag3 = type(getstack) == "function" and getstack or nil
	local Flag4 = type(setstack) == "function" and setstack or nil

	if Flag3 or Flag4 then
		if not (type(clonefunction) == "function" and clonefunction or nil) then
			return (Fn5("stack_debugger"))
		end

		getgenv().getstack = function()
			return nil
		end

		getgenv().setstack = function()
			return nil
		end
	end

	if not (function()
		for _, V31 in V18({
			V2,
			type,
			V4,
			V3,
			V5,
			V6,
			string.byte,
			string.char,
			string.sub,
			string.format,
			string.gsub,
			string.find,
			math.floor,
			Random,
			math.abs,
			table.create,
			table.insert,
			table.concat,
			table.find,
			table.sort,
			coroutine.create,
			coroutine.resume,
			coroutine.status,
			coroutine.wrap,
			Instance,
			game,
			workspace,
			Players,
			HttpService,
		}) do
			if V31 ~= nil and type(V31) ~= "function" and type(V31) ~= "userdata" and type(V31) ~= "table" then
				return false, V31
			end
		end

		for _, V31 in V18({ V2, type, V4, V5, V6, V3, string.byte, string.char, math.floor }) do
			if debug and debug.info then
				local V32, V33 = V13(debug.info, V31, "s")
				if V32 and V33 ~= "[C]" then
					return false, V31
				end
			end
		end

		return true
	end)() then
		return (Fn5("environment_integrity"))
	end

	local function Fn21(Arg, Arg2)
		local N = 0
		local N2 = 1

		while Arg > 0 and Arg2 > 0 do
			local N3 = Arg % 2
			local N4 = Arg2 % 2

			if N3 ~= N4 then
				N += N2
			end

			Arg = (Arg - N3) / 2
			Arg2 = (Arg2 - N4) / 2
			N2 *= 2
		end

		if not (Arg < Arg2) then
			Arg2 = Arg
		end

		while Arg2 > 0 do
			local N3 = Arg2 % 2

			if N3 > 0 then
				N += N2
			end

			Arg2 = (Arg2 - N3) / 2
			N2 *= 2
		end

		return N
	end

	Fn10 = function(Arg, Arg2, Arg3, Arg4)
		local Str10 = V21(Arg) .. "|" .. V21(Arg2) .. "|" .. V21(Arg3)
		local Tbl2 = {}
		local V31 = string.len(Str10)

		for I = 1, V31 do
			Tbl2[I] = string.byte(Str10, I)
		end

		local Tbl3 = {}

		for I = 0, 255 do
			Tbl3[I] = I
		end

		local N = 0

		for I = 0, 255 do
			N = (N + Tbl3[I] + Tbl2[I % V31 + 1] + I * 3) % 256
			local V32 = Tbl3[I]
			Tbl3[I] = Tbl3[N]
			Tbl3[N] = V32
		end

		local N2 = 0
		local N3 = 0

		for I = 1, 384 do
			N2 = (N2 + 1) % 256
			N3 = (N3 + Tbl3[N2]) % 256
			local V32 = Tbl3[N2]
			Tbl3[N2] = Tbl3[N3]
			Tbl3[N3] = V32
		end

		local V32 = table.create(string.len(Arg4))
		local Len = string.len
		local V33 = Fn21(string.len(V21(Arg2)), Len(V21(Arg3)))
		local N4 = 90

		for I = 1, string.len(Arg4) do
			N2 = (N2 + 1) % 256
			N3 = (N3 + Tbl3[N2]) % 256
			local V34 = Tbl3[N2]
			Tbl3[N2] = Tbl3[N3]
			Tbl3[N3] = V34
			local V35 = Fn21(Tbl3[(Tbl3[N2] + Tbl3[N3]) % 256], V33)
			local V36 = Fn21(Fn21(string.byte(Arg4, I), V35), N4)
			V32[I] = string.char(V36)
			N4 = V36
		end

		return table.concat(V32)
	end

	Fn11 = function(Arg, Arg2, Arg3, Arg4)
		if not Arg4 then
			return ""
		end
		local Str10 = V21(Arg) .. "|" .. V21(Arg2) .. "|" .. V21(Arg3)
		local Tbl2 = {}
		local V31 = string.len(Str10)

		for I = 1, V31 do
			Tbl2[I] = string.byte(Str10, I)
		end

		local Tbl3 = {}

		for I = 0, 255 do
			Tbl3[I] = I
		end

		local N = 0

		for I = 0, 255 do
			N = (N + Tbl3[I] + Tbl2[I % V31 + 1] + I * 3) % 256
			local V32 = Tbl3[I]
			Tbl3[I] = Tbl3[N]
			Tbl3[N] = V32
		end

		local N2 = 0
		local N3 = 0

		for I = 1, 384 do
			N2 = (N2 + 1) % 256
			N3 = (N3 + Tbl3[N2]) % 256
			local V32 = Tbl3[N2]
			Tbl3[N2] = Tbl3[N3]
			Tbl3[N3] = V32
		end

		local V32 = table.create(#Arg4 / 2)
		local Len = string.len
		local V33 = Fn21(string.len(V21(Arg2)), Len(V21(Arg3)))
		local N4 = 90
		local N5 = 1

		for I = 1, #Arg4, 2 do
			N2 = (N2 + 1) % 256
			N3 = (N3 + Tbl3[N2]) % 256
			local V34 = Tbl3[N2]
			Tbl3[N2] = Tbl3[N3]
			Tbl3[N3] = V34
			local V35 = Fn21(Tbl3[(Tbl3[N2] + Tbl3[N3]) % 256], V33)
			local V36 = V16(string.sub(Arg4, I, I + 1), 16)

			if V36 then
				local V37 = Fn21(Fn21(V36, N4), V35)
				V32[N5] = string.char(V37)
				N5 += 1
				N4 = V36
				continue
			end

			break
		end

		return table.concat(V32)
	end

	local Tbl2 = {}

	for I = 0, 255 do
		local N = math.floor(I / 16)
		local N2 = I % 16
		Tbl2[string.sub("0123456789abcdef", N + 1, N + 1) .. string.sub("0123456789abcdef", N2 + 1, N2 + 1)] = string.char(I)
	end

	Fn12 = function(H)local M=W[40]();if not H or#H==L[4]then return L[7];end;local W=M[L[6]][L[5]](#H);for y=L[3],#H,L[3]do W[y]=M[L[9]][L[2]](L[1],M[L[9]][L[8]](H,y));end;return M[L[6]][L[10]](W);end
	Fn13 = function(L)local y=W[40]();if not L or#L==M[5]then return M[4];end;return(y[M[3]][M[1]](L,M[2],H[1]));end

	Fn14 = function(Arg, Arg2, Arg3)
		local V31 = V16(Arg3)
		if not V31 then
			return nil
		end

		local function Fn22(Arg4, Arg5)
			local N = Arg4 % V31
			local N2 = 0

			while Arg5 > 0 do
				if Arg5 % 2 == 1 then
					N2 = (N2 + N) % V31
				end

				N = N * 2 % V31
				Arg5 = math.floor(Arg5 / 2)
			end

			return N2
		end

		local V32 = V16(Arg)
		if not V32 then
			return nil
		end
		local N = V32 % V31
		local N2 = V16(Arg2)
		if not N2 then
			return nil
		end
		local N3 = 1

		while N2 > 0 do
			if N2 % 2 == 1 then
				N3 = Fn22(N3, N)
			end

			local V33 = Fn22(N, N)
			N2 = math.floor(N2 / 2)
			N = V33
		end

		return V21(N3)
	end

	local function Fn22()
		local N = 0

		for I = 1, 6 do
			N = N * 256 + V19(0, 255)
		end

		return V21(N % (V16("4503599627370449") - 2) + 1)
	end

	local function Fn23(Arg)
		return Fn14("7", Arg, "4503599627370449")
	end

	local function Fn24(Arg, Arg2)
		return Fn14(Arg, Arg2, "4503599627370449")
	end

	local function Fn25(Arg, Arg2, Arg3)
		return Fn12(Fn10(Arg, "dh", Arg2, Arg3))
	end

	local function Fn26(Arg, Arg2, Arg3)
		return Fn11(Arg, "dh", Arg2, Arg3)
	end

	V20(Clock() * 10000 + os.clock() * 1000)
	local Tbl3 = {}

	local Tbl4 = {
		97,
		98,
		99,
		100,
		101,
		102,
		103,
		104,
		105,
		106,
		107,
		108,
		109,
		110,
		111,
		112,
		113,
		114,
		115,
		116,
		117,
		118,
		119,
		120,
		121,
		122,
		48,
		49,
		50,
		51,
		52,
		53,
		54,
		55,
		56,
		57,
	}

	for I = 1, #Tbl4 do
		Tbl3[I] = string.char(Tbl4[I])
	end

	Fn15 = function()
		local N = math.floor(Clock() * 7331) % 65537

		return function(Arg)
			N = (1664525 * N + 1013904223) % 4294967296
			return math.floor(N % Arg) + 1
		end
	end

	Fn16 = function(Arg, Arg2)
		local V31 = table.create(Arg2)

		for I = 1, Arg2 do
			V31[I] = Tbl3[Arg(36)]
		end

		return table.concat(V31)
	end

	Fn17 = function(Arg)
		local Tbl5 = {}
		local Tbl6 = {}

		for I = 1, Arg(2) + 2 do
			local N = #Tbl5 + 1
			local V31 = Fn16
			Tbl5[N] = "&" .. Fn16(Arg, Arg(3) + 3) .. "=" .. V31(Arg, Arg(6) + 7)
		end

		for I = 1, Arg(3) + 3 do
			Tbl6["x-" .. Fn16(Arg, Arg(3) + 4)] = Fn16(Arg, Arg(5) + 8)
		end

		return { qs = table.concat(Tbl5), hdrs = Tbl6 }
	end

	local Flag5 = type(gethwid) == "function" and gethwid or nil
	local Flag6 = type(getfingerprint) == "function" and getfingerprint or nil

	local function Fn27()
		if Flag5 then
			return Flag5()
		end

		if Flag6 then
			return Flag6()
		end
		return Fn19(false)
	end

	V22 = Fn27()
	Key = getgenv().Key or _G.Key
	Name = LocalPlayer and LocalPlayer.Name or "unknown"

	local function Fn28(Arg, Arg2, Arg3, Arg4)
		local N2 = Arg2 + #Arg:sub(Arg2):match("^%s*")

		if Arg:sub(N2, N2) ~= Arg3 then
			if Arg4 then
				error("Expected " .. Arg3 .. " near position " .. N2)
			end

			return N2, false
		end

		return N2 + 1, true
	end

	local function Fn29(Arg, Arg2)
		local Tbl5 = {}
		local Tbl6 = { b = "\8", f = "\12", n = "\n", r = "\r", t = "\t" }
		local N2 = 0
		local V31 = Arg2

		while Arg2 <= #Arg do
			local Str10 = Arg:sub(Arg2, Arg2)

			if Str10 == "\"" then
				if V31 < Arg2 then
					Tbl5[N2 + 1] = Arg:sub(V31, Arg2 - 1)
				end

				return table.concat(Tbl5), Arg2 + 1
			end

			if Str10 == "\\" then
				if V31 < Arg2 then
					N2 += 1
					Tbl5[N2] = Arg:sub(V31, Arg2 - 1)
				end

				local Str11 = Arg:sub(Arg2 + 1, Arg2 + 1)

				if Str11 == "" then
					error("End of input found while parsing string.")
				end

				N2 += 1
				Tbl5[N2] = Tbl6[Str11] or Str11
				Arg2 += 2
				V31 = Arg2
			else
				Arg2 += 1
			end
		end

		error("End of input found while parsing string.")
	end

	local function Fn30(Arg, Arg2)
		local Match = Arg:match("^-?%d+%.?%d*[eE]?[+-]?%d*", Arg2)
		local V31 = V16(Match)

		if not V31 then
			error("Error parsing number at position " .. Arg2 .. ".")
		end

		return V31, Arg2 + #Match
	end

	local Tbl5 = {}
	Fn18 = nil

	Fn18 = function(Arg, Arg2, Arg3)
		Arg2 = Arg2 or 1

		if #Arg < Arg2 then
			error("Reached unexpected end of input.")
		end

		local N2 = Arg2 + #Arg:sub(Arg2):match("^%s*")
		local Str10 = Arg:sub(N2, N2)

		if Str10 == "{" then
			local Tbl6 = {}
			local N3 = N2 + 1
			local Flag7 = true
			local V31

			while true do
				local V32
				V32, V31 = Fn18(Arg, N3, "}")

				if V32 == nil then
					break
				else
					if not Flag7 then
						error("Comma missing between object items.")
					end

					local V33 = Fn28(Arg, V31, ":", true)
					local V34, V35 = Fn18(Arg, V33)
					Tbl6[V32] = V34
					N3, Flag7 = Fn28(Arg, V35, ",")
				end
			end

			return Tbl6, V31
		end

		if Str10 == "[" then
			local Tbl6 = {}
			local N3 = N2 + 1
			local Flag7 = true
			local V31

			while true do
				local V32
				V32, V31 = Fn18(Arg, N3, "]")

				if V32 == nil then
					break
				else
					if not Flag7 then
						error("Comma missing between array items.")
					end

					Tbl6[#Tbl6 + 1] = V32
					N3, Flag7 = Fn28(Arg, V31, ",")
				end
			end

			return Tbl6, V31
		end

		if Str10 == "\"" then
			return Fn29(Arg, N2 + 1)
		end

		if Str10 == "-" or Str10:match("%d") then
			return Fn30(Arg, N2)
		end

		if Str10 == Arg3 then
			return nil, N2 + 1
		end

		for K, V31 in V17({ ["true"] = true, ["false"] = false, null = Tbl5 }) do
			local N3 = N2 + #K - 1
			if Arg:sub(N2, N3) == K then
				return V31, N3 + 1
			end
		end

		error("Invalid json syntax starting at " .. "position " .. N2 .. ": " .. Arg:sub(N2, N2 + 10))
	end

	local Handlers = {}

	for _, V31 in V18({ request, http_request }) do
		if type(V31) == "function" then
			local Flag7 = false

			for _, Handler in V18(Handlers) do
				if Handler == V31 then
					Flag7 = true
					break
				else
					Flag7 = false
				end
			end

			if not Flag7 then
				Handlers[#Handlers + 1] = V31
			end
		end
	end

	if #Handlers == 0 then
		Fn3("This executor does not support HTTP requests.")

		V13(function()
			LocalPlayer:Kick("This executor does not support HTTP requests.")
		end)

		LPH_CRASH()
	end

	local function Fn31(...)
		if #Handlers == 0 then
			return nil
		end
		return Handlers[V19(1, #Handlers)](...)
	end

	Proxy = newproxy and newproxy(true) or nil
	local V31 = Fn15()
	local V32 = Fn16(V31, 18)
	V23 = Fn16(V31, 24)

	if Proxy and getmetatable(Proxy) then
		getmetatable(Proxy).__tostring = function()
			return V32
		end

		local function Fn32()
			if not Proxy then
				return Fn5("http_proxy_missing")
			end
			local V33 = getmetatable(Proxy)
			if not V33 then
				return Fn5("http_proxy_metatable")
			end

			if type(V33.__tostring) ~= "function" then
				return Fn5("http_proxy_tostring")
			end
		end

		Fn32()
	end

	local function Fn32(Arg, Arg2)
		local Thread = coroutine.create(function()
			V13(function()
				Handlers[1]({ Url = "http://127.0.0.1/", Method = "GET" })
			end)
		end)

		coroutine.resume(Thread)
		task.wait(0.01)
		coroutine.status(Thread)
		local UserInputService = game:GetService("UserInputService")
		local Flag7 = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
		local Tbl6 = Arg
		local N2 = 0

		if not Flag7 then
			Tbl6 = {}

			setmetatable(Tbl6, {
				__index = function(Arg3, Arg4)
					N2 += 1
					return rawget(Arg3, Arg4)
				end,
				__newindex = rawset,
			})

			for K, V33 in V17(Arg) do
				rawset(Tbl6, K, V33)
			end
		end

		local Clock2 = os.clock
		local Tbl7 = { tick(), Clock2() }
		local Flag8 = false
		local Flag9 = false
		local V33 = nil

		task.spawn(function()
			local V34, V35 = V13(function()
				return Fn31(Tbl6)
			end)

			Flag9 = V34
			V33 = V35
			Flag8 = true
		end)

		local N3 = tick() + math.max(1, math.min(15, V16(Arg2) or 15))

		while true do
			task.wait(0.05)
			if not (Flag8 or tick() >= N3) then
				continue
			end
			break
		end

		if not Flag8 then
			return false, {
				Success = false,
				StatusCode = 0,
				Body = "{\"success\":false,\"message\":\"Authorization request timed out.\"}",
			}
		end

		local Clock3 = os.clock
		local Tbl8 = { tick(), Clock3() }

		if Flag9 then
			for I = 1, #Tbl8 do
				if Tbl8[I] - Tbl7[I] < 0.001 then
					return false, { Success = false }
				end
			end

			if not Flag7 then
				local N4 = 3

				if Arg.Body then
					N4 = 4
				end

				if Arg.Cookies then
					N4 += 1
				end

				local N5

				if Proxy then
					N5 = N4 + 1
				else
					N5 = N4
				end

				if N5 < N2 then
					return false, { Success = false }
				end
			end
		end

		return Flag9, V33
	end

	local function Fn33(...)
		if not Proxy or not getmetatable(Proxy) or type(getmetatable(Proxy).__tostring) ~= "function" then
			return Fn5("http_proxy_trap")
		end
		return Fn32(...)
	end

	Fn10 = Fn6(Fn10)
	Fn11 = Fn6(Fn11)
	Fn12 = Fn6(Fn12)
	V24 = Fn6(Fn13)
	Fn14 = Fn6(Fn14)
	V25 = Fn6(Fn22)
	V26 = Fn6(Fn23)
	V27 = Fn6(Fn24)
	V28 = Fn6(Fn25)
	V29 = Fn6(Fn26)
	Fn18 = Fn6(Fn18)
	Fn6(Fn33)
end

do
	local Fn19 = nil

	Fn19 = function(Arg)
		local Kind = type(Arg)

		if Kind == "table" then
			local N = 0
			local Flag2 = true

			for K in V17(Arg) do
				if type(K) ~= "number" then
					Flag2 = false
					break
				elseif K > N then
					N = K
				end
			end

			if Flag2 then
				local Tbl = {}

				for I = 1, N do
					Tbl[I] = Fn19(Arg[I])
				end

				return "[" .. table.concat(Tbl, ",") .. "]"
			end

			local Tbl = {}

			for K, V30 in V17(Arg) do
				Tbl[#Tbl + 1] = "\"" .. V21(K) .. "\":" .. Fn19(V30)
			end

			return "{" .. table.concat(Tbl, ",") .. "}"
		end

		if Kind == "string" then
			return "\"" .. Arg:gsub("\\", "\\\\"):gsub("\"", "\\\""):gsub("\n", "\\n"):gsub("\r", "\\r") .. "\""
		end

		if Kind == "number" or Kind == "boolean" then
			return V21(Arg)
		end
		return "null"
	end

	local V30 = Fn6(Fn19)
	local Tbl = {}
	local HttpService2 = game:GetService("HttpService")

	setmetatable(Tbl, {
		__index = function(Arg, Arg2)
			if Arg2 == "JSONDecode" then
				return Fn6(function(Arg3, Arg4)
					return Fn18(Arg4)
				end)
			end

			if Arg2 == "JSONEncode" then
				return Fn6(function(Arg3, Arg4)
					return V30(Arg4)
				end)
			end
			return HttpService2[Arg2]
		end,
		__metatable = "The metatable is locked",
	})

	HttpService = Tbl
end

do
	local V30 = Fn6(function(...) return ... end)
	local Str10 = "bh_local/runtime"
	local N = 8388608
	local N2 = N * 2 + 128

	local function Fn19(Arg, Arg2, Arg3)
		if Arg2 == "route" then
			if type(Arg3) ~= "string" or not string.match(Arg3, "^[a-z0-9][a-z0-9_-]*$") then
				return nil
			end
		elseif Arg2 == "game" then
			if type(Arg) ~= "string" or not string.match(Arg, "^%d+$") then
				return nil
			end
			Arg3 = Arg
		else
			if Arg2 ~= "global" then
				return nil
			end
			Arg3 = "default"
		end

		local V31 = V30("bh-local-v1|" .. Arg2 .. "|" .. Arg3)
		if type(V31) ~= "string" then
			return nil
		end
		return Str10 .. "/." .. string.sub(V31, 1, 12) .. ".dat"
	end

	local function Fn20(Arg)
		if type(Arg) ~= "string" or #Arg ~= 64 or not string.match(Arg, "^[0-9a-f]+$") then
			return nil
		end
		local Str11 = string.sub(Arg, 1, 22)
		local Str12 = string.sub(Arg, 23, 43)
		return Str11 .. "," .. string.sub(Arg, 44, 64) .. "," .. Str12
	end

	local function Fn21(Arg)
		if type(Arg) ~= "string" then
			return nil
		end
		local V31, V32, V33 = string.match(Arg, "^([0-9a-f]+),([0-9a-f]+),([0-9a-f]+)$")
		if not V31 or #V31 ~= 22 or #V33 ~= 21 or #V32 ~= 21 then
			return nil
		end
		return V31 .. V33 .. V32
	end

	local function Fn22(Arg)
		if type(Arg) == "string" and type(V12) == "function" then
			V13(V12, Arg)
		end
	end

	local function Fn23()
		if type(V10) ~= "function" or type(V11) ~= "function" then
			return false
		end

		if not V10("bh_local") then
			V13(V11, "bh_local")
		end

		if not V10("bh_local/runtime") then
			V13(V11, "bh_local/runtime")
		end

		return V10("bh_local/runtime") == true
	end

	local function Fn24(Arg, Arg2)
		if type(Arg) ~= "string" or type(V7) ~= "function" or type(V9) ~= "function" or not V9(Arg) then
			return nil
		end
		local V31, V32 = V13(V7, Arg)
		if not V31 or type(V32) ~= "string" or #V32 < 75 or #V32 > N2 then
			Fn22(Arg)
			return nil
		end
		local V33, V34, V35 = string.match(V32, "^([^\n]+)\n([^\n]+)\n([0-9a-f]+)\n?$")
		local V36 = Fn21(V34)
		if V33 ~= "BH5|1" or V36 ~= Arg2 or type(V35) ~= "string" or #V35 == 0 or #V35 % 2 ~= 0 or #V35 > N * 2 then
			Fn22(Arg)
			return nil
		end
		local V37 = V24(V35)
		if type(V37) ~= "string" or #V37 == 0 or #V37 > N then
			Fn22(Arg)
			return nil
		end
		return V37
	end

	local function Fn25(Arg, Arg2, Arg3)
		if type(Arg) ~= "string" or type(V8) ~= "function" or type(Arg3) ~= "string" or #Arg3 == 0 or #Arg3 > N or V30(Arg3) ~= Arg2 or not Fn23() then
			return false
		end
		local V31 = Fn20(Arg2)
		if not V31 then
			return false
		end
		local Str11 = "BH5|1\n" .. V31 .. "\n" .. Fn12(Arg3) .. "\n"
		local Str12 = Arg .. ".tmp"
		local V32 = V13(V8, Str12, Str11) and V13(V8, Arg, Str11)
		Fn22(Str12)
		return V32 == true
	end

	Fn6(Fn19)
	Fn20 = Fn6(Fn20)
	Fn21 = Fn6(Fn21)
	Fn6(Fn24)
	Fn6(Fn25)
end

local V30

do
	local function Fn19(Arg)
		local N = 0

		for I = 1, #Arg do
			N = (N * 31 + string.byte(Arg, I)) % 2147483647
		end

		return N
	end

	local function Fn20(Arg)
		return function(Arg2, Arg3)
			Arg = (1103515245 * Arg + 12345) % 2147483648
			if Arg2 and Arg3 then
				return Arg2 + Arg % (Arg3 - Arg2 + 1)
			end

			if Arg2 then
				return Arg % Arg2
			end
			return Arg
		end
	end

	local function Fn21(Arg)
		local V31 = Fn20(Fn19(Arg))
		local Str10 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

		local function Fn22(Arg2)
			local Tbl = {}

			for I = 1, Arg2 do
				local V32 = V31(1, #Str10)
				Tbl[I] = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"):sub(V32, V32)
			end

			return table.concat(Tbl)
		end

		return {
			gameId = "x-" .. Fn22(V31(6, 12)),
			scriptRoute = "x-" .. Fn22(V31(6, 12)),
			placeVer = "x-" .. Fn22(V31(6, 12)),
			plrsUids = "x-" .. Fn22(V31(6, 12)),
			mtHooks = "x-" .. Fn22(V31(6, 12)),
			hookedMethods = "x-" .. Fn22(V31(6, 12)),
			vandocount = "x-" .. Fn22(V31(6, 12)),
			sessionCheck = "x-" .. Fn22(V31(6, 12)),
		}
	end

	local function Fn22(Arg, Arg2)
		local V31 = ({
			verify = { "ok", "data", "val", "version", "challengeId", "sequence", "responseSequence", "auth" },
			step = {
				"ok",
				"data",
				"payload",
				"token",
				"path",
				"nonce",
				"gameId",
				"selectorType",
				"scriptRoute",
				"payloadHash",
				"encryptedPrecheckKeys",
				"expiresAt",
				"responseSequence",
				"auth",
				"reportToken",
				"reportPath",
				"runtimeToken",
				"runtimeOpenPath",
				"runtimeVerifyPath",
				"runtimeRenewPath",
			},
			payload = {
				"ok",
				"data",
				"manifest",
				"chunks",
				"chunkId",
				"chunkData",
				"version",
				"nonce",
				"gameId",
				"selectorType",
				"scriptRoute",
				"payloadHash",
				"responseSequence",
				"auth",
				"protocol",
				"manifestDigest",
				"chunksDigest",
				"chunkCount",
			},
		})[Arg2]

		if type(V31) ~= "table" or type(Arg) ~= "string" or Arg == "" then
			return nil
		end
		local N = Fn19("banana-response-v1|" .. Arg2 .. "|" .. Arg)

		if N <= 0 then
			N = 1
		end

		local Tbl = {}
		local Tbl2 = {}
		local Str10

		for _, V32 in V18(V31) do
			while true do
				local Tbl3 = {}

				for I = 1, 11 do
					N = N * 48271 % 2147483647
					local N2 = (N - 1) % 52 + 1
					Tbl3[I] = string.sub("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", N2, N2)
				end

				Str10 = table.concat(Tbl3)
				if Tbl[Str10] then
					continue
				end
				break
			end

			Tbl[Str10] = true
			Tbl2[V32] = Str10
		end

		return Tbl2
	end

	Fn19 = Fn6(Fn19)
	Fn20 = Fn6(Fn20)
	V30 = Fn6(Fn21)
	Fn6(Fn22)
end

local V31

V31 = luraph_runtime1(Str8, buffer.fromstring("\151k\143\173\6\192\127\226\165\207F9\204t\239gB\210/\254\220R\223\219\243\185X\170i\248yJqH;A\246\193S\169\136]\243;\157\154\238\u{F17A}:\241\175\134Q\205\236#\249F`\174\175\142\152\133\145)\7\17&(\152\22xS\29\251]/B\139Jg\21sF\23\130\212jY\194A\3\144u\220þr8p\168\151\161\165w\n\213j\7\235\"\27\244\19'}\130G\250\153r\144yf\173\143v\157\174\151l\29\215\25\0R\151$[\28\237P\157\200x\201˸\229J\129ag\153j\200hT\129\241\217GE\r\213\237`\156\17\159\231n\207\20i@cD\179\"\213ZI\247S0\224]ƻ\28\134-\25\28\220\"\252~G:\136:\156ގ\157\198t{\174\206\206\30\28\182\\\138\248Rvb(OT>\2039\144\236\173g\221F:Rz\232\211-y'\163\0\254Q\254\253\2173uk>&\29\246\205\242PٵV\19<5\7W\129\186\166\213l:Q\169\138W\148z\218i\156F\190\190\223\198\u{EE66}\253\19\151q\168 \233^с\29\222\251\186q\5\31\149p;/Tjn\28P\144\191q? \246y\2539@\152\192\143\232q6\240^\170\29\tý˫\181\147\231\191\243^5\2529\225\4\8\25x\197\20\179C\133O\209]5\161f\187oq\171J\14\175\158\232c3\nm&\220\224{g,\r/\20)\146\202\2\190T0o\244mJ\18\185\137\187\228\4$O\174\142\244\159b\179\199aI)\217\253\18ۥD\180\140x\23Ŷ/\220c\2445\224\24\174\2161\0\144_\242\3c.u\29\209w\245W\242\11\11/\19\231\31\224t(W\19\23\229W%\16\251\247b]פ\30݈B\217r;\190b\147\182\2428\202O\rp\180\148@\160)\185G\2082a\27\15\17\21z\172[Ii\200\200V\180\220\2C\21և\164\132\212V\195ƍ\141\20\27\r=\129\146;y\245$:i\215\25\192\205\24\2321\144_\180\149\243ދ \188\179d\155H\141\191\2412\182\25\23294\131\229\4g\186\144\20\2381\229\\\178^\167\156\16\159\0014^\239\136J\28\150\5\207\23q\220\29\143\149\241\\\199\195\28\251\228w\180\169f \168\178\29)d3\183ˁ\148\179a\u{7BD}і^\191\20!V9\172\137\166 \228K\27\149\0\247C%\14\167\248\216\219s܌\"\135iS\179\14\229O\190J\145\"\216\226\222~U\16\242I\196A3\160\12ZW.\183\n\156\137\187\155NTₒ*\6y\139\164b\161R-\141\166m\204VlY\193\143\208\14\232?ۚ\252\138S\0185\252 \140\253x]\239\2054i\137/^{\135\129\172b'\129\186\244Q ß\28[\29\129\173Mo\254]\153\29\24y\222Ԫ(ë\152\253l\150d\11:\154omr\235\158%a\6\2216K(&\173\252\172\179u\200v2\15==\17{%9\247\219\251\234YF1\8 \253BpK\17՜\214ܹ\242\221WV؇\241\237\190\150\236+\213\8S\160\224\152r\0*y7\160\231%\170\158\128\233]\246R\6\206\31\231\150>-\0\172~\142\3\215v+gk?\18<\154\170\145r\209\245\197\14\157[\202\248\4\150\185\t\170\31\227\25\177\148ƫ\163䢄4^P\177W\0027\144\166\177\158\"K\217jt\161\180\147\134.\228\144-g\173(_IS\139X\210̕\216U\158\145\234\195:\\\165O?\133\172u\183\160\157\185\162;C\184\169\177r\234\161n\132\169k1\154\149\161t7\226\11i\232\201չ\232QN\128R\231\18-\251\170\181d>7\0290\130\185\233<\182\184\176\169?X2u\209\229{\163\178\17\127y\201\29\218\201\16\139u\190\169\24\147\227\230@7m\237\167\239\30\162\166#\149\147H\2368$\213\253\246\163\11\242i\168\7\235\233\233\199\202\249\192b\146\176ki\1784O\210\203\31\6\3\255l\1484\239\213,z\215\5\"o\195\218\219O\167\17\20\132\245=\227h\187A|с\u{9D}\247\167\224V'k\241\213\250A\146\235@X\30\145\240!%>D\236\193\156\31\206V\8\172W5\133Ѹ*ٺR\2Y\175Q\127\156\186\183\201\0235b\251kC\183\191K\152Fs\233\253\134o\205\u{601}&G,b\169\159~N)\29\0124E,\234\137\\\172\223DF';E\2210{8\201\250\250\237J^\\\26\\%Ep\187\151^yEw\14c\203\240r\148\226氖dj\227l\19\202jW7JPmNT\7ڎ\128(ۭv\8\147f\226\239ʩ\164\210\234\184^\238\187\0216\152~n\167\247\242Y\255.\252=\214\233X\206Y\138\195\0237\230p\204'\193!\185\250o s\2G\1877Q|cЀ6Ud<\237v>\242\206\202VZl\236\14\2\247\205\253EY\161\208PW\211r\165\241*\198g\18\18ý\178]\195\229L.\216w\147\7\171lT\242\153zq\25ehF=ܽ\29\153\178E\230\192\4\180\138:+Y\20\00404\16<4\165\224\204\243\184Z\135\202T]\228>,\164\191&%ۀ\7P\203\0084\183Cφ2B\190\31\151ؕ;ǾN\152\244\129\201UK\n\216C\252\179\164\2\247Bu\0143\151\152\223C\220n!B>u>ȫP\213\19e\186s]\30\14937\r%\226\226\151\205\201\r\234>g\1666$\237Y\216\250TK\21\2283㩕\220\224T\132\251\180*+f\172\8\193\192\149}9c\241\184\152K묽\170t\215oa\142\167d0\168e\216i\141n\174\127\185\153\254\247\170<\222d\195=\r\28\250\187w\7\180 \155<\187\228k{z\140k\163\165\0Y-o\188`U\179\170ڵ\134\199l\172Z$\155\227\143#\6\195\229\255\199\208C\233\193\182^\188\160\194\24o\211\6.i\199F\248\3\245\240\205\127\178\135\nh9\1\236\175]\133\12\183\16\137\180cn\246\255\251\184\221?\153L\184\11\225\2M\22\183n\130\3\218H\0062\252\223\244'\179\136-\211\201\214[sn\12\232`\177\"FId\207\4\205\205\16\175\18q{-\213\200\208\3ay\15\153\138K\192R\152\155\249\220\214 1\163\201=\172\192\163\198\193\127\252\250\239\160G\179\209\231ԏ\166\213Xxj[\217\239\209̟\165ַT\146\2238\163\138O\198C\17w\176\"\152\251$\191C# ,\232\170]\239SV&\20:\193\178\242\184\14=\184n\223*\161\12\217r\142`\210_\127ض\15\24#\251\152\146xN|x\129*r\225f\202\243\133\182/qagT>l\16\r\220\28\154\14,2\165\2103\154n\233\18_\227c\229\177\194:\157(=pY *h-\225\232\151p\145Eι2DiS\24877\227.\218\229#\15\0272{e\166\200\27\217\5\208SA\2109]\187\186CLyʐ?Fe0\128\149\31\209\228\198؞\130\172WpP\255@s@\1701k$Kφ\159\164\166\183\0\\\16\233\ttV-\148\250\244\214D\157'\131\31\181O\247\28\30\255{\176QZ:г\205\18vM\23\143:թ\245W=)\241vӓ7<\176\16\238)\\>\232\0146\3{^\29O\185\180\240\201Y\143\215F\187䏉\200\11\8\179_\148SA\131\206U\166x\247r\170\165L\239<\16\18f\173\176BI\133\171L\2ض\229\223,Rލ6\"\155W\158\23\1\189\191\240\159\0066\29mᆴ\30\176\230\171F\2209|>A[\203\22s\176\23\14\133o\133\241\31\153JOr\170嚅\175\159\206r\3/\178\145o\28\224\143q\139\24\147Pc5a\2521K\142Bc\222I\255U\152`θݐDJ\255\229\133\28\30\20\240\254{\203\29\127\240H\146p\225\143\213o\185ÿ\219e\31\18\153+Q\235\12:>)\157tr\156\236\249\232tK\142\0157\240\234}-!e\20\228\227M\19\6W\180\31X7ѱ\227\179\"S\156\179.\210\203]\156\139p\30\140\0W\0\28.\25\177\230\1574\189[\255\251J\242\235\22\n\31\208ko\253j\172\t\raq\139b\249\154-\190\183\130a\1878\21?j\186\229\197\221zg\181\166\204q\253p\138\11x\239f(\13538E\227&C\250h&\192Q\137\151\174\168d\20\170\150\184H\31\237\195\196(\147aie\244\1794\4N\148\191\239\135\230\141鉝\254&\177\249\129Ћ\212W@\202\19\238z؏\171\249eH\255\245\15\162<2\224-\248\128\172\246\166\229\0045\139q\181\234\240\190\30\200\11ޟy\31\216`\164\2061\224\151\149ހb\240\131xL\17\161\207\15X\178lԄ\14IFt<\129]\190^\138\178>X\21\185{\17\161+\171\165\7\7e\188\175\17:\172S\24\193;\132{\150\143\188Vv)\252`\164\254\142\186tvT\165``\163\1672\129\148\2546Ţ5\147\200\245\151\151d\209\251\156\189Tp\134<V\191*\240E\30\157\192|\168\210rX#\27\26}\137\0275\255W\230*!\29Y\172\144\6\16GA\151\184\230~G\145K7G\129\15\23\171\168\239U/x\198\3N\195T.\152\228\208\29=\5\223\216s\11\188Y\187ν\244\30U\24\152\14]7\4\182q\235\1926\164\153V\140\173\146\249\237\255\190}\232yY^O\216~[\u{76D2D}\196\224\167.\254\205u\151-4\167o\26\128\16\221ƌ\237:\229\240o\205\to\28\158\146\140\170\178\19\172W\7\26\n\213\226\242쿢L\244 \145-\172L\251\26\175\15\156\210w:\186\213s!Y\159%\197FI8-\241\247\247\31N\17\238>\134\31\144\210~./\249P\137z\221\255-?xv\176\207\250F\157\27\255U\146h\156B\242\0141\2440\131\129!k.\232Ϥ2B\"e#\144\219\207\\Xf\242|\23\254\189\191\192^\128\215_\210\27\242\20\186\253\177\192\25@9a,!\2\251\136\188\253\141\168\162x1',\167\241rH\180\243\171\2306ѳ~\240X|c\243ɡ-\208^\0\tï\174\141\162\1823\129\228\29\2107e\212\8g(\242\163\21\236>\255\3\206\224\23\rև:G\22\140&>\187\2319Yp|˺\155{\240\154]\8\23\128\165\230\187>}$\238O\15\248}\252\130\226g\5Bp\237\178\192\23\155\134,X+\nt\137F\2198\185\11\1557\232\0203\140$\178\251!\154|nlY2L^\222k\172\0[\176z\11\192\181\254\240\132Z\"\136\214s\r}\133\186\180Xz]\161&\210l}+\199w\3\250\234\217\231!ș\217mzl.\138\144\138\25\161w\11\190\2\202\28Ve\"\164\249Ppm?\224R\\\21\192P\244\135\0O7:ɗC\157jFy\189\6\30_=\191\207XHm\149U\213~\181\208qǠZ\200\209\20\0\187\205ϡ\133\237\210&/[\185\0118\243I\216z\158\168\197#f\15\206\201\127\r\162˙.l_\165\132iB\244s\159R}k\240w\193\229\146.\240\149h\177\246M\2293=;*\130\243\207\253\220xy\207@\165u2]\235?\174c\227Sm٘8\23\148\247v\222\7\192@\219\236\230\143\211\239:\246K\206)۲\152B\208D+\219E\176Ҡ\224\28\19(\202'\181\202\234\250CC%1R\191?(r\208H?e\19\169\19\246(\18\150\212@!\247\230^g\138\20\7\198#؇Vr\234\1795/\161\229\\\152+$\2192\191\246\137\233\169z\n͘[B%\167\200:o\167\151\246Z\14C\132/\139\157?7\175\234\193\161C\172\5\249\185\30\178O\12\138\20\186f\r\131\215ؿ\201֘(y\186E_g.\252ۡ\165\164\211X\156\175R,{\148\208\232מB\137\236ܗw\t?ENGd\136\212\202\233#VD>\243n\196!\129\250\253'Zt\146\168\153\242\157*\145\215\0119qo\12\24\204j\130\236\14\216d\143{oi\243\184B\170\214\8\147!ѱ\230\167\241\255\195\2`\230\6\180\212\7P\147uJ\183\24\241ڐ\222\216to\250\130@\172\197A\144\135\164^U~D\169\"^\228yɒ\239\252\216@\230\179|\192\137\">d!\148|'z\14g\166V\1683\17\135\20\216\16\\\5/vq٬\156V\25\3\217E\252\t\141r\245\19\218<]\142\146%pz\170X?Ӱ\141~\207\246\130\254\178FZȍ\234r\225\16ߨg\31\167).\1331\138£F%\25*⍃\163\202\"\r\182=C\163\142\200\15\208I\249KD\141\151:\143\17mo\208\237\3\128\189Q\230g\192\163\214\249\16\168OT:\147>B\129\237\189\201|\226S{\152\5\186X;\138Ă\236_ը7RM/\206\221\26B\142\237\185\25\253ę\250\127\0037\212\225\194H\140\173\226W\192\n\153\239@\172\157\22T\169F\186NlmC\201+\21Q\235ԁ\1D\15\12p\156\236\254\202p\167N\0\237\167\206\243\215\223%;\247!\182\188\140\165\11\191\t\205w0\213\19\255;\24e2\n ^\168ь?\185\228!P\161O\187i݂\255\133Q\176aX\153\17\216/^\139q\162\2167\245\203\232[CVl`\30\27v؛\245\2G\0\200mҝ\174:\2380\0\5\8\159\185\180ƴ\15N<\24\176\4؎&\253ʧ\23O \184'\13791\232\173b9\203o\212\239\234\251k\191-\150v\175_J띬\254\219\212m\15\5a\31\163J4y\3&\16\148g4\169\24nvBf~\4n\174\27\212!D\131W_.\133\255\195\220\7\148i\222\20\231\2306\139l\197Ni\208~{\u{5FC}\152a%\188\238ӈ\167\246\177{ˁ\177\162\150r\214¿\6ŏ/&\192t\144\145\188a\153>K\209Ȟ\170\15\160M0\212\208\225\188\234\29$\210\215&\190,\252Q=\160&\248\234\11\1\1458!\250`\8 \165d)^\204#%\219\201\4\0HT\205j(\252Dr\179\144\180{\2\193!\r\150\4\202KS>\1501p\11Q\141\141\2=#8\155M\127\\,u\166\190\137\166,*7\127i\22p\161\1970X\2\128\20\246.滳\142=E\230\245\141b-\163)\235g\25\194:\24\136\170\239\205*\255\239\184\4\185\u{81}\163\255\251\135s\23VC\147\139\199yG\16\0\156\25=\179\243<\243\243\23\183\227\148Ά.\248\190\8s4jz\155\135\161J5\159\16\245\2015\1987a5\183\r\161.\253\188\205\11\0\148\131=_iv\0242V\0c}\20\151\1436\167\210\22=Iio\159\174\218&t\255\191G\206\11(\150jz6m\157\192\157\168yyB\248\226G\150 \23d\178aы\0ͥ\24\25@\166\176\r\219\tNi\138\245\130\244\132\\\172k-\172w0\1931\170B\248f\187\163\25\182`e\199̸\157\253\165\139\254Ԙ!|c\11g\207\244Z\t\14\0\253zm\\;x9\193\186\171\22\169h\nj\26\147\129\132Hu)DW\186\161q\186\205{\159\213\253\170\177\132\195\22e=?\20*\18\t;\252\243\21\161'\0022\173=da=\129_\218\209\253\209Sʺ-\229\178\0243k#13%\250\r\169\196$]\173\232\231\159]\1\r.\180!y\186\131Ɂ\167\7\17\243\27\0115\15<¨@\252?\254>\29G\231;\201\237U\247\160p\185qO5\130ó\r}\188*k\215\228\234\226\213F\26\193\218\21\254M\1590\203\220r7*Hɏ\161LE\248\140\190\180F\218\\\212\231\6N\203,\161\192 ;\214\11\154S\184\202e\245\250\149o\141B6qB\r\23rG7(j\139\152'\129\2555+\191\16=NlԪ(\203/\235:\136\245Q\31,\237}sٶ\11\194\31^0\133\171\21\30\147\2173[9\146\19\u{603}\211.:\130\146\14u\177F\195\244\184\191&.\188\230\135\\\2r\168z\217_\160\"\25\214 \151\195\225\159[{\182K<\19\181L)б~*\176\201kS\7\233R\186ԌV`\230\192\255\166\r\174{E\163\131\139\135\228l\180O\177\165?,\152\136\204d\156\1415е\131\\\132P\238T\160n\21\4)\20\163j}v\251!\153ú\230<\223Y@\164\225\16\153\29\219\0qf\253h\1?\187\245\206\11$F\159\145\137\226iȬ\190\136\30\244#\171H\251\n\0٪\240\6?2?jS\219%,\182\181~~\18Vp\134\223.F\139\254\152~\235.\8\232o\192/\247\243r\138\168`\171\167^\225\247\227\8_ޤ\210x1暺\139\207\253\26\240H\26\244\180\221\239;ŶK{\211\209\235e\202\255\183\251\181[I@\200\220\238K\158\4\143_!\31\0@̄v+Ye\209W\132?\142\159\21s\131\26\142]j7\189\249\200\16o\239\144\224؞\138\4>\134Ԯ\210H2)\0\241\246\188\228\n&\28\221\210\17\219b\244\238\235\15\147o\228\159\211%\164\157\172\179\\V_\248;\244]_zx\252'>Y\188\14\17\137\222\225H\233U\240\0226\188\186ϥ\11\227\216I\180\139f+\153\154\206>\141m7\138\252S\127\130hx{e\254\211.\246\226z\250\229ZA_;\171E>\206\250A\180p.\1450K\142\149Mޔ|+\14V\227\0069?\189\135Aɉ\204<\255o5\231.L'[_\134A\233\31\179\200\193o\u{EBF4}\186\172\184\1797\189ˢnX\206\237mzX3,ܞ\139\235&\208\r\245\20\169B\8ą\244\183L\133C\214 #6R\131\203+\127\230\245\236ۑ\189\161\183s\150\17\140\234\n\192Wƃ傑\224U%\246$Ԙ\226ʿ\1.P\174\228\17\243^\19\157=j}\11\223\248:ͫ\20O\179ߚ|O\241M(\232\214\232\234E\12\158\8\212o\223:ZDaj3Y-ӯwq\14\128\193\181\239c\3fc\255\5\233\168c9b\22\145\r\156X\181J\11\27\200#\150\133\204z\185\161\8H\224\249\30.?\246\227\141\195J\151\182Ί\15\167\8\253\160\191*\1\156\128:\15\208ֵ\245ߋ\n\132\173\25\214G\208\202\192|Ϟ\239ZFa\255\166u\215ew\184\188\t$ɲM\155\174\239R\148\219u\207\250\186\212\0199\152ꚀK\208.\220\203AX\15],r\12\248V\198\26\19\240Ys\20\202!\178\14\25\137g\222\213\198\15\194\0u\207\31\23\230\246\235\247\131Đ\166ڨ\243D-\157\213T\242\207$\15279\1742G\1=l\171\159x\170\136\11E5\174\245\180\1473O\227H\231:\209\216\15\210\214\243J\n\127\213{\248\188bɟo\244y\19\175\27Ν\8\187\129\228\200p\236W\205Y5\248\188q\14OS4\27O\176\150\222X\6/\11*7j\255\2553\u{7FB}\237q9f\7\163\238\201NM\0287\232p\243\142ɠ2%Ж˴5\192~\250\184\186\134\240\138+d7\19\151\219\232\156\232G\212\8\163٪QDx+:\26l]\219\246!\238\199\218\28M\188\2305\140Eє\149\24\157g\139\8\154>!1P\252/P\158ƫ\12\171M\225i\136\137\155\139\135\137x6\214,\235\2U%\144\244\190[\162\5\186V\219\0167$v\1486J2\6\155\n\155urzP퇿\153k\254p\208\2263\197^\240\168C\178ƭ\147\211ȥ\173SDT\243\189+Naq\217\218\232\26\8\178\0294\1616\186s\248na\nr\151$\15\222\25\248g\247\225\22GC\189\193\146\30!\6}\250{VP\170\172n\168\195!&\212\230LF<\\\187\162\245\140\233\190\225\235\202\240:\15 7\156P\227\0227N-\7C\223\8\242\254h\135\216\217\19\154\165\181\255Z\240*;Z\135n\1720\252Xg\173\127\"i\30\164\132ib4C[ȲM\241\145\193\181g\196憏{L\163z\228\197\218\247뜇\246n\222F2\225\247\246\132V\224b2\132e\24ܦ\2\0217\130\2156p͉\201G\232\155hw\162\218UJ\194\r3\212\7\n\253\237\176}\195ۖ\170\214\18Y\144\183\255\191$\181\166+\146\190\243\253F>8\139.w糲\236\165S\224_G\181$\21\134\217*!\12\218\nI\220s\24\152\27y\30f\t\158\246\141\243;\128\136ڻ\201\14\219XA\177>4\206\196<2\2\128\0088\127UH\246\0?\203\31\174\"8\16\140\2352\179R\169v/\236\1297\248\190\148\29r\170$\154\"WV\1FNh\n\208c\254@ &\180S\146|\189r\reߚ\195\227Y\16=#\149\186]wϢ\206}\172\169\2554\165\213\241\221gPL\228\212\242O_\15\160\2383\177\178י,1Uy\0033\146p\244\249\222m0\22\157xv9\158\244Ņ\183\134\1\155\162\2283d/X!\143\201}\30\136H\188+yP\131%\237\18\192\250\233`\166\148\183\201,3\171YD\6\139:\159\191b\165m\152\154}Q\248\172\20\146\197y\176\147ՠ\140\2C?\154\128\12\216\205\8gޔ%Y%\248\201\231\2oLF{\171X\138\8Typ\17\157\153؋2\31\169_\153}\142\228\247\184)\182.\234w\180\169\142\r\172\241V\7\150\17\133\254q\171#\28\22L\219\202\127\140\29\131X\146\18g\198\6\1528a\210\8'l\234\3\15\162\244\178\178\249\u{E75B}9'\245v,x\205s\224\255\214\22\202\243\207\tD\191\158g\186\180\239\215Y\187ϴ\0\172FZt\242\172c\243\135k&\167Q\238.\132´?\201,\159\19\166\247\4\252\21R\190-)I\7\128\157\151V\4ї\131\tj\162\27\188y\\2\160%\"B\254\131\194W+(6y\8\1#\135\4\0L\163\232;\162}\1688a\22\11Ň\26\31\131\142^\149\154\236z\166>\146\185\244\177w\153\132W>hr\254\237\19^\155#>\215\227\233\159\212\1襥8\2i?\185Lb;\214\r\163\26\164\210\19}\228@C\20\173*(W\5\164b\224L\138\221ϫD\27\230p\248\147\148v\234T\235\214\20\220\196\229w+z\231\247\242Jc\172\156\139$r\159c\151\176P֟aB\224\245\245\184H\249\208\r}0\171\153k'F<o\25\134\211\1982Sds\1429\150\5\202u\223\212\202~\5\249Bx\232y\146\187\0307\152\170\144\238H;\194\11\149\225\7%\183\6\222\254Q*\241\3\233lY\173\237F\132\202\254 \24\2?\248\127G\173Lrb\244F\t\189LwOB\167z\232\237\31aE\26\1919\1342-0\0*{<\169\178C\224_\248\187\218\212<\8\179SY\184\150\2\"\147P\136\250<\1859\180dQ?\1432\234\182\25\179<ֳe\193\253\160\20\255\191\245\220\28\2363\17\18b\142\153\145\165\192\173ւS\22\171|MH\r0\191\t\143\24\235\171L1ۿ\182\240L\128\247\216_d|\180\12\225\229\148\249\180-=\139\1298,\232\253\128\234K\185\137~P2z\255@*J\177lq\182{\18\30\\\195\193dԔ\160\154H| \155\188\230\240\185\167\245\136R7.\154\149\161\127\195湐Q/\250,\211\224鳃s\165n\0158\28j\211˙\1993\136\"ФJ)qk\174\182'\194\12\29\155~\26\192\255\136\142˞\234\216@\245\254t\201\236\219F\241\214ӴU̐\243\225\23\28\30\5f\0\189Z\238\22\170'T(Gj\27\193\185\0Rh\184\216T\0162v\184\6\3:\16m\223\2\236\181\251UwS8\161\158\221x\186mΤ|\132I\173锓Ă\r\250\194ø=ޯA\11\132\1566\187\193\4F\148\15\200.\29^\\\209\17\193\208(\250\197\18\191\19\222`\161\190TtN\161\250\227%\161~\235\26H?\147\164'\234uִ\24`\242\239s\12\148\226\204\209\205M\rK\234Ǆ\254_ \164\3\1447\212\253\161\20\135\186\2Be\2452r\\\243\180T\241\239\30\243\178I\227`͋1!X\162Z9\127\6e4u\149u\239ukU\184*\"'\180ْ\17\240\217N;y\147\141\226\198\2227hz\167{*\tt;*\18\148\192\0199\252A0+\149N,H\131\158Y\169\20Ml\240_3\165\145/\128#o\234\204X{\232&*\147\217;r\181:\254\16\222\204v\2072\235ez\17\190aI\217~\16\230\128\207l<G_\245΅\147\2484VsZ\171\\?l\226i\3\2542:\165\174Я\180\164\179{\181\250\186\241\185\176'\25\202\231)a\230\27\206x\136\1385)cR\157\154\25\219\28\226%\153\156z\185\160\251\212\127\172c\129\24Np\31\241\151\226\230Rl\230\253Mu\163\143T \1953~\225\207q\30/\171H%\218Q{\r\1863\132ܷ\181\253\185\191\185\160\133t\144r.\208\\)\147\31\182\141\2162.\235\236\139#\17\223\15#'\200\248\150_G=N\128u-\224\146\1646\14z\153\184\129\\\1\254D\209\238]\7L\0231\219\3\246\202\203e\185&B%\2404Q\207GF{\233\0245\162F\3\154ۀ\139\253\127\168\1905!\237\224{ ~\3\179\166\252igXmj\235BL\241#C\ts\141\26\199h\235\21{y\4\129j3A\18u\175\1357=`\221\194\23\130\215P\19\1668\254\180%I9\152j\129\154\30\149\159j\30\6\170\127gI\240|\241\242P@IG\188e\147ܺ\234&Ǽ\236\137Pm\23%1Q\12p}q\n\19\216\225\128\t\5\30\143\144:\157/&r4+\0180\27\202]\224b>\204\0k\172\\\229\16\222\11e\201\12\226,>?\133\140\136qN\8\190<\133\2334>\21|\142ܰ!\139!\158\244_\206Hv3\163\28\149C\215\226\228\225_ϸ\196\194\252\241\139\149Ck\163vuF\199]9k\11:\167\167l\153\192K\234\t>\228w\181\227g\\\221kyZ\r\246\253\186\16ވ\157\253\5\161 e\236\186T\175\234\\\128\235\247\225\242;[\187\19\165\129/\142Ub\243\188\23Y\t>'{\219B\16wY\247\132\161\184\rX\27n\206\250.\170\188\140Qc|\215\26\230G\189\23r\157\137Q:l\142?s\178\14_Ӷ\187\210\210wz\208U\161\225\134\227\146I\25w\162{\189"), {
	[10] = 55,
	[14] = 3,
	[8] = 20,
	[4] = 139,
	[9] = 243,
	214,
	[11] = 61,
	[12] = 21,
	147,
	[5] = 1,
	246,
	[6] = 112,
	[7] = 108,
	[13] = 8,
}, 490)

local V32

V32 = luraph_runtime1(Str8, buffer.fromstring("\25\140\173\153\30\244k\226\27\0018\165\255[:\248\6\155ج\225\176\23\31\187\149\239\250\194\206 \178#j\231\242\1780\242`\157AY\140\162^\12e4`pO\233\0&\148\140T\0\153\254lH\173.4\234\241g3\154M>K\187\204\213\11塧\240\240\169\137;\208\12f \152\146Aݔ\230\178q鹪\144q5\222\0\206)38\233fmk\21\244\177\249\15\183N\1543\243¡\246\223\192\192 \234\182[qĊ\209\232ss\23\244\149\226G-\254\158@u\211u\224\188eU\129ӥ7;\231\170\29\186\187\218\4\24\218E\236\235ٝf\31z,nB/\190F-\2105\151C\143\181^\169ͬL\242O\235\26\21\140u\19K̗ޅ\139NRH8oۿ\146\151\"\248ai\137c\194\tm\16\154\230ѱG\28\253\164\135 \31p>\255\197D/\"Y\244\224\167\222\nK\188\207n\159E6^6\195'\19\197v\151\248\213\194\254\134M\187z\128\249~ki\181\235O\142\246/\212\"rzv\25\186\182X\217ؠD\159\23\164\"\230\15¨ö\157\27\180\25[S8\137\141\218L\217T ]v\17\233V\188;51p\132\181\2377 \24\8\251_\180Ƨn\202ˎ\153\238TUt\236Q4\191\188E7۬\168\145\29\183\170%\227\142U\231\200t\14\213rw\183\30\236\137tAr\230\146\240Ӂ\141Q\170}\205ŀ\2215W\188%\234v\132\4\142\152jbg\248\208\225\148!\169(\244\229\28\27`\234\u{ECAD}L#\150V\207\249\220n\31\6\160@A\245\169\191\133\131쯄\184\146c8طw\155\223\30w\192\224K\19C٭\202T7\165|\194r*4\8\1281wvU~\248\232\195nI; w\237\227\226\27\12\187\198ų\152|\242\242\5o\158r\14Nd|\145\\\212\2O\30\240:\179V\235\18\151Üem\16\254\202\22\189K\169\22w|Z\139\135tI\244\15\2517\178\183\252\150!\1765/\253\244\237\1386M\152'\167\168\144#\194Os\137mx3\17ݺ7\202\230\21@\179\2ja'\191\22\228\249\181\227\172\246\134.\169\254\21\144\197h\246v\225\202\213\196M\136s\185\197\202B\134\n\235\"J\254\139\129\248\206\14)\134\146z\138\1894?\173oA\215J8\130\192En\178OW\160\253\17\140\252\160A\14I2,ZH\223\17\189\234\213\249\225i|\164w~\150\29xQ\190*\189\3\166\137M\234Q\244\175\216V\188\129D \163s 6\r\1862\145ﻶ@\237\217#Z\159\11\177\248\152%\214c!qBbB\206\1sSf\17\133e\6w\249\203\254\227䔄)W\173+\185\143_\6\22\158\191l\242\161$S$u\20zQ\178\149%\233\142\212\232\30m\148S\229\127=N}M\163\159\24\133\248\142\167\t\253bD%\"\140\8~\160\177)\135*\253!\218H*Z\30\152wF\174zZ\161\191\11\1666\225\24\201\193\31|an[\150Ef%*\159\170\137\208\237qF\164\147\214d\137\253i\181bsFƚ\1750\221\241\221\204P\151\250ʪ\"\17\255xr\0088\154ї\149\0305\162\141r\225W\151v*\193\131\162հ\148\199\31H$У\7Ӣ\2.\253\252\144\227\166<V\243\159ۄ\211\226\16\240]\216\219\21,\177\160o*\163\194zSOަ<>\138\18A\151g\216)\"\15 \2478\239\236\225\246A\253Q\177y\243k\209\206a4}\0\209i\1380\236\23\224\0[\164G\242\180|?X̜͚\169f\172\188\tܢh\171\224@\130\163\\\157\173\228y2\190\153\179\26(\180My\5\248\181^\248\133_\152R9\n\128\235R[\175b\163-E!\250\28m\252\229\228&/\181z\146\136\217\231tPf\139<\225NE\240\28U\176\232\135\2195c\\\178\231\28\145\151\253\196@\204ykL\190K\11#\134J\186\163\195`\189^\24\174\254\178\192-\220\193E\155\215m}Oĕ\223\239\182%y/\174\185\20\2316\234\29,\148\216\207)f\11\153\129f\134\206r\189\219\6\237ڜ \173Z'UĬ(62\20\28\192\220\4\128\201)H\231\2022\142\1\18\163\185\150\25B@$4Bvi\188;<~\1335\230\218%S\231A\248T\28\147 \133\253y>\146rn!k\16\12\236\141*u\191\175\193M5 u\30\235/E\174\168$\199\211p\u{8A}O\20*ʤ\20\164#\138\225B\139M6\12h\166\183\137\176\176\16\145`2Ͳ\180V\170\191#\230ȍ\1987\128\7\16\158\235\163\1=M\230\179\234\182\224\241S\178\136Rp\230\28\202\23\135\145Ԑ*\6\231\172E9Q\188\154\29\145gkϏ&\255\244\228@u\163o\221L7\189\174ǿ\200\233F\163\176t\n)D\n\201Aq\20D\211\4\26B\4\236\23\193\188\25?\161k\16>\169\189\n\250\11\16218\219e\11\210=\175\12\134\183\152\127\210\204k\t\186\225p\222P\253W9\255@\196\7\147\132\252\168'1\128.\132\198\195\244\220\218:E,\167\135\130\167\139\214\4\186\130\2011\133\19|\226t\193\186\212+\255\132&\229\175\16\2161\170k\19717C\20\1399\214\222\7q\4R\214O\206\2375\205\21\132%\205.l\240#|f\184\1346|\18]:\168vǫ q\31&J\2322\175\127J\1935\183\132k\187\28\136\174w\3M\233\20\140\169\209\5\141}\u{558})`U\251\143\5\236\150\207\27\1453:Ў\222\7Ż\254\180\217$\29\227ɤ\241\n\23\196\7\243\240\225\17\155\12\8\134\196\203\22\255\225\243\212^z\148gC\130\4 Ԟ''u\179\164\244'~\2\253v\234\170m\159I\239\212k\18⩹T\18\189\187h\"5\209\236aeUTZ\225\161j\22W\150\157\133h\180\179\1596\18\170\142\229u\21V\127\242:\1543\1932\211\245\171:\26R\166\136\225\193\154wv\19\213\28A\243\155\11\230\165\201.\1\211\12$.w\11B\172\150E\31\28\166\133\131Z\150\4\139\2056W\30֯\244\t\23\223>\133\30\239\193 \167\249ˆN\216^f\20\12\177\127\176\131w\176|\19\181\232;\219,\2\145\146\165\191\243\163\200\213a-q\254i\147V\149v\138`N\202\222h\29*~{\145ka2\29\186$\131\253\233b\230\4\212i\136\203+vY\240n*\6\220\28\167\239\234g\19C\226\193\177\155N\253\226EPu\30l\167\22\1369̜\tp\25L\234lǀ}\"\160\241\20\22gd\"\174\143\28U\137\216\192\132\nD\200\26^\154j\210\"\25\136VQ\164g\208\240\135\2|\\%\162lb\221m6\189)\137\230\"\21+\2-\217g\17x_\252\203\201\7\133\167\173E\144Ō\2517ǈR\31l\238\170L\31\17gq\210\244\145\165=a\130\137Gf|\4\176\189I\1878>W[\191FɓZd`6?\193\157\140\158\29\177\154\5>\131\162\240\n\160u\163ST\20\179g\241gO\255\232\147\7ʺ\235@\249\232\179\221B\154O\16l\147\r\130\218V\168\208\21\253o\251\1505\166\239\168M\160\248@\173fş\3\11\23\136\217O\20\155\228\r$\240\132\19Jp\254##\22\193I\176\245\220\"\231n\183+\188|'ƿ\173\170\196\215(\1721ܖ\174\164M\252\139\252\1865R\3\136׳G\143\170t\7\190\1560\242\198\252\239\219ngf\231?W$\136\\\170\147\0\4\251\214\2091\162\30咛\189\187Ԑ\236M\"] \199 \255G\138\227Ѯ\24\127\255\22\224\1\196A6\149\233\251\212^\19\189%kN\201\30\140\1796Ы~\255\t_\212;\216DB%\226\14YT\208^)\215i\129x\0279Kĉ\141\218[Ow\176\255B\1388=(b!\18\183\177&\24{EK\19-\153\2\230v\253\6\162\231F\198\211ኀB\174\23\221\27\8\190q\193\152\26\135\162B\174\138\183>\178\240AE٫\1676\1553\252\156FPl\189\31\171]\141\14\229\u{F705}r\227ԣ\214\203!\223M\178\175c\29S\n\2\19\174\146\243\192\203\28\169k\181\223Z\151\180f\178h\27\158\211\232\194\206\195O]\229;q\184αe\209H<s)\24\169\14\31\133<n\1782t\166\209Y\255\186\0߄\26y\4U\207`\133}\253;J5a9\196\2467\138\231\217:\20>\2510g(\194\200\233\2309\0\183\19\17!P\218n#\141۲*\253\184\129-\184_=P$Z\212E\170qJ\234\128$\2361\12&+gA\230Ѥ\248\18\166\131\141?~ңN\21\1+b\194T:Z\252dL@dh\8\8\158k\27\251\2475Q\227\1855J\203\234\164e\193S\163G˭*\159he^\146\145\11\5\134t\218\225]\146\137\176\185m\179\249\192xX\144\24\214-\159\204\127\226\145wj\213dY\137\191u\180Äd\t\227\203\193\16\2\151C\160\203t\171\227\246\235\192'\139\135\"\2316U\228\19\194\231p\20\26\223zg\230p\179a\188\137g3F\189\146\239\198H^k\205\246E\237\171\188\21s\209\6\137,\185\18\146\14\3l\137\1738O,\20\128\175\185_rZ\235\20\136\252.\12U4\148\7L@ᡤ&\143^\169\26\136ON\162<\206ڭ\238\220\252\211\233\28\23\146\140[$g\234\31\t\240K\186\167\241J\221\239JL\151d\171\179}\247\164!\22\188l>\134\193\135\219J\31n\187\165\227\242l@\162\229(\145\130ו9\143'\142\25]\254՞\11h\16q!\246\2495\199s\217\195\1\180\214p\169\147\169d2\173(%\22Xw\208\\ƣ\229\220\0\"\149]\132{\153_XY\168\"\184T\142R\229\206\23\24\186\24\224h\199r\148\16ra\238_\243p\2267Y!\142\167M~/F\8w5\245V\136Ôۗ\170\224[\212*\2{\28\17\243h5מ<\148\230,i\192\244\142\187Y\217\4\182\154m\235G\187.ݺ\213wK\170\11\144z\21Y\238K\184\2\24=\152\19e\227\3O\253\180e\202\127Ƣ\161\245E\16\152k_\173i\193\130.\27\249\17i\184\245to\27x|\156\168u\244a\212\235\150\5귳I\186m\244\148\191'\7d\188\169\159\12\203\248Z\146.@\16ޒ\31O{\179p\205,\11őM\3}V\14\233\207aam\134\r\5\1400l\5z\177$\216⯗]S\8+\239,\22_2\144\217\2272\175W\225\3O\250'nk\185p\192\252Fy\239\146.\157u\253\246\187\152\2270\173D_\rt$V@\21~j\255\152Ю\229t\227.\144\150\180\236\202\29\250\140Q\237\212u\15]\178\134y@Zv\136\201\250\248^\213I\157v\26\189>\230\231w5a\144\22}g\129Z\23'n\200L\255\245\4\29\2057\27ե\210\17\127b;\29j\165\242o)\21\180a*\128?\145\31Lj\208\22iX\192\27\0w\242-\134\153xg\152Ɋ3\8\154\250m\t\6*\153G\211\196*\146\249\244\182\27P1\226ڴS\182sx9\148:\213\226O_J\130\182>t\145##\2218O]`4\12\155@\236\27\29ݡ\148l(\131UK;\8_P\210\225\255gr\184\251`\11\"xb6\245h6\144\2339$KV\176\31G\212\206\225e/\227\189iY\135\157ʫ\181\12nR?\r[+@i\6XK\175\175Lxoh\128\155\172\0167\20\1897.@\6\146\206\198\3\25<5\23y(\224=J,\0020O6Ï\157k0\193\0278oG\240\186&\5\233\22W\153ũ\163\\^=W_\3\217y\194\227\176;\234\212\237\178\144\241\208\0259\181\230\151\224d1\2377 J\193\231\142\255\151Q\130\8\2476\6\26#_\184\244\252\196qB\141\2\18\220b↘-\185\128\206H\227\222&\181d\16C\29o[\193\11\190\248\165\179\8\te*\15\30\215\206\26Ԛ\3\222\225so\15z\148lyP\206)^\225\168\r;\152~Ո\221A\237\154j\152:\242\209\30\23\218.\194\216\219v\238\181\19\11\19\2135\149\29\155sK\174u\201U\133\197:\164\247\151\134+(\216\217\248\6\2053OR\133\151&\180\28_\150\189\24\183\166\191\11\235r\169\136\248\254\193H.\217\212\219Kw9\r\244\166\231&\183\186\215\11\181E\164\2032\148Ǫ\241\135\176Ǿ\183MPV\237c\166\159\0\239\190\243a\208\192\23K\198^\157\1794\202\26\232E\134ҭ\220\24\165\214h\nu\247\29a3ieaE\208\1\u{58B}\127\186`\t\192,e\136\u{80}\158\147wy\231\203\2\24\195x\02839d\0\5\217\0196M\127\180D4\145\253\139a\167\4\n\234@\26\149Dt<\146þ\141\252\129\0269wG\182L\236\178S\11R\239[L\248\227\141>\146i\179C\188+Ƒ$H\135\180\28\135o\143\162\182\135\137\244$~\161\155\162\154\147\155\247\167\25\235l\176\164m\249\27\214\211\12ؠ\225\\\165\137q\0}\206R\2228_\183\144\183TS.v@\248J\29\214rG\128\201Z}(]\152\137\16\240\245#\145\164AI\14\170\161>B\21-\159o\25\158E\192wЬ\176q\201j\214\23\234D\1884%:\178u\188Q\230e\139\214\234|\\.\160\150\164\2272\216\7ꄐ2k\21\231٬\17\218\194\233\178\192-4\229\152+\rUs\14'\222\02528\231\219G$\222\251\235/\236\17\1738\0\12\127J\1\192\162\140o\218k\159\14\232\214\251\197\127lo\241<\130e\30y\218]\u{85}\21\1441\252h\232\"T\235\1349K\247\140xR\138\7Qq\206\222\23#\177\0s\220\231!˹\rVE\210[\204\195\199Q\230\208y[ \139\165\172sۮQ\4\188*\16}Ř\131\238-A~\158\6\221\198\249=\209\23\221C`J\163\201+w'd\199\u{61C}C<\185\236\1797\2334\0Xz\182\211\212n\196q\238\151/7C\201\15\146e\1523\223R\238j\31\0 5\\\t\207U\213fv\2168k\147\140\0296\r\210D\217\12\136\196\251%?\16\25\254{\172\0147{\212>5\171\245\129\19\239-\248y\151.\nu\130/M\210\26\151\156@\197+\5\171\248\252\2255ԔK\184\2251\3Q\0224R\194\197\228\240\5\151٨x:\6\185\25-\18\187R\231\142f\214W\195?\135\182-q\130s9\4\249\133\24a\160{\220\235\139YZv\5\225\1686#S\167s.\241+\0045ofQ\148\180K\157\168\225_+\r8\24>}H\138B\213\199|\20\194G<?E%\225\252\11\r\168\252\150ۗ\190\171U\19\12嵇K\26\224\239\146\1<r\178G\233\139f\232\147\207\194Z\151\0\194Y\211\210-\187^\172\24\140w\135\212\254\253\238n\214\234\1505|+Ƽ=5O\n\22d\172\24z\207OH\155\198m\220>+\253&a\173\14\146\177Ġ\235\250\183\148\135A\191\217f\188W\250\212e\132\159{\146\219\4\148\1762\n\"\154:\185\179\168l\129\n>\"\199\236O\224\2lh4XC\181\1824\254\140\251\137S\r|\235U\181+h\219|\181\30\197\29\198\213Y\129_\142\12\156_B\137x3\138\143b&n\137\0{b\136P\"\4-\218\216I\148\232\28ݛ6/\8\240\250\184>]]_\237\193\142\134\130ޕO\198\23b\235\144\197Tꯂ`\219P\210+\156\196%n\223;\156\17\134\135\194\221.\254qY\209|h\190\149?\28s\229\147\0317\176\7ϩ\159Q^\226\22I\222\234\130z\166:\203\238\23\152\147\207\26\211s.}\232\175*\227\2245\175{\197]\184wnˍԑJ\157K\3\240.\163\193\243n\165e\198J<\169Sx5?\149?]rT\251\11\189\127\232\170i\193G\155\244\2܆\175\2465\130\158z\190m\183G\229\2 \127\157\185\3\6\23K\208M\"\1500\215jJA\185+\237c{y~]\136\253\157\r\200A[\25\12{\246m!c\20\rv\158\n̨n=>\t\207\227LNa8dnRe\t\18ທKTwԗ\254\242\248\24<\2040{<\209Xv\176\249\26\142\150\152\3\130X\140F\16\164\160\242ܟ\183:\21\188\31\131\2\153\27\237\24Ǌb\142u\146!D\236D\211\213_\171\168dh\156\131(`\22\130n\248\206\237\231\186\203\223\247\7\153H\169\190Qj-\16\146Z'\248\173.\214\2400\145\20S\129a\16\159\1875\r\200\15\174\255\138Q[i\11_̡G\250oY\181\25b\193\20\159x\154CC\249\1697\140y\171\129h,\u{929F5}\233\254D\1\205))\136]r\195.r\243\180o\207)Y\138\148\254\183\146AL\235\209R\190N\176D$G\14\254\238mf\25M\31\16K@a$\12\150\166\162\170@\11\156˴\239\25\179r\2\146G)\0\241\0B\228\173\218\r\7X\3!\1426Ɓ\241\172>\166\21\225\140\\\133z=r\215'\11χ\153\136`\20\191W\228\242\182\u{5F9}\168\0287~\247\219\19\2143\154h\174\215+\241*@\217uU\168\2529\7}\185\145Z\181~4\241oErK\245\252\145\179\189\132\177\164:'>Hs\192\165Kjr|/\197O\193Ǐ (\209\19\202\227\149Q\185u\145\189\171\230qܔ\151\u{33E76}D\152\229;\225\199\209\236E\203\"b\18x\186l\26+\18ͻ\234\187&\130:\208\7A\231\240\211~um\243X)\238\2388\202\214\197\12\21\136\139\152\182\203\220!\209\216\201yY\5C\16\177\204\16M\130\163\151*\227\175\253\"\t\127l\25\228\174\230\2298Di\7=\n\21\159F\162D\171e\7\152P\212\22\204\197\2329ؑ\195/\25\250Q\242\230\215\31|\207\242g\236>\188\198K\14\154N\193\231L\141\230\166.X\26\199k\180\198\6\n%\144,\186&.\158\1585\248\140,\1831\139]\16\185ɑ|\22\175\31\142\218q\154\254!\219\229\30\r\242\160V\204\225\17\240\26\u{601}\150\165\136<\249\141 s\190\u{38B}C\28\190L\186;\132ўB\225\205\231 H1\179\209i\169\252\163\254\141\132\144\227\u{38B}\182X_8\160#\230\225A\227S\226\tj-]\205\218|3\152)\254\0\25\17y\145֝6u\163\233\16\168\244^\1503\212\200\8Ϙ\151\143\205a\"3u\213.\229\219\240$\226\251\209oaΚ\159ZY\131e\213\12\207xI\7q\6\142\221șy\4\229\16\15\191\230\165\29Q\242\193%D\141\0006|\129$\169\250\130\208݄)\178\138\159\11\152'\t{>\7\138lH6\241Yc\234U\131\230v\2\169\154\2382\t\138\149\133\231\163a\250\1*\222Ѩ}\12\184p\194\14\208\22\142\213\24\214H\213:\226<\201\6hG\26¢\15嶤\238\252\156\173\164\250\6RLx\145\20\25إ<\169\4\182;\158}\240[6G>A\6\223\236\137!\7\0\142\1392N\to{d\226U5\234\157^\180{Ж\18\154\12\"\204\227\253\22mV\196j7\177\138\138:ڿ\"\202M\16B\16\191\254!\r\24\134UXK\216\230\134y\1521\162E\244x$2MT\198]\225\226\2\210Q7\215V3$գ\2465\210h\127-\140\8I\255;\198\2223\212p\237\140Ʊ\"V>\16-\19\212l\253\193\182\23122\14V\189\162\198\26\174{a\176\229\224@z;8\130\224\150\229\188\217=\26Jnw^n\190\149\224B\229p\246\1766g\158\1907\28\142\5F\29\160S\172\180\1920J\180\16>?\143\238G\11\213\6\150ueD\222\248\245y\25\200\228\182\\xu\3\136J\135\203\31\163N\175R\176\193\249\14286\146\133\211P\188\19t\142fZ\160i\168\131r\225\242\146\186\206\195[\30{{<\148u\153<\242\221\238G\27\242\206\234d\146\17\128^7\174\u{61C}\242z\30$\157X\245\167\135\236CSr)\137\174e\168۠\188qPC\190\190\144\235%\rF\20\220\194\1\25S3E\194\202;\132\189\171:\154\u{5CC}\192\22a%R\188>;\135\201\245\167N*;\148\18\20\166wNn\233\17\171\204\242#\213\239Qb\242\215\197\2406\132\185\158\211Nv\153\171[\238Q\t\4\231\195o~\212o.\148\141\254\208\246\127\245\191.\4@\155\19\144D\181g\167\246%k\18<5\128\185\21J\255\159\193)#\30Ԫ\215P]*O\243\21\3Ծ\188\n\155\25\170&yxSKxLk\148:\189B\169\1448\152\243}\127\232o\29\27\172;\147T=~s\4CKu5P\229\152\210>\152\202\210\29\244\15m\237\189sD\250\144\232\8\130o\227˅\24\246\201<\16c\143\197J\216|\180\3\251p\8\227\170\3\238\189e\154\215W\143`k\207L\189\145\254h\30Om\154\146u\181\7\130\151&\244\131-Rٹ\221UM\24\27\161\239\25,\2372\2\171O\160\172\227Bn\185\18U\178\136\248\206D0;$\19.Q\197\28\17\155\249Mh\140\127e\14\219S@\142\6\232RV\251^e\200G͐\134uD\146hr\184Ϯz\0218\2232\177\12Ӿ6zT\133\203mp̳\1958\250\172\168\14\153\190W\241\149\17\195zh\154\172\29\245N\r0\20{^\132\203 {=h\138\12/\161\170\170\142F\169y\203\250\158\196\t\178\1]\169\232\222^\190\168\163\195\222\2412+\188G\28\161\152\131jM1\161k\225\149\207A\197\20\199k\239\144b\4\25\3\181\5\143}\188\183\11\173\207'\144kYiB\17\159Pqѽ\139\1599q\151\21^\245c팿\156.g;\131m\234\21\187\153\199\197\200\202;i\132\31\148\244\211rs\240\187\153~{<\t\235\157W\160\181\15\129dt\17\140\175!y\178\152\21\135l#\187\7F\189!ɺ\139\149\127\243\0\146ٱ\196\225\12\1\244^\246\143$C\253\216\240\228Wc?\222e\0\182LOTU\247\160\132O\27\149\29\217\25Zp\19F\241\205\205^`/l\26e\225\242\145]\254=\165\212]\196姷\180\r)I3Է\249;˱xF\226\190t\174Ϗ\140kx\168\182[d\20t\225\206\199<\254$\245c\231#)\153\221\232z\151oL\22\28  ҥ\27\184!\127\r$T\133r?|\163\190\161\132\2076\189ŝ\171\189\128\171m\166h>\145\244\6e\149F\236\21\236\170\15\170\201t\248\169\180\234-!_\162\191ݵ\182In\30\147\218G)Ŝ\134+i\191i{\180\132\178\16\196P\15ֻ\21270k\0\204\28\160\196vq9\213l\186\248\205\249=\243\142T,\176\211h\221%X\255\t\178\157\151\234\219/\171\143m\218\2\178\186͏\29*%\145Y\213=a\172&\180\133\129B\229\185J\236\11͂\215m\235\24\28\0293ϫ\31\209Z$\2oo\2VR\193\166\206\232\2385f\3^e^\250֪\145ގ\234e}2\252\170X\237\163\216\2309\135\198\210\n\161\228xϬ\152\177\238\138(\219\255\r\251\245\177Zr\194R\178\2492\152\158z1\r\t\146\19\12\30C\189CՇK7?wa\204\231\20,\1802\252\225\6mb\176\"\239\227vC(^.\181\227|JF\230f\26E\16\11\27\132䉨\198\240\224m&\143\29I\221\\Ey5L\202\224B\2324݂yd(\193\1966\155\251\26WE\188\194D\188\254Y攫\1\184Q\166ҁM\128\180\n\232\222\t\182\214C\245\rBf\5J7ջ&x.\31\151\173@i\215H\156\166T\165\tB\194y~\216\250\229e\255S\226͙\215Ts\253\223%\".\223n\187\178|\19\134\196\11Ț\252KG1\146\166\159\147\1910N\189\210!\241\172l\128\u{FBB90}љ\226\1464[+\19\199s{\253\t0<|6\199\235r-$'\n\\.>0\146\u{F20A}\146\167=*\nY\0272\134Q\250u\222\250u\191\135z\213`I\31\186\5(\176o\\\16\0\15\146#\202٩\232\5\167\4['\230\30\139q\224\153o|\1999\163\193A;\171\177hFI\194Q\153ߥ\158\245}\157\26\169\135\136\2306\145\168>\140\162\238J\173ح-\127i\n_\187\128\193-\253\217\240\222\204\24\30>\174\145\128\167/\132\156\1281l\213p\14\136\157\0\211~\250\160\19A\127=\174\143\12\212P)\134\147~\232\0\11\8\141Ѱ\1340S\176\249RX\146(\128\179\0\31\174+\r\237L\213la\170\254\244'\12\1\232A\158\243ϊ$'\27y%\144\226)(\236q\14\17\215\223l)\191j\1437\20\3\t\193\248\178M\136\nY\238`\250\176\4\243\143K]\11\2\174d hp\215W\178\219d\183\145?\194\20: .\1323@\t9\1569oz=\25\165!ﹺʓ\12\157Ҵ>\215@\155\130z^c\16\244k\168\246\146y\242\133p\247]!`\31Pǎ)\228\140D\189b\8x\198\2073Ʋ&\148X(\226\160ߙ\181\207<\242^\249\168\158Q\158E3\6\142\154\222\252'o\218F\249\191\210LX\172ӒU!\ny\148zE\207Z7\210B\186&?+\189rZ\170\205\197\26\248(\206REBϯ\155\127\250\22(t\252\180\224\145\6\224V\241\223\245\251\169:R=@\231Z\225\147\207\14\142\"\255T\139\176\247\167\157\183\215\195\224]/4m:\133\1418}\176<\146Sձ \182|'\236ӾB6\1l\224\178\242\230C\142\12s\128\154[C\170\7\1882]x\2106\146\"Kە\"}h\250P\14\139\177\247\230Nܹ<*}\2210Nz\248?y\145\138\152\252ѕg\182\253:\28\170\129\190+\234\225\131\250\206\0065EN\159\175\240\153G\t]\131Ի\\,m^\147[m\17\190\16\227\207ˮ*\247\rM0\140?>\239\135\248x\24\231\132V\187O'\151\176\207\207-\205d\146\165v\235\25l\7\167\245\179\173\240\185\224\1(\31V\1616\133\8\230Yj\26\245V\151\u{F2FC}\6\u{9B}\2\219sR\150\\\147\247\175O\240}\196.\162\11WƧ\142\135f\127\207R*\170\194\199h\6\252\2428\171\24\160qdxX\181\26a\160\183\186\136\159H\5yi\241\142X\191oZ+\147\176\197>\181\172\14\151\16Fe\31\15D\184\233\183Z\26\2371c\182i\160/\193z\247)\230\139\214\222\0\2379<w\218\24FFU}Q\166'\159\182\155\191p\19V\154|:\177\248\244R\163,-\191\184\183j\21\"\153p,\30\209ȇ\22\203\205؉\222tJ+\0\138+\184)\138*\4\191\197 \147l\249\16\158\208@\139m\165\185h8#\140Э\222\238\15\143q\200n\212OMM\204Ƃw\176ES?G\186@\130Å\212I\148]\143\236g\230\u{AD}\137\231\155{\160_\243\237\149~\2443\199\0077}\211t\24T\15\185K@\171\169yW\236^\27N\203\15\u{F1FC}\174\252\221%U\147\174\136\199)\221\220k\174Xz\198\\\177\177r\141ת\154\19ɖ\151\133\235I\175F\203\235\1\133\254\152*h\195\226=w?\213\20N\n\236\27\161g\190\208Y]\248\15;9V\253\2423(\166\224\175/j\247\164\25\137\153AL{\153\209}\26I\n\221qdͶ\174\131\132\251\1521g6\134H\169\140C@U\247r3[\25\184\\F_j\21\133O\138\246\17\2\163\169\11\170\229I\170骬J{\166\240\189ޞ\0R\141;\232$\152\161\237(-/ف\195\218١\1524\149\152.\127\128\8\182\229Er\147\206\0\0260\220 +\231v\16]g\208n\244Ś2\206@\19.\22\255\31\163˥iqP\155q\243Ś\172+\214\7+\215\202\222L\26\245J\255s,r\0083z\11.\4IL^\16\179\190\205\14x\20538\238\2\181\31d\174\27\155\221\242\135\141\251|\191\178\232\20\151\239\220\245E\5\\\230<\234\255\177\168\240\241\188J\1\185\19\28\2530\18\15. \143\146!P\199\\{\188\192ٍ\169S4\7S9aFP\186v\224\19\237\252\168B!\254\226y\211\31M\19(ꡁ\215<\25\172\240,\2516\252 \195\192\235#_T\8\134\162\128\167d\193$\152\21\154p\216\11y\173Z\200_\rǇ\8l\249Ng\152\174ӈ#\\#\153sU\rn\176\216\28\r\182\211(➐<\175u\209\28\254$\164\213\27\136\u{E9BD}'\151\u{603}`b\20\137zj\4Ҡ\220!1\2199;\229r\6\210y;\213f-7\238\134\254\170\171;\185\161\129\24\16N\135\253uH\0ɼ\192j\221\29z\7\172Oya\136\128\189!\t\18\237\205D+\161\234\14\24rj\180\153]\133y\133{\n\241\28\25\24*\r\20\197^\230\15_2L\253\225\147\254F\2413\221wYYV\"2\147J{I\139\134W\31Ԅ\17\8~\204/~7>\1529\145v\130\226I\184\239U\143\160\137\194\8\224\156EW\t\162{\224\184\23M\161\181\1563HĖ~\2177\198#|ǩ\192\159:\\\230+gh\6\22\r\188\177\18\130m\153\146b\243'\225\144\221\0\\\215/\178E\216\249\29m\140\189\202VUZ\165\t\181R\11\0240{\240\238\201\250\203{\136\4p@\2363d{\127\217%\208\206\0\141\191u\16\200\27r\225q*x\196+@\1\169\191\163\131\7\236\12Cs\245)U\7\7\171\153؞)\1\0\194c~\127\241]hiE\241\21\129KIi\249V\14\1Q\251\31\16\0\254\166\1374\251ឤJ\143c\7\186I`\237\19\191\171\3%\137\197cO\0_\241\240\3\188ϱ8\17}\147\168gYې\142\163\216ӻc0\2137\171\157$\131$\1841\250<\179/\220~>\147\223(\n\247\129\181\135\1790R\225\187,\202=s\236\213rR\8L`\1293P\133\t\151\n\141\209\29FS\211\20\135Gg\194\2418\189u1\4\19\146\27\253\244\2382\181\235\18B*h7\27\2515y\140\136#b\194\15Ǚ\158\165Ig\185\149\227\139*\215\16\11\212\3\241\148m;\26\150\246Ǿ\232\169_\27G6\143/ౝ\228. \218\14\28\193ɓ\4\247rp?\t:\201\2300#\207hR\158\31\248\243ʖ\145.\241F\254\189\131\8\181É\203U1\135\168\172\193\241\237\14ÖM\155\221\248\179\164\128/\245\146\164\"\28<\12\255Zx\127\14cs\252\151\146`l\168\195\29\20G>H\193\211\245Z_\244z\187\154lT\236>Ĥ\162\nB\24\226&\127\167J\250\1660g\241ٜ\163l^\172\160\219h]\187W\170\226&3^|\178\149\176\168\197\127\138\232\187/CS\186E\221\n\161\6\151N\165\235y\157\161d\228\132\192}\226\t\r\5`\1643\188\tYY翀EY\163\243z\232\139]|\187]6x\143\23hU^\14\22\133\28\191\201\199V\156\137oӕ7\0\232\170Q\29\2311\167w\184e3\225Z|-\162\240\231\236\252]m\208l\154\186\196\6\235zI\164m\210\206y\16Y\142FR\176\168C\158\234\184\3w\1566Z\186q\25b\239\"\170\1585\162oR\31r\242JP7\177G\240\201d\7\26$\226\215\2\191@wԢ\127\137\153ѝ\250\127\238\1402\11\229\247\170.\24\169\209\204&\221>\174k\216\2\227\247\146\245\21\170h\202\31\".\130D\216\234P\233\27\135\185\235\188ś$\168\154\178rE\178\187!\131\241Gc\25\129\199\215\223K\18hd\25\169\173P\225\136\243!0Z\25s\231\14\28\142\215F\129\148\237\214R\129Dl\215I\136lC\217\n\230\1583\3h\2074n\245\182\227ї\168!n\161[\223Ǉ\254OP\169\181\242\249pk*\211\20\28`w\0\235\226\160$6\30/8\181r\186Ĭ\228d\168-8\"N\153nH \152c͂v\163\26\161U׃\227\138@\167 \179\176u\137\250\176\174\217ئ\227\233|!++3Ht~\6_\164B\129\173_\226\139G\171\190\172\207]!XQ؋\207,\2266\233\193\244rL\232\208\207'sX\190h\154\130\238#\252\128\2\212l^\146r\128\146\150G\210 -\236\184\29k\\P\161E\144\223\211\228\214\236!#|\176\220\205\7\229\157\0113!\131\n\14a\230\15\204-\217B\6\204\252\169\158F\177yQ\159F`<\220\210\255\211nG\165\11w\176\158\16\220\201¼H\235\141\247\201k\181\132\156#2ex\132j\1336\174\172\149Ύo\168\231I\0021\225\140\223\8\132D\252\187\180\242\254?\194\252\233\153\227\244\242\244\24\170\136\146 [\195D\240\175\233\242tx\253ˡ7MI5\243d\179\205\200\127\167HD\227Bc\5\172Y\1955\141\189,\181\251\131\224\236\158\238\237v\149\240\4\3\229އ9\208¶\150R\136\3\202r\nP\26\148\196F\253)do\131\226\148}j\212C\213\207|y\153\214\"U\135\157\t\247\191\251\235n\226\\\1789\194D\200\25\166\209\127?/O0\228\251P/\160:+\153y7\248\\\0287{fd\183\17x\169\243[4\168\250\243\153\219\8\199^\139\243D\166\145\1627\0059\210\4dH\138.z\11u1\245\242\178B\230ewu օ\0307\234\237\132(\181X\17[\219i5\247c\0286%S8Hi<E\251A\209\246߁\209\214Ӹ\225\133\234\215\0006?d\157\214L<\148'\212\195\17\132BTԟ\146\15197w\20\138e\244\138\176.\31\244x\252a\254\216\234\181\222\206\217\28\237\27Ԃ\160\180\6\23\130+?\241s\6zh\176\189\239\200}\17\237r\137\128_\7\t\231\239膦\195 \3\237VH.\163\136\174;<\139\179\204\208\n\131`\14\131\146\227\250\151-qH\2525$l\169&\157|9\148\21679\148fd\145\1!\239,\226\212\226\211:KM3\141-\130\1\196\201Y\137ÿ\1368A\150&\150\189\17[%\2125oY\159\206\"\132\254\237ݺ1`\130¦\153\127%\214؆\14e\156\1\193\153\241\177Sx\21\19\247d\250\"E<\">\149\6\218\252N\218E0\129\r\190\231\128X_\167:\133\206\7h\127\5\128\147\249\"\243f\158ޙIP\168\27\252?\174\165X=\217zM\146\1\157,@p\205Jv\239`\154\168\26\173\26\200y}\5\224\1763\238e\28˭\242\211B\7\6L0I%Ҋ7[I\169˃\141\217!\194\217\11\11H\217Ϗ\2\130$\242\195\31\249/\154\166\30(\164\157\218?3\8\144\134\31\248\233\2394y\229\0040K\176\231\135\249vm \150e\3\2079\245}W\146h\177\234e\160\167\255et\230\221\15ߟ\1:\183\188\161\221\5\131\128~A\2159\1413P\221}\249\225\198~°ۊ\239\1290\197u\182\0268\1729<f\186~B\147)9\142\158\205q\163\178\132{\201\15\5#\153ӈ\3\\\30ޑ6\12.\231\143Ea\177T\203\19\6\255n\254\184T\188\235x\"\169\3\223/\201j\225ܼ\197Xd\225\30\151\191\250\226\18\248Y\185\182\4?QN]\231Bۅ^\29x\29g\195\218%ڍ\228'\187\18\140\245\144\145\16J;\141\28Y\140CB\202\251\205\16\132\127\rd\138.\245\237\229`\247\137>\7\244)k\155'\28\22[ph\"\224\238A\185\168\177RF\3\230\213B\143p5\251K\8\153\161?\186\223f\216\224o\193\2234\188x\214ċN\255\145\161\3\219\15*\131\137\152\195\250\12\145\226\226\197њ\7\244\128+\171Vo\1566\178&\4G\227FH\24\242\246|'\216\197\211@U\151+\176\1777Wa}r\217r\127\158hI\141_omaBW}j;*oƁ\159\166\21Z\19\215\226\23\165<)\175T\198i\138\253\149\t\137W\210\22\135\174\127x\245P\0061\8o\249\164\27\24\128\135N\162\247\216\252\208>\180\227\134\217r6\187N \165~\22\177\12\6\231\221\206\219\16\8\252en\200Y\194p\176\225*\241\253\7\151\138\r 6\187e!\139P\163\153\\\171\r\155\160u[\141\175\206:1\243\31y\234u\204b\180\211Q\149\246\5\217e\189\\\18ߵ-\128\167l\227Q@\221\217E\249\8\144\245\230\231g\0156\4\154\176\138m\30\11s\242\8\243\187\236\23\242\241\2513ˋ\226\243M \t\195\14P\174\n0'\161\31\195E\251DCO\217c\27p\202͙\179\238\197Il\159\184\212ʱGCTԏL\151g\1iuU\216\209\207\20\30V!\29\135}\1\143\140\186\247\12\147\183B\199\196@\\\130\149d\195\219QV\178\183\151 \142\"\254\170\243\\\"\239V\155X\226p\146?\236\8W\29\172\171\169\\1\245\199I\11M\8@A%\194\217\26\226\12\1\233\2497\19\238\24\241\21 \130)`Ԏ@\180\128|j:Ⱦ\221\tb_9\170V\216\2AM3k\200\2462\146\15˩\182\192J\230\"\159\144^\25\155GʯT\202@z*\24\136Ʃ'q\226͍\12\172\132\189\176\15\201\245y\245\168\128\127\139J\218\27绳\226N\178!s\203B[9\134f\250\236*(/HjkOm\127\16\231\169dZ<KBOunB/\134\7\23I\215k-\210P\2328A\158\183g\0239\148ѯ\240\142D\246-uK忪\25\184\134\190\148hɿ2\208M\207\199/\237\184\200\212\242*NZH\170\253\224\149\214\202\15\240\135\23\183N\143\224\229\233\132\208w\129#G\139K\159y\165b\130i4\162#?P\233\1458(\247\15>h/GZI\n\196\225\194\250\141\17'\151\8C\189\229\14\213\197gPmK\"\205Ӑ\218\235N\138̶\138n\205RK}\5\235\169\251\127\167\251\2070Nd\151ڤ͔\247\193;\182\8WW\2\186\231\8W91fP2DQ\243\226}\21\145܅\4c!Uw\152yT$\174\25\182\185\242 \207t\21\128%\21\4\134\179\150d\170\139#\163\26\212o8[\167P6Y\175\253\146\193\158E\254q\196\"\189\169\8\134\201m\128\251\218\234\242~ٟ\173\1554\193\155\205Lry\236=\215\250\158\183J\191[qJ`\19%\136\151\137S\208\31\238h\177\246Q\178\154%\11\219\237\195\\K\227\242\192\30\171\29\152\2465\209{BW~\8-\151Ն\210֯\r\30\196\241\22\27'?\18\175Ȇ\136l(_n6\189\231l);\178!\28\191\173y4\171<\nH\193\228\136P\193G\18\8\28\240\194reh\199]\177\137c\226\137ٌ*fhqp\29\222\224\186\30\n\27S\1790\225\14\253%\219,\222&\154\172\168\t\170L\174xooM\25(\143\144\163e\r\195Y2ӓ\127a^<p\134\246\224De\188\217EUE}Z̯\249\24\214?\176\242\178N$\186*\253\153E!!:0\158\171F\160\17u\232ؼ\16\15\207\26\131nڽ^Ik\161ق\26\249\157\1751\1964\230\20\202n2[,\173\174\17\14\206\245\217\193hw.I\209|\127\1342\29J\138 >>\15\237\31\238\2\n\158\239\28!.w)K?\180\15:/V0\129.\133P\223\23ށAΰzL\19\237'W\255\203D\168B/\245\180\166'\163+\176\200K\204O`\152\182i\229\141u\164u܂\166o\223\193\186\12\193\222\5T\140\20ƌ\129n\149\1908p7nR\1423\243\3 cG\164\246Hx\246\181J\226\197<(\15\217{aw6\193<\243\243\25i>8*\2\131AQo\20\4C2\31\255R\225Ё\208\236\219rF\25s\253\249\145w[\234X\18\133Ԍ\182\157\19\6\3\142}\231ҿ\148lp\164\187\242ԩ\0227\160:T\243\163\181\241\246H\rm\19\239`I;\21+9G\254\180\n]\143\179\206/a0\184w\\w!\149\167v;\15\230\160z\136\133B\229\30\187*\135\202\20=\228\236O\134\29\12.\150\249/J\n\223븢\185\140~\194E\228r\15I\129\173\149\7O\233O\18\254\229\2108mξ\221<\187\157\207\27\128\158\162\180\17\141\2426\213C6)\181\195\"\u{F4B8}E8\3\220\5\127\181\152\184\208\213\194WM\158\18\203j\ry\199\11\134\0238\197BCѐ\160}\3Uř\30IzV\1378/>\26\213\250J\1734\2478n\209D\227PQ3\214xI\6r$\239S\147~\14\208t}\154\243r\237;s_\"\149\253\251#!2|{\171\145\183\146@\224\203ˁLPw\5\163\140\211n\155Wg\29\203\t\217*\205\254ȗ~Ƙ=\165\130,\168\0086^\17\149|#t\139\2P.D\220*匧8\156\189\r:\30\165\139\237\218M\4\237\14g\2\144c\184ԃ\n\131\12p\195\2~\187\128\185؝\2409\224טs\7\159(ωh\20\7\156-*\22\15\\Y6\156\200\26\150\171\203\215n\131ڴ\8\189\211岐\129\231v,ӧ?C-\191\178\247\163\216Ia\"\185\3\236O\146\206\234$C\22\210ni\254a\167\183\27Tu%\243P\249\0288*\172F\201\233W@\0\165\197Y\205\193\135\19!\187\130\3\5\250E\246\191\224\2\rY\206q\255\204`\246F\5\19ݯ\234a\200\25\14\163{\148N\154Jvl,\249\151\181JNFno\23T^\16\213\228\31>\7\219\231Y\217d\129X\140.\17\203f!\254\231%WH \26\11\189\254\200\213\199k\153\162q\27m\22I\1301\11O\148d\7\236\21m\29E\245n\162;8h\164\240'\171l\179y\213~\174\6R\148\184<\163)>\212.\195\227Y\161\191\1496\25\170\199i\180\191\152a\165\189]\234\133\26Ei4\157Q\12\4Q\242o\26\182\233Z\239\210o\153K\6c`Q\250+\197`\0=-+\19d\155\193\207\214M\220Z\231\30\139\242]\137\135>Ҕ\138\12P\215q/~h\209\234x&)\184%\18`#q\rb7\224\19.\155\163vr>\"2\226\130\220\243\142T?\194\26\216\\ߒn\147\180k\27\t\168\186>\144\145\234}\171\186}\254\241\179\153p\5\213\31\"W^\240PMѬ|\144OX\19n\133\17\153\6\29\201+\237\240\165\147W6|\15`ؼp,\17ÉY,\12\244\11\23m\212u\23T\217&g\254\1571`\187\181g\142\190?\\ŵ\21dBr\186^`\16\193ph\200\19 \25\1641 \219Ԫ\203\237\5c챑\148\149,.c\182\17˼\133\196{\165\249ԛ\27\199c\":bV\24szϊk\17ݱQ\191\22H\147\161~\28\167Ҩv~\148\2256M\172\224`M\24^\7\195\221?m:\196B\195\11\127\149\160\20\131\183\207\193v\183\179\216Gsq\130\202$\231\135\249\159$\241\230E\252\159\132:\127(\155\2\247)\188qo9v\233\180Y\16P'\228\250\155\177\143\158\194\234\248c\195\23\0Q\187\190\175\204\\I0w\193\3xduq\21\218.\185\19)\184\223\197*\133I~\215\215\206\18\2487\231\4\220\201\17\145*\241 V\"\198_\189\150n\179ࡺ\149I\127\17\252\r)\4֍\220\0142c\246M\168CY'B\252\141\137'\186{\\5b\213\8\0112f\228\17+\189\158\215Iӌ`\241@@u>\197\238\142\\\0022U\2500o\182K;&Ϭ\158\212\\\151v\217\231CG'6i\183\207+\12\129\195\17\144(\230\238\177&\242\244r\16!\"9\200\2T\135\21\204榗'\130\20\179\192\254\24Mͺ\156\135\173\163\18\145\25\145\198Nm{VL\140\132\129\241\251\240ѐ\205\215\rs\29\187,\238G)\239F\210\"\173ȃ\172\165E\15\255\134^1\127K\21O\209\8\21\251\150\221oOcV5\202xA\156\20OAZ\u{557}[&%\226\200\17{D?\22\132o\n\22\178\184\5Ңs\1293\183\7s>Z\176\149\180\148w\r\163\157'}X;\154uD\r\228i\174*\212F8M\2401\202wϐ\17e.\172\169\214\27\3\255\148ʚ\180\191=.\173ۧ\17\215X}5w&\156Պ`\233w\15K\233\157j^\221\5]\184<\171\192l1)\190\135\166\193o\144\227x\128\158\253\160\14\191s\240\130ء\208\15?\4\179\n\251\155\233xe钽\4\201|\u{F531}\228\181,\207(\239[g\204C\215o\190\240p7=^\26\209\235\181\27]\160\221)\141\129J׳\1563\29\224^\19k\19\148^}G\231\140\8\22\23\146vsV8?\191#:o\232wj\29{&T\23^\155\146\152_\31\134G)J)%\7S\224\227\7\187\181\153[B|J\15\191cS\141\208\20\161\152Ԇ^d\1\250h=\152\163\205\19]\1620\164\145@6N\1495\197$to\224\205\3ڗ@OJ%\194!\176<\240T?/M\12\136\175\145\166-\181\rle\251\180_\164\202i\5~a~\2\187\2428L\129o\177\160\0E0>`\167\15\137-*a\17\8\19\242Dz\230Jt\236P\179\242w9,݉\22F\154\18\17\202\\#-;\152\179\1699\"~\242I\185R;ø\182j1\6\149\1467\0293$\197\237\136\244\213W\249\165l<ʫ{hm!\173~\159I*\25\\\18\15\25\170\2\242\139J\227.\20\236ت\212\220\12&\170\185\156\156s\243:\162H|\158\142\31hB\209\231\147k\22\244\233\151\193\189\246\163\252Mcy\241>\192\146S[\7\21\18\130\\X\174\194\246\208Ќ\12\145\241\223@\218\31N֪\248!\182\177\152\207\15\230\29\147\186\237\172j\198p\213\3\t\n\157\3\168\216V[\180B\255\179.\141d\23\248\nz\0116f|z\152\167;\188M\168n\127\182}\20\158\28J\213\7\158)\143%\225\11\238\205g\247\241w\146\233\208cz\130\196\247\127\21B\179l\187\226\148U\4RY\134\23\"\236\29\148ϱ\250T\154\235U\1930\242\246h\164!\3\136~\213\196\27a\255(\186\172V\212'\140@;偅6GXU\173\197\1\248\191\208\245\169\8\131\192\205\230\"\229i\1\221\241\138\243\183@\19\147\252\nT\2\183|\ng\129%\194\25s\215\235\4\209o\247\2\149(\14\243B\253\220ڕ}\245M\162)\219\232#\249\163XAo\135π|\149q\242\202\21\251-\232\171)N\1814,\193\195S\144vJ\179\255s\0072\206\26\213\0ɯh\2269&\1993\247O-\182J5\255s\3\238\244\27\21\168tO\23Ȯ\162ۂLVŶ\183\5\127p@=\242\139\1525fB\4\135\132C\247\11\128y\21\155\237\186\7\169\204j\r\177\200ɛ\19\225\243rzS\142n\151\236\237\232\203ن\247\128!\250\28A\28\220\0213\231c\217.\1315\143`\160W<\236:݅\240\136\168BQcs\215)\161G\0203/5\133> J\227\243%\155\240\132s\1703\153cϦ]\141\194\217!E\tnğ0\144vE3A\7\191\163\214\250\22|\207X\26G,9\24\171\208fv\240\132莕^t\15\249\178\n)&\206\26\208@a\194E7h\0\206w=\187_ \182\0\133&\132\247\247\214\253q\236+\252\204H.E\200\230\241\179\224[70\156W(M\149\23;\1925\6\1806;\18\n,]\176\206\208\\\4\18 蚷Ղ\154\165:\0$\213K\244ɉJ\t\190\188\233\188Δ\u{5EE}\177n!\161\28\15\184\1\22,{\229˫\200rWJ\18rn\187]z/\173\30\251\239?\7.\17\207J\188\198WIz\189(\200\17bIH\216\230\160+\18\250\188R\239\240J\201w\\\181@\200f\2315ލ>\20\\f\155\19\147+\155\182\243\148\199\223\n\248\226N\23=<zj-\2080k}4\15\28\222\192\153\164\"{\139\130k_ȯ9q\251\14m\239\29\18\149|t\255\159\222\r\228\16\146\159φ\19(\t\173&ӑM\127F\169Qz\188[\28\249\175\161ɕ\200,7uxG]\131J_\157\r*\165\1949\218\30\201\14\5\1854\188\6\155\148\233u\244\19.\255\204ܼ\173\219:\247\12+\156\133\"Ҋ\144\215p\239#~{\135\255\\zR\0Ja\230\169srg\0\238e\178\146\131\252\159ܢ\138\217\246se\194\219R\29\1471u\226Q\18\143\0114\145\u{74B}?\132\t\237\253\27\196\229/j\18\207\t\228\142[\185\224\11\14\222\8{\142ᒙ[i\155Bu!\127\211\t\146\22r\t|\137b\"\249t\152\22w[\225\162I\202x\136\150f\17\254\15t\144\"(#xh\183\166\199g\235~\161\145;\163;\20\229\154;C\162^\222\31,\27\238p\129\244\150\229\29S4\214\230mƵˆ\150<m\253̤\160\135R2Ta\1818\30Y\188b\181\20\151\221\196\28\14\178\28\11L7S\237hZX\"A\246\141w\151u\162\241g\145\207\1\151<\212jB\209y\142\2384\2556\149\162V1\184\165T\150\5@\233չH\4pd\157\29\184Ŗ\254\176T\241\216\226t\150\159=*K\141\150\178*/\222ԅy\168\31\255`\163\192\199n\7\239\232џ60kވ\152&\175-\137\2048\247D#\139`\156\1\19h\173$}\185\190f~\200q\193\233h\237'\245E\14\205I\173ᢿ+\166\1321\155>\6\6։b\1999\194oM\6\155\147C\253\152K\170\182'\223)UU0\133M\157\245\185\241\150\165.\218\228\20\3\179\136j6\161\5\191\5\239L\231+⚥y\18ά\129h\166\187`\156\22V\26\nky{ah'c\129\4`\222\30Σ\1380}\237[\160qF翸\251\23U\224\157\229\166bF1\139'\191ۀe\240\21\162\137\154J/i~7\179\27xؖf\237^.)\216l\254\29.\250\t\173S\245\189\14\197X_Q+\236\233Y\15\230\"\18t/\130\149ڰ\28\205@\219H\173h\210#5w\149\16\249\19\216\28\191\199\24\2492\134\143nňn\137\193\199\196a\172\149\164\166\233\191\29Be\151\22\252\169nf\255\220\t+d\205A\175\192\241\8q\200H\18\25\143$\238cb\215(\235(\190N\2\23\249Uf\149\5ʪ\128<\17c;\172\3\253\220\222w-\141w\209\212\0062\25\171\177(\135\160\183\231\190'\203ٷ*\244\2329`q\164\24\133\196`L\180\29Nw\241\167GJ\168\225\215\1\203\240a\161\148\165\217ZZ\146\205E0H'\27\145\214l\25' \233.\137M9\22\25@\27xĜ\28d>!,\247\160-\150,Ņ\146\174\187}ܘ\162\146\2472\5\01801Bs\166\183&ԩ\246g\0Y\130\tY\227\202o\29\2r\167\163Ei=\217\237\2\2507\206\2\214u\195]XB[\132h\20\27\22\130!\223\226@p\129ֱ\206}\163\11\135ܰ\175_\255\134\134\139\201#\253\1363=\17\252mP\237\r\168-\254e\u{5F6}\21\243\rv\23\144\150\147\160\176\210x\2228V\183%\188\208gî#\u{9E}\194\26l\170\26\178\255\\\251\172\22z܉\\\183\190\186\238\245\162\205m\206\23\233\173g\154\195T\234\244'1x(\22\144:\246\12͕\147\161vTF\195A\152\152\187\131\173\231M\240\248v:m\7=\246\239ȼ\186\12\219\240\23*P\u{1943}\0\200\215\221\15\2136\192\143\147\136?I\179W\128\181\248\217+\133n\224\131\233)\29X\138\230\194t\14eV\142j`HdZ\139)\174\237\204\15V\211s\246\129\127\3:\225D\199g\191U\133]\134\24\225`\194\199\254\222\254\14=~㰱D\177\145\8\130\190\137\206*뾇\216\26\2084%ڠk\167(2{E\200\16\225W\241)\186\8\0\226\255\19͊\15\144\23\250\130\158@8LK\222{\205\2081\134\202\22\20\143Rxr\n\170\176\202\14\27S\232\215\5ڂD\140F\207d(}\140\186\166\6\133\227\211*b\143\229\241\174\253\0\232\201/\rT\136w\8\23\158\196\2\213\207\234\192\197\247\236\253\166\232\206\223\2545\195\127{]q\234k\130n>p\148թ\2\22P\205w\197f\199n\6\185|%\160\231N\131!\240\129\132\1921w\\\149\173\239]\27\177\135\195\241-\163\154\201/*\252\217}\14964\1\215\246|\241T\31\149\219\224g\147;(\241\161@\182s\237\229h\165\12fkr\253M\141CǧX\175\223k\18\u{E21B}\4Vr1i\156\30\229\1909\18\212\203\193\138\207\19\t\26\27\15\215X}\12ז\167\226w\210L\12g\154h\228C\204C\222,\17X\229\0059\222Oo`\178\238\146\249H\136s\14E\136U\134\11\167 \158\19\242\7\192ϛwF>Z\134G\162F.\158\7\3\201Ưj\247B\6\192S\238\2\242\128\234\214\209꠰\169\164\254\\\254\223&!CSR\247\149\1358E\155\184\171/n\212l\177 \132\rN\167\159\139?\207f@\192\231</\14\1\158\235\154T_\173\155K\25\18\12\2115fs\184>\247\246\251\131Q*\168\140\209V\178t\150I=\140IC\27\207\15\168\182\158hdK.\166E\30\141\27W7o\146\231\21\255\1747\6\170H\157\16\t\236\31\235>&\14Y\201\233\188\198\255\210M\244\7\228\142پxUS\173\172\161\22*\204\23(3\197\31\232\"\166Ը\186\152fm\188نp;⠛\212\235q\212Ja\215~\186.yv\150vtj\154\136\198\240\4\15\205C\207s\211\244\128\157R\19665h]\219K\159\189\30\221] \168\18,{~~\174\23\155\"\8V\134\212\245|0&`\246\209y\136\145\173g\246\223<v\142\252\172|\17'{\254]L\193\190s\171ν\147\187\172\159\251\129Oݍ#\190\218\228\255\136\26\169\140\217%\183\169\152\18i\0A\172\224\210\220۸\248\214\1933.\20jEϵ\127\n\239\238N\28̓ \176\168^\242\128\255\131\185\227eu>\202ʽ\189_\rӚy'\250\251)3Ts\"\127\17\173b\206崟Fs\180\1891\227\153\217$Z\180r\18\192\162\175\nЯK\1k\158M/S뤕\1581\152R\152Z|D\172\242p\223\193\174\222:m\191\147\17\0157[\239\226\247\215\216{\166W\154`\227\149\127\156r\239\228^jWR/\170\185\240\227G\149[3\25!\6Z\138\196\243\177\"ʛ\191[@\157\143\216\236!ݷו[\130\29\6\"\254\180\143K:ý\174\246m3\244\156\1994\139p׆\222\249dF\29\212\r\230St\169\140\248楽\5y?\131\192\209b\205\127\229\2021y\159n0\237\249i\140:\242\213\248\176</(mk\173\139\201Va\202\213\243\216\246\169\147\245\0156>Ͻ\14\127c\149\197\19\253\186C\19c\139\159\165\158\128\200\226O r\139\178\0181\28zϪڍ=Io\157y\137\133!\226cj\150\132H|\140\197\228Z\2024\155\151\214@\197ih\20U\151\139\182\224D[\170\u{7BB}\223{\0ډ\31\251\155\2w\1\5\193\2347\220˛{\17\128\196=)\208\"\129\31E5\n\138\185y\180\164\223\232\129\198<\249\23K\14\136+\127\190T\148\235\2123\16\249')\191\17\205r\163J\163\159\n\238\196\n\11\5It\249T\244,O\182B\1\168\159v4@\144\n2\158-C\0198+pO\215\254BxW\1277}.\156\225JïS\217\235T\152\127.W.Ӽ\208,|\185=a\142\211\238\\\144l\8ap\245\146~ޔ#FU\11%.\n\11(\192\u{604}bv%\25\4YD\129\238\148(\11\136ޯ\1572:\177\\\216z&\191\172\140~0\153+\149C\20J\247\236\6\206D\230\193\223i\194Qg\1679Vّ4\170m5\6\255\131\254\196q?B\216\235 c\215\4⥯/\149\24\167/b\236\231\247D#\190\168\255\142\29\244\149x\148a\23\174a\192\241\2\20\\\2\150K\7\237\162vzX\193\208\220L\229'\180\4V\n/\\Qt\174\157\171\237?\211qSa)쒂\197\234(;k\172y\248\t_/E\158\16+\161\21\231\178Y\21Z\215\251\135\205f9UW\19ګ楃\228\153}[8\1830\181\167*Qu\247\134]S\160\25g\159D\187\223ݟ\180\184\177\255&`*\28\19ά\184\247f\15\155b+剒\137\131<mK车F\2291\14\5F\213'a-\202yD\181L\195\209!\213\29ă\231܁G\163\172+\241\tsʉ>\29\172\21\">\29d\22)\195U\243Y\210\193{\136\218Л\206\29Y\210ܧ#@\252\161\140\143\164,f\241\r`\nF\26#\220\208\211e'w\131\203y=\176\149\133\244\163\135\241\15\8\176\14\195y%\17\179\201\226w\136\179]>\141\27\164\181\171\159\230U\165\140i\177\145\8\127\233\5[o\26\"\228\252ʒ\142\16\253\213L[t\205\195\11`#\249\"g\129M\191\184\153\169t\230>\135~\28\160\136\184Mq\137\1301ܱ\193=\213\222\4\214h\206\18\7Fg*؟f\22\137\164\222\226\171,Y\136\3N\188\3\158\u{EC7E}\238˜\130\225X\28\24\247\196fyP\172'u\174\1\178\31\17h\156\251s`\204\0\206&g\182'\228\250\247\27Ҁ뻆Z8o\211q\205W\0213p&\0202\164\240\169Mo\0284\14\217\240\138\27FW\136\27\6\247\201\27o\210\255\1408À\129\172\174\12\25Ƽ\174\154\221X\247>\166z>^\1443\145\5\24\229\155\199l!\141\134\229o\31A&p\26\180`\220\225|Wߎڅ\n\219Jd쥫ܗ\252zH\178\128g\188\164\130\205u\202',R\235\127\203\239\2295\0242\141\228LΔ\189\209\231\2132n\162$\207M\243\249\179s}3_\\\129\25\n\4\245\14\12'\238\227l\t\165\1937b\214\3\18ߘ\191]H|$,5\21dC\1635\179X\185\175\148Ô\21o\169\17\188^\129\185\173\5\128i\219֣\228\18\196\17\251A]\140(\187َ\27c\142\0257\235z*\174r d\159~O\\\0r\139\21\208j\137\0085+x&\20\176\226\162\217p\tn\27\239\228\136Aua\166\219)\182xћF\187\30߰~8\134\141@-\188\0205\141\207-6&\4 \140\2\164\27\248n\4\175\150\230O\211\15s\221s\242$j\221\n\174\239\232\254&Dg\245f}\138\241L)\183J\16m\198\234~\224\227T\204\t4V\228kj\138ƙ\4\14\157\254\175߱\1\141\3\184\219ޏ\235\24\243\252l\166\18GT\202\3;X\7\211\8\234\2\214GQ~\199\18\185\11|\159q|E¡\222?\\\229\253\171v۶\1331\239\8\n\250\185\147\0\25y\242\215\t>\175\181\11\224\247\130m\226ӝ\223\217\224\190|\1879`\0303\213?qS\179L\24b\190q\232n\253Dr\17:Jq0\129\157a\165B\227_\153\189dk\183\193k\219\t\188\\/\20\180w\217|z*\205\21^\168YK\193\234L2(\168\171\152jq#\143dO\16Q\29\143\20k\19\205\21+o<\183\208OYn\28\140k)\3;7\205\23\231T\133\199#\"'\244\132\244\000826tZ{3\150\231\18V\0C\28I-\167\220Xk\132b5\135\228f \20\20$\151\194$\1872\22y\190\23\166c\15\20\25\229\142<OU\186\253-\134D\31\253\243Qo9[\243\195%\180\165J2\5\251\176x\180\202\0\198\213{cy9\20\206_\241\213\2371\150\214'*6^\215\243\27\246\22:A#\127\157\11b\0274\147.\129o\183)\190\189\158\227\229[5\147@T\12\25\159]\210\29J\135*Ԧ\252\127\203\0\232{N\nTh\3\1374\19\219\245\143\16AB\21\30\153$zL3\19P\174\167ba֔(\184\239e\175\214\12\149\159\186\28\208r\17^\19bCy\140\148\210\237C\225\183sB;U\150\2476N\191c?\129\214\231\168G<R\15\0072\21\176\136\163\237\164\169t\137\209\12l\246j,\182\141\149\22^\202,\154\163\5\241]QD\227r\174*Q\165.U\142\246\20\207z\205\12\156{\4\199\7\131E\5Tr]\187x\190\7m\24\167\246]-/\172䙁u.0\251\5\149)\23\0036ޯv\221]\133h\20\177\201\15\14\183\193@^\148B\139\253\183ok\186\198\1\208\238\205\18\0\212\rn\142\163\155\21.b\147T\211\1937\174H\140#qq\n\253\233\173\27o\130\1431\140n<+\253\241\135\3\31<{*\147\238\21\1466\143\"\15\19\147I\8\16\244`掦\136\219\30.t\186\25q\179;\234Dn\141BE\151\tFL\1404dTN\253B\180\28\28}\179yN|\187\214T\248\239l\"\183^\160\229\7d\17\136\208) \181~\252\176\244\2\177G!B\163\186\0w\230\210\214;\172\250n\29{eN\14\27\23g?\186\158>\234`\128;\0183\236\138R\216\21\r\188>%Yb\18i鰳L\n\137\161\1KyI\201)@\191X%\167\254\7\142vh\"*\173;'\204M\159mPL\144\25b\29\218ED\233D\199\225\156,\7\229d\253<.\208&\241\0276\233\193\225\142\0253\186\3g.\18\152.\17Q&2?域\11\157\221\240\127\138Ə\229\220v\19\254\229uq\128\163\130\1707+@0\172\189p\144H~\180\179^\164sM\164\241\134ZM\146\188&T\190P㞪\133\203r\161\136\251\186;\247̡Z\251\247\234$\192\4Zˬ\188v\25\255\247\242\223ϔ\180R\192\221v\235sޮ\161\175\242\244\210\29\159\144]g\151\181\4\1921\251BK\17u\247\247 \245\21\239\\\146y+\167Cv\139\129}[κ<\131\154\193/\21\247ɝ)_g\8(\213\241\180)\167\136K\133\200q8\"f\130\\\153\26\192\2061-\15\180,\237\14-\170\231\229\12\138\138\24\127\253w\8Ae\131\176\250\164;\205%V\\?\175\12X\208\222S\160\134\130\211*!\230{\0030K\228\179Ǫ\2400\189UX/\8\131:4\174S\18\143E\235\161\234\222\26\188wI\252Z \139\201h\168\180ד\140?\140\243\190\17:\176\250\227\246\172v\240\224\178\t\155\131\ti\229\238\214\194\197ېej\136\228y\141\158\138\151\170\251\18C\249\12n\252\28x\18\1627\238H?\144\142\190v\163\241]\127\164m\187?\229ǚ\236\127\7S\154ߎO~\26\127<n\179\136\22L\209Ƌ\233\145\219\236\181\6\15{\187\212\235$\135\163l\248cE\142s\177S\243\182\28\0190\220H\1318\133\159C*\183\250\236ʆ\25qa'UV\246\242Z\1278Z\14\169M\158\189\25\169\23\211%\245\1\238c]\186\255\193S6\141\\\1543\171eS\218Fyޡ\217\198b\164\179\154\r8\133\166\1741I\28\184\4\245\1952\151\24\26ƝI\200\251\246\225t\172F\20}\142\253\200\11\238ݓ\5\254c`@M\23\31\195Ji\190c\206\23\22x\159\nM!\210\2336\196\193\161\11\190\150(\144\12Ăxqt\131&W\0122\4\143y\137R%\1966\22K\167\248\14t\20\235\244\220\193։\26\165\191\29\4\157ܹP\17\3\181\223\8.\192\151d\t;\1795\164\29f\176X\23`\24\31\233\170\210\6\203milv\1974g\166\168\139A\180\232\140\211,\30H\246\141lN\129v\153Z\169\242\203%\239\243\150\199X\11\199mp\252F\214E\233A\145@\151P\"\191\198\223o\136\3\221z\227\135\250\185\140'\183\253mu\220n\172\243\25v\223B\191\140\"\174\255\221\251tbz\146\140\4\194B@\222S-\229\175\3\0K\241\240\1483Q\236ߙ#k\29\220\255n\0280\1_%G\226\129 /\5\31\199z(xa{\1331\147\164\1N\159\233\187B\246\2d\243?\191>\250\11dk\133N辶\240\172\240n\224\26\150o9)0X\145\225!\191\31\130\197e\156w\206\245\n\197\237Tr\128\178(ʻ\138ȑ\213m!\167\167I\157\4\239\1J\11\215\229\234\244\192z\191*o\26H\173*\207ò\169\128\28\127\143d[f\244k5\156wG\204r\201P\243\199|t\133\145\19\21$\142;\216\206\17\148^\149NH\23\139\28\30\167\243.\201ni\197!\147\11E5\163\160\193\159\155ܗ\8\241T\179чlOS\205B\180B\242\244\221j!\11\25\180_\220?\133\151\135\147WE\1626\16>\2@\170\127\178\28\1324\7I@\160I\180\243*\230\163K0\150`\3\188#\188\200\214\242\2229\152+K\151U\191^\251\234h\148\200\29'\161Hz<l\24\248\162\220J\236ґ\241%r\31;\26\n\174f\14-\157\30\181,\1622?\249\228r\226ee\237U\128u#\245\189\24\1\187^\2355\165\141%\167\162\198\236\150'\"\243|\142\148A\8\173\129\132J\164L\1899\207v۲\231ڜ\228 \184g8\244.\31\\3\233\24w}\132ǥ\183\8\128\232\222\204\2349\203\215U\144\174\191\141\23\148\28\238G\198B$\241\21~䄎\153_o\217nq+\128\16\241ͧ\190q7۱ITn\4\16܅X\6\180\1752\12$¦\139qW\1848\238\245D\16\171@ΆŖfAu\163@Ԧ\184\224%Ӏ\r\148\132\250<S\131\tqW\160|\179\1386\24~\179\232/ʼ\5\231\172kь\191\181\196q-R\15o\234X\taG:>\139\224~P\182\225\141$w|\226\t\229\207cAƪ\195\245\157G\182o^\181\238]\252\137jliE\222r\182b1OAP\242\28\142\204>4\158\199Mm\226\190\201\243A,S\242\136%\255\132\20f\143\235K3t\241\r\181\194+\220\29\137\250s:P\128t\0\24y\163\155\186'\29k\210>\144g\26.R~\209\31\183\234qK.\202X\183t\196\232\24A\7\12\\\216#\218\210e=\174\15\143\169\153Y}\243G\156\140`)\176\150h\160\248M.cZO\245)\185o\156+\2314'\254\223\235\147\6\182\2015\179\176'k\217\225\167T\4Uաh_\137\255\234LP\158\134ak\154^\162\233t\133ne\221\n\240\229\146a\176IŽ\28y\143\236u\169\5k>\151\168-\143FDZކ\221\217\195E\192\234_4N\142\166s\204\205\22\183\247.\157e\171\143O5m\193\139\237)N5B:ZX\163\"\15\247\207\237\143\232\195Z\150\135ac\31\150UUG\250aTo\19LF\210`=\202\213$\142 \14\253\196Jr*̯\30/\240\166)[O\251\19\161\21^\221Ǧ\2396\193\163\11\197\241\179l]\162\130g\252t4\210(\173Vhj\194\30\162\3p,\19a\180J\132xJ\25\192\23\175ʮ\2120\25\140:3rxr\188\192\2090\1816.\143j^\128_\12\189\246\201\229}\193\140\149\215\234-\29\19\5\20EF͟\141\153.\0\155V\1\21L\253\136O\184?m\237ĩr\156e\137\16\12nzƃ\218M\165\238=\1757\227\239?\130F\27\157O\209bs_\244\245\"\165\209Re\1540\178Z\3_y:\144\198\221\209\8\243\239;e\"\204`+ի\240\169\15\179_\214T\22\244z\224#`\244εQ\184^\168\30\1533\242\\\173\156 \20/>\226)\227lN\178\201\7'\242\226\215\5\5\146\167̓~M\191\170\245\17\26\171\176k\23\181ӑ\183\25\135^ 6\213s\245Q\147\195\193\"\t\t\162\136@Pf\177\169\186\174YI1\157\154e\164R\165\7\250\172.V\233\228|\200A\247\229Z\184\204\26\245\254\221,\21 `\255\235\19\181\5Fy\30\198\235a\254\147\23ʖ3\216o\243\212\206\253\252\182\"\140\2032\149S\188嚡7\247\170\153,\129\23\142$\15\237φ(\157\21\128X^F\226\20\130\254\167\165*AɗՔ\20\160\129\220\202\28\127\146vÙ\204*\131\2350?7&\128Pg\137\219\197\196\192\224\2273\27\195\233\22\1\216\196W\220\205GQD\221\31<9i\156\130y\242\245U\136\255s\231\215\28\144vk\225\8\155\4\205\227T\132\19\167GD\139\154\188\248\157\139\194\2285\223\233ѫ*\132\nGN?v\20$\26Pj]\0063\193\188\200\2\248\190\200\202\213\0\172M\222\245\246oe\20\192Y95\174x1\150o\244\190\131\177\191(\182n㚦\20\153\160N\134\250Nw\233Ԝ\177\175uU\163Ěc\169\239В\243\184\136[\27\232\nP@\24\239nVj;\151\150\11\240\150v\0112\209\5\28Ǭwp\222\18e\212֛V\203E\128\133IE\235\255\147\186L\30kY,\184\185\3\179\255\18P\163\133\200p\255\130Dz\188\241\204E\252\137a*2\249Ji\144\242ʞ\22\147\19\229\139\194F\193\200\239y\2\u{F1B2}\11\2\127\241\239\159W\28ϫ\164,\130\140\238\156v\138\0\161\"S9\7\223a/\182\220C\212I\19g\23\156\199\239@\1464\158\183\174z\nk\169\6\152֊\15HD\179\179r\223\221\192\215\207\220\0eb\245\251\2+\147\174\147\233\219\23\240\159\27\188\129\6&\147|A\23\3(\186\197t9U\247X[\14.!\229\237SI\162\171s\247\154ڙ\229\20_\145\30'\4\184\128\23d\190AV\230\190\197K\243\4]\194y\140\166\18'\156\153\216\239DEp\231\23\25\6A\201\6#\177\12\171\22͔\244\191>;\219WK\20\136\15s&\195\250R\248\136JZG.\186\182\150Y\207\26\6h\190\19?Y(\128\171\167m\183\1473\175\136\182Y\232\170\238\23\235\7\4\168w\147d\150\153\149\233\143 1\219\236\246\253\30]C\183.\11\156J\185\136\168\31\234J\238\131=B\131\2528?\139\12\225L\193[\0oD\195\219_\188\1g\237ފu\127\177㼔\192+\21\162m\15\147}\12\231\251\247\245s\15\207\206\15\134\169'0'\168\236V\1c\204z\251\3\184\224ȳ\200\15\2167\11\162=E\234\148CW\138\rJ\22\132u\135\6\27n\173X*GQ?\182\248\251p\181Iq79%\183\163\5a]\14\142\197~[\183<\242\6I\240j\"Vӵ\17\240\n\166\168\142\207\217uǔl\1689l\157\166\0158\r6\166E\201\26;\rpw\19\23N\173\\&\188\174\181^\194\198\2\t\28\152r(m!\166q\1493mÞ\166§\225'z\153\247J\144\251\26\205(\2U\233\31V\198vE\221<\1442$Z\nO\237\198\205\20\253\170\205?\151\22\140udz\138\162\8VI\168.\218I\22\184\252:\27`_\19\250\209Fd\t\0255\196S\227q\1328e;\132ߌ\0067\180\154\155\157:\159d -n\164\164\181KW\141\20\0175\189\0173\24\153##\177\18\205}\149Ξ\210\127?\217qa\142\2034\215\14\178\184V\203\242\218\0070\250\234!\"U\197\233N-\254\ta\7\228>\130VY\28\190D#\27\150;0t\159\5^\210\221\23&\166z\255yt[v^ow,\212x\216\219\127\142\149\148\189\168}\170\164\127\235\138k\171\145\1921=p\5\185\169:\224%\134\2\133Xq\236b\146\16tf\206k\137\6\159N\218c\7V\243\212\17dF\137\n\18\206Q蟈\12\131\2061J\12\24\236薽Hӷ\209\249\145\2206\208\234\172\247~I\175\1:P)\133D\20\17\133\30\12HD\\\"&\141\233\147ā\175\235\0077\245#\255\u{EFDB}♇\228\1986\226OL\162bR\203\3J\178\249\207<\158dV\168\170{\146}\159>\6\143\155:\182\164\174M\23\249\16\231G\241c\18\216Rw\24\142\196H3\139d\t\179\188\144a\151\154\163\186\168Z\145\131l\143\182{S\210{V$\156/\0\220N\\\140[\23262D\181\131%\194c>Kq\165\234H\16\216\19P˸\243\4\249\151\243\164\184(\233B\237\\\2310)\0\r\177\252\227\12\212'w]\144\137\153\252\239\252}pS|\177\1676ީ\180w\173\171\234\242\135-}\192\233\173d\27\246\r\193Z\2127\245//y\3\197\206VU\164\2.\174\130\2\246\138$L\209\"R;\163\214R3\1574!\1888\159eJ\198y+\19\15\181\235\242j\198\u{382}\136(\246%\193\196\198\23\27X\246\193\164l\166?\239\250\236\250d'\28$h\140 \247bo\26Gw٨\177\250\162k\128\168۽\201iQS\7Dސ\8X\128\129\248\6Z\235@\213Q\19\233.=RӶDG\131\153f\184\152\27\238\198eS\217v\129\175+\156S\1660\180u\250\158\156\183:I\21\14\183\168\236!\226\4i\174\158\0232`\u{602},\141\127.\233\221z\5\176\214&d\211Ul\158\166j\25\232\225\0142L$\155\187}\241\140\31\2O\222؛\0\17\244c\168\18\187\198\219+f\221^fZ,\139\169\187'\234\129\210L\190\253\230\168q\244\210ʅ\0\186\22χ\180\244At\247\159+\153\127\140\203\20\254I\8\21\180Ƅa\160\233\187Mɮ\160\210\196Ed\248\218i\160N8\31\192V\139p\26[]\221\234\254\222\249\29A\182\134]\160\204\246\153\15)`ȕ\2493\19\178\137\214\204l.\19쎈\182\200*vd\231\223\16\177Zz\161N\127\27i\30#v\150<\150\192T\1692\249\0313pb\182\2392\153t\1\227\25j\1374\6\234\245f\0067l\142nj\17|rcߛ\141j=\tG\239n\28\130\16zq\172Ҵ\n\29\197\228\232\249Q\28\244&َU\228\148\24\187J%*\247\147\1536\213\31\3\135\240\157[\183\239\128\17\184gn\205\245\14\r\2548\157|\129\232Q\132\1725\1813\130ʛ\153n\225m\7\185և\235\209\194P0>\158̶\160][\224T\198Oi\181H\213aj#\147O\172`\208\240͢]\2\227\198A\178\1616\18\n\18\208T\148\178\239/\176|.\162\188\31]\212⏳!\127\210[\nTŵ\226~)\202|D\236?\175\217c3\148\231\242P\225^K@W) \1431\253y!߮+\128W@\164\240\129V\200f\21\219EM\161\179\225@\162\245{qHȥ\\\156\175\192`Y~}\176%\200\250\226\152[O\186\6\11y\1931\203Z\4\164=\204\4U̥A$\29\205p\173\255tJ\221\255\0314\8Hzц\190Gv\15\168=\239\227^6ɸ\163\182k\21x);h'\139\198Rɖ\142+\172+1\215s-\138T\5\193w\7\3\2124\134>.\131g9\221,vm\162&\149\1810ĪZ\229\224L\174\159\186}\236\0296\152\172{^\195\11\182\178\224\220-\171\178%\156'\193p\207Gzb\139\219!0\228\19Ac\237q\205tw\26\249H\136\183\1\162\210\230\208\250cv:\129<\236<\242\244%\12\203\24\182\255\233\208ݰc\174]\150K/n\246\253i7\200&yLa\169\130\22\195\0005-\250ղ\163\2pEn\6 \26B\11\28\248\128d*\217\16D.=>B\18l\1<V\30\146I\207\220\"\194t\132_?\145q\166B,7r\5\248Q?ADl\142\137\222\12ܺ\134\11\217@\142\1798\181R\193\171<\1494\133\138\2\200f\195k>1֥\170\156\135\219\209\25\127]\239\146s\144#\2309&\127c\191\186\178\244\30~z\204\23\n\163i\165\27@\204\"M\1611\249\172H݁ڎ\24\187s\235\187Q\229\167\25\182\165\180;\171 g\194\193\229p\6q\163\128(\188\127\131ndy\186:٩\186\181\5\1800\164`\201j\192Cf#N\149~\152\244\243\137\2\182\222#\18\147@\253\143Qm^AA֦ĺ-\245/\215ֆw̫\132q\163\190\178\140H\174\216e@-5G\207o\253\198\0\2s^\149\227<\155\225\1792\24\22\254\227\1(\205:\198^\160\147Qc)\8Nx\205]\238\17\165'\21\182\161\155\174`3k'\187\240\4\177\235W~\160\23\184\148\153)\8\172\31\201bc\223o\213= \7\233\131\192\185\171s\6\207L\245\133\128\237\157\4\141\168v\1974~&>(\17\193\244Y|\182%\201r\237\11\210yk\186\178\238\233\18\186/ec&\27\2K\223M\143\139\210\223m\219=\t\189\190o\251\203\\&a\168&\17\199\214\19\198\249\252H\\\4\216麍\145\6\238U\235\209\14Bҋ\208`\169S\226m\253\161\249\141|`M\204\24\177\141\160\150n\17&\177\183\179\167\225\198[zr\12\216x\165\204\244m\185\132GQ\166\208*v\187<\178\158\149\\\4o0\255\1271S-\187\136\160Y\226p\215\4\158>ji\229\203v\20g}]|\29w3k\244\2|a\135\155\231L\164vW\136vr\172\204+\1963A,\155\1327?\27\201S\237D\173\230R\242\134\221T\20[Ʋ \22\241\22s\4%\142\134\229\183\18\150\255cT1#\137\246\138n\224_\197\6A\130\14|\167\218\2w\0\182\29D\171;\140\138\186\242\170д\3\187/Ͻ\229\247\198\203\127:\2519\143\156\173\222\"\238\250\158:\18\173l2\153(\152\155\239\223/\153\160_\1\11={\8\239\27K[ζ\1\15;|\1292-\1\186\20\167\233\211(\210F\151\1723\190g\254s\183-A\2413\18\224\249\201;I\243M\139\29\196x\18\20\198H\167\134\245)d\197CBk\161\21\19I\3$1\216\29\1475\18Ԝ\223A%\191]t\138`.\138\221\1\226\137\237\190\185CJ.\16%\223\241\2081\250\2\180\139VJs\231O\194H\\\129Yq\220G\227ż\142\19\11\144\170C\20̘ WWE\146q\138я\223Ԣ\146\135\178|8\255a \202\202\222d\128\181\162c\214(\20y!h\129\189\181\207Gv1\179\8\7\184Q\227\157\21\11J\248\29KE\28\197\\}G\214v\239a\190\19\142\177\25s\207XH\193kk\152\244uc\221\17\191\132d\225\7֖f\161\204\247\161\30\177\18\136\237?ŏ>\154Ǒ!Ͱ3\142p\158\240(\157_[\3T\251\187 \172\182n\12\200\0\1T\31\247u\171\237旳\142\174P\212\200\211\246\236\249\162OTX\181n\229\15\225T\204$K\251#\242\134<\130gL#\16\166t\12P5\140\ns4\16\8ѩ!F\147\255r\14'\u{C407C}\0188\169"), {
	[9] = 242,
	[2] = 192,
	[7] = 84,
	[6] = 47,
	[24] = 163,
	[21] = 82,
	[3] = 61,
	[23] = 68,
	[10] = 34,
	[16] = 57,
	[15] = 110,
	[11] = 205,
	[12] = 211,
	[19] = 218,
	[18] = 208,
	[20] = 208,
	[8] = 111,
	[4] = 55,
	74,
	[5] = 216,
	[14] = 51,
	[13] = 12,
	[17] = 62,
	[22] = 157,
}, 359)

luraph_runtime1(Str8, buffer.fromstring("L\215\246*\252\146*\165\192\193'\23um\229\178Z\180\200\199\11\186^\177\252\16\205 \3_\241\157\188\0200\213\23\22Ҧ\132\138\231\226TJ2)yv\226\142\237\178ΰsB\r\3YƲw52\219P\150Kl\184EIcv\134+\188\244\147$\240R\0\136i0\250\245\241\244A\229%j8F5\166b\187\224+\162 \243\31i\163\25\17\215\3D~\150oϳ4e\231\217/\180\185\22oy\0185\243c\5\228Oc\20\223\14p-\11\193K\144`\142\135\143\197\6\202rv\225@\158\202\235\3\138\170\1471R].W&$7\239.\220V\2141\24!\\\251\181\189\130\165\181\19nU\11[݇\14\7\2N\174\143\2໋rO\24\127\r\236\178&\216~\218YW@\156\0A\134\201\192\243\188\4@B\195\246\233\145D\248V\194ɐ\149\2\231\n\221\235\201\209\215N\137\187E\203AP/\252\176\186\2\149ar\156s\138\2482\2U\221y\245C\255\242MY.\\K\193\175\149ѨeD\159Xo<\247\227\179\236\214u@\228\171c4\19uG\n\135J\215\227x\182l\175\\\140\28\136z\233O\221H\250\231v\24\253yK(\184%\172o\253J\28ʅ߱0/W_JC\t\229\199\28\190Z\199rn\221Y[\208\255?\181\0065x%Q\182\244\2013ͅvs\1\233^\15;\2351$\168\141\18tEg\230\255J\230vA\226&\255\248\1537\234\u{AD}\154\139b\134\192\189\0224\179Ū\190{fn\"\208\201\199\239E\158\t\242\200R\219\0305\166\222E\245\188\185\3\189\153\226\235\130\206\221A8\234\159\246\215\230\0247\22\134!\243\209~\243;\22\148\228\149̂\2345&m\228\254\26\176\234\217\211B\204z\249\252\226H\137OC\141\142\1818m3\162\243\145\188#\213\2029\135\253\231\152\14r\20\240h\14P\1885\174\249\241\176\n\158y\140\228\229\170)p\222't\155Zܸ\0291Z!\244\190\225Y\218\21\209B\157s\7iB\23\16\16|;Y\226\192\24\232\2224\166\237\227\142\18\255\16z\237\227ݟU\29\1957#\188J7L\158\162Q\184M\0\248\28@\242\2137\12\3\170\174ۧ\141})\193\237Z\143\186\241\229\157\21\160\247+\5\253ϖ\234!\186\224:\162\252\16}\210\236z\158ij\203\207XM\198O\144\17\n\139a\154\144'\132.v9v\175q\196I\u{F7EC}E\218.\20֣!\231\253\193\213\240\25\27\250B\248\219:l\177\t\229e\230ټ\201\127\181\153[LSQ=\242.\16\145kV\27\229Z\217³\128\181&AzT\173\177g4\155c\r\132\15)\245\219\5,̢\211\254f\02148\133\2196'?\149\220_,\4\164\163\1982\169\3\0\216\"?:\244\151X\135\1370 \153\186~\244Q\202\20\u{F789}!\141\188\2057\0Ȋ\214c\237\3\136k\201s\1869\222\218\253j8\228I\177)\157\246F'L`\1\175\19\17\131\177\132q&o\2545OnX\18\168\254\203hf\129[Cf*T\1289W\0\153\22~\183q\141\128k\196aN\242I\191-\238쫇\170=TM\179)\214y\158\209+\165\130\250\153e\30\140\148\192uJ\17\146\247&\140\240\190\230y\23\166C\136\1956\1\152\166\179ȿ9\127y3\229\179tw;#\131\n\243\176╎ř\212\247\235\171\n\31\239\183(\23\201\5x\209\192\137\216\216\243R$\232\25o\230\227\150瑪hW\148T\15\216PFj\151J\182&Z1_\174?\8-t\200B\202s(sS\12\142v\151s\217.\212\255\8\181\220\2053\153r55\237%Rw\240\8\211)l@\224;q\130&/\141\193R\205\208>\135Ӽ\255\1867\143\165\2365B\170\178ix_\144D\239\30\225\206\19F\136\236\"\220r\25WM\240C\179\189\14\138C\164\"f\204\240`#M\141\22\184\233ˆ\145n̽\247\22$\130\2400\151\248!<6\164B&\175\127\243v\148\11\182r\r^\136\158\146\155`\168.\239\"\149\24\184\136\25\151#\240[\3y\194\23/\239\n%0ۚ\238\249\148\146k\148\1668tV\227\168\206\228\148\24\146j\239\217\239\240\229 \170\195w\176Z8\16z\140\212~&+\16\19mj1s\246\137\243AQ\181bA;0i\2473z\159\3\251\0\u{85}\187\5\151ҵ>b\152\16?{\141\17c5\250\215\26\28\t$\251\255V\"N\229\3\239HT\229\189j\1412\141־x\149\22l\227\"\201#\255\232+\161\161\229\15\219\251\224\1734\161$\224\240ze\0\n\179q\212KkS.6\232o\160B@;\238\1539~Udq\182\178F9\8\6\145Х\29\21\244\194^k*\144ŭ\245\4;\167\250*ӭ\\\128\138\2ϖ\28#\151,\204!\n\157>-G\17߄g\207\236{j/J\248\226ڸEֳ\159\177hh*$R\148\175 \175\130\11C\t\174\"g\11\198$q\247\151\135\200\220\254\25\21?\251\185\224C\223\6f\229F\234\127\228<s\205]\167\134M\161\200\231%bp\180]\12\168\1\169\211g\175\1591\250\218^o\179\23\203\202\230\14h<\200\203x'\238K\252&\188\141\176\1\219Z\20\188\1322X̍\18\238e\176\247M5\141\237;\17\174\246\237\6\150\0\22\18\233l\184\180lt<\253M{\2\128;\142\130\1j[\245MxJ\25G݃$=\225\161T\6\201\2231\181\242\141\172\t\232y\28LQC\241\235G\129f\179\229\127\02851Xi\27\138)\7\26J\185\231^^\158\137\225P\30\214\t\14\164\144E\150>\142͡\2085\228\228^\235\193\168!\4\183\193\169\202Z7\144\175\11^+i\150 \3%N\210\255\135k1\156\177<\180\184\219\212M\199\"\218^\212\t\131\179+\158]\182\155e\209\251\158\137#\236\6\151^\188\183\254L\242SI\234\156\216\t5\188I\235\18\23557\189\163\173U\173\139\139B\163R\162\136_\0\188\182\28\221=\239\1xp\197J%f\146\231\218g\127HI@x\6?\135\172\204<$\t\137\128\8\8\16_R\184&\7\249\203\2456l\30*]KV\2341\27\rP\185\162\187%\136\235T\163̂oޠ\154l\2\156\237֛WX\243i#h\170F\204\20\2\3\216>\205},\222=\128\0\1\146\171\172qJ\167\165*\200M\1\1505\184\250\165\232\230C\21\247\193_\19\2034Q\166\131\229\6\248\1988Bƴk\12zZ\24%5/F0\239\148}\247\205;\154\170k!\182s\178/\144\147p\161\169\19\184/yh\t\20\221\203R⼵#M\172&\133\135\171\162\25[\232\11\131f\133\153uG\194\231=Dp8d&&\173U\177\rB&\157H\162\182Ԃx\15#\143\189\167\137⚢`\158b\31>\159\7\129\130bm0`\255Z\30T\2035p\182AB\161ܨ\184!\165z\147\169\2300\27W\198ÿele\11\7\2044\193gL\135)\134{\221tt͜\27\137eXɂp\15\183\169\168\155\22\141\31\255\209k9!\147\205\208j4\154;\1810\233%Rũ\173ƀ\193x\185\30Q\247\150\172\146\198\226a\252\7\1Ɨ\225\243\203\7\185\138\20\199^\21H#R\169W\127\241\250\176\153g\31\246\170\19\23;\t_\143\224\252YF\183f\234/y%\153\26\148_\215\4/9\208n\193\165@b\206\243\211Y\255\172\4\174-\203\127\172\167\193}H\197\229\214l\131\129\168Ck\25\254Gu\157\6p{\161\248\23\216G\214`\31\227W\192\218sYfw\151\186x\196\6\128\153\164\2360\147\156\214\252[!@\220\252\201{\184%~w\193\142\237\232\239\24a\5\180X\133\177\150\219\192\158f2\161\175\31\245<\153\24\235ֲ\15C\19+\u{558}\211\198\235\0020m\29\192O\0196\243\4\199Ԯ\11hR\6\129b\16\29\0\131\166\244\14\161 \12甸\155A\135;\245\217@{vN\147\242\150kZ\20\226\211\255\200`-\\\217w#xk\22\170nK\219z\232\216\235\5\141!\145\"B\23(\171\25\183\130\r\n_\225dV\166\137\175\22\141g[Y\11κ\0.\233\2236\253\190\130T \159L\"\241\219\n\205\r\131*¥\203C\139\203\n\23\196\7\25.\224\233<<\\\133\n3T\192ۓ\217\219kH\132\0127\231\130ŎS\173\179Hn\198O\167ʅ\233\228A\12\147b\4\27f\137\131pX\207\7Q9\138?\226\245O\22p\142ʾh\171\192R#\159\226\28d\127A4\4\152\189\0275D7\15k\192\212s\160S#~R^:\27\186\188\214\14f\185\16\181cY\171u\190!j\1554v\1\7\4\235^\3\175I\177\227G\1777\163\r$s\191r6\157\183\245\255X\134\170J\227\\@\12\249Y1\208\"\173综㰂9gD/\191\220g\19\132\241D,O\207\15\129m]d\255bd_\191Ɇ\167\182X\159]\154\150a\193\28-Ƨ\236\244\221\234\241\244r\155GP-\245%\180H!\161\236?\175\243C$\153\29\192:\198 \228\178Lb\233I\238\219\235\170v\158Ӟ]\244!\27\5\229\242\2c9\178\186\165\210\246\12\185\7{\15\223y?\228\156?\212b\29\169ދ\138\14\147ܝ\135\235\133\235\168f\2228\173\15\213RW\127.\244%+\207B\235B\247E\153d0\134\27\162\20\"\203*(\226,{.b\179\211\6U\208)6\173\152\29\153n\241\149\206g$\171SO\165\196x\168E*O\237\176j\178\239\252\"<\232\248}\255\132\231\168V}\12734<\184\160;Q\160\240I;\174Xo\254\127\161hx\163\18\202\251\156]\130ԉ\1\250\142\151\168\164M\153\204\6V\29\136x[\152U\229\204\217\22\149\23j\31\230Nl\2265X@\29\220\14\3j\185Τ:\5\173u\153Nٌ\204D\2093\239\204i\177\14j\131\184\230J,\163D\191\184\157o\157O\14\147\129\1\233\2421ƝF\7\202j\140Ķ\186Ä\192`,\218v\143\224v1h@\237\191\136[\r\23\231\158:\1647\132\220\217\1\129.\217\27Sr\244\168\6-\2374\8'\232\158⦧j\248\171\156\24\\\217T\4:#c\14#;a\210&O\21Q\223]n\128\238\5\178{\25\r\167\14\206\28=\209\15\28\130\153|\24\219\254-@\255\17\188`\17269\215b\237\201\252\156\239\16b\193#\1612\145\255~͇\200!p[\159\143\250\168\129y~\226\tpe\188\144\154eF(k-\220iY}7\163\226\246\200-\183\184Iw&(9WW\23\8\209\127g\150\192\170\133\222\7V'\247\1\182E\167mE>\178{\154/\130\132W\21\6`\182ʛr\28\132\136D\3\171\193\246~\252\15+\144\249j\239ɶ\8`[\142X`n\247\136ťb!\193m\2\160\243\249\170T@k\216l\169U\236bc\144\176\242\147\183{w9\210x\255\28\170\244\202,\139\22\223\214\12\209<W6\169\149yHTE\135\n\8\239\7-\197&,@\171\163(`\11\n!\2537M\250\215\240<#\30V\4\165\182\156\194\5\194+\224˱q<x\207aY\240\225d\137\168)\180q\152\t\130}Lv\203\242\191\149\2069\127%S\196\247N\180S3\167\167\198{9|\169\251\235eΎ\20:U*\201\1\214\203A\0040\8)6a\133\245\1541\138\167\160\228}\194ś\163gi\228\242\\\28\8\19\133\176'\14\224fXu\157F\237[.\215k\236\207K\29\172U\151\221903\169h28\139a\131\21\25\23\28o%\147\191b\17w\167\158\244\129\152=\235\132+˟w\149\149\147\132\27\192\139\181\n\144\252u\20̙\22\141\221(\22&鬃\16\158`\190\252J\154\15090\160\161=r\5\226갌o\198\198\202\0026\139\148\134\157\249f:>\205\253\180`\204n\0232\212\25snZ\179\158\158\175\218\253*\129\218\22'Յ\16w{!\235\16\168\135<\7/\164\181j[\240y\233\255\162\153^\138\26k[\146͓\234\249y\249T*3Z:\179\232\247͚wK\3Z\\z\129d\162\152\139\170\158'\128\181\252\128\167\130\209e\196\204\n\127RZ\181\173eʪUYI\200j\171\214\227\234O6ݭ\191\":L3\0\169HjM\222\217\16Q\246\23\u{ED7A}\"\180\154\131\214<\194\213)k\241\1834\6\219,\149\205C\153\147[<\148\229\250\176ԓ\1643\240w\135QV\147\186\160R.+l\u{5F8}\136s\130\244\154\190\145eW\207N탁\132\162\190v\224֊\139Q\139|\182!\229<X\234\143N\193l\205kKy0*Ǜ\198ȣi\223o\247և2\222тXZ\152\202\241\235pQ\166B\28գ\22\21\229\24A\"\0[\174\235ۆ)$\157\229F\170V\218/2k\200\8hs~\208\202\240;B\1336\242\182w\186\239\21ڞ\8\28,\172f\239yn0\u{7BE}\254S\222Ǵ\23\182\220\\\173\8\134\0\194,\177B\1435\187\137\197\192\249s#2U\182\138|rB\12\223P%\t.\185K\171_7\136\198!x\229\27\224\232\11=\171Z\220\248\233\16>i\150MbYfs\169\169s^\149\208\244\230P+\"`\144\178\193\236\167#S\18\168\134^\198!\220\u{97}$\242\238\193Ebc\225/,\158\193\247\15\171@\226\240\140!\190\230\168\6o\136\190l\128Z\199\239.\229w\241\24\u{61C}\193\200(\23\213WEնX``\240D\193\31\209=bn\187Lr\159\172\30\146U\201\215gCj\141*).7*5\15ݛ \27\180Ο\192\130,Q\128\155\239\215|\137D\228HǮ\0\216\21\161Lz\181XZ;\206\n\188\191\231\2\249\150\128z!}\137\5\3\31\248,\3F\30f\166\174oH\19\219\233Ɏc\158)\16J\208c\248O\172\230\188\209\233t5\216W\250<E\222sQ\29b\nԑ\216\23\172\155\160X5\199b\183p\136/\213\4\132q\187\245~\242N\t\144v\152\146\199\\ku\244\247Z\170\139\234\191\205։\213o_\219\7x\194pbp\12\253\4m\250\14\"\177\147p|\179\187\242\249\220\246>\206\26!\155>Pfe\"\178D\rm\178Z\188\6\223G+\7\245\251Y2v\3\147D\237\187\154\127\136~\24%\145\212\237\144\247V \31\166\159\2026\130\170\226^_\128\14H\u{5F7}\190Z_k\158\176\14\138\188\207\242\162m\160\185q=\188\2\135l\151\188\207\0\144\152\142Ҋ\127\168on%\254c+>\242\188\2365\153\233\146U3)I\181o\15qJa+\146\194;Ob\25\219\223+\209}\196%\1287X\166\25\180\250{\25\19E\242\227\20\127=\171>\235\169\226\162<\130ٞ\172j*T\24\247\227\204\198.?:\153\232\22\220S\206\r|)dZ\137(\227<\206\247\18U\176s\7\132V\2095\142\254\n`\247t6\152\"\20330\233\195\232\14\232\28t%\11P\163\175b\246\26\211\"\25\136,\11\176NE\1851\23\246\214\251\237\8\138\143\169˸\7#m\140u\247w\154\243\227[\160\142\14З\2494\0250\177\154,\\\218\210-C|W\244\2514>\154\158\145\240\5\190\191\184\180\1890R\186\250?\23\187T\241\213\1\150\151B%k\254ص\178)ڌ\186%\18\221)\147\133\15\171s\169JX\213\202\240\212Ӻ\18\22\188X\200mS4M\t%\21\148\166'\220*\138\166\248v\139#\211P\153=\187\183\146p8\0046H\174홧\20\171¾\127\140)\205\205\240\243d\1812kZq\18\"s\169\160\132X\177\171}6O>u|~]\5$\26\u{F453}\225\234\20Y\161\136\147\165!\190x\227\27\15\129\143\178\243\147\233π\31D<u\169\28\166F\23\27`\129\209'w*\190\228\221\250Ė\159\161\u{92}_\26\149\237k[yM\233\230t\203\127ٱ\14\12\163q\145\235\167\27t}x\2\233\175c\230\4j\143v\163\\\226Nl@\150\220Ŏ:+\244\2Q\n\20\138\26\1700\179\179\193(\150\230\tl\147Z\6>\235\178քWOz\197ˬ\0054\30V\210\253\185\185A\160\196\5\153㑭-\150ԣj\132\193W$e\241\237j\143\217\n~(\170\238\219#\24\5\25_\132\4\175U\25+e_&i\181h1^\207\242f\205\255\162\16\248\158G\143%\209DV\11$\134^\16q\189\16-\24794\249ڋ\18Ejm~\176\240n\165ǯ,ٯ\128\240\225\187\16\15n\189\251\235*\11\22_\23K\174\28e\202M\247X\196\204B\187\227e\28{\27\138\166\26S@I\158\16o\22\177oIQ\206&\n\137\153\16\t\144\233\1303\178]\134d\212\12\219U_\n\29\18/ǧ\219d\14\23\202V\224e\t\127\19a\15\26K\144\19\181\236\2+Ҡx\140=\0\184l\177\190^\148\2240\185\129\11\0\136\139\145E\179\182c\163\248\173\234x\146\21\244w\203x\192\241\153Yjۻ\200\251x\198\228@\138\242\207Lq\149\222\247\135\130\233W\234\218ږLu\128\12\4ן;۲\177\27\157\146ܧâ\174\161\248\0\134h\1943\2\187М#Ct\151\15\182\177E\168\225\212\2450H\127\245ꤶ\28E\242\160OyD\202\2376\202\230'\20\198\231t\208ih\209r%9\136Sot\228\127\187\219A,\21\182\12!'\240М\210!\147\4\1{ﵚ\242\2223\231r\252\\]T\127L\160R\1595';O\163\232\204e\221k\240;''\134\214\22\157ظM^\236\179!R'\t\130f\228mv\151B#\253\155\205@\241Ӱ~\26S\5\158\26;#\233$\200R\2233\228!\137\235+\"ʛ~n\192\228\12\166k\n\r\226\228\3͘\t\198\11\191\193\242SY\8-J\149\250\17\220ҦMˁ\250\178\11\134\160L\19\166e\243\tR\219\220q\188~\233>\193r\191\137\160\150Î\199%\151\1607\172\170\240\239A,\158X\250`\242\248°\184r\168\0\127\134\144\186\11d@\207\23\1778Y]\201\30\0224u\183[\246j\200)\167\205\229p\207\255Aoq\240o\187Q'\177\211\211\6\159\14\145\"\252\136Ż\218Db\14=\208\235\27\250\217-j\234\233snZ\18\182z\0081\229\253\161\189\158\19\22\143\14ޣz≹Ua!\134ƭ(Nj\181\173I\189\218\15\5\185\255p\r\187ŵ\145Xl\24ah\133b<[\0168d\146\129r\130)4\6<n\213Ƣ`\213=\219c\138\199b\242\4&\185:A\238Au\31\25\22|\127\248\236}I\175M\146o\12 \22-\232\2lH\215\222_\2341r\223}\247\166+\168\29\231\169h\215\1q\203\30?\156\250\213\5\188Q\158e1\152/2\244\251\243\5\199\226\29\2099\240\152\183\254C63\163Yp@\179|\8}˽\171\236\164\28\163\252\179\255Eɞ\144\236\231q\7\155\166(z9q\139=\252ϒu*+\243\2236\210!\0ڔ\227\231h\16U\"\248}a\205ɉ$\221\204\254L\8\184\210!\175͖m\244=\146 !\2348q)\145\254\197$~/\238\213[\225\234K\201?\29\12\237\178\217\15I\136I,b{\2308/~|\198\25\243˰\218\195\254\132\163\185\192\239\174d\145\206o\249\212M\207\220\249\239u\2110mi\131[\t\200*r\n\165kIRv\238h\178\159\246V\234\147cǑ\157iE/\27\23z\165\141\184\2132\182\240\136\1509\223U\222/\189\194\198\221\223bp\135\217'@^̱8\255\23k\129\134\162\173=\\\134\179.\198yk\15\152\178oc\23\14\u{F586}\251KsRah\181\136\205K\175\182\17\215\203\15Ϟ\167\233\228\145f\160\239\180?\189~\135x?\0054Ֆ'\0012\209\15\236\16|\179\178\144\205v\23\22dE\165G\220\3\192sn\234\134h<2{\21|[v\0175\254\161\253\239Q\235ؒ\243\19517E\209\248!\152\28C\30\132\156r\134k\129P\237\166\6t,5\146\145-\175\162(@*\24Ԛ\176M\15\\|\127\255p\219\202\254G(\180\30P\210K\0\134:\132\1964O[_p\175\1653\191s7\1961\132\4\192\139\170\162\165\186\253c\156t\5\237\178\n\175\2081~I\148OS\149\132?5-\222뱋\138k\27\218*\224g\19fe\140ѕ\173\230\2170\129Ȑh'\181\129\201\235uU\191\153:#i\"\206AeG\231f\240\173\0\169\254>L\252N\245\24\5\212k\8Uh\19t\145\127\139\255\8\tI\12)\155\2\130lS\239\230\\\0182\246/\135,ǀ24k\191p\142b\139\210\199\2123\\\193\177H}\26'\r\0246\17w\146\141\253Υ!\227\168\219\25Ǵی\146\8kO}Rc\184\212\214\234\137\227\242\170I\28\154o\138]\18\181|\225r\148Ʃ\230Ϙ\169E\24$]\231\237\"\221An+S\187\186\210J\190\131\133\141\236H|8\128!\134ة\207w\12\155\23\16\178\180\128\217\23\222\7n.\187̑=m\1\189\17\n\129\235\230\136N\u{382}\210&\5<\27\141\242\201u\3O\145Sk6=\171}\220\254٥0\228\214\239nt/\194Z \229Yd\181\138*\186\208\241u\178,\250k\7Ϧ\136\1636\17\u{E66A}\1307}\6\171\165\131\237(\255\243(\254\157\252\127\15\234a\142f\247\251\30\240\211Y(\5_\160\161\252,\127\26\26\162\151\136\152\184\14MQ\143\243\153\235k\2136\136\16\177ɝ\19\239\246\151\31\150ۛؼл\216(?VDK\3\196ezb\183;Y\11Fp\218\213Ci@\27J\n\220,\158_m|\168\169Ϳ-.k\18\140\2232B:\240\228i%\184\238\188\20J\160\140\11 \206\202,\12\29i\26\240X\8^\171\208ئ;\29Q\128Z\162\180\195%\183~pC0\166\225\236\171\11\179\138\143\t\205\230.\181t\133\187\244\247z\231\157\219gm\133`*T\17-\145\241\180(V\8y\142\165\194^'\133\155\195Rz{\158_f\142_\205L\16z\157G_\11\141\217x7\248_\145S\198ߟ}*\237\234\tz(\193'ؘ\19Im\177\152\18\21\136\210\233*\n\7\127q\18982\225\1:\218#{=\175&,q\1626\174A\144BP\177\135\0298\187\203¯\190\22\29\210\2272\188\218 >\128\1494\192q\209\253\171\247/\15\211\u{A0}~\192\188K[\205\235ꠠ\131V\226n\208\238\17\161O\236\241\161\142\25{\250\233t8\239\17^\132\250n\172Vh\196B6o\215\217X\184\144\191\130\161\254\185\148\157ߔ\248K#\130\183Fh\215\11\132\22Fh|\138\151\24#\31B\202\17N\204\0\31u\1363\131\6\12;\204\236 <\12Y\207F^O\255\18\237\190\221/\169\158\250&[\24\130'\153\131\16\164\249u\254=\168\196IoǱS\198?hO\139\2\215v\187YGN\215Ў\185:2/G掜\146 \29h\19\196\196t09\20\158\178\152\137\157b\131\25'%\2520\255\169\253\244\166\160w\213\24O\144\r,T7J\167c&\170\159s\149\135k\223He\152x\139\24\229\t\31a\213u-\147\185\178:H3!0{\2\200\221\198К\169\169\142ؑ\12\232m\156\22\245\175\222\23II|Oﹲ럪\208T\202\236\165\208\25\22r5\216\2ژ\248\190K\15\239T`\194.0\177g1\243@N\154\168\192_\218\127\2528NA\toÕ=vn]\182\27\230\227\252\r\136o?\247\15#ͥ\139h90\163\195\212yJ͑\136\16O\26\5Vv\180\226N\137\207\12h\235\r\22\6<\12݈\227\196KZ\244u\181\175\159\141\231\160\6\25\246\170Z\131\188\1\20}\141'\168\131n\29\216\7\4\238\230\192)nob\196$L>\22\147\129\20A\30%\211<\167\186\rG\151?$g\253\223d\174'\156/\2217\132\235\148\247K\213\2103\128\206\4\186\207&\231W\31\191c\188\155e\181N94(C\2181\\\2d\164\163\198\\\150V/\152J\0175\158\r!\191\222a\151]\138\235~\245\182j\130\0\27\157rp\248\t,\176\198'\2\31n\26\152\1\171\7(\145\193k5w\u{7B2}\232\132_\247I+\0207\130U\130\208ƾ\226[\31\30\185\243}\174?\191\249\189\231\138\222yO\17z]\200B\235\5\207\245cM\134\7\132\230\"\5\20\243\141\199:\174\5psk\176\130a\215\23\169å\201#\20c\139\199\249z\135uB7\27\241\155\140\"\190h\153\27)\1\222URc\141\182\243\165F\227M\171\185K\251\195l\230\0077\237\238\176ۡ\209\252\152\179>m\216I/\233\138|pJ\168\209?hF0\186\168\165\3\2527\183Y\20\145n+R%\174\186\t\248A[y\201\127-\239\210ʈ\194\206$\247\1\3ڢ\17M\197\208/\19\198?v\137{!ԣ\186Ri\176\23F\t\220~0\155\221\210\222r҇\146\221\245\28\5F\4\157\129jlf(\0124\159\182sQoV\2081\251\230\227\237\145\15\192\180\148\28\161s\2064wʗU\223,\196s\248Ikӭ\23\167\185\133\250\176La_\176\23M\221\1\23\173\17\228E4 \182\140\26\1911\151hHK\136\183\22\31&ε\178Q+E֔\141\167\183\214D\"_\198/\4L\214Å\230\250\127.\147\231A\160ϕ[@\221jD\250\8\246@\31\29\255\3\253RφO\249\175$\190\193\139\226\196\215:\217Z\5\194f\249\11R\23b\17Eu\237Q\128\164\250vL\145&\235\u{F022}\11\229\230\235G`\22QL\242\15 <\222\228\2132`\145\241t\tب\236#2\127\237\246?\19:(O#\147 -\31\176\1449\171\252\128\135M\175p{\193\213\230އ\237tD\182i]\r\232R\2011\7t`\187û\254i\128{\164q\221\243\215N\147q\14\236\201N\24\1413\2{\12\171\0*i\207Ux\211#R_D\4F\197\242DR.\171\228EFw\204\206Mp\163\140\193\193\243?S\27\167!\219J3\174,\188Sm:\201\249I\131#\233ͭ\179\254\249-ƚ\230\213Js?\239hT\140B\2207\25\202\2111\0168C\241`7\252\141\25\193E=R\27\237\19h\253\151;\142\7\\~\162\147\142\246\189\157\145o\145#\231F\172\150\131V\202}\nUub\19)k\171\225+\233\2411\185\174\164\139\231\4\216~\133\239er\r\164E\244*@\195Skj\211ͯ3\235\209\8\150N\243ȃ\229\16.RT\194\200H\20\238\31\251Y\25\187(S\246\6\227\196f\239\177\21)_\27\128B\193\11\130\137\198\127R\26!\182!\203\14Z]\248Z\8]8D\192\235\252\236\228V\251\254|C\133\182\19\254\234\26\19\21\230*\251\0058\"\140o\237q\139\181s\193\196BZ\250\185\26\173\rޡ\204XoH\191\244,\186\181\216S%\150\173\229]\192\233m\143\180{)M\156\136\171\229/\240F본\137;\178T\23\3r\139\171\234\163\211,Ms\182\u{7FB}Iu\180$\254\7X\158-O\143k+\235\150u\176]@;\181\17US$\15\184plٶ\201\232\140\24\174\223b\167Z\169\227\133\21F\243\201\236|\224\237\23\166\152\1639\1576\210\18j\163{8F=\181w\21]\18\250\18\202q\137\170\171\186\223Y\221\n\186u\r\163\137=NK\225sD*\145\192\236\241ԃc\247K 9+\185r\179×\151\11F\254KZ\155\12\17iJ\133\1976G\183\152\149\1853&\198\251\u{61C}\180'\230\3\170|!\127$D H\147\151\30\247;Ψ\249\184\163\178\221\209h\206Q\138\149\215\17\128\r\181\230\r*,\184\174窽\7\129hd\6\237VD\15\247\201;\180c\19\r \158GW\246'7*\20Z\19C\132U4\132\n\24B!\r$\210D\2\23*;jwU\150\175asn\202H\156ى#\173agź\252qĒg\0\188\245\209X\130\188*n\254S5\170\189c\2077\154\223\220g\136ы|pZ\160\185e:\4\27\231\7\1\178\4yu9\181!:\226^t\24\20\161)\11%\162,7\160\19x\203U\237\161j\193y\244\t\148\12ta\228\233^\212\17\175gu 8\238&\144~\199\247\138\136\15\156)\207\0@+DIH\237D7\240e\137\189e\0\150\140\172\11\"\167\141\171\185\194\17#hY\153\4\26\146\254\155M\132%\138\18\221\216=7\8(\31\251ޤ#\172\188^\191\189\150+\217ϼ\194\2399:=\6o\139\11A\156H\24K\147\180!\247\5:\244Y\14h\162\175-\151w\229#\214\18\26ibf\163\204\214r\19\169\183JC\149\15J\244t5\249\2122\18\r\"\150\223\247\161\23\t\152\200\2292\157@ԯ\177\142c\232\\\180\158\162\0C\185\241\169p\t\248<\254)c(\177Jh\1696ɯ0˗@\230K\220\226\129]t\138\1943:\151Zxo\247\231\237\184\227\219b\127\191\128\128=c\176mq\20\7\140.R\226\0207Gs\220\17)\149\163\28\208\192'\141\196\192+\245\197q\198\228\194\15rK9\229ms\245\151\161wj\180\215J,0\3aǐ\2'\152'\255\185=68u.\28Х\11\151\182\193Mҙx\1610\127H\23\139{\211Y\25\30]4V\6p\133\204\19I%\128V\155sN6\27%1\179\rx!\159v1\227\19\158\1601M\225\196\232AB^\255\161C>\237\183\160Z\172~\253\159<\128\152\161\225b\130\141\209ZF\230\135v\n\2062\237\247B)\239\148\213\19\23\251F\2529\190\1683/K\239?\163\27G6\0026Od\150\18\216m\157\29\137OL\138\167\202\235\170L\139\169*\u{5FB}S\224\197\223\127\242\234/\149C\179ŧ\247\174\25\1470\236f\200\213`\177\138:Zz/\"\194\218?\165g\155\167\180\152g\212c\8f\248\207\241\250\t\1662\21\245\151\239\134{T\246\237\131@\241\152\15\163\233\134\26\198\201-\170bv\172:!\174\175/\189!\168\255p\14\240\212\6J\214\21j\187\\Q\1578\228\190\26\5Wo)פg\150\192\240\219\n^\133m\28\163\183\178S^\227a\229\139\2\223b5\20\169N\td)\253!7\166\251\17\202j Bw\180\200φ\163>h`Nd5F\134m\209,nɚ7v\5`\195\252\189\131u\190\208Z\146\2178\6?\167\18\182\145\186^u\0150\30%І\"\225\26\187]o\204\246\144\192;h\147\148\189$\149\1951eDn\249\198\244GW\148\249\1315v\248\206V\6(5|\198*ҹ\225:\206\"b\31&\t\2534\2.<Qr\147\245ݑ\3.˾r\23\132\26\184ٗ\250t\158\135\162\229n\nz!kwp\161\233\172\210\243F\132!\132\127\249\157\192;-\248$PЫ\193\160\188\17oy\2ߑ\192\170\243\166\241\3\148\223~\2429\169`\131\185\21l.Dc\236\237y\241\158z\183|\19\23\176\243Vl2\182\143\0ߤZ\u{6DD}\251\208>\182Tsl\187\5\186\216\195`M\203s\137\134/*'\143\6uA\153\164XU5\208oţ\206\8\182\244\167\28\243\147\148,82C\135\184\0282\144\254\183\247\152\210&\253\146\235M\127\134\147sn\127\241\247\248\22\5\136\12\173Jnp\238+\170\158B(\197Z\239\189\31ek\176\157ϖ\146\25\146T&\225U~\223V\154\240\156DJ=3\222n\144\162\241\131$\136N\218\0\204\215?3!\170\133\249%m\250\193p\22`D{\245\200\221]\131\193\128\4\14@\1381(\185\135|\145\23=.\25\201Bj\128웁#\157\166\166c\144\206=s\\\0\195\207Տ\2459\20\29\155\27\165\164\172T\179\170\158\23`\200`\2410S\139\29r\187\146\227\\RL\15\2339\2098a\141Aa\217\24\201N\203\29Ou\141ś\223s\156\21\234UX\165\178\221`\26\22\180\157\174?\1788\242^\156\12m\15\198D.@\23\28*=\142\172\19\189\185\n˶\134\164\29\7Z:\128\136\151V\220!\17\"egha\132\25阌\178#\221\r\138\251\2453)j\23\154\227&\24\226L\255\172\227ܹ|X)\194g\1458\183w\139\166\136\136\244F&\135\150v\192\144DW\0284@\1510\254\4.\236ŋ\1\239R\194Vl\165\169\217\24\196t\4\238\246\164ZB\253\141\213:\22\156\144\127\182\218\246\152|j\179\229i\137\r\220\233@\185\r'\142\206\254}B\155%\188\141k\247\224I\"\148X}\246N\214ee\29k-\252\172\185|\238\253yR\171\243\166_&%\254\15180vdb\188(\182\244\228\173\194\219\227\218\216:\180\223\238\231$\173\172\185HП\216\22\185\208[\203\219;\144d\205\17\227e\189\127\166\153\27\0012^\251\243\209)\145uI-\\\1806\226`\221s\177\1686\187\t=/\226Û\234\199\29\19*\174\227\238[\193\18H\129\141`\192\1563\16^)Q\240\170tF\237T\r\193D\176\244.\171\163\nw\191\162w\15\25\176\249\183\3Ń\253\n2\173Ӯ\215Z9\162\1923wT~\255\175pǠ\15\19SP\134@\209=R\134>\246\141\223\21\t\253\212m\3\177\158S\239֦RN\2231)d\21\164\155\181\"\7.\30r\205q\t\232|\213\11\17\224%\206\225\23\\\209\242Mw\153\192^\17\168 xL\128x\228M\16\148\183;\162t\t\134\1909{0@\131\18P/\223E\128>\6\rXKf\132\4\21\157\7\171rt\157\152\22\247\196\238cY\178HY\234\2172\1\231??\224\175'\128ifO\171N\2352\190S\144Sa\240\160\209\4\2047\5\175\192צ\r\156\180\14\2\236\150\"\167\144\157\165P\215@M\203\6\155\225\255\177J`\171F\205\194\242q\231\136\23\149\19ݤ\145\178\19\180\185\28\1903>%\127\167\1514\30)\181C\178\163\212\31Ö\234\155\243\16S\249S\174\160ֵ\203\22gK@4^ o\205\\\155\22\240\16\214;v\16\223$\162m:\189\28b\149\178\215B@\1445\214\251\152C2\239l\19\239H\148\231\7\216\229G\218|C\1577\134R\192L\185\213\30,\254\r\\\7h\232v\141\246y\140ݎ#\251\189\1O\209\31'\22ΩdI\1346)\135V\242\219ÃN\6\239\165\17\150\181e\206<\26\242P\203)B\130\226N6g\206iv\1832])e4\169ڀ~We:m\164\200!\0\238M\7\230V,귝\211c\175+\240\183Ϫ_\159\131\143\189\241\139\226\0020GL\251N1\142\2475ꭚ\150\137bo\169\193LW\160\240ݱS\141\144s\223\8b\t&\219\25\250\139?\168\12\221\230n\209T\209\246\206\6\8\249\249+\198r\147*\251\132Q\200b,\12\2018|\171Tq\205\204v+\187M-\146\n;=\158)&\12\151|\153\135\176s\194\t)\129\135\195P\143\209\251\142xJ\205\17\242-b\210;\0060m\209C\179r\207\193\166\148\169bFliD\20\222\247\142\19i\181\148\8\29?\183\164\141rٹk2xJ\145\178\138\252\143\145L\219\7\226;I\17(U\223JhE\252\0171\255s-d\169\235Y\16\163ikS\148}u\235\221@\5G\251\5\140\15\246u\142\134\217\216\u{9B}\154\143j\181\15!\181\162\28\130\189\152\216J\139\159 U\235\228\241\161\133m\31\\W6S\232\20MaFR-Ѽ\26\180D\203\206=\151\145.\216\227\200V\195\221\246<\27\127\243\250\1JK\2337\215&x\182\185\146\183\139\25\217q]\181,Ϡ\5\247s\25JĿvV\148\251G\21?/\1928\nȥV\176\4yi\249\250e(45\190\160Fe\245\nO\216\11=.\129]/\241\213\1\1\1992\189%\222Ǒ&o\135:t\1^X\194\253\140\184B2\208\210\216X\243\132i\145\15\134(/\128\245I\163\195\24O\176\241\250\250E\238\131\252\157I\149\127\155Y\\,KЬ2\1589@\4\226Er\246\156\157]\229\216\221\193\1837\166\194g\17:{f\"_ԧ\226K\t\129Q\234\137o\242\247\\\137\r\179\249\130\177\245\254\0ߓ\3Ɂ\178\130\27\15\238YK >\\\157nv\2\230\155c\240\194QB\234tz\14\"Dj\180\174 \132a5N\168\227\19\169C\28\0142\212ݬo\136\18pQ\148\29\250\232x\240\184\5\2\rx%7\245I\22\1514\1614Uߤ\255'+\240\18\158\225\181c\6f\236Ĥv\179j\249|\23\230\255v\203\223\22\7\243\184\130\235DtO\238\196\r\7WB\24\170&!q\11\221Y\203\\>\249\243\175\239Z\rf\170\224Y\242-\191\225\19\191t\136\220L\16\140\5P\nSdA\185\252D\227\143']\198\"\249\212*q\150\177\205\02190\228\254r~\182o\130~Eᆳ`\252\14\0\254\r\203\195O\191\191X\4\170\26.\2z\21\231w%\199P;\171\173詗\195<\127\184\156\17\254,\175\145O\133\r\"bP`\203\233$\17\130&\204ձ\164\176#Ȉ\20\22A\246\253\181S\191z\16\226\203<\245\204\15\165H\157OLOm\132\243\130\186\200Rw?\176W\17\142\168\248\255\147*\18\206\232Wp\30\131\252c\28]\22i\229z\152\n:\133}\11\12mhʒ\184\173j~\165=n~\200\241v\191\26\158g?\t݆\165L-\129\212c٨~\1334\187\245w\128\252:\253\188'\189\228oj\144\7\\2\253\191\184\235\1628\185\174H\219\8N\8p\17\175&c\26\179m\165\31\187\134՚\"\224\206x\14D\2\22\205\210a\149_\153\205\237\245\242\189L\186\204\18\226|7}\24\230\175\15\185\27p\145\224sL\238\137\248\130!\r\128\7t\227#\203RA\152DP\200\233Ĉ'\156\211s?<\224\135E\167\149\230\209G\0\6\153\242\175\214\243?e\247q\18\245\8\146(;\188\151\3\171\236\194\246?\"\236\212\223\235\11p\154f[\1655\8l\209\22:\247\174\138|`\255\217p*\198ځ[+\217\19RD\21\135J\188_S\24\194I\201ɾ\195\219(\18+݆\169\238\18$\184\247y?\212h<\5\198\221\0]\198J\228~\184\186\247\246=\246\u{7B6}\173hrw̭\239\2242K\212w\169\24\180\1272f\242\154\255\134΄z\25\137Ho\223œ\185V\226\242\138\193V>\245\176\21\20yAY\165y\167\171\212c\151\134\28\0005æ\255Gc\t\128\175I\135\248\t\135\139'\146\153\136\30\230\255c(\16\188\240l\197\19\163H'\146D\15ʂZ{\1520\242\223\8{b\223\24C\214\2526'\147w\12\224\184\238-\146\192a\226\23{\15\131\209zx\254%\137\199{\243_\137^\229\144R=Xcra6\229m\205Q\176\215-43GJ\133\3\12\189\205\n\178\191\229\\y\209c\200J\139\254\255\184\138\202\20\18\17\154\255}ba\156)\193{\175\0\155\188\239\0\253\27\135^\243qj\237\195x\28'\159?\238\0129}\24\0,\183\0192\180А\180|+W`}\238\231\"\248:\193.mb\166U\134t$Ps\27\29~_%6\209\225b\223<\139|\0L\193\183\164w\188c)\241'\18B\211\127\247\254\149\253l\151j\r¥\u{6EDBB}4\2\2F(\215q\189\28\17\137GP\31\5\166M3\23\2\250\11\"\130\220Bh\134\230<\8\139\161\213nG\189\243/\3\217\228;$НF\21l\133*\228\171G\230O\236F7\222\218Q\179qqչ\142#D8\172 Yn\239\221\17\16\14\129\6DWkKy\135O\11@T\127[\248n\241י\228m:\0141#'\253|3\142t^\164|-T\153\11\152\192:\27A%\128\128\190\7\223\247\246\220\24HRM\223.\159\23+\31\194u\231\n\128\233'\164\176u\151]\1486Ꭳv\200\3x\158z5\172\8\252\156\240\23\183\235鲾\255p\244\197-\199\22t\1830\178\227_\157\1541Aυ\155\210\239,\132\17\140^\162H\229\198k\1979\164\167ޥ$ۻ\197\2u\253\223\6\175-n\205-\198*xy\154\204\12\151\174\255\\\220\14z\254\138\242\249\162_\8\187$\18\1ŝ\203R܊\255\175\17\230\181\28\191w|R\u{6DD}\139\188\242\138GIZ\181E\239\236\220\231N\130\175t\193\tr\30\236\183'\6\255\212[9\7m\4t\1463|\248i\19\156\230\224\155\1\22\133l\142\198p\140\23\223\26\158\16_\149P\255\194\250\149\231EY\158\248\181|\1327C\171\166\19,\252\241\19'\156\24&\229d僽#L\n[\4\154\191#\28}\207\127\0156\179D\168\180K\202\24\182x\12\232\5\138\222m\166-nm9=8s\131\241\159\244\238H\241\228-\19,A\211\253X\136b\178f\203_L\223\214\1@\252\t\128\12\139\1709q<F\191\6\26\209\"\192\227\133D\129\228\127\229N\6iO\29\219\252T\27\162$\173\167h\153V]\202®\25x\151\26P\214S%\138\165(\186\242ٕ\219躅C\0002\175v{\127ED\221\4\3\216rƼ\1296&>]7\146\1956A\0316\251\2052:\206qBۮ\178\177H\6\204+\252%A%\1\133\24ȹ8\141Z\130\151@\2144\132\248f\21\20y\176\11\179yر\206\127\166C\"\133]\163|\194u\141Dz&x\189\135G/\25\194\12ơ\190\185`(\8\3\1504\250\233\2498\153\r\166\22s\139\239N\15<\1599\164\174\199?0\188\229\211J\185\229\229!7<\237}\136\157\153\191s\3\2529\232\216ě,)]\234cTKvތި\208M7\0i\128\198D!#\164\27\11%\239\254T\211\222\219N\185\244/\200z0\226\7]\28\174\29vC\151\25\27\187\221X\229\167\27?ʔ\157\190by\r\155\220\202 F\152R2h\30\210\6\240 \183yoƄD\194\6r\rc\133\24U\r\193\141+\147>\0044\164\195\208]\26˛ݼ\12\239\31C\146ө\17\199\201\228f_smJF,\149P\140V\29\238@PoP\139.\132{\220q\133tӹ\226E\174\175\226\2113梅`\188\00764\199\202[\181\211\232\186\214\247\20d\23\30W7RR\170@6\239Q\12\20\163o\144e%\148~\191P\127u\165\127\186b\177\25\246\26\236_\189^\247\132P\18\139\181\184\165\243\227؟\1\167e\227\138`\166\244\213ہ\243\15\140\168\178Kn\228vlȨO\197Q\139\30u5\142\247\130\243\240\131\142\252\15\217\200\t\225\25Q\224{\145m\198k\180\182\4\128\16914\212XU\240\203\4j\148\253\162;+TȄ\148\244\131*\29w\187\28\163\134\248\23\252\14l\1947\186J\180\218q\1563\131\16`\186K|@\1279\1900$\238\t\252\127*\140\3,\219*2\254%7\238B^\189\16g\160\145\1539\"|\179\20\242\127\206\6\14\144\177\152\186S\246\161@\181wH\21\255\235\200c\206ʠ3\225#\239al\159\134\129c\26_\240p+\131\196;SS\146f\127\217._\221~\200}j\30H\203\u{7B4}\129\170\t\218\196\2\237\t\131\158\23\17\4q\128\166\185.\196b\241\162\31\8\213\220\30Ǵp\224:e\5R\174\203E잎\236\234\210w2\166\181\173\172\240\196D:\209\248)\162Y\185\170\\\130\208`)\8\226\218\243\186\128\21\198\0060mRv\134-\170$\203\221\203M\196\30\178\167}rG\160\136\233\227\208\254ֳ\226\31\175\127\129Eh\205x\194\t]\252\228\5q%\181\239\203s\182o\0030\18=\29\16\255w\189#\142\139\28\144\152\151\180\222*\0170\145\168\0M\252\2395\195fʅ+\251\29\253v\208NU\245\u{95}\n\156\22\246M\254\1965\157dx2\168\253i\159\188\25\142\242\1441X;3\201_h\193\31\131\234\5\2201\243\221\218J\133#Ec\245\250\0Tˡ\145_8\7\247s&\129<Ja\24\170\188\193\191\166HCb\135\177\207-oɵ\242`\241]\182\171\233T\160\240\8}\230\162#SdGi\184'\29g3\252\149\203#wc5\161\133\151\27\142v\246\234\16L:ڎ\239G\11\232r:\249\236L\249o\182C\171\180\196\200TT"), {
	[19] = 198,
	[17] = 113,
	[18] = 139,
	[5] = 106,
	[12] = 16,
	[3] = 253,
	[15] = 121,
	[8] = 173,
	[14] = 218,
	[16] = 111,
	[9] = 71,
	[11] = 44,
	[20] = 247,
	[13] = 8,
	71,
	[4] = 154,
	[21] = 210,
	[6] = 168,
	101,
	[10] = 253,
	[7] = 38,
}, 332)

luraph_runtime1(Str8, buffer.fromstring("\2\237\240\181\164\215洡^y\158\135\148u\179\207\227\179\2476\255#\209'\"f\138\19\186\139\218|\168\161_\20\199\227\247=\6\178F\4/\160\23b\254\186.l\2377\26C\242\243\203iory5\15\\\228\206Rl\250\228\252=\246\8o\4\186\220\14K\239\155x\2009◌\184l\217#\139A곪=\1483\0241\217\197\199-cA\21IS\182\172\251\245\240~\244\242\132 +9\142,\223{6j{\157[B\180\240Z\14F܊ʘ\20251\198\25j\190i\234T\180y@\152$&\136\216\233\163\213\197\226\130\192<\215\"F|\209\239\242*O:\182\4\4\159\29\172\208E,%\140\245Tl\155U\173\2\153\"\246\132b\219C\196X\179\251e\12\219^\29`\150\172\130\253\134pU\241\254\193\1718EyV\2026g\244\252\137i\"z8\209[~*\0\229\224\168\197\198;XL\8\183\173\5N\158\26\152.8o\7-\207\6f\252\232\\$g\132\243\249`\224\8\160\0Km\179\147r)\16\224\143\1953\196\220\15m~\11\225~\139\183](֟\0027\162\248o^\252w\8\181\"Aa/\nd`\187݉\237E\139\213\31Aý\216bH\0mB\147\172J\234\245\148\164('\1500:\215l\134-\180\233\rM\142cH\237K\149V\2I\203\11\141\154k\214o\215WO\212h\8\140\181\130\255\30^Rq\136'|\230\225\16i\209cy\184 \190\231p\245\27^\26{zG\18\243\155\249I\233^\0\244Z>&yG\7o\190\223\199\r\31\"\22\172LX\2495\134\175;h\219\253\177\182[\152\5\250C\127\137R[\237\218\12R\195f\156_\130\164\177\170t\230o\143\230\136\8\157\182d\251D깔yzt>̤Hro\211[\189\160\167\24\239\13315\213\2095\169\207;9\5,\225\220\n\167u\243\11݅\tRӕ\201u\154Iz\3W6]\182\251\220\200\2\244\239\244&\190J\239cI\153~\8\151\217\26\239\180\8\166&5\200OZ\127\160\18\191$\250\226$Vq\145+\22\212\230W`\182|&\192^\2415Y\222C\223\21\245\235^6z\236\170\235A\151tI\235t\16\160\169E\150S\247.\153C\23\129\192I\213#\6G\187m-\245\150\20\240\148\237\0037\2\187\2191\153[ y\251\170\6R\219_\145OjG\154\254as\164\185\210\254\210\242\25\26\2143h\168\16w\248\6\134\130;6\189n<\255\148B\224t\186\2\21{\207(\195J\160\"\8\148\14a\136\7\0172\200Ç\0\14\n\164\196ҋ\200|[TIcȵ0\244\151\216J\210\238k\134$\"|\164\173\138`\230\140\200#\25\162\188\8\8\139\8v\16\28Ym\243\3\130\4ҳP\20Wr$1\203&?T\152\3\164\152=\152\189\1756\3\22M\193ֆ\28\250\181\232\187cm\18\171\232N\27|\142\2400b\152l:>L\131\0024\243$u\155Z6à\204\5%\138B\220_\160\228\24\200Fʋc\157\0088Z\134+J'<\238\202\250s;\173\138K\242*\1485\29m\16\247\149z[\228\30\18b\133\31K}|q\2430\195\14s{E?\250\253\140T\216\197\228\157OYR\237\160\254\18\204\27\168B;\222\3\6;/\142\172\25\211#\240E'\176ܭ\142\187\212v\133\189էǵ:\22\160\3\14\253\195\196'僩\184\249b\154S\139\227]\238\8\197V\11P\240I\185\189\136\203\3:\18`\169&\187YTǺ\148\166v\171\219\202&>\152b\24\183\11\128\0\227\240\235\251\7\223\209S\242\180\2==\1883\216\0U\160\174\140\n\151\4װ\245\1\t&G\127\133(\206G\144\224o\182\3X\217\232m\245\"\17A\241\24/v\165Q\128n\226\232⿓\245ϖ\187\151\221\239\178<\195\212\255\150o\211,\226yX\157\178t\2452\176\206\17\246-\r`\137\7JUݧ%\214F\206\8\170\165}_H\205in\165\31\175\8(3\16&3\252\229\152m6d\177\231V\28ΌW\129`*HL\171\227\4\150\11j\146\23\250\135_\152\164\197ͤ\22\167\229O\31I4\177<E\18\246uGPS3\168\183\24\11\2[\250:L~\27s\140\140\24\171ꨤ\222@d\209G\255\239\t\6g\181֨X\5\167m\179?\158\"r\174\3\215\23\211\15\247n\133\15\130n\177W\u{5CD}\180\135\236\2\247~mN\250oq+\\Z\192\145Cn\136pD\160\8\246\170\223n\166T\167r\166\151\216\198\t\190\156.\138L\t>˅\230\253\178Z\20\251\255\180.\184\230C0*+\138\249\29{\242\143\194S*\227\r\245\146\175|I\162\152\21\187s\208\30G\224o9J%\174\29\2277\181\251\240\136\190\15@\r\1524\129\193\20K\223ri\205Q-\228x\155\138iH\173Z\244\190\165\159\169\30\255\20\227*@\209s\228-\141t{\232feM\130\23\244[=\135\184\211w\17\129\210\3\252?\232\215\192\245\161a\138\15Qѩ\160\195\2Ϭ\152z\15\243ߡkj\181\192\249W\141+\219?\207\229\168`i\25\4\203<\140\134\26h\159\151\196G\15$cH\163\190:\219|\150&#\138\128\1626\29&X\176MI1\149K\168\168\238\208\207x\222\23\239\197\229\17Z\156}\30\181\1846{\140\160D\27\165\141\141\166F\152_\30\187%\7\8i\251\20\245\168\229\141\127\172]5\136.\235ʙ\29\163\202\26\167u \7\146D\174]\238\133.\200Ϝj\1755\191\236\181\246\30\1*Wq\208\247p\\-\138\228,\148\165$7rŠcu\211\20/\5\184`\231*ǈ*f^\219h@@\153\2\153ޠ\158\244\6\182\159\204@pn\182\222l\242\157\174\237\146\r\142\163\235\159\226\1371@\128X\18I8\2\225]\149\251\11F\243\221燐5\31H\152L\254G5\11\19\176\215\5^܉%\11\28H)S$\191\178\1V2\0\136\31\187rCX\246a\198U9\149\155\ry=\210o+\2503\t\138v\239\183\27\147\176\164\201X\17\155\152=\23\148\179\237\11\164\133\193%Zj]\190\206\254\227iM\29\22K\228\136\227,^\2437?\243ߑQ~\136\21\29\198\193\178\224\218y\182\170h\243{\15\164>Ʌ\28\229ă!\233\254\227\199ʞ:\187\210\255@\27QM\25\139L\11\201\254H\229!\248n\164\171\170ʵ3\141\229\157\200K\30\175\146\249\133եs0\153?q\188\202?9\27\185\206`յ\186\25/\199uP\167\165\25&\252\128\167\128[\192\236X>\182\234z]q3\176\135ȣ\191\171\7D\178\3\193<eno\28q\30,\222\5\145\241G\138\2210,_\127u\202\7\188\230\143vk\217\248C+\15\158Y\130\147\21\191s\186\253P!S\137b#\243\216e\12\193F\245\25\236a\"l\30{A\232\23\12\188\133\2467\229~{\142\147V\250F\207*\235\141\226\227y|\230\205\12j\143\173\144z\2296\21R8\155{\171\192\220\\u\27-\139\204\r\18\188Q\144\168w\2237t\1\212D_\1477\239\252+T2!\145<\203>/x\243\149S\3\154\150\204\27PW1\20\200\255y\197Nb\21\241\232\31\194\214 \18\137\169\189b\t\153t\17\228\228\230+\2\127\2474\130\161\146φ\165\243\127\198ʓ@\22j]bL\231\202eXOT\240\242\176n\23\1)\153\164\176~\30\23\29\142\243\158\237\191\tF/\156\173\2\168\19\136^v\239tq\193\22x\198RR\196\218~:\183d\128\19\177\198r\1354m\139ᇎ[@\143\140+\196\255\0228\201\0۬~\154\2297\202\230\19\154ݪ\152Й\8\143\149\2\209\217Ҽ\176\17)\160͜\144\209\238A\209\27\150@No\219\2291(\205\12:\157ꃺØ\243\251\1911;筌\1815\31\u{5CC}\176\249\136g\224=\166~ \241M\157\161\219\3l`\23\244P=g\158e\156EI\190z]\158G\127ol\24F\227л\144\221r\5\145\220Ԗz\177\191\181\25\28\214\22\206;\135\175W\212\235\234\29\209J\8\31\26V[w<\197H7N\1457\11\23\158o\tm\237\0\245sYŋy\149\200\247\134l\172\221,!\145\225\169n6\169^\27Y\134\220Us\249\26ĢZ\241S%mb\253\177HT˚\0268\184L\241i.ґ\185J\n\168s\"#E\218\0\186\184B\192,6\156\230\245Z-=\1759\27Ve\252\216gl\242yθ`\151\162c\179\t\190Sq*K\227\0062qT\222uc\22GS\154,\138#\143ߘ\11\209EX\16~^\205\231\132\251\174\254p\1M\236\175\245\251f!݂t~H\21|\193v\17\2008\178WF\131sr\172E!i\31xd\2051w\167m\199ߖ\26a/\8\152\164x\203\239\u{E2ED}\20\219*\247't!\202\203ފj±\149\14\169\137\141\157\21\189\245:\237\225u\231Òs\145D\250\226\0149\164>\253O\205\nlB\201۠\163N^\223\5\233\197\225xY\15\22\1682G\"\218\19|\n[\137\164\135\162v\151^\247ݡ\134\229B\227aZL\178l\252\238q\29\22\169\151\16'\246\2347\tP%\16q\167\4\223*\0281\161C\252\29\248k\251\142\146M\219C{\252U\151JQ\148\2\232\198\253_mզ$\199ʱ\1392\127X\213\207/\"1p\200ˤ\178\28K\"\157\136\135\188KƩ\154j:w\147C\166~_\250\17\237\255֏l\203Qq\155_(륣07\139\248\29\205$\176\219\217V\245\12\128m\31K\251\254ˡ\169\144\167\186.:8,ߺ3\221\18aU\141\236\207\23\1\253Bcy\150\192\219l\165\20\151\171\209\29\5x\162$\tS\\\\\165\188\16/I\30X%^\15#\240Ӝ\211\229\247OѬ}Zb'\3kǂ\3\127<\182貵A\234\153T\31)\164+K\216\244\180\185\229\252\1613ȑI\180g'K\r\228\2468TD\175\221\14\244\254T\142 \251` \245\225\24#\22*\150_?\129\194ˈL\155\23\181q\218\252W\192W\27\\,N\170\224\1509'\140\193\141Y\166T\212K\202Ӎ\2088\213\216\218\200\197ߑ\174\232\241\174\217\255Cb\14\21\135F\147\231w\135\128\243t)_\127\30\170\211V{\155\15[\151l\8bu\163\u{81}u~\176\128\240\192\248\2039\246%\17388\167韺\182\206P5\216\218X\196\127ZBy3\191hX\3\220\207\201Akm\151V`\128\178\201BP\212Nϊ\250\170\184;8\24\179\142\179s\154\11\135V(}r\160\220\12lI\14\162\253\251/\231\191\243'\134\218L\249\\\t\rI\154\174\5V\\\244̻\255`\29\249K\28\144\243ܪ\159%\153\147#\147\211\\\242\137I\233I\159\16\158\254>u\219\240\183\209\11\131\146\139\248%\140\159o:\132\226\251\15[\31\24\192\185QM\146\5\249\26\tv\166\144\146r3l\146/\229l\132\129\148\160F\168\17\208T+\217\17\152\205\21\137P\19\20\200v\18\219\2\12p\171S*\193\1\164\1\181cX\156\170j\252\144\161ټ\159\12e\139\247݇S#&\146b\180\174\215\27Q\224\155\235%o\184\4\158\240!\r\137\222.\189F\0<\182߭\11݂\193\189\167\252\201J\238)wXp\177j\232\0\250D\202\n\184\187G\144\159\5]\5Q>\156\209,\246\210G\193E\218n\137\188\136\171\146<x\249\184\18\23\190\27\206\219s\213\241GF!o@\20\166v&/\20\210\204-7\24\242\2i?\151\154\249/\133Lf\129\192y\255\160\209\212x)\171=rl\235S\211k\136\127!\219\250i\173\1516\250\24̊5\149=\240\226@\4\184IS\4\237\252w\140\250\15\229\218y\204\240G\127\11\207^\0\127{\27H\255\177\255K=\213D\29< W(\148\130\15\158Y|1߀'c\157A\206\6ZA\239k\183t\170\186\21\2101?\130\152\24zT\12\234\228\145ϴ\150\28\6%\2038\203c\174\6\194\"\200\24\164\245\132!\147\142\193~ʞ\217\249\157l\240Zj\251`\187bTv\217V\205KB#\168\177\148\n,\199ؼ\172\25\186\242T6\170[\179P\133G\137\137N\163\187\178\212\240\217hrt\0\150\148\28\236J\139!\31\179\182{2n\222\6\195J)\188\180\31P^\2221\210oEͽ\181@\147\161\26a\143\243\142\143o\147\255\30F\26\"A`\2497\148\1871\211\20\2t\17\200\14\167\224\209\219@\15sN\203\3kKF\223+y\227O\227\5~y\149\16\138\136\150\155\175\172\8\154\153⮨Y\176ݘ\152%k\24\149\224\201ؕ\159l\196\253\1665\131\243\4 \207{\224\29cԈ\149\190\169\145\213䖺Kk\179\222\253\147\171p\234ݐ\180g\173\221\6\170\234\222\27\155s[\2\168_eB$\20~\27q\129j\144\189/\236\228\176U2ܣ\139e\194\199\0261x\219\r\242M;A$\152\20!I\159\1\188so\173\210\"-[C>cD\218\17E\177y\231\192<0Y^NG.\185\225$0\"\225\16t\248\2478\149xo(\24Y\175ӕb\19\149\159E\238\172\231\220ٍ\233毀\1851r\238\130\221}\13459*\168\152\1577\166Od\145\195\1\189\26\"R|OM\242t\0196\208\241qp@'_\211x\169\2329\18\227\145\24\223Aʗ\188\140a\229\201\252\14\5\157\1736]\183\129\219\12\245\198;S<|\127\250}.\147\232\224\237\134\206\203|p\139.\160\145\19\151\18\158Vή\3\157\127Ά\226\148\212\4\213q\178\149\248\31\195-\152\238}\154X\228z\127\152_\230T\141t\170\236\253\tZdpum\28\153[6;\190vlST\2\145<Q\210\197AR\151\231\237\2035\0202\132\214c\186*E+\180\226\225bF(-j3\183>\186`?c\224\163\252Jw\164U\28\212\26{N\137\131\180\143\195cU\186\148c_\162\0176jH\202'\148\6I\133hLYAI\153\182\155O\170HHE\185\169L\179r\147I\208.\6\158>G\22\221Z\148WW9\161\176\14\255#i%\182\184s\180<\177\159\\\"\20\247\192\167\139\229\27~f\23\21%\233.ve\164\206YW\233\30\183$+\236\245\16\140\217\196.mj\5r\20\236@y\16\252'm\139\137\227\8\172'\201\26\14\178\1328|\247m(\207\224CO\156\167\243aE\237gV\6\144(A\n\189fg\1863\19\243\147w|\152\5\133\128\31\176&\236\204C\18\201-ML\246\175=_|\131ܝM\2356\17'\213\23`A\142\\@N\130_\186\181\253\251f\221\252\12\2436Z\203\2403\194 X\197qЁ{\21\16,\t\209\30\23rfq-\137i\130\223=\1498\21\220Xl\128uU^\2256\29\218y\178\1660\31\n˵\238\240\208U\25\133IϽ\184k\209p\136\189sGT\251\2\171\186fc\199l\n\179\248\209\\1\189\249\235\203p\206p,\19I\27P\205i\150:Ȍ\181|ӈ?\225\242nz2K\246\244.ޖ\237\190\166\177 \242!\200XzNx\30]\1978(\164\n\210\199E\236\205\205\0\195\17o\229\152>\17\183L\132\159\190\t`\151\196V\180\185\203\21Y,\197ȍ\29\140\251)\12n@Y\145\145\255P\217\213\241\158\182\0rj~\11:\211\228\t\212c\243rS\130\220\243k \141\0182\204\202,e\14lR/\161\248ʎ\224\150\25\180\135{\22.n\135\165\0250\132Z\226T\147\29\254\148\157\2255\1439j\161rƬ9\142Ȍ;\25\183\195#Ű\243)\1`8\225\228\244\1745Ԃ\186 \146\202X\245\153P\135rGV\243\198\232o\17\205\2536\213\203Pl\194\213\244\174\140\227\214\249\254\142\4\164\0Y\12\210\223nK\225>\233\177:\173,\139\23ҥ@\183\139\21\31+\1271\142\26\201\197\19\16\17\225\212,\246\157\31[\199gN\139 \188H\29\254\158\158\248ȍ\227@v\187\158n\170rȧ\1515s\30\214#+\144\247ՙ\14S\170\152\248\21\180'\174\186!\2391\1725\187\3\15\141\192\21\18ŎOv\194]]\209\225\162\17$\25\210\248\224~F\231\179\212\18,\132q\164\143S\8KS\161\135\6\nn߿\193\2185\228\246\11\14̥\151\12\152\190\129˧\220?o!\164\214\4\131A\166Q\147R;H\4\145\147)\162W\187(\129\231\211\1940\136\188p\145;ޒ\193\26!s\t\178\185\176\184\1\157\23v\156\229\149\207\194\r\241\185)g\197,纤m-\12Tň\204\25\u{58C}\181(\19\0197\134\30\163C\0r\212\u{EE66}\141\250\174i\216\29\176\221\192\162\3\"\223\0116\154\4\1454߁\195q\12\220}n\164m\240\221\5\7r\137ʛ\26\171\157\133@\236;T\249\1628\180\251\178\183\233\0\231B\221!\161\247\3\239\248\154\168\177\165d\197s\136\215\t\249\143\237\241\205B\230\130\23\229\1689\195\253<\rvjM\151\2535~\222Ӽ㱄x\141˕B\153$hv\188&\21z\251\224:H`\238R\155\230x\210w\195\253,\141,\254\229\229\235H=_\nfZ\28>\153*\183ԛ\197\21\218@G_\182\197x\191\206%X.\4\238\0.\0271W'\217\200~y9\215\16>E\179\0079ԇ\2\144\254Ԕ8\177\197\22/\168#5ӔC,`v#ʧx\190\210F\164\"f4\253\143.̰\177\180\243\156\250\140{=\20\21\155\0308\22\15\133[ٯ).\23\159\147\228'\1rj#}\211ȸ\28\182'\160\254\154\19\17P%5\1381\158\229\173#\143@\t\153\141g\208\30\168'\250ڻ/\130\149\132f\166\203L\210\0\254a\197X}D\145\181\176V\2\215\252[\15 C\ny\20\149\25\172\245\198U[7\167\253\201\19\205@h\7\169\29*\160Ǔi\231\205\2\205Q\249\164\130\7\0\251`\1\245\175\161\174\154\224k\2545ʍۚ'\254\245\192\23\248\146\162\202\224\173\211C}\215&\3-zE\23\141\239\15\15,\210\"\255Y\15͡\250\245ǑA\204\2383L\196t\214\215\210ҤE;14\2481\02872\248\193\3\16\205d\203/\158\159\128U?\180\181\139\146\227\254\226\235\241\218;\189\212\2<\176\143\133\208\239Ro\2201\181\192\153$z\167z\30\20\0296C%[Z\193\140\233\229\3\134'j\244\194O\159gd\134_\244 `\251'3_W\244\156\230[2>\0115k/Ssx\249\217M)̦\182\30>A\198\r\7P\207\233\157\225\tR\203\225\17?:liLK\129\188G?\174\165\\\144\253\20\2318\254\23\192\2508$\11m:q\183\241\252\149ew\150\29\155\226\146\237\212\193\201AC\185\225k\183%\253\209\218\22|\1628\22\255s\186\217\252P\1540\23\134\31\149\166\18\169\152\187&P\163\210lC\239\"\252\12\138\2159x\t\140\166\128A\27\139d\230\0183\145\132iUK:\189\172\151\16q\31\220eW\171\191X\138\238\22ªW\218/+\2011\184\29\132o\194-\150\233h\243\139$\18\166Qrkԡ`\161\16\239\177\255\151\188F.\178_\2193\133\238Z\0260\162\186\194\255\215 xRk*\253\145l\5دR\139\31\225\225.i\162M#\255\28\165\131x\133\167\245H\165\158o9\231\170S\n18^\158\168\218_\169 \196M\\\26\170n_\234\241\207\220L\231\150\198\247F\246\130i'\217A\245\1924\207K\224\167ci\226\1\224\150\173#~𖦶\244\131\127I?\18\188\206{\188nF\250\21\246\12\2\254\185\253~\218CA:\231Z\235w\163\219\218\14a\240\\\17\4\20l\229\198ʛ\135@\146\179\23I`\230c\242\132\140(\204ꪨﰤ\249\127p\244\2Bzɽ'\176x\160\139\204i\196={\153UjF]\231`\12˝\2@譮\156\252\24mx&\186`\2163*\199\21@\227\205\8\1445v\13237\185\206>id0\2162\16t\142\246:\229\21A\160\11P\131\224\3B\129\226lb;8\0200`\27F\159\236y\247̲g\6W\246\253{\211\227\7\24\168\19\172J \184B[\172\252*\175\209\r\2101V\127\223\25\0$:\209\30PQ\25\218_'5\18Bj\139\190\129\254~\183_\130\228\1503\240H\140)\247\184^Q}@\25j\246\141&w$\197\1978#\166\250\131\\\222\212d\26\143\196\248h\1\246\1423]/*\249+\167\240K\133\26\164ԅ\174`J\248\174u!%\188F\179\190\149\8\178\172\184XЏ\150>R\155*\173ۀ\242\23\159\138\138\4\232\21\146%\150S?*\3ɠV\189\14\157\203\28w\178\138ܾ'\29\28\230\209.\129>\156\194\0174\30\226\224r\205$\193\158\165\158\180\170\20\141\184X\143\127\6^$\197灋\214\252\201\20\25\226¢\4Y\27\161\226\28\159a!\27Y\20!\243\2117\184\219D\246\241\181\253\241\178\146\245C\0061&w\21\226\196؛@pk\231i;\to\147\244\132\19\198i\228wb\26\218CHjGI\249\248cz\1432\1303R\195\nXC\226/z\171g\237gnF;l\157V\128ӭe\183*z\233\247c\246\236\24\4X\r\149\148\137\192\156\176\139!l\170\184^\162F\2310b\5{\15\155θ@\21\241\169\128-=\186\237\16\6\140Ȅs!\206\196s\153}\145\214ty\n\140\252\169!Ws1\150\23\223\16wP\186φ,\186RH\21\188Ѱ\5\2406\254s\30\28\2029\242\189w\227\178P\243\243\193[\211\233\192\225\r\183\u{7BE}]\128\189|\213[\242(U\147\24C\154\140\128\136\175U\145C\5\201e\231Y\206Ԙ\152\160\222\19QŵTH\142\243\12\160\1972+\249\247\134\187\224\195\227\216\2378J\188D\152\22,q'\175\130\nѽ\233=\145\224\138\230\172\206z\132q\255P\r\249\157\142\208W@L\145\0\241Ţ5\222ͳ<\240\184\216\23u=\174r>\r\228\158\4\213u4δ:\159jb\155\0\143h\r\202\nͪĴ\14\175\240RJ\153\133}V\128\172\8\248ע\205C\2003\210\226p2\222>5n\6\218\232\134^\31̰_!\148\171\15\206ˤF~\1848\166\241\2\5b\184\212\11\226g\155\130\218\233\153#p~\204\21,\141so\4w\135^\170\t}\241}\131\2169\207\204\20\169E\211\2432\2\250\143K0\25\209\199۷\252\243Dn\130\240c\158Y\209\229U\233\31C\164=m\193۪#K6\246\232\15\243\5\28\194\219\247\143\196\249\2515\186\128V\27?\151\197\\6\228\244o\166\236\176\215\236Vp\229\195ȊUy\16\188\208%\184\164]\23\238\17\141$.f\179\176\16\171\145\217TԷ\128C{\249\154\15\131\211\4\170\183Gi\187\224\193\152\202Bg\26a\248\n\255\225\165\3zw]\8\\\1727\214:,\31p\130b\199v\202\252\244\139݂\188\185U\236|\252\1408\232أ\183\20\211=b\217ő\134\6\225\142\253\128\224\6mG\198\203\203\25H\249\233\152\252\197q0\25\254\132R\135\235\200\255̈\160q<\25\170\2\20\238T\210U\1990\189y\n\21%\226\17\240\138\237\156p\191J\232\134|\187\192C\227G8\201u\28\227L\178\30M\233\241\27/\"1.\177Eѥ>\175Q\0\207\212os\29\144(f\224\28\226vVp!\204L\163\14\2093<G\t\172\163\19B\139~@\176\142\231*\168M\184\172%\29\19\174}\203\235\235\r\162\217$2=\6Z\12\241\130\30\188\197F_S\137\157z\7\199hR`\254p\11{Vp\21\191#\0Tt\248\177ޖ:kn\2232\141v\176\22L\203]#(\239O\214S?\140\179\155\n\176\217z\175\22\157jZki\139W=\1460\195փ\205H\143:\208h\149-\255UOQ\n\198πU8a\164$k\187\133R\139EN+\209#\195yN\215Gf\230ً\150I\143D5`\180\0285\229\3S\205\"\246\163_\191\253*\137\254\241\160F>\164qv\172\1\192ֹf!b=\234\191\254D\150\2384uB\28%!\188\3\1997iZ\\\216\192\180\172\185Ǫ\160XRѐ\139\224\251*\18\n\2F\132l\248\160]-E\213\241o\172\16>oI\11\229CN\11\235n\240\250\198\246\169\0075\24\246i\164\203_\2091R\18\238\240\1838\217\21\15y?\195.\208F\159\236խ\31\229'\250\3M]\164W\224\237\21\29\181\169%\196|\239S\128\148\224B\225\218bZT<\27\170\1811\158yT\r\177\187\30S\1768\248\255\25\241\157\211\27H#QHKH\152\149\136\28\176vt\215\17\252\206\209n\196|\128\237\15qN\t\229\173`\229\150ψqV\221\27+\128d\175^2:6\135\250\19\233H=L)\234`\1\193d\235Е\253\11/\n\3i\142|\226Dj\148\25\202\14Ȧ\162\142\177\236\27\176\157>1\158\12\185\173\177F\247rie\191\25\188I|\185\198$\166xՂ\160\204l\205y\8\242]ur\233\246T\6X\237\254H\185X^\183?$\231{\227#\232R@\239\22\227\142E>\31k\137\7q\27\209\11c\26\255\155\246\229M\142T7\27\137;\\\128l\232ggnJrGE\193\147^\215w\5`obExX}\178\149ּ\15+\166\224u@\169\"\142\159\220b\2080\203\27Y\132Kϐ\155\202\240\163W8\194TD\227\229\1995\237Q\7F.\203\4\27\252M\153J\r\185\176\253\136\255k\127\12=\231$lz\130p\6\2\5숤\137\191\218\5\6\142$\228/N\186\248\235\24\211\254\t\150\130u\143`\227\200qr\1579O\155\147\176w\201\15\246\210~\132L\1894\4\140\247\27\1650[\239e\138cN[\150CUj\138\141\134\242_\250\27\137\185^#S\18-\166\174\135\157\27\255|\135\158)*\142\0\242\"\250\143c\164'\14\240\194\246^S\177\1C#\n\28f\18\147\23J\209\17\247\20\137N\244\150f\152\169\134Rq/\0\240<8%\r\1547;\169\160\30t[I\167\237f\144\170\238\177H\27y,\236\238ŽN\236OgֆR\130qB\30\221\6/p\185^=\129\153\142\211\200Ͻx[\28K\167\235G\27\2\162\3\201?[\238\217HH$\188O\203j\225\252ǐ\147\180t\183\190s%\5\161\150\218xV\209`\146\147\178ԙ\160I\165\158\168\206\251\n\152\236\138\0q\0\163\157\228\230ԭ>\242\1ke\191\224\182\25\232\8\135\129\151\0140\139\164'*l\173w\140nL\193Y\1681p\30\174\127\226#\179a\19\250A\1779\239~`\181\8\146\175\209~\12\164xS\138\t`\223|\1428\130\173\23WdgM\247s\138X33\138uoXY\132\179jY\214\237\12\166\130\127\144\183\145\140\25@\177}(Ƣ\180\135\194v$,E\206\245\176\202\221[\24B\141\224y\248\211`\"d\u{94}u\230\223\127\19\223z)\29\\0\156\232\168r[\216\202d\157\11w\134O\240`U\127\232\128A٤\135w\22\150\23\137%\142\242E$\195(\148\203c@\145qjkڇx\249\173\238\153鈵\135\160W<\166\155\185\6_\198\255\199\16ڵ\247\161\228\7\3\184\143\138\\\149\23\25\247\136{\159\218s\186\161\\\140\170y\192h\\\"\153\0.\138\238Xژ-s\t\154è6A(\143YdH,+\160\234saR\185Fֳ\209<\180Jw3h/V#\209\28\152\242\232v\166\247\2099\161M\195(\31\183\2+a\221\29\155\132M\166\220\192\165\194O\11\129s\134-\1667\249\151\180\176[\r*\198\23H\177\16\27\182\174\164\0\31\t\27ո\11\254\164\200B\224\164S\12\242\11j\24$\233j\162\240\6D\155\189\239\15\197:\\vZTv\176\177\203\198h\239N\28mwQ\172\2\187\213\27\185:\190h\19 \144\237\230-\28\180\r\163\204j\181\147\r\251\165`i\25\248_E\136\2338\208\248Wt/-K/I\253G\161\4\0\164\212\0SG\14\24\25Z\150G\172\8\22910\138g\202\252O\ns\160\235We*\181\192\247\23B\175ɢ\200\234\179\205\244\133\0\216&\25#:\1289\27#\27\240\145y\230\164\214;\201\14B\198\243F:\166\158\1730Ů=_S\2339o\216\215ʱQ\166\139?RO\147Э\170\152\138\1892f2F\170\188\185H\168\216\30W:\172E\224\212'\177\182m\148\143\252\255rD\251\173^\141\204Dbsz\143\206]\200\20t1\232\208\23\29\2GN\171\223\\\154Z@\23\130\141\5[\209\18\r\137>\138\196\6\160\188\142\249\156\203\t\147f\16\142\208\t6\197Yr\154\201{\5\205\238\222`\199l\1473K\148G\19'\134\251\153\2115\135\175\137$\221{\127\166\244\27s\247\2\247\1640[\167B\227\11\27\22L\21\188T\22\203T\148B}\233\222\222d\140\7\193\140\183\196I\23\248\188\198\28x8\240\8\tPw\nb\167K\155w>\172\127\2\130\231\30\12\192\2037\190\250*\182\249\247t\206\21D3\208\19\15\242\139\232\1\234\186ie\161\208 \186\243\227\190@\147\208z*\246ޏE\169\155\234a\202\208C\240\17368\3|\31<~\145\156Zt\t\\\131k\29\154\16\146\178[\181\148=\1373>!\234r\194\"\168V\12<\1952\25~\242\150\250\238\6\133\163\210Q\137*\145i/\243/\14\237\255\196\127_ \u{38D}u\229\185\228|\216\12\134l\138h$A\17\128O!o\229\191?+n\234O\15\129]1⥐dk/]\213$\0Ӡ\218\219p`\23J\204X\30y\164a\0171\233>Q\142\28\182\181I\231(V\187\217W\26\250\134A\152\237\242\134\145;梁\166\4H\"ڷ(J\244\200G֏<\154tn\7\240T)D\172;\217%\169\187/\25\157\221\200ٮ\1281m\173a\197;f?\183\163\19\130\r\31\144߱j\200\207\248L8\11V\28\140\22\216Z\218\227\192\23%+do\188h\2\151\155'\157\12NKq\29?e-\247\167\240\151\169i\224\161\245\3\11\2ma\1921\231#\21I0\n\246$y\185`\159\206m\207\17\167A\223\210\12\255\183\14\u{5F8}\255\183\230G3\186M\245іG\235\232\235F.נ\1726\154\14\235 \158k\152#\181\\i\148\202\0\152c\0\234\248\142{\242\232\140\216|\157)\16\237\172g !Yz\4\210q}\212\\\199A,x\153\238\135JD\134\128\227\227J:\216\255f\136\147\16\170\194\27-D\159\8FYo:\167\26ą\250\31\131O@(=mV5\3(g\229\137\215\3\251\229\12K\169\252@;\21\25\212\8`\25Ș\167X\173\200\229O\193\"\1980\137:\137U^\215F9*\145\205Y\135\15\231:~Sb\186\3\215\127ʳ\157\251ņ\1752\0145s\148~\162\182\2448M֖i\146\217%\197$]\19\127\t=\207h\158\4\179\246_\173\225\218*\147\249\2120rLg\1911W\248w4&\208\203\247+\222^u\3i*\17R\21'\238\151\217(\3\157\129\168\16\164\223\206bXv\184\162\204\226\6\138?\16\225V,\231\169\230=\150\253\149<\166\160\170\24\176\177j1\203:\191칼\174O\28\236˴z\177z8\244\235G{\150E\2254\134\242ʡE\15G\184\164=\128U\244\243\217>\208~\191s\14.Eh=\30\235\228\29\1902P\199/\224\128\186\230\1788\225\254\147T\199S\20\169D\183:%\205zu\135\151E\239i\240{\212\19\192\158\251\"'c\191\30\194V$\20^\175F\209\15٤\131D\189!)\193\246\19\162\154bģ\177\143\244\223{J\138\185ݪ\134\254\8qP\226\215\31\19\\\153[\133\237f>\153\2z`\0\2;x\185\201\n}vo\207\243w0\1668\170}b\"\208Ț\205_\131\171\237\15\189)B\166\192Y\255\161;\191lt\218y\195\205\28\17\133jW\2253\138\244\187zgX\152\180k\1679x eȑ\190~\131\156\250$2\166\177\12\150\232u\252R\245\179\7E\183\213$\t\157$C}\227_\223H\166)\174_N\253\150\197!5\255ϝȷ\21\240\188\4\128\226\252\237\208\6$И?y\181\155팟`\233\204ՈV\241\247L+\190֤U\157Ԟ[\1947a\236\251u\176\\\190ئȒ\18\250\147\236J\201ξ@\1330\141\235>\15\153O\200\16{\254_uM\187^S\1996\0\187J\207\tк\184f;\3{\15\19@\242m\157t<\191\239\19\138\168!\157\152\184O\144\255YN\0d\rà\166\199\206\235'\1971\144\216\193\164\224$\138ѭ\162\140\142\27\169<]\21\154&@\\<\139'\1919\239k3\151K\135\168@\18\30\217*\204\251\1[\172\136\192\170J(\132nB\172\140\31>o_\127N\1\131\180\143X)\203\222G(\17\203}\147\219$\28\253\148\246\215`\16\135\157$\26\198$\243\185\230cPN\170\248\1963\192\158c\225Q\158\139\191:\255\215\208\3<\189ôm\17\16U嘹\190U\159#өg\15o8\165/\169\1C|{\144\6<2Z\162$\178?ǡL\208\23\\\132\176\197\0\214\253\137Ұ\145\8?u1zN\n{\217{\143\239\188D\189\205\246i\nM2=2\226g\186\159\7\136S\2111\241\150\11o,\188\27\18b$߰͞\251\168\176y\241\6\247\182\1\208 L\191&`\139_QR\206\12A!\131h\208a\156\29\241I}.h~\145\171U\154c\160\202M:\158q\254ŵ\232\159\u{5CE}\246\200\15\152L\21\128\183V4\tУ\244\251F\151 \175f\254H\190\224\4\205-8\180\184\157+Ӄ\"t\183{xd\5\132p2`;~\173Z\14,ww\244\0212\243#\215\253J\127\225\221\2178\8\177:\252\161\194K\21\170\129U|\191\195?\193\141\201$\137k\178!\225`\214l5\251\19\184\217l\221\"\197\t\22g\167\138\141\201\229\145Z\130'n\136Bc\167!g\233\178\243\157#\234SBP\150w\\\222!\225ya\128\6\218\19\191\6;\0299\225;\202\30\231]\223\254w\224\2#E(c\175\20\150\177|㕎U\146O\239\1718\253\1508d\":\254\167\225\247\\e\1653j\174\198E\185\253\19\163&\195%\249\231L\192\241\217\r}S:E\155\231t\1702\130\147\31j\237cɌb3rDc\161ηS\150G\234Uw]\150\174\139\222$\4E\173|\245{R\175I\251\250\155\231\213L\27]\1H\4\219Rf \227\25\250}\1347\4\16\1\195A\143\255M9\2522u\158\28[V\140)i\237\139\228U\155\251pб:\146\251\163ic)7\8 \162\180\247\1343'&\190$y#\191\207\209\240\224\238\163x\3\u{5F7}\188>@\254\154c\249\136\228\178;m\6\184\134\238\30؟al\204s9*QG\191\206\200\218\206\248\\i\148\158T\165-v\188\192\183\\GC\196\253\29Q\212\229\136%t\211#pH\152M\155F#\169[\143\245bZ\18\149\216*\214(Yy\24\196p\0\245\138\245D\7\228W\138\\$\187\164\159\172\224\185\\Gq\209\\\22\239\14\23\135\203\219S\141\196S\130Q\203k`\168\229\127\t!\213\203弋#!9der\166\0ȅ)\250I\169y'W\246f܇V\132\206*r~\19\192^\223|\\.?H\159(\139\131k\11\139~\u{5FF}EX\236\202\247\194@\251\160\189\"\225i\214O:K\206vp\165\247\2y*\217e\180.\248\155\26A\8y\254A\n\237c\164\228\188\226\172b\203PD\149\145\n\193\235św\133\1826ܡ\141Վ\252\1978\180W|\30,\251vm\148\164\180Žh\215\t\u{20FF}\142\160\158Zu+\203;d&\205\211\204\r\132\171\216lEi-'\127\163\211\7\244\12\"O\218>\127\2294\216\197\224;\r\15V\252\22\156\187\236_@˿g\155\2312\131\14\226\21@\140v=J\148\157\7\134\222\212<j\225\131p\23\16.ܥu\n|\141\2081&\138*t\23\r\167\t\234ź>K\244#\r\175w$\230\190;Jc\2\187\192 \142\19\4\207|9\156 \192\19UӧSj}>.\1821\251\23\215t\177&,\223\255\154\220\229\210\2054\155}ˌ\151\154y\180\231\u{382}\247Sc\154\129\164\2n\218eT}\145\236\221IP\1x_h\31\225|\175Ρ\219*NU\250!\185\151\29\140\165Ӱ+96\148@'^\174\1\u{EEA}`g\153\2434^۶6\130\1733/\169A\156o1\164\6\195@ \227\208u\239\16#\15\182g3\155\158\149\134\255@\255\218nR\216\231\3h\182\177 b\144fQ\210G\11\244\150`\t\176_\240d\248\151\183ڐ\139\213:\1\27\240`\157Ғ(k\135\2\201ɍN\209\12\11\4l\146\4y\172\186k\186\227\195\249\220Z?\136\198\220N\184\203!\221F\19\16_UQ\245J\2150\241\14\217\206\223I\219\201\232\0239\2\152\2042\251\225Mr\8\184\180\133~eH\175\11\254\171F߅\224a\145\177\181\180\194\4\169\199\2\187:\233۾\19\r\246m\18\225\175M\151\199U\173\161\17\200\18c_\208^\174\181\19\144\230s\205\209\254\239\\f&P8#\177\194?\236H\242k\0\2523\201%\245ӎ\27N?\127\21\204\24156¬\255;\206\19769\183\190%$\245t\"\164\15{Me[Ų\173\183T\182z\177\24\215\207G\163\162OѠ`\250\133\196\224r\2536\151\243!\148p\255Z\205\226~\245\t\161A\230\195\207\193\181\168\212\211\229')-nv\170\177\160\193\233\20mN\238_(\194G\222y\157\243\189\215\245j\181\170'6s>\"e\141\0[\201\221ݮ\147<٭u\232BxU) \30\252ć\175\175g?\210\220T|\176̑X\190\199F#\196\197!q\150\205\230\173_\2526\26h=1\144\244_n۾\7\11̻\189\247\134\6q\165\n\n#\133\157 \23\156=\215\201|F\250F\20k\131\155\31P3\190U\226kh\143>B_{\16\187_P\7\27t˳\200\2235\207.J\237s\149t\133\2325\137\217\221\221\12dє\30l\245\229\16\18W:\236dJ\230A\153\193ǌ\209ォU\243U[21\177 I\253\17Ӹ\233\154?\138\219sDU\171\193Wd\191\127.\12R\2237\5\5\175\31\185C*uy\223\211Q.Pz\242M\206h(\130%\135\149\1931\134\161d?t\219+\251}\29h\28OF\20V,\137=\1753\15\206fǒ\192\tb\163\142,\28\202*Q\229\253\227\236z\0\174n\244\173\255i<P\31Rjz\200\0N\1899\159k\150\25\11N\234p\8\132\6\147B\167I\245\"u\183}R\19\247\16\26\u{F160}\0\145fx\162\209\27դ\tC\193\141\204\229D\211\3\127\246\26\1614CW\0176(-\242\184\228\167\31\203\206*\250\139\186`\153l\203\23I\r\183\169?\147h2M\6\157ej\242\1719\158\203\29\190\135D\1LX\212]\18\242\172\225R\216}'\221\19`P\152\236\205\2\28:\243\166e~\234\163\228.\231\164@\144\1302\19Z\240\255H1\4\140U\189\155\166\183\157c\207\30\183\168P\209C2\200\4r\\w\217u\25;e\0044\242\18\156\227\235\190\222\209O\131Ox\16ܡ\1\18\254\177\242\239<\129\141\245.\228Rle7\17\144F\212\247O\132\193\255\178@\217N\135\144\232R\197\16\210l\4\164\139\232\191Lx\r\148yutU\206\231~\188\146ys죐\163<\134t\232\247#rM\235*a@\254\227!A\158\\\198\14\223Q\151\152\n\184\151\184\\lW\209P\248\143\241\152\132S\178?\n\163\5\241\2\1302\236T\28\6\157\222\240ܟ\26\30\156\157Wp*\5\242g[J;F\156\206;r:\u{7B6}U\247Ŧ\rT\168\225\15W\230\138*\30\236\21h\247\157\232\19W\210i\206\209\246\150|\222\225\165\242A\148P\0023V\141ܱYbo \225\192\2\6\u{7B4}~R\195좃\248\172\12B\139eC\140[\148\182O%{\138\162Ü\182\180>x\162f\200|<w \196\tݏ\155`%\176\236@\252\240\23\2504\168\1589\162#`\8\239\128\12̿Ah\141Tc\127\147\24[\180\163\140S\169!\145$a\3Ս_\236s\250\131\212\193\233z\189\245\139\23\161\1,B\243\253N\12\144\162\0302d\157\194\11\143\129\230\185H\166j\128\164\230\192\241\4E\203g\153\162%1[\195xR\21!'\138(\7\216\14Ԝ\196\211u\24\227\232\21_2S%\7\219\241\212\240;\173J#r,\131\144\193l\128\133\24\140ښ\195\240\1706\167\151\199.\0ESX\231\247\19\237\137Wh\233\164φ|k\192,\148.$\188 \132\12\202\201j\20\227\135\11\2\198{\190\ruaL\u{38B}i\1957Y\254rF\184J>\154\223yV\209\r4\182m\135\19\234O$Y\228\191¾\174@p\151)Lc\21\152\148Ӹ\220\209\230#A\"\201\248w\255\132ni\131\1565\187b\154\129B\185\157\235<s\177\1745\150\166\165\31\216l\194d\247*\153u\180y\238!\227\21\229w\161\227h.\167\229\202J\227\21j\138#\4\1808\19X=o\22og\171>\201\19\148\227\252\\\184&\192\199\22Dfޥk\"\4\199\14\5G\173\253\220]^\4\170\142py\127\254j$ڙ\168\209#/a\141\25\205AI\138n\r4\210*\193\236I\246\142\223\6\23\1628\129B\246Rj4\251.v\171\215\237\r#\19\17\t\132\178\227s\241\251\161\155\221\194\242\19\131u\21\1505\209\230s\6u\133|\248\224\190\t3K\187\31\249Kَ\147g\192U\2\134\131\166@}\4z\3}\173!\4\177Xz\240\140\0\180\244\228\136~MbHқd݀(\218x\185\240\153\182\196\251\180\24\135\143\152\168\208p+uו-\246}\150\247\179\184N\205W\173\143\168K\249\168\245\145c\183\170Įi\250\0180uyzɭD\151$\154\230\136\224\214\250\222}-\157\156z\148 y$\22\152\12\189\\%\131\254\141\30\176g\175\167Q{\238xu\229r\193\179O\254|L\174H\157c\245i\157\185I\163\139*\241\196\11\30\185@`\150j68\2293\161\130\1703!\12\29m\133\2110\20Q\135\168@8\202ߤ\26\25\177\138M\\e\255\rG\169\11\129\212\249\209;\5Ҍ.pV\24a4\161\158\1739\15R\157\164$\143\155\u{F835}\235p.\2222a.\181U\245\192M\231)\228\142\22'\23Z\7\201\193\138X\29\u{7BA}\153Y\236\169L Nn\133\153\133\23]\165\25z\167\133\24\248\178\226꥟\21\1683[y\237\2268F\207\3*Dÿ\168\222{\178#\21\150\183\172\146\22\n\156C\21\140\146\139\240\175[\196#y\133\222)c\162\23M\245\246Uu\224\134*BE}\185f\130u\242\188\141\23\247Ⱥf\161\15\247U_kw)\2294\251\28c32W\5\185F\201E\179\8r\161L%\157\238\135k\t)\128b[ex\"\189\222Q\166+ǿ\2300%\204_&v\1837\168P\n \\4!\246k\229\196\227\164v\163d\181\6T\182\215T\170\164\183\1\183x\2A\150\131\223\249ɽt\177zP\222\243\202\218a4\159\240\207w齸\189&\177~\183\198\31h\147\25\133_\135\18\133\174\145\183\225~\232\174\201<\179\240h\197\214\220PtA:/\0193j\251\157\2035{ּ\2481x&\226p.baњ\148PJ\23zN\196\242\"\14\200h\165q\240lNO\149\230\214\29~}\167\204މm\209'\174\192\17ANg\132דU\130\133,\158\240r\227\132\2188!\255&\170f\12X\172\2035$$\227}BaƝ\185\173\r\22\237C\215'U\29h\130\213+\187\236\0\245荁\167e9\247\160X\14\165t\224E\161/I\145S\29\206\250\164\28\228/\18r\135\246\236\u{5F7}\168\249yd\rU4\198K\137\ny\179\172'\174)\173\157\219j\1749\201o\171U\\\185\178\174\167s\242\193\147C\251:\177\0068K\185g\187&0^J(\241\251\147F\207\2\240\209v\141nJ\17\139\244X\26C\181An\244iZ\195\25\173Dn\151\11\18\22\221\216.ER\230\240@\3\249\219\15\254\189\27+>\216\242V\7\255:\29E\22\141\178\23m`f\241%\205pf9\173\146\168\201*`\u{85}q)\132.\229\251L\16\u{7BB}\8IxV]A\"\143\158o\2367_\tH\132$\199\192p\6\185\127\225\204;\2508\247\18V\160\29\136/t\215$0\r\139\26RGυ\151\"0\26\28q=\14\225:4\140AK\143?R[6^t\229\tBP\141\165F\239\127\157)5\136\197\243K\r\1898\184J\1322\148Du\169\155n\134\28=W\192\195\254љ\166\241\208-\231\251K\135\131t\162E\8\133\250U\242c\242\183A\173\192 \6\243\186;><?\21\148A#&<\187\205\255U\24\210\242%.!\127\\\167\18\221\223m\0197\172\251\242\31\159n6\151*\158\173\163Q\\\n\131\133\18%\189\247\17\1317\167\251\nZDk\156\193Pa\249\229?\22\196\24731\134\150\192\203\2485\198\202\26`\1>\208\219\253\187饔\253\164:5閅\225\143\2492\24\247WV\147*\194\12\25\171\t\129\0\20\190\176\20\3@\237\187\rb\245\136\0285\185\213\14\204\18\161b\2481*3\226{j\r\216\217\24\141І\227r\245\207nT\155\134\144L\183\247$\131\"Y\166\n4\1D\16\15\214W\t\7\165Y\252\159\t4P\152ƈ\1991e\205B\153\226\205hX\213g\142\191\25\241@U{\170L\30N) \127\30\245.\161\1525Q)t\2088\129݂\1693}\197e~\217kp\177l\203F0q+\19[\218t\0043\206\208\242\149\18U\187>&9\167\182\202\245\166\199\2333\158\t\r\"\139\249oy\135^\n\228\210so\234l\245\191>\226~G\148\144\23\214\193\17Z\137w\247(D\23999ҧ\164Y\15\238\170l\1\11\226\195\208\227\30\128橎J\1\197Z\173\142\165¡\240%\164\174\127\0193\184*c\224\29\1718\228\177n\237\"\162\21\240aWԓ\0\193\148n\173\203&B\240\130R|\12\219j\2532\211\203\29\218\0\0\2004\150\205Y\n\229\183\234\246\188\181\155\241D\251\247\182\128h%\191x9p|?}w\162\211FA?\239d_m\148=tq'S\231d\127Dզ\129]w\165\146jTQ\160f \216u\192\215\246\1\188\241\n&\17\\\149\182\176\174\4\18\1778/\185W#\196^\229l\250\200'\157\219\r{C\175q\0\189\164\145OC1\197A\177\130gpS\236w\191\219\223\26\18W]\215I5\25>D\184\158\153ҭkr!j\233\151\5\254K\156j\168\11P\225QK\177-\214\212\4\239o\133\190\197Oy\221\252\152\21\233ե\138D>c>\178\210\234\245h\141X\219i\220|o`,\18+\158>.%+\209yLX%\174\224F.\235\30\250c\n\251\2208\145\128\165\224J\1569@-!\26\250\180\140i\157i\179\213\226OLr\r\182\228\226Z\221AJgѨ\25\27E\1872\158_\234E\0152\137\u{7FB}7\\\2134ү\229;\0174\232!sN\u{5FF}\162s\189]\188L\172\1534\130\22/\186\213\236\207\241]7\204V*\179\27n\14cpd\211\208I\162LdJ%N\14\192S#\242=X\199X\171\146U\"\231NT\251?&\162\148\134ݜJ\151\213Z\146\16\164\142\134\29}\11\177P\149\133Ugq{\221<\155xѬ@\5ڇ\207&B\139d\153\182\21\\\26\171/o\165\5\154\138L,h\252\21\196\234\250ήH\127\185Y\229\230wL\233\132b¥\231\212\255\196W\191nⲅ\249 \219v\227\233't\155.U\127\185\181\28\204b\230\11ء˧\n\247\130\186\4\200\2521\218P\240m\156\181q\171҇\8akFqE\186W\207\17U\16\157& y!_\25\129c\219m\183\15S\\\173\25\151PU\n{\14L\217lL\28\153n;\182\195I\26\176\151\27p\216+\u{F81E}}\152w\29\200w8k\234\153\195\29\234!\192\163Jw\182ҿCQ\219\245/\161\160`\251+\r\20\136\146h\1\181q;\1834\243|\212r\27\195e\148\201\28S\228z\255N\2\148{\185~\131+OL\20f\19\200\243\223$\156_:\1948|^N\14\209\27\23rK\146\221>\135\247\14\179\3\165\210j\140\186\214O\3}*\129\225\213\250M\193\176\238\233g\183*\24\127\233}\241+\135\155{\169\148+\rp\246\172ku\220\20\5B\193\245\24\173\231\2193&u\184F\193\180\251@L\181Q@\\PJ5\207\212\211oS\157P\153)y\172\174>\254G\"7\178\164\249\28{jk\219{s\188?\164o\212P\u{5EB}|5\21\235a\155\24\240\141k\134G\11\21y\201n\2032nTLփ.\253\248&`\129\253m\237\28\234\240.\23u\140~\18=\213\14\2460\127\26cs\168\254\244\129\3=\139/=\2492\156ʏ\236\218\n\176\232\197\251?\238\0168\240\151\227\217G\138?)\251'\246oVa\217.\198r\138\139\153\161IiC\255\209%\213\238:K\170\163\149\180\7]^9k\207\254\24201p\255\166\t\179\214S]\153m V\17\4\208Uǅ\156\155\169P\133r?\142\242\150\184\"\28?\1491V\226[\251\14Dc~\238\12\130\12\236\248\136PM|ro\220\217?o\242\1443#\205\7\136V\228\179=\137\173RfA\145tt\151\203\22{\178\22\28\4\12/\160\231%\185\176\0066'0f\215G!\157F\156\150\229#\184Y\228\254Ҷ\167\169\0310\20\152\25\148\222?e\253/'\162\187\173\178\249\23\232aU{\19\158\25\151P,҅'E\176\245\168|\234y\2463g-h?\196\\+\255-\149\133\178m\237]gr\25j_\198y\161\211\230\239y\189UL\254\172>\235\204-֯v\230\201\17\177\244\180G\12n\231r#\214\224ڪ\161\7\222i\136\150ɒ@\2105\189\1929\161\139}\151\181\192\27\163G\162PHɶ\175\146\231;\129\218\23\165\132\1753\0\31\213/\248=,8`\147D\206\16\166\230\3Nc\1533?\24\23\26\154\250\2e\6)\242Y\nzK\1769\156\161\30\174\230\196b\26\244\193\177V\215U\20K\145\210:\239\197`h\174\150'\186鎏\29\168\30\184ˈ\14TxK\233L\157\240\135\145\186\133L\133\18!,L\t\135%\0\2083\222\229z!\180\203VƧ\245[*$\236\22\236V\218BNA\246O\21L\26\3\135l$\175\224\145F\159\27\169ߏ\31\187\140\232\183\7\203!\240R_ZW\156T\255e\161:\227G\5\129d(\18\181\253K\2028\141\203\222į\244\203\241\154\139\204\252\226/\195\198\2z\234HI-6\217KƄ\7\210y\178\157\170k;\163\6\179\242\neз\224\t\140\243Ӟ\248P\192\238\158?\198}\152\237\24632\17(\161S\146\246'\141\235\20q\156\239\162Rq1\183N.\191\251\198{7ه,\178\172\184\1377U\153{0\240\184k#L\176Q\245\199R\246\146\176\0\0U\1FHř`;\241\r\203\2439\253p\195c\2KqN\249\t\165p\152\4\176X\12\231\202\12D|\241):`\180\140\141\27\181\131F\142y\24AO\169\r\2tw&]\131̊\12y\18:\232Z\"ڻ?\2023B\11\217\196<\164\193xe\142\14\146\205\242_\143ǡ4\152\196ϤC2\131j4L\164\r\129\146o\159\137\173Q0\6\213\4\4\207e\181\221fH.Btp䨒\156V\29A\227/\154\227x\178\131\227\133\236\142k\218\2329\184\217x}h\149\1603\137Z\143\176&\242\141\185X֘\158\1770\235os\1$\136\158#\188\177\152\169Y\163\160\0\237\145z{\28v\154\230L\215\6\241ɋ\131I\205\230n?=\187V\244CN\137\185RH!\214R\135\129\25\206L\222Ü\1978Y\169\193\139\2483|\22:\128\237\213d\29\tD\226\149\209}\193:\184\206o\24o\155FO#\207*\215\235<v\166\194\0Y\158\199I&GbnD\208\250\188+\133\183\23\187F}\202T\14\245\128\214f\136a~X\141bsC\0244i\128\16\157\199,\22^\155\134\4y\7\251;\134\"\0199\253b\20E}\248i\201\251\145ۿ\233C5\241\219Cl\226o\158p\149\141\248\148\246\229)\18\15=!&\243\182|D\198Q\6K\0\179\229\16Z\196<]\179\224.\152\152\212\29\249a\218?Z\140\n\244EB\208\227a\255\8\172\224\205`\138ʻ\145\18\192\129\1791\175\169\190rb\188\245\190\225LH\19700\149\216Ii\254B\162\144D\192\242A\27p\210\12cBd\154}\155\134pD\238\204=\255R\168z\178x\14v>\130\238\165\30\127ܕ\183\7\176\150:\225\216Ky\r\176\216>j3%\247\198]\158#\153\182\197wlի\28\18\233\129\218\204\198d\247\1628\0\153dH)6\16v\226;~R\242\164 \166^\3\157\161\240`\134\173\181\136=\161\173-W?U\175sT\27\172z\169\152\232>p\4\243\165\8+\249\143\250r\141\196\249\7\176\245\203(\154\171!\4\246\154|\25\151&\152E\30\202\15*\132\197\0[hPTbhj\159\228u\19t^>\196b\15\132dFo\133g4-\191>\213ف\0022\235\250\11\138K\\\234\204:\146R\175-\145\217l^\210ȍ\138\220s3#%\241\218wdO\23\22\21iGl\174\2162\251\135\180\127wlL\239>\223\12V\161\220A\160Y\186d\206\254\148ƻ/\18\12\182\237\r`\249'\29\244\248j\14\r\196Rl\t\30\163\183?iM=P\2\144\132\244n\240j!\4?s\135?p\239'\24g?>w\216G[\1550\129=x\20A\185\238\237\234E\11\175w0\8\173\139ɣCޝ@C\134\30\22243\229\16T?\192\188\226}ʁ\2312\0!\173ߙ\5#\219\251_U|\182Ğ>I\223.\188pE\130]\4S\246\148\138]\127\234\166\238\1708\190<B\21.\144\161\128n\133\227c\181\21\249Ж\rbʸ(ĹK\138\129\164\241\254m\20\166$\234W\29M\5\251\177\225\153\232J9\14N\0\201K\17\227\141c$o^\22\214\31\188}Z\146\247fg\193\15\134O\31S\166\11\190\240\196\5\0aT\207>S\236\228*\28\198ܥ4\19\241\230g\235\15U\254\24\238ư\166TgiG]\191\140\253@o\191\11\140\138\2\179\1595\191>\t\21\23\151\n9d\145%\138\141ՕA)\229g\208@\150O\163\183U*\176\252P)\29\236~.P_Ӻ\nD\177Z6\239<\208֯\29\3U'\157\185\0\15\250\143\179ő\153\178\143\129\227\19\229Pܼ\179o\7˔\248\139\130{\231\"\6$@\153\12\143\138z'\237\\\224\135r\0294|\156\213e\171\156\246\146y\245{\237n;f\2\167\203ܮ\152\136\225:\175y\233r^R/\5\227\157\7\237\250\r\245^\144L\156!\247\5!!e\133\17\150\218\21o\2490\167\140E]<5ív\189rF\141\211\231FH\170\214p\249\210J\255\151\26\247\192G\155\132\245\153\244\162\252\1T\150\188~,\168`tS\133\247WkO\22lm3?\6\170\20\189\232\229\18\253f\245^W\217\221\253\156Ƞ\235\253f\154\159\227\233\0\161p\n\218*Y\135\141d\195\226\1\185\21\246\247\137\200;T\1772\164e\197\199K\157\129%u+\185\"\155\2\249\210\6fgQ\12\149\29}\246\205\3\237\3\197G$\160\129#\21S!\t\143\0028\29\239\21\1347\139\2527\191\157\185/*\193\t\215\200(އ\3vD\26)ׅ}\\\252j\31&\203VI%\204\219\"\175(\28\207\16xJg;p\239+gݢ\177\t0\194\211\237\222\246p6\30Tpg\191/]|\230+wQ=S\11\196I\t\237\159(\152<\197\t\141\191\4+\196})H\135\198e\245\243\183f\2074߬\182\185\146\131l\158\t\176v\n\136\251D\192\229\154\12\176\159\147\172ᣅIA\158$^\154\31\233\2537\159jj\16\250\239d[\163p\143\r\201n\207\127\155s\146\214\233\218=B\162\255ۤ\127\144+\132l/^\2200{\141\240\1394\168\153*4\136Z\138_\183\231\197\245\254\147\140\189ق<+\232\21\240\206\227\1811\241R\245}\231\134q[\165\7٠\25\148YU\147\147+\130\197D\21\233(\136q:\2460\14\195\16ƴ\140\240\233\"\131;\14\171\140\29\28\140w~:\t\31\251r\15g,\161\169\150Nq\221\234\u{F7A2}\154\137\127\248-\130\217\202?N\130\170\246\217\228\249\244\239\200qNp\18010Wa\0202पh\234-;\n\252`\247\131\22[*N\219\192\15\183\5\203w-g \176YM\23\162\159\6\222\247[\238R\197n\167.\26\184b\194\225\249\156;\167\187_\12=͓\12[\141\192%\4&)\140h\152\203\\\4\7_\186Ӧn\18\227*\182%\31*\170ɝ\163\169\245\217\230#\144\217\12Y\24(V\0009t\204e=\162s\172\196k\24\187\172 \232S`-\14\163Cד\14\167!< \177\29C\162\252_\169V\148V\218Nd\241\127\246(\184p\8\134\185\14\2170\133\232nԓ\253<$?\0\3\219\198Z\0268\148D\15Y\1og\237\144\236S\22401\191\156\192\255\187\155 }\154\251\205\8\135\164\1{\246l\179\182\253Z\241\192\193\238\230\15\243S\148\225%@Ū\t\198)\195\15\176\234\11\141EtF\162Uo\210\255P\145Zr\149-'\200\8\234E\0E` 1O\224V6\21\137w\214w\235\157\8\2180St\24\18\237( \246-\238bY\21!\191\222%\163\182\15\221\2322\149m\172\179\205\204\230\189u_|\2518\208d9ک\137\145g\159\255\191`\154p\"\186k\246\169.\177\213\195.s\216\"iMx9{\14\181\129\235\26\166\1665\22\7Vlz\29\161\251\255\24\127U\243~ݽs,aǹ\129ӱ\143\190T7:\31\180\158A\142;\7>\211M\215qQ\2100^\190\145@\186\205\239\127\239\190h(!\130қp\185ˈ\213&\162д\132\187j\170\157\6\187\196(K\127\214DB\227\222%\11\5\129X\195\28F\208pDt\251J\21!\179\179\208X\243\172\2384\31s\243\18\2212fe\248\196\1c\170G\144\tM\15(^ڿ?\143\226\246\141\234\220wKZʴ\rt\186\21w\179\186}\16\210\230\137Ok\234\r\172s\236<\251\196\196\206&\31\145'`\185|\11\136\204*z3\139\151\"\162\252\202\230^\215\226}H\24e\173?\202I\212\253\u{383}\223\209)\230\244`\142\1709\207M\145\148\156\nv\20x߷\178\201\242f\186\1428\0307\14\2409K\16i\208O\183\25\244J\188\\\178\150\23\187\21ش?\242\188L\255\129|`\127F\24\24A\192\146\131\180\177*\245\186\204\254\168L/\145\144\158\199H\180\196\196ʔ\19\136@\210QP^\231M-\233\211\24\129\12\0\148lj\222\\S\127%\233\151\231\11\221\198%+M\157&S\226q\246i\128M\1969fN\25\242\18\249\8j\225r\27\n|\139L\208\7\19\134\228\12\6\31\1309\133\164\26\154Je\150{\28\161\145\186\142Z\192\244K*8QP\178\212\229,\194Lpb_\161=\186\2\191\140\29Z\162\16܂t\152\131\198r\252ƨ\148\156\241\253\141\248\129\132E\202(d\238֛\23\252\232\19\5\243\207\213\\I=\207\205\214P\171\194\214\t\152\1695/\3\r\180\229\239\241e\2516\254\181\178\211\193\169\234?\198>΅\199,QC\177\247\253z2+k\254\231\254\168\222>b\\\169\25\241\217+\228\n\231B\154\154AO\183\172'\242\209\22.\164\26`TނUf\232\230\2254\8\134\128'4js<Vw\189C\147\0124M~\152\144\217\231OJ\170$]\190\240\31\144\172Ƙ'\2295\157\132ݤ\177\177\18мv\192_\30\8\169\158a \229\241\155\210\237E\134͑\231K}z7J\134.fyu\163a\235s\161\156\28\25\0122\139Y\24\129\236,]\220l\250\23\238\176& \154\1\174,fd\2505K\245\152! Ռ/O:\29\227\31\151\127\154.\203\196[\195[\205\25\202Y\179\164꼑\"\167\252%\207\2\249\187\182\149[\255$\174?\0294\200\192\27g\192\19D\130\r\206G8!\224h\173%\200\206\t\245\7\152n\198\8j\190aG\237;\11t\145܌\207V\12{\194\11\238\156Ȯ\4;\253\210\233\253\247\252\12\28\136\166Y\n\222\u{5F9}`6\182!\161\169\204\22\154J\157t\222\245G\133\199\240\247\168\u{5EE}ʿT,\161U\137Y0:\138\230*\136\215>_\nl\186\18\172\180e\\β\0252)\168<\142ے\2535P\21,\1\195H\187\153!W\238\5u\186\205\211L\160wX\226\157>-\251\166\165&\196I\161\15\147*lT\29\180إ\159\225qN{\235`j\232y&\\0\249\152\1827\234fTr\251\255ܳ\28]\155K\158\225\r\15\210lH\130\7\231S\240XWc$~\nZ5\155\215\2\247\221w\127\199\202z4mI\207\127\175\1s\169\5-\137z\154!\227\r\147\21e@\7m,:\206רA\1653\181\142!4ŷ\193R\31\154\227W\178\15}(\225:\147\181\176I\n\144\"\250\161\150\235\237y5\130\217\18;\255\159Q\152\12S*؏8\19s\194\2148\26\152bR\146s\254\144\12\223r]ԉIh\133J\131\16S9\195\28\166\180B\216n\24\251cyb\170\27\184)E@7\129l6\142\172\190\230\231\2412.\238i\199\202\18\208\208?S(\182\143\191\150ɗ\1600x\228\247\3g\228\171pOg\135\170\240\130d\4\220ҙ\182r\170\247C\1638\251N\130ķ\173\21\203\16\180Hy2fdF\202o\227\192\212z\165y\206\6\199\239<\235\176t\221\4@\160\239\152\192\146qC\165]\28\11\155_hgJs4\146 (\170\201KW\14\2295\177\2V\162A\144\8\189\129\2519\163g\199&\157\201o\215\r\31\146`᠃gR\199'\206)4\152\213\17/\144:\193\233M\131\0142]\16\254\2176\1272\12X\140CƟ\204N\250E\236h\136\178\233G\167\3~\213y\140ZR46\171{b\148\164Mlؑi\130\14!}\5 \144\239)\243\8\231X'\186\178<1\237\8\182\203P!\179j'\145\210\253\2221\"C\200\254\228\30\225\179\21\195\255\216ɯ[\1654\11\30Q\209$\249\194Zw\209w\1440\1923'J\30\255;}1\1979\t\n\162\225GC\30\242\143\140\213\216y\12T\244\240\131C\130\t\23?\145\135?\195\24\208\4H\225\234#!Z\236I\199\238\0\21@\135Kᣉ\0079\8\0269\132\1\145\242\154\139\221\195\213\20\174\28G\158Z)\196\241Z\151\187\182\242\22 \136\193n\204\248\162\243\20\16\21,\234n\2105_P{>\166\20N\164\156\136\27/\153\16\149tT\246\129{\153\247\23\n\1藣`\128\227¨\220\206a\167B\169B\149\18\20i\242\228\1Xt6\19\221\23920\242\156{\219\193\228\27\162O\129\1465\24\231\251H\168\7\190\248\231\190\19]G#5\244\8\228\147\246\213`\167ܟ\198\196\243\159\248\146\182\229\243!\159\29\251\225\29\138Nxz\2042tX\t\232F\162\11.\219G\216\209g\12\171P\3RF\28'\224\00014\228,\23xk\23\152\217\21\\\190\146mdtq\31)p\191\\\183`\31\164\213\238}\27\240\226\236\29\127W4\175\230\1394\130\29\2000\\\154\156A\t\188j\197\1972\29Z-!\218\248\7p[0\23\164\206\29\u{379}\210_\203\239T\210$\237V\165\254輪\186\170\n\26[\174D\164\230=k`3\190\2130\209\0}\2T({V\210\234\223Ù\1\19\162\185Z\151\131\15\28o\201\229e\213\22\139\20GHB|S\215I\212\1\147\164\150^\222M\206\127\171\248gv&S\232\242sk\6ue86j^\246\255z]\0\238\220X\195\245!?\173\181\203^:\24\243\163\191\246\242\23\225^z\0\200Yuv\155\172\153Y\191\245TW\150\189Wd\228\225\203\198\rO\235\224\135̧\167O\176[\186:\239\3\199\252\200\15\233PGzoݏ\130oc\202䆧\2487\189GI\179\247\183\224\164\230\1707\240\191\2\231e\155\205t\229\206X%>D%\219%\214\239IlY\225g\170\170MR\157\147r\204slY\17~\182\134\18g\160\178H\182.mK\174L\156\12Q\2j\186\191\223\197\245+\180\170\255-3ɟ\223\193|\171س=\149k\16V]m$X\7\25\181\5\135\15\23v\148\250$\17\130\128\253\151\1413n\22\17\240\204\252o\26(\216DpE\245\226\161\19\180ǹ\168[\241\0315\186\200PDC;\196mA\246\208[\217\216*\147ر\5hp\181\145w[\228\242\170fw\219ΗspU\n\22\253\136\169\147\251\2377߀\127\137i\141\237W\19\207\205P\144o\14\192˸\12*\146\136ƞ\31\2\169\144\\\245Q\169\251\204\21\221\245Mmb\247\234\249>\132:\21\166\171xB\147\134\187+U\183\12$\255~A\171\150\137\12\181\210 O\152\15a\237$\4\2321\22,\188g\195\254\133\27M\1493U\239,\239\230\203k\228\214\18\1936\233^\179\184\175\7\188\234#*\160b`5\129\239\173Ү\252H\1470\209\255\218]+˽\18\221\251\229ִU\22\185\202\238L~\174#\230\2459\214\11\0\12\245\176\137Ĉ\23$\28\147\31ȯ\225W\163\151\224`\158\210U\211\15\201\217\232\150K\210+\182\23\159N\"b\191\0\145T\8\252\150\135?r\188a2p\1819\205\u{8C2DE}T\184\152\176\255{\25if\151\19\138\190\174`\18\232\129\209X\241\11\130[\206F\241\151\20D\31\18\184\12zt\2150\186\24ɖa\224\217\251\135\254J\30\5\190\133ir\17\"\214u\227Ͳ>T\237\205*\21\137u\7\205=\146\128\7\15\233(\136\8\143G\169\226\224FX\228\30\212Q\135\182\142` u \tp:\155T\185\143\223\215fE\21\226i-\224B\172\151g(\"s\210\3\nm\177\145\238\204\16\0062%\16X2!ys#5\r\160*r\137\135\168e\254\223Q\20\255\226E\225\217/\216l\221;z5\178\11%`\170\198<\218a\136\r'\226\225\249\234\249|\2243\141*5\222\16\244\2276\t\11\181\255j+:\25o?\186b 7Lo\204\233\219$!Z\210\19_\23H\185\138\131\232\184|\221|\211{\187q\31\195ݾ\1768T\129q\160N\17ū\u{381}94\141\211\194Hq.)\143\172\r\150\22E\158p\218\201L\17\248\7i7\171\164\205\249b\237\204\254\215w\192\207\19C\181\1421\157hH\187F\149\142ji\196\11\210\237\127*S\152\208\217y\150\149Y䮻\238\0\r\14\131\216\238E\18ɯ\154%\196\5\158_\t\243\251\145\145\144\214_\30O\146\166\0035\160\217\246\182\135\19+\249-Y\15s\144\159N\24\172\217~\160\185R\227\6̛\u{EAE1}6lQRy(*\164\156\156\27\252Fb\145^\169\170\248\168!\161M\144\142F\166>(\31\145\146Bj\2\211\250\148A\185.P]Q\146\227(\151\225rq\136\188X\175\170\157\221\0310\209\227O\213\195\226\191֡\237\208e<\184Di'^如y\14\225$1na\241kV\1\145\30pP\1371pY\231\230\229銳\214GZwd\rw\232\170\233`gF\254`\200$(\23\6\230\235\128H\245Eia\236\200N\5\213\22\242\168\241\221\18\129\185\14|!\239IyK[\22x\222Z)\11x\4\197\24\167\130\242) \12g\231\17\236l:\153\1563\230\25\192\210@\197%\27-\221{\168\r\14\214\22\168\194\8\215k\180\248\223\15K\150\0290\250\189\"\208\"\190\229\156`\240\213\4\130k\166\27\4_yY\177a\188|\161\242\28A\135\181l\136S\134Kf\18#\181\31\30S\241\207\193B\168i\245\250\176C\212q\134\225j\"\251\29\193\234\235\185r\144\6\214t\20\189\255\6\167\129\255\27\22\223N\195\20H\151+h\12\204\202xn!kW\29(\134\1687\145F\242E\157\191И\31\176%!Ƶߢ'I<U\179JF\200s\144ӯ\158\136bŉ\133\161њ>\252\220\248G\250:\243\148ʕ\147@\5L\141Wu\3\176o\178\179\164g4\163d\212,\15\223)R\254.С\213\202t\249*n\17w\154\177\228J\2047\183\8@\12R\153\15\217w3\2mG!\222t\210X\154d\20\23\134E\16\152\150\243\19ٮ\243E\214E\164\6n{\144Q\2503m\5)\217$\178\14ZO\243\217#\242\254(\187k\190\"(\178~\159D\156\222eۊ2\242e\223Tx\141o\223\6\146\140\181\187r\233\253\232\252O\151\26\185\24d%\212^.߃\127\2491\187j\165\219O\229gsd\29\197\218\0\23\157y\209\213=\172\167|yU'ɽp\n\159h)J`\159\164|ՙ`\170R\211\207.\182\198g\241\234F\197C\231$CQy\148Gx@C\31\162q\234\166\214\239@\206\248\131\188\15\147E\159.6{\154\165\182\172\160\195zȸ2\3o<\195V\16B\154\151{\197@\5\15,\11\201T\169\176\169\29\171\230W\163\220\29+\1415\185\206{\188\168\182\225\206j.\2ߵ̐\133\25\201Λ\195\27\129\172\t\194\208\24\246\145<M\159\195E\131k\200=c\146Q\177\203\239\164\28SM\190d\224OL\238D\0004\247J\31gw\210̨0Mђen\2197\140\"\209\202C\173\238\164\250ң\250\197\211@?\199\202A\137\tO\183ácr)\205\211a0k\172\160\217l\230߾\176nP#\153\147\164{]\240\249\227\182ē\193\156\185R\156\198\2397n\23r\232\16.)3\175\231\170,}Q7}3oy+\190p\2404Nl\n!\207.b\160\228\239\30]0\19ҵ`\135\243T\206t\6\185[\185\1866\128K\253\28\180\153,\238\244M\149\237V\31\167\24p\196~\138a\248\176\247\225\183\30\146\11\186\162\140\3Y\250tcs\146\246\220V\250\197\197)\203V|\1!.\175\135\0034\8\205\233zP\185\233\20\191\246\240\16\145C\145\140yF\232\237\171\198\3ȷ\162\211\247B;s\133G\148\145\247G\30!\130\"\3\234\255\21\171\251z\7\249Mn\192\159Z@+(\163\200b\139b\178\161EY\247ց\26\243p˱3zDQ\3n\253C\1п\195\23\228<Xs\180\227\253U\12;,\181B\221\u{3A2}\183^Ժ\143\141S\151v\2y\22\161Y\217#?\158\241\188\249os\28\247\178\208'\219\19ã5\207\21187\205\24\239\1=1\152ݙ\129\189Y\11\133\164р8\182\146\243o\249M\238\7Fz\168\157\241+\232\20\8\2322\21\232oGC\240\173M\8)\242\238Jk\138\192\207C\176D\6g\131\139\158\201\15\204\220\215\18v)\2\186}6o\12\5\239E7\135F\6\175Z<ܣ\3B\24\244\156\128\228\15\159o\18\15\250\129\0N.\23\157`ϴPƇi\133\246Q\235 \236\156\tn\220'+Mu\24\225\176\16MુOz\173\182\219\2206\197\16\169p(!b\134\236f\216\204\192q\137Z\185\160?*q~\148\186(\18\17F\162p\161\148&ykv\188C*\20+\r\239Ɔ\157\153\129\0181ʠ\246E\22Ų\145ǡ\251 $\170\140\1977\181\22\26<\222a\4\161\22\u{88}ej\169\215B\3rͯՄO%@\167\248\195/\128y{E\23GvtB(\221QZ\205\14Ou?!\197\19\2075\159R\132\143\251\200\25\28{s\11\214\246\29\239\168]\207\223ϝ\177t\246W\182\198V\t\218NO\147\184\242\255\132[\16¿\165\234v\244\r\222\25\2183\155\211\19\248\11>\162j\156<\192\12\139(X\192\166<0\152ϡ\17\17S>\7\150\200\248\182¦\152\130\210\221Ov\223\29%M\12}Js\127A\30+\239\229\212z~\173[\155\254\230X5\211\18\22\n\28\21\208f\134\143RBt\135F\244\131r\128\150$R\2\130\18\1649\139\234\250ʋ\136\4\131\153\26\198O\197\21ݫi\159rg\176\246a\192\227\219T/Z\159z~\164\188\25m\26\130\255\190\203\6\229o\7PGz\221h\207y\25o\176k\185}\238\18v\3\200q\14\11|\20\4\138\154,\144\179\138\154\30i\211lJ\26\172x`\220P\144o\236\197w\173^4\31\129\243\140C\169\240\226\r\1800Xw(qf\136\208e\162\173\132F,*8-w\r[\198\247\148=\139DR\16B\240V\19\182א`\17D(7\203\247\222\240\202\3\14\159\176\194\201\21\193\205'\151\160\29\19\242d4FRֵ`\2222\221H\164\7\210\16\139\169~p\133x:\24\255\14$8\"\138\131\1708s\151\5N\212gyyv\3\159\247\7\12gb\253\219\195\225J\248l\242 \235\20yҔ\3\247\239\209,U\245\176\244\223\2 \231\12\231\169?\173\2133\128/\166\155^\203\20<=3\160\162\154\203lG%\19\229=\178\\\156\195QY\228\23\176[\243\152\137R\r\1555S\175\2460\204\u{F1BE}\239\240\142L\198\254\147\2\174zn\132?\31 \140\144p\21A<N|],\233s\137\nk\157{\"2v\226\248WW\193\2078P\245EuU\133p\232\253\226Z\164\175S\165\225(G\239\162\192\145*8\161\232o\24\182\147\166\238\160\243\162}\\\1503k^(\129OY|R\177\179\233\181bE\181\0s\131p\218\245\129\215Aۓ\8\236\167y߈T\146Q\144\216N#8(\251\0070\"\144\247@\24\11\249\135\2356Ɖ\196_|\254W\31\0283\161\2u\n\224\141\250\179\240)\8\129\8\190IV\154!\215F\254\223\12\252G z\232\3\22QOc[\7\31y\221\241\161\148\195\1\127\155\4T\177U?u\11\255/\167\145\5y\18\186-\230\207yZ)o\r\175\135C\246\150\1NZ\1812٥\20\t\128\169п\158\233\n\142\213&\159\248\21\134\143y\227r\\\156\25\21\31\140\19W\24?-\189\221Xz\162;@\170@G\158Ə\231&Jާ<\0145Ċ\152Wm.\162\255\130\129N\186h\128\168\29\242U\178o[J\247\240\143\132\226\186\25\199\5\28jx\181\159\0\153\142\159c.\231\17\221@\165\225x\31\4\234<ݘ\208\0\237ؚEN\"\169\241\252\138\250\\ݙ\237}x.֢\187Q\224\131\158\127\161R&ڡ\136$B\27($\23T:\158|\170\215(\204ʨ\194}I\1G\0071h\230\238|\152Hy\31\165\228\201k%+>\146\172I\244\168K\28umx\18\"\137Me\205\240qV\191\227\141y\150\22\165\144G\163f\175\136u\u{6DFEC}\17\157im\157\17?V\157`\196@\177^&\188\29\204\17,\231\12l\183\28%\210v\140v\6A\182\186Ŭ\215\16\198\218lo9\22\153\191H:$ĕ\164\242`:\250\131\180\14>w.\172\128\159Ӵ\217Z;\215\0\191\143\8\162\170!\23\240x\240dO\18\7>\250\144\142\136\253\246\141\217\n\8\201JP3\139\167^ZD\236:\178\222d\145f)\193\230ɛ\224\2098^\185\\y\231\157\254\"\146\191T\177\175\16S\228\207T!#\160\225\145+X\130\250ZTG5]d\19|\232\16\183UJ\188\203MM3\140\2486%G&\163\165\130\t\127\26\183\237Gm<\r\202\"\138\186L4\160\130\183+\17\188\130ٚl\127\138\243\169\26\182'\160\145`8\245>\177U?\11\131\245E\128/\243 \145ڊ\24\134F\249\2101e\182Y$\228\1529\191~G#\221\215#\4\135\176_\136\160\0143\21\210?C|\184߶wCi\222\239F\205W\168\2500t\0\1664\7\n\255\139K7\137B\4\137\203\12\250A\249\234j\160\230\175T\168\227y4 \20R\244KtQ\252a\243d\6A\149\251\177E,8\5J!eq>\148\2\153\217W\237\21\5\135E\186\189\249\2`\188G6;\139\145\244X\202\242\162\136p\135\204?\158.\193\172f\0308\255\222{\216\22\28\182\190p\168\174\8i\176\196\2503Ir\189\146\219\197C\184\211\247\3?\201\25\224M\222\251\166?'\23\245Y\171ҥ샟\t2}\5\23\182\23\231\31\254\230RFrl\2224\135)U\29\u{86D}l\216Hy\16\1355\245r\3\n\182\213n\204\243DF\183\18Z\136\154\245|'^7\127L\201#l\224\160\214T\t\254\131:ª\179\138j\8\254\227H\141Y\240%#\152\2\183\176C\3e\22? 6m#\201\2lL]^\226,\221LD]\230g\205\17\8\219\238\158,\248\167\168\156\143\174\230\1427DM$\228\155\203\"9Z\133\240$`\215\246&\177\223c\237\218\30\185\225\14\190\205\234J\251\207\192Iט\182\180<A\175\r\210T[lĶ\238\22\17a\230\207\26\4\29\169sЮ\190\142\165\2\222\12\150\235L\133G|©\141\\\168{\0014\227s\197\22\150\234\rժ\225\0023\175i:\135\211\241\247\246\180\210\251Q7\1446\16\157\245\251_\201\202n\16\21\238k\166\230\21\253\156\218\224\128\16\253k\1433\222\27\237.W_\234\241\u{9E}7ag\134/\181\19\6a;\192\165\251^bbT\234\182\11]\254\155Ŧ\1649)\234N\240z\201hW\200\210\225E\192\218b$.\197,AR\"I\174\158\150=\190\194i\197N\"\192~\186/\240\234\247k1]t\205H\16912\229\225\181ǹd\223~\0'\150\160\230 \251\207\1\21>\22\170+X\21{\141\222\127\27,~\128\238\152\231̬Ƕ\145'\30_j3S\153\143\212\24׃H\224\231\16\190f1\t\169\143Z\212*\161\176O\186cS\21\231&+\238\27RE\140\161\241g\25wK\214-7\145'\22\185u\253)\r\194\192\2078\205\233\246\2051\\\231\157!Z[G(\239\209_\253\175\149ɝ\155\22.\128V\181\209C@!\11\131\215\6\22\152;\156\234M\161\169P\208s\184\2452,\201\7 [\152;=\243\218\n\226T\1804\183\245\255j.\6\149\243\14\14\255b\7\219\11l*[\15\224\222(\194K%\242\201\16pG\141An݂\129\164\218f\231`@\233.\250\200M\193\131q\159tƎ\216\192\228\164ė}J5\180W\171>\252\136\16-\255@6\201\222\2H\241Unu\22\151\235jG\23\145\187^&O\143\207\221r\234@\r\1713\219\0200\7x4\154w\2401pْ\139S&%[\132!L\201\227\231k\r\244\193\201\199S`q\193ӹ\182\175\164\218\127\196\213F'#\218z^\248d(vH\180\131\tw?Wp猳\187\191\197XQ\233T\1\1589\195ds3\0272$\133\16^\186\252\140\241\127\21\248\151\18\203\206ԋz\2\6s\1740\17\222<}i\232Ë}r\181\220\204ވ\198\244 \200\231z\21\232\232\147+l\129\nT\215|\216\229\155T\26JECED\204YYi\1924sm\139\143\127eu\194\7]5\209D$[\182n\139\233\4;\27ѯ\178MB\6Q\t\30δ/\176\24\253\209g\158^V\250\211$\245n\136\181\194\2340X\228\25\224\138\253\170\255\23\227\244\245hլ\157\5\21\20\236\211ǒ\230\1847\252\18R\2204\143\184\18\158zcÏq\229\134\21[w_\207>\231\244+(>\4\232\190B\176\u{80}\184\205\196\22\5@\0231-j\246\203ob\tka\253\127av(\144\188\n\187\247xې\206*\206<\255\179;\140\235YJ\192~M\173\0124\134\212 {9,\127|!\223\225\7\159\211d\189\180\148\r9\17d,k\24\172\6\149\130\180MU-%`Z\17\229\254B\238\142*O`\5=S\192\144f\155\17\238lvI\195b\210c\na6\25\161ț\197lf\17 \28\161\131:\190\23\129q\247\138\239\199p\224|,\209S[G\15\231\248D\6*\140\199))\244q\204f\229\231\0274Ŕ\128\1451(;\179Xw^\131&-\252\29\31\230k\201\242\237ꂏ\"\1906\188wB|\31\134\24\161\161\128\174\194*\207{\28\240\182_\247цZ\242W\195\205Q\170\185\1840_o'\231\170\2549ǒm\190\255\253N\27\247PD`j\254=\251\26\221\r\151Q\171\27%C\169\158\127\189\243\19qP\5\178\137\3\230r\15\196[\228\191\193\187h7P\159-\203\19|(\139\175r|n;,g\247\193\216\226\16:\1391\188\252.->G\193\145\178\223\203\252\17$\135\20F\129^\237\251(\23\2n\7߃ɏ\208\233\229;\157*\168\199N\1740\135Zc遧tP\148_\142\29A\177\202\218C\234\18Я\173\27v\238o\180˖\226\200\15\201\193\23\u{7FB}`[\181\3;\170n\23\227\138\216\\W\248\26^a\152\27\208\236\14\249\220\22\231wh5\243gU\1625\219\244\140}\232\31\195|\165\15\151\185S\21y\230\146\216\u{5FC}\134\171\5\18\193\1857tNi\153P\223\193\3\189\235\29\231\146\29:ez \180D]\227\175$֜=?\148j\150Z\179\133\150\214\22\155\155\nF%\232\232\0049\149\19T\u{5F6};\nN\16G\134\2004\134\236\168\247թZB\18k\152@\141\21\206O\29\167\170\140\191:h0灐\156ǧT\233e\174\176\206\248\24S\8\184\20\7\199\23\129*\237l\177\162\21\132\136IpH\153\243\n\23\1471<\19\0311\252fA\172\0\219F\18\0038\149\1921Kךܻ\185\8\235\188,z\175\"\u{9F}Ȃ\196\201\231乛\152@fڄE'\5\137\199\253,\18\215_$v\173\236\250,;\174T\201A\212\223\2340\187F\6\237_\235\168\12\230\2383\173Q\203Gσ/\241p\212M\163\130W\23\155\181\179\146W\142\133\221;\155۴\179\175z\148\26\206\249\137\171\2382/\227\131%֩\154c\237\169\161\141Nl\205\245\249l\228\135\30\231\134\231\11\177\207!\18\12\218*t\198\236x\253b'2~\137o%\4\144\168\176]\192\201;\233\197\223\1975\223\220\246n\232\16\237\229nl\165\176\159h\147\1589B\224\168e\7\25\14ʼ/\155G\166ߓ\242.\249j\146L\214oH\245_\140x\15j\209\252\127_7\191\133\242\16\"\18T9f\132\137\7\147\209K\28\146:\7}\150\225\200j\4\139oӌ\137u<\129\232\0\234Xt\128l\209\12Ҵ\16\241\16\129}\238\254\160\214\28\179\t\187\1696\22t\182E\221̌D\193%\135_\137\185w~\215\5\181`\25\222\29h(\176\0228z\193`\6\190\187u\28Ա\128q]{Q\196\215h\150Qm\196C\235^?\237\188\153\237X\130\1639\208\200\18\160\162\22\233\2220\252\247\2\22H\231\202\222\210\224X\233\4XX\2033\246\183\217\222\253Bi\r\152w\20\227\190A_\188\145ʖ\182\134\189\150\167\255\160X\173\152\174\197+Y\170;=~\175\242\2266\253E\176#i\129\183\176\246\135O\1965`\174_\166F\161ϕ\164\211\8sUD\0\2206\134\176\2246̟\255\193\19d\240\4Rׅ\239\209*'\137!\185\0065g\138,\tYuR\201q\228\212^\18\8,'\184\242\141\209[\175\r\31\195pp\tD{\247\217\22z}r(!\183\197.\138-\171n\191\144f\190p<@]\194\235Qu\253\167H\151\20\165\5b\202\226;ɔ\248\162:\166s\219\245\224p]<\238ܖ\215M\2136}NM\153\231\nX\211^\195m\143!f\\\192\223\200\17\172Y.\24\144*D\177]2\3\156]7;a+\155t\127\173Ӝ\134T\7;9Z>\193\15]\0196\145(\216\247O{\254\190\174\139T\1\137,\13644\192\243\154\237\146!\22ҭ\153\1773\239\145\233\187\5fq\184Gz\14(\213\253n@\159&\12e\133c\162\196\31\5(\11\227?̩\177\1*3\2540(uъ\255\26\173\171\29\247\163\137L\212\231\198f\224J\16\185b{\20\8\19\31\246\0\\\166qW\180\221\1933\226\4\149\21\228[\248қAt\\\14&e\198!I\r\177\178\187\15\3\160\248\128CR\161\252<8\134\237\187\7\228#\149\"\25|\143{\165\0(Ec\162\188u\\\139\2427\175\135\1752\131\1378\255d\0307_\152\177\235r\19\22\1468\160ocDnb\0116\159^\24\1z\tR\187,)TG\127\11K\2315\187x?\225\154\17\151N\251\4\23\\\1481\251N\191\251ֲ\243\24+\224z\176\169n\0 k\131\136?\179{6\2163\163;_?iP\133\183\220TI\19E\128Y\151ϵ'ļ\131f\159q\138\236E\204x\158U\199L\195j\252xJI.\185\158f[\155\211D@\213\11\225\232\25\242\155Q \243\185\30b\133\170ڸ\19\147C\230@\139P-H\133j\174\246x\160bb\143\155w[\132\186\31F\129\242ڢ\174i\178B2W\131\178O\129\159KS\207\204\1\244\157\162?o\1835\24\192(52\1596\161\231\229\246\171m\131@\198Z?\224\1z\162\152*@%Z\14\172QY\170\16\22\26\144\238\238ꮟ\165g\189\16\236*\149S~\146\1810o\n\190\2468r\16:\247H\154\1\207\220\203\244ö\137\191\19\138\141_\216Zꔲ\253n\232\235,\190)<\245\135\27\151\226\217u\130\176\236Nm\tas\12\236[=\238ȭe\155\14\145\158\2089Sl;\175@m՛e\245;\129/\30(\22\6x\1297ll~?\143y\251\2011R\1483\216\234\24d^\148KP\233 F\245鹜\28[\143R\191`\137\t\0160xed\3\208r\213R\23\197G>5Zh\210t\245\201Jn\135\211\222\t1_\177\183\176\11\189\15R]Xec\rC\197\214l\229\15\1275!S\145\184\249N\237\31\206p\236K\1589F\142\165\212YB؏f\210/s\144.\239\1\"\7:~\t\29\238\222hA\167\138\245:\0U\0214\18\212fb\243\178\26\19\229}9n&\164\234g ؤy\231\185c\217.\152\172Q\133\4&\228\255T/\209L\137E0\6\8/Qi}\196v\148\15\170\214+C]Um\130\140\134$Pɨ\172i=\196_\21\131\169\177ߔU}\2108\0\26õ\190\193-rK\\\168\254\186: %]\147N+~\220J\1732\208&e\1\184\189\137\182%o^;\166\172\234I\169\t\2ŉ3%c-PL\157C\168\241Av\28\201(\178\137\137Xb\163\215\21Ad\183/\179\206g_w\181T\169H\234b\229F89\202k\231\185\242\186\246T\172P\173\134\4\185\168\251\240\182\\wb\28\146f\140j;\163r\164\156\243\234\0\179ۮ\11\"?\2300x\216S\156\197\214KRP\21\131 \"\161b\228\153\r\17\186\132\177\175\\J\2307&\22t/\171\144\206\242\216'\"\222\201\6\156\24QNύ\209,7\246\154y\22\235\220w\2129ͫ\186\140Qn\182ca\193\189A5\3_n\135<\134\207\197ك0h\153\197M\1\160\11\26\146\224i\247\247\221\24\152J\22\179Z)\247\1\181\31\226ɭ\18ܜ\0230*\144L\148\178\177z\3\1277\172H\248\15\158z\133\2Dt\221\127@\21\25\6)\179A\234:\193ԙ0\137\230\158ӤiK\16\155L\165\224.@\231r\152#\19\242\1513\221\229E\243\160\176Cr\171\236\212f\162[ҽ\222D\216\231\200\t}\157\15\252\140\218H\196\221\26\245\177\n\223F\148\199*\187\182=s\170\215\209/\193\140&h4ސ|\151\243P\145lI\162\193\00133\208\4\237\24\134\197Y\14`e\160\146S\1:\241\236s\1862\157\238o\193\160\167s\140$\25*\131\186\254\147\2091\187 \143\18\135\1ls\215\216;\223\242\18\6O3髣˭\5\238\179Jh>\217\229,\2164\187\204]\30\16\2\227\147\27\192f\134\128\166\138\225\159\15j\182/\242\r\242\1701\141\14\156\24\190\180t\235\234Q\221\14PWj\181\218g\191\163\25\145\193m\216\0U\139\194\206\r\0122$\227\162۪hyU\250\150\2033\218\254\139f\244uY\129\166~4^\210/\248\148\208A\135ֈ\221\12\179\11h\180\217\18\221,\"\18\182҄!\247Z\12#\1568/\171\212tv\1837$\165)W\161\250ʍ\\BY.1\u{63B78} \179ͩ\138\13068\11\225S\249i_\189Lu\165@\0236\224\27K\152\142\1274\198\210\25q\162\253B\2009\183\167\16`\24\12\255\149B\132\160\182\166@\6ؗa\157\2472\140$\194\1\136鐅\171o\21\235\247|iͶ9d\206\245X\7\171\15\15\180p-\21vy\133t0vęZp\200\3==\206\252\162\133Zc\248Ƹ)y\1\152\2\214A\12G\159\251\7V\207\207\192\242d\193+nm^-\130\160\153\27\206\127eM\178s\251g\135\130᳥\175L`wc\2445\26;\254\180U膺\236<\152i\218\252U\146\219\15\"\163\252J\7%\227\143Ũ\151\173\27f\26\2099(\201l\138|\128\226\202˸\210{\215d\141{\160g\16\31x\180!.\146Y\210p\251:V_\248\226\164p\2073#\250:`'t=\144\157\219\210\226N\174\206\24S\255!\31\254.\169\16\189\220\225\166B\187\r\160<ع\189\22\128#\186\150\15N\173\15\23\227{\21\140+\179\194D)\24\27\2293 \251\128\147\155\28^@ϯk\\b_\25\135FS\151\138ϩj\169X+\202\238)\1423\150Ve.\142\193\0076\182\248\148\130\229nmOЩ\152\133\197\210ՠ'\129\244\218)\134`\182aR\164\149\197ڈ\128|Z\225\165l\132\134\185\198\244|\131\226\234u\244n\238m\14Z\128:\224\25\r\222\25\188]ꉅɾ|\11\140a\129\220p\227\138\230\180{<S{\2322zX\3\\\236i8\25\1503\217!\18\199\194W\\M\245\136\192\1437$\14\195t?\160 3)\0\151\166%\16\173\16\154\182\178\133\201\u{5FD}\179,ŖP\17\128&>D\179\u{5F9}C4ǃ\186\229(\197\227{\134\251\209>\19\175\186\204b3\211P;n\134e\29\160'\227U\u{E361}\231\175Sv\216\193\247\155O\170E\174\17bQ2\163\199\210\254\237Č\239\28\232d\207\0238\179\\\181\\\209\216\127\185\186\158[KkY\23\171\175\229\164,n[ޛ>\234\135E\0265R\20K\223\232c6\27\195\255NR\151<]\234\15a\248I$\14[\204\253\1666ˁ\130\157 \160\3\176\165G׆Z\248\2431i\n\138ܮ\242F-A;\219\219'P\149\251\14\137r\205!<\21$\130c\132X\130Qf\214\\\168\20\22\194\17\236XѠ\231\222A:\202}\251\20\168\203E\175\27\28]\11%U\165\200\239\224\242\235\137),\223\192\n\246Ӂ\242W\12\206\206Yuf\225\214\222n\15\4\228I\180\224u\144\19\22\193\255\174\1889\222?'\242\168\\5VKr\u{F0D0}\201\0122.[P\213)$\26 8|6>/<\27\220M3\190k\137\251\27\7̖&\137=\246Z+3[ \23<\193\164\229F\134\18P\149\189\208\255'g\2216\12\176&\134\178\246p\154\180\234݉\189\149\244\200nSC\150pfC.L֫u\249\19/\234\194\249\2\173\252\187\161ܡ (\245\223v\234\234ɤ\127\26\150\191\207Qz\144H7\230T}\248\26A$\28\1795\151|h\136\252\246\6\192f\188\208N2Jܩ\8\191x\243\2106H-\239g\250\249խ&\7V\246\25,\12$\234k\218\3\n`b{\166\230S\1354+\243w\138)\197\11Dn\200\203\20\227=,%<\\\210&\133\210#&\196f\180\24wŌ\159YI\245I\222H\164J\132.[\0\224\222\204\2\199!\228Oxֽ\178\212\200\15o_\139\145pN\169\155\205\197\255\222\14\173\"\138\193B͟T\22\nM\136\2363\7-Ԥ\129Ҵ=E\127_N\187\0N\220B\216#nG\166\135\18jK\159\239-\22\238>\179\186\242\246\157[ިB\2425\157ݧΗ\11\165\225\250v#p+\1703\137\229\"\170\245\223\5u:\6\181\tt\148\151\199$\178t\153\"\240\3a\222OSڰ\135M\238k\165\165q\157)\187sB+\210\226^\128$\226b\205f\20\139c\233b`\198%`LjEX\236/\204\243dbWd;\208^\190!\203{$\220ʙs\16\212T\23(|\219b\161E\8k*\131G\138d\183q\159Z#\227X\138\241\173.J\199\235eG\145Y\22\184)fK\168\20\tƃ\167\0174\219\246\241\155\230!\158\214P\155r\201\226\183\127\19\171 ]\157|\160\0O\15Q\220\219{\166\176\246\127W\233\153\0034c@\191\189\14\149A\150\154\n\232\233\249\185J\184T \192\12\184\143W\12\157\19d\\\241k\155\157l\n\2\18kC\171\6\130\177i\168\201&.5\182\129Wlp%NY\u{9B}\138>\25\191\0\225P\149\225\237\222\14\129\183\22\\\18T\174ă\160\215~Ӊ\229N\195~\251\238\214)N\160צ\\!\183ND\243\224Q\132(\194-\r\24\22Օ\8\249\30\178y\8\20ΪU'\182L͏\174\16\210\239'K\159\1\129\128\131\214K\174\172z\194q#&\237\u{ED14D}/\233\163r\197\127\172\14d\253\236\28\163\142\138u\161B\223\193\161\t\188%\130dg\162l\152ԉ\211\31\245#\137\246\1980<\20\238l\153\26A\163-\15o\179\170\n\1768<H伝\247A:\133\179V\131\227\203\234c؇Y\218y\218\u{9F}~u\154\234\rʝ\175\148\221\255\5=\240\155:\146J䨌\234\25C\1386\197\241b\t\172\28\211-\139\136\168O\181\255tx\154\176\22Ⱥ\22627H^v\31r\153͇M2\199W\141\166\22\27\186)\16\249\19\6UBd\243m\166\251\198\254\142\8\240>z-\0188Py\17\16ν̾\158.!Y\29Y\138\5\184Q6\210}\0\163\191\205\234G \147^\151\u{7BF}\1278\179\2486\182\\\150\185R\170U\230\29q\2330aG\244\6\176\18'\183\147\24\189\146-\192*.\172¶q&:\219`\248e\202!\236\238=q0\31ܴ\215\240\193(,\2\28\156\28\252\132AU\251pk?8\"\27\180<r&\138\154p\172\155\191\18\240\2081|c@\181\166ujB\1657\151\221\202\229O\220Ģ@u\23\144#K\162\27\228\211\20_\137\211&+H\250\153\128\176\134B\197϶<\246\177\220ђ\26\2313\186H\164\160=R6é\7\150P\12\28\128B\2\212U\218sP\131\rFk\r\141\199\199\204\2096\147\237\170\226\25\31\224VJV,\205{cM\198\1<\134\153\246\rv*ʹe#5f\1546A\25\160\252L\28\230\146/\149\227;\30\246\128\252\154\206\"#M\203MM\195ٲ\245\204縩\129S\254\7ݨ\178\2076\127Y*\217l\192\\z\188\136;\253q\t\14\225]t\162\139v\2437\171\14\219;\161\155\130C:\127\223\207M\252&\187\133kD'\26\202\193Y:S\208\242\247\1873\0\6\156\246<λ[A\247 #\220vg\155qϩB\143`{\172*8\204\230\236ܝu&!\156m\29>(\2297\25\29J\152\177\169\239I\150\156z\2427JW\215\17.\133\239M\241\193UX\135\197\15_\157J\246\136\1597\229\252\2\24\224ҧU\172AR\246\151\150\237\211x;S&\177\1329\171\127\155\164\187\203\195\237\181\16\183m1\136^\164\24.{\232?\145B\235\2484\8^\158\248\186\160Y\23M\189\233\255\ng\0176^\26\11\245\2009\15\3ݹ\128H \15i\25A\133\161\238'\140{\0233\163\14\127\193\128'\136F\187e\23U\227\31[d~7\20S\187Uh$DPRÖ\134t\1408\167\216|{\238d5\174\r\226'Ń\2130o3Y+\154ћ|7\18\1490%[\165@=D\141\224\20-n\209{\163t_\188\168\176\130\159\158?\166\30\244W\219L\247\251-\139\222q\190\186\156\195\200\227L=\253\252\130\235%\178\3\31ͼY8ʭ\27\230U\151\189\18\11uo`\250@\135\234c\196\242\155\161\21\23譐^g\162\21U\128\181\193\220\199U\213-O>\199Օ\195<\190m\215\1\204+M\17I\254\149=\"\153\244z`\182\156\128\129\204\255\199\210\27\196l!#\212b@\31I\197\29\169\162\153h\250S\197\26\170\t\232\250}`Y\tb\25\235\23\155)\184\249\31\158\252\\\138\15\245u\132\202\246$\133\240;\22]\16>ݍk\145맬\158\177ASZ\30qB\168\237\162L\0056#\184⸺\163L\1584~\174\190\193\2097\236ջv\15\2157\228\238\" \239쁔#\157\216\204J\23\228\201O\1=\255\141\187_\r(a\181\242G'\130\182\215b\164%%f\180\7\140\2142\197\28\183ךy\193\152\24N\7\21V\192O\159\195\1\250\144\162\170\19\139\248\202h\244\12\208\254\176\4y\n\156\133\11\232\170_\174\0311\186Y\203Mxe\177\195r\214Yh\180\r\143$)#8\1715\148I\162\199\255\219\210BEys\146X\199\234-\160\188\227\187\204L:\231%\140\158ܹ\12\183\175ڧ\231\244\129-!\210\228\221\206\192\254H\211)\201+\208&\183\205\255\248'\240\19Vij.)tQ\252\143\187\255jL\199\240\3\27s\177f:\28(\219!\173\"\179U\7\139&-\211gU\171\203\17A\222\221 1\6\28l\154g:\217\31\249M\tV\245\173\"\213&2U\6\0122\138\127\129\231K\152#\208\246ZF\250\149\130y\141p\233\24\181M\8\183L\139*\17(\173\25\218\194\29\20\16e\201\3Y\24\227\4\27\154\226\187\19\223\8ڂ\154\6\15\160iQ\251c\12\161\182\162\195\192a.C:\165\212\245*\216z\150\245\130k\187\19j\246Xb\16.\136\156\249t\191\1936\\|g{\1962\128\197)\158N\183\196\197X\1594\240\152\185\16\197\17\151ٺ\235\221\229\129\244n\188\131\242d\142X\200\199\226\207\245\178ӓ\152\210\"7cqp\153:\151\127>\26A$\186\155ҵ\232\225\0217 \231\222{\240DH,\t\8\190\232\178\5\29\15\171\31M\165\208H\233]\150\244-Oa\162bJ\1860\159k\240\173npf\19g\148\149\244\27\241w\179\194\u{6A35A}/v\31\159\227\234\250.\152\162Ƽ\138(~\21\254j\187\177\131D9\229\167ր\208LK\3/t<\178\147E\12i\252B\r\141\240\160+\141&\219+\133\240\14\0141\211y&\146&W\n\138\t\166\18\162\254\31\180\196V\132:\127\188rӀ\229z\129\246T\161\189ʝ\231F\203\211\\z\154\186iʸ6\"\209\14)\153\246\196j~\253\175I\215!\154j\205%sp\166\31z\185V\206x \135\n\n.\152\228\162+\249+\23\233\3\12\4\138\192\240\251\252\188R\17\254WCj\190\190\130^y\19]@\178\250ec\255\133\242u}\17877\155f\24\18\20(\163\17nf\178ɾ\150\218P&R\157\17\226\133\4\164!\198\2125g\173\163mt\248-N\191\22L_:ݹ\":\233d\212\244\231Bŭh\228=Ԝ\153\177\185\164Z\241\ti;\185\140\139\141zB\26+\143\226\255\213.\242x\183\18\241`KU\210\14a\192\167\251H\141r^\182I\180\4_\198A-\128X\20\208!ԭ\150?\172\253\188\254\197\28B]\231Y\219\19\180yc@\n\5.ç\n\218՟y\135\140\4\198/\171Ņ\216\28\2349'\202ls\16\147@\138K\18\248\181P\1t\167\u{109596}\148\248\170\253\151\132\12\141+5Qq\15\205VѲ\172\29\3\138\8#\150\138\205\0\14\202\197\11yR\161\175D3\143\19s\185\244\170\178\21;\18\22\149;\30B(\141\193\148\241%\5\143Q7\254\135H\8\171\199(!\22F\11\5\193N\127\215b\153\3D\143\16;\228\238\132_cC\138\138\147\4\r\227\161\254js\243\21\132=̵\201)\226\249tV\1\\h\183\180\31<d\163\132\150\198\25\135/\191\238\225m]\150\171\192\210\238\237\204|${\\f)1mu\14\2537&4\t\128%e\193\210:zv\250r9\145\218\\\237v\224f|w\186\139\217I\11W\210T\176\160\248F\25N\160&\191\177?\130\156\171\178P\229\149g[\245\14\161i\163%\153\177;\158\18d\7\229d\2d\184-\245>\139\16n\4\31\179\164\227p\30s\4\216ՠ\23\27\147]hr\23\31\209ҫYl\136\7\168\162G\197E\211\211(\175\1,ǅp\153\214O\183h\196⹗\t\153\239\24+=\232#\t~\254\151Ka\r\14\213R\1847\168~s\130>6\250\194?*\160\3\31\129#E\232z\20\212\243\166\6g\217U\5\157&[C\224\191\243\171\2Q\167\236\t\1\149u\22\166\242\253.\185\198Z\144\172D~\207\"\194z,^W\168\242%\209\30\208\222\237\217\251];\249\2376\146\182\147X\138\162\244\246\136E\239%?Zۈϧ\231\21\163\14N\194\254\252\202\204yE\190\5\12\135\246\254\6\250\31Sl\20\183f\186\180L\227\184B\252G\196\22v\226S\237\217kʫ%\201\8kg\4\131\250\3=\174\232\163\234\15^HQ\209\23\155\255\155O\251,J\228p\25\236\25\31\180?`RMh8/Nb\1773\3\169|\252yȀh\169\146u\"\240(\145\u{EC38}\231\139\236\156Wp\16\3\23\156\186\164\19\174\183\170\179[;\17\18\192\r\15\199d\7\179\14JT\180\220\231ip\180\142\128L\151r\156\183\29\229Z\144蜰\6\243\11+\151\170&\241ϧi\206^\128\207a\1951\233\2r\240T\144\190ұ\"\1741{\4\241\5\187\154\159\211\5j\200\232k\187\172{IoDtYf:1\146\192\185\160\166m\16y\144\131 ;l\185bR`\219'ɷ$\5\28A\178X\8\184E\130\210\208<5\15e\194\219J\146\216(\160o\223\21I:\149\6\241\131\2325\160\255\153\227y!\154\159\206\29\174B\147Y\128r\238\193\11M [\155\187\159ѝ\200\212\197\7\0304\22\134\236|t\251\252.:܃}Ϟ\157\2Q\141*\254\143\145n\232\160\202e\131\r\160kƥ\225\31\178\204\231[\189Ј\14\130\150Jj\181ڢ~\174\25\2Wރ\20_\160\234ϫf\240f\158%-N\209\3\227\244\137c\160b\196{D\4\159\"\179\201\232IKH \251\244\254\224\254\173\149L1UK\143\155\242\8\249\4:\227\226\11\191\195z\151Z\29<\136\0\238\158\6E\244\1622\147\137\222~j\207\24?ݴޖ'\161,6^\128\168\181\149\254ă\234֢\5T^R\228\0292\244\1.\188=u\132\193\248\133äq\28\157\157S\163\168\174\211\"ߧ=\220T\230\1950U\201\237L\150\206%\6Os\8\240\211u@\239\6\1432\127\t\212\203lJɺ\4\205\245j+Wd\20u\132X\19\23\148\243\155\141RS\21x\185(\n\219$\16|^\210mr\247\171Q\15^\174#'y\204#\153\181\220\209\225՚\1594͂\132\138:P'^Y\138\183\252\234QB1\217\226\236-\247\144E\\\21v|8]\0\17s\185\\\141Fk\30\199\2042\0008\236\219x\216\213X\215\235\1845O\177W]z\143-\244\\ܮ\195\237\227\r\7B\"\7\246Hh\235\130\222\0308\138h\15\172\"\132\177,\198\199\215\21\128W\129\161d;`\u{86}\151\150&\212\199_\139*\241iYo\208p\220\230l\225\253\163\145\29\204\25G\138\153\243\134\196\26Y\6\0B\178밲r1\tZ\184\\\144z\167g\241vO\194\2414:\181}3g\249)\\\236L\26\165\29\24\159*\176\206<\r\137\191\181?Ͳ\7\193!\"'\130T\130M&b\16m\24\12\182}\253\222nu^\127\153\2363\194\245\225Z\251\166\12\2\250?.x\243>\15\2473\191 l6\205`!ܺ\136\208vOgc|\141\155\213\210/\1675\29GK\192\223\15\2414\203B'G\135@_\242\169\129[\231\"g\155\182\147\205\231\160dPkĄ\186ڽ\210\250\152\127\r\131\177j\230&u\243q\207\27 '\16:0\239ͤuR\173(F\174\134A\150\225\176\214F\232\183\228Qz\2\254\"\147\181Q\134\154V\253\190\187B1\202\4\199\2\2460L\204\12cw\222\6\244\236\167/}\245|x\212\237\25\208,\240\248\180\155\164\244k\21\133\198I\188Θ\210F\195.\144\5\160\14\174fəD9o\166zw\211\16<H\228z\14\28(\131\197z\162+o]\137\206G5\157\199ѹe\243\6沍\173\rx\26\254\171\143cu\6\20tI\177\0T\149\253\1\176C\183\189W\158:\31\1895\129\176`C\2\130\252\129\229\12\168\173\146_Eڼ\16\180\160\218d\165|b߽ꦩe\225\192m\215\31\144\"\207\250\192\237\180\178\17#\190\252\29ܑ\189\230\219h\241\127'\203\3[\128hX\250l\174px\241\2x\237u>\159Y!\0\22\243i\0089\147\u{F6F3}\141~(K\154\1952\165\244\15\141\128\160{\168\216x\150MK\6\20\248G\24)\2d\229\161_\179\147_8ߋM\22S&\5?A\229\147\1*\160P\181\215OH\196\17[)\251\2403\176\31JY\247\254\215\2113'\nh\139֞\2255\2250\194\239\232ɐ\227~y\212\27\22\129\185\174F\146%VCVU\161\203%:FsV\229\204c\1409i\28\21v\231\219\228D\152ۅ\143\4aZ\14B\2\139\229Z2\159\234ARŦY\215\229\213L\1426\255\251\204\194Sێ\142ڪp\242\209ϙ\171\14:\189A?\190!>\180\2\226Mwv\226\0\16\135\219\217G\23\211\208doH\25385\150\189\134\1764\n#\255\232|)\253Q>\183\4E\230\226 >\131\225߆\140\130\27\133\146\204\3\178\186蟿ĺrki}\145:0\211\12\132L\198\u{2E78}\233fA\235\196<ZDr\127,\166\242\151\3j\159<\215\23\148\225\139d\191r\219p\155=\155'.\161S\156\199d\2207\176V\185$\n4\136\175\141I\206\31\28\162,\151\r\199dm\191\155[\156f\146\193\234~\242\154Ul\216|}P`\235(dam\188?x\228Î\195\214Gt#\2279\145y`d\"\"\157VNv\168\223c}\20;\180\145\235c\174\230\160\7\0214\150\179\27>\185\153f\234\131sg\19\157Ի\182?9Z\140\243˾\25zr\26.KM\25\190\1393D\162\246;\1\26a\17\216\\E\231\15\24\142\191\254\227\251K3\181\175\196\2526Y\152K\127\214ay\162\153\187\n\164\243\176x\129\163\250vO)q\222\205D\2385\213N·d/e\196\235h\181;//\201\8b\164\223\224S\182c\162\192\169C\225\8#\0\143\227{l\183\144|k\2\249V\27>\185f\200+\132\245\7\24\16W9\190Y\16ڹ\245\216]l&\226\0141\5\134?=\22\173]\n\177\22ӵM\234\219#\215JC\193f\180\245r\140\185\14\129\29+\178}5\n\3\213\202\236\210Xf\130Ņo2\174\250 \12\r9Z_\245\22iu\192\237\201\221\200\252\159<\249O\157{\26E\145d+nGi\142S{8\214\195!G\2504\25WԓW\24M\181\166`k{o.+m\148\160!e\192\137\165\28a\158\1\167\187\172\196\211\8\233\0173\14}\155\r\191\242\210ԃ\u{F686C}\212-\159̖ޟ\244x\137\180\251i\161\254\167=oq\152Q\221j\247\20\193T\244\142\175\235\19`\2\217\24\rO(l\207\247\163\29}\6\237z\174\4\235)\130\160\1961\27f'\205\248\143P\221\255\166wyu\1\228Ɲ|s\22)\8\168n\197U3\27\190\198\193\221\5y0[\211^\184\215n\11\209OM\149H\196\196#\205\2548\238\238\141@\26W0\12䝹\128\244L'\206\28\23s`\202\127\231\143f\145u\n8\171M\131T<%C\225,d1\234\131.TH.|t\238\155b\22\15\158\227\198\22\198X\12\5\236\214M\184I\u{F789}\204b\199v\186Uڰ\166\22W&\24\2093\198\216\3\182\29\184\226g\26v\252\217\223CҠ\137\137\23\215\193\3\203ύC\3\17\141s\1481ovS#\152\5X\131\21\247\156\2Z\152\20\176i\219C\128\4dh%Y\191?rjX\249\146Chu\162?\30w\187\209\23\1\212\250B\157\133Cч\185y\18\27\166\157\194}\3\209\204\19`\144\145\247\248\184\240\0229\203jF\168\19\1411\198?\0;&:\249s\1920\230)\15\229\254|6\1438\200Wd\127\"\127ˤ\130\5\166͂w\156ܚ\133T\249hȭ\149\"\201.\16F{\189\u{F3CD}\195\232C[X/˵\170\225\159\22\179\221\223\27\152\199\r\r\23\138\145ʽp|\141\156旯\4\142\232\179g\30\170i\233\181\127e/\132\235\173s\r\193\131B.@@z\219\24\15=T\r^\8\225\15NbI\127\130[}\241\249\247\196ƹ\176\r\193\255M\203\217H\135\167\203D\234z\229\25\4\20\14\0\156 R\206\216\251\140\223ޥ\158\141B\206`\139\22\1n\t\218\220\14E֕\2505\0241'\25\24\133\137a\230\u{89}eey\194Ʉ\204\246+\177\190\14\223ԉ\226\24\247\249\5\183\252K\248\193C\128\165\22\244\150\223f\234%\152\245({\167ӗ7\183\182\12\213`\r\251\1874\138\156\188AX<\133\140\163\212{\188|_9\223\17\141\156\229\2190>\191\5\234\14\0278\240Xȶ\28ܢ\239H\219\r\129\155X\194\27UNd@\12t:\143\3\242\243\234y\r9\231dF\227Z8m[\3\11\130\175\130!$U\180Z\146\194S\"*M\\\158݀\139\251\0ƿ\236£B͍A\214\11ߨ\1590\206\12B)*]Rn\156\204\198DO\227D5\147\246o \148\29laX\245P7\252H}0\7\21P\4\127H#υ\tk\241HO\200P\14?oMщ\151#5\144\220Q\227\155\218_\2246(\181*\168\17\208>lǩ\r\214i\248\144ܐ?\176\8\n\128\21I\212N~1@\141\\\128\179\157y\182\210$\181e\209\247\223\0\200e\134\19\128\159\230\141\248\155NsQ`\26k\6\227\234\7\235\175b\152\1\251\218\30\183\250\2469\189\6U\165\187`\202)\166\138\146\163,/\179\1916\155P.\168\246\160\164E\242\245\1469\179\7\12\148\183\146Ջ>o̟\166\197E\25Κd\190\152Lq\190\217\241\11\220\16E\6\222E\"\246\147\236{k&3n\2238\162t\222\8I\244h&\200S\162\155ܚ\149Eo|A\0041JJ\134\186\16sa1\240M\187\27\30\185\5\193\244\227\\\29뀢\158\177A2\213\218\246\201;\12\179\2\166i\171\232L[v䗉B\245\202ބ\130\8^)\237G5\171\200ɿ\247hO\167\128\239\27\174\129}UdDWbM\1F3\233L=˚\234\235\241\30\253&\27\213\23l\185\210\228a2\161l\239śK%\157\180\193x\242/\192\252\21\152ؗxȨ Ll\147\154EU@\132S\"4\208{R\248Rq\177\147Su\186QiݞdA\139O\196\19\177\177\182\139\220\226\2268\184\184>\27%h\159\191\168\30ڎ\230?\164\179\151\132tkX\161\255E\175IoQ\27\194\0eٛ\166\249d|\0202\245xX\222\220\15V\158|\2529\169\127\161\247\162\4\171.\1\226\20\189M\181$\155wn\170F\163\238\210X\4<\141$\183\131C2\254\159\0\253\171g\165r9B\186\220Ma!N\230'}\30\149Z\26\6$\29\164\228\194j\26\u{5F5}\223Gn\218\226\20\152e\251\249\201^\186K\6\147\184\19`\202O\235x\21\205_\237\171~\230\173\203X\192m\251E\158\24\234\204#\208sy\140r?d\203\241SsmǍ\217\242\18P\2298eˏ\20\128\180\146$̵d\23eƭ\0166)x\243\234J\140\nK\203\228\213<\197|ba\249~\171\190\163\216\15r\203\216v \201\195{H\168]\200C\133\158\185>N\243\155\1812\217\29o܊G\247\154Vȣݬ<\196qOL\0169\0268\151\24x;\29\221k\153\129J\191a\31\250O\157AV\8\240\12\145k\210\216\8\25\5\1384? \166,\15\200#u\218u\166xR\30\154\n\136\137\189\206r\138\185\144\196\12Q\147@K8i>\1544i\193\16\219\239r{\152\29\211)O\1753?\216\n\238.\30\220\212\233\3\12txy\142xP h5K\153\22\171\227\149\12l*\172@p\176\149\0\28\131\135\16=\187\155\183\"\4q\27\18Z\28ﲪ\129|\209,\rX\242\196E\u{8A}\20']\219\242'2\133\227W\139\195Y.\155p5\31v\19A\249\26{t\26\182\235T\250\15) .\148\1435;\1F\212\199j\182\230\223沫\3r\233d\22\31'PP\251\245\150CL\153\182=\143\221\2326\199\23\201\208Z@ó\213֯\19\147\190\210'\145\132v@X\154]\"\192\\\167r\r [\217j[\201a\238)\\\248\229\186\2139\223\25\237]\1816:\23)[\228\5_阫\1\17\186\7(\223<\21\167\205\215X\166X1\176\147ѳ\25\148\241\234Hs\4\132\129\128i\127R\155\190\1557\246]\25\220\252\130\224\158ۤ\206J\161\151\177\162\7E3\165o`\239\5\134\178`\230\236\127E\142\225\250L\159u\16\190\143\196\20p\226P\30\138\147\150\29\209\223\249\194\11A\158\193u\132=\174t\216JOk\7&\1570&_ީ\140\198צ\233\144\218A\24\174\18r\164k\157\17\17\231\131ޠR\197l>\23~m=\26W\157\157\12ʹ\222Uc\15\246\215+\192W\179yl3?\r Pƹ\253-~I\249\0\131>\245\129\145HpT\18\24,\136\239\164\22\163\238\18\12\195еl\159t\236\170H\153+\138\140X\221\u{89}m\234\1750\191s\221iɰ&4\180]\139\196\227\165\210\209\19\0\159\173\248iM\3\154(\6\130\25\0004\224#be@z\129u\27\3\135.\159?}'*i3\235\234I\133<\t\251\211\212 \213u\166E\188\141\197rv\1559Ñ\190\184\252\164w\209t\166FNk\135\178\193\5\210r֤\200Z\31]i\30\127\150\127\186\146\167\144`\178\159\n\185#\202SX*\174M$S\208[ËW\144\202\192\252\2296`\219\0195\148\235\173_\137\250$\158{\195\21rv\140\149*\161\17#\134\136\146\202\14\157\17\11\222 \12/r\136\23[\232\238\12^1E\176 \195_\22/\230\6\243\246\1505t\1974^>\215ƛg`\1322C\198\0w\194ݭ\140삞\221l\134\1841\220\15\204\249o\1556ߺA\169\7\177 7f\230\t\252W%\187\175\158$7+.\20\253\20\"~Bp\225\29\208ᛢ+\149$\147PaB\\|\t\174\0196$-\158\\\198\229\240\"\160\244\146\198\250\244K_\139$r\203\17\2518\2\127顡\217\24\179Xj\219I\151\206B\252\7\7\157@1%\21\244r\182K+\178`\169\178\26\187w\190\195\239\139\21\210\238\143\14\152\25L\29\217}Ѝ\t\254\154\168/\2279\15\239\210K\1635\r\225:\146\142\167ijF\7o\181_\245\14\188v\6Z\249\150\167\136X\148\2351\1417l\148^\183\222\251/O\166w\249\128m=\228c\227\158\27\215G\206\207\r4\211oM\11\164(\232\19\137\201$o\209Tҹ\178Km\16\r\170\20\229 \23\177s\196U\247\219d\173\143\222B\7#\21Ԕ06\136\8\12y\1\2276ek\136ѽ\1569\186\180JO\174\214\224H\191\128\236ER\236O\236B\u{1774}\142P\189\145I`\2\8D^sp\236\4\196?\231k3JW]\236C~KRt(\210Ͷ]\246\223n\156\146\130^\159\201]\234\162?F\"\131B \27\20\154R\170h!\162\1^\143T4\17~\255հ\175\0256\236\135\227\224\239\204,\200\228\19\196H\150\169\219u\226һoTf\28Xn\151\142\199\7\129\1648\179\14\1887P\213l~\15\2449\166\221#\169a2s\141\245bB]͒\168D \138\224\158\166\149a\178\198\0022a\1\149\27`d\162\223\210\254|z\n\187}\242\144\138=\t\204r\t\168\8>\129\128\159\4\214}c\239d\237X\238\254\219\4\198?\240\3\194eٵ\163\214\204\">\173l\r\208:\129\140jsP\205߈+6\225\135+\30\240EZey?\20\164\127_\159\201\244K\242,y\228\3\253\184=F\158\0042\178\128\248\190M~\151O1-G\135\141靜k\174\31H\175\4\139\t\2525\3\248 \185\227\185!t\243N\240D\208aJ\243\201o\133\0\217ƣ\2397\188( \247\146*\137\249\20\27Ow$\142Vj\185\174\15735[q~9\12\"\134\172]\191\250\1{\t}Sq\188F\27\224\233\212\16$%t\230\171\25\236\212N\180\5lI\168\\\225ؚ=\252\160\193\219:B\249\211T\nd\255\5`\192un\137\175ea\128%\236\247Y\182\223\4\204S\230\227d4\180{V\222ǫ\158\232p\156\219y.\186\8\179\250\0171O\25\244\1765\14\199$\166Q3!\177\182\238O\159\0\133\4\2374\230yПE\219\230N\12e\142\148\146hZ,\212\27MSD;r_Kj\226O\133Ì\237\156\196]5I{\242\14i\160P\176\130F\159F\252\182\163\157\176\181\14\158\181\221\21\227\185Q\130w\231\175Y\183\129\136\243\30Z\6\246M\237\142(\166i\243\234\250\176\176\2305\226\208\230\";zW\5.\\\170\133\245ȱy\218Rt\252\21h\138\170]6!\246j\163A\159\252\25\ni\168A\164\14L\246\185c\241\220G\172\225\171\7C\2\157\212e\136\29\177\246t'Ls\21\131\246\151\128i\130eL&\157\131\169\137ۧDc\253\182\176\18\n\2342\166\202\233\226{|\127\31!Z\162a#\u{5ED}\146\164\\\168S\u{97}\254\236\241\27\2\243-y\27v\128\24=+\180H\234¨0\189\223`\t&\14ڶ\176\156[\143(\150?a\226\189\212\29\0-\129\157y#\211\7\226}'/\26\2347Q$;_\188%\147FW\132\238\237\1795\\\240\194l,\202\18f#\181\151\206\127\24\183 \213\250`\162i\185\164u\236q了yQ\167\193\169\167\187C\213\218B\146\135\187\181\201615\134\19t,\175\153T\138\166\4\139\219^jD\209~6\207\233\175\203\0\0\140\2CG\27\130\143\143\0\0\187\20\241|\196!\245\199\247IeN\8\252q\249\229\137Q}<I\31f\191`\230\\\u{9E}Vő\174L\183\247\245\241\139\6V\1282hH\\\7\237z\243\8!gF\19\151\139\135D5\242MZ@\12l<\252\169\4\4T\176\2489)p\166h˃\171\n\6\4qL\171\233\1752\20\213\237\24\17\226\185nbx\7\186.\131\193\173F\28\149\216W\249\150*n\28\155\128\227\8\167\154\145\19\0078(\162\240\152\29\169&\196(&hB\142\156~\248\244M\27\225\1898\193\150\237WƸ\156[\"\198j\163p{\136\226تm\169G\142\2199\253E\200\3\2103\153魑<2\168MęǲWp?\4\31ۡ38\229\148\18\135\7\234{x߹\193Rh\218:\241\252\200\244\149\189\215c\242\166\140Rli\149\173k;\200\18\1635J_3\151\248\143\235K}ϝ\152F\204Z\144\14\248e\160\27m0\146g\12\209\252G\191t^\154\26\1>~\173Z\198Ҍ\198ֶ-\1<ۂ\2484Ο\25\136ri\200֏\\\158\160\251}\168\248\154\172\\\142d\195\127\236vB:\247W4\205\251Vܽ5 Le\254g\148Js\225n\165\253\253B\236\240\236ߍėN\169\165\167\14h\196\193\176\207\230\143\208:\29@\"\212l\185&\254F\251\235\154ٞ\212Q\23~̗ߥG\254 \135E\225\243\22@\4x\241G\175\181\175\tȮ\27\250\1\130\143\232\158\205\216c\149\218C\161\8\179\161\183\t\228\255\17\224Wp\177\233u\1440\165\133$\1497\166~\244\148\21\189\171v\151\31\172\12>\239\192\222H\173hڟ\241\189\r/x\176;\166\247\128j\159!\214\215PNg_r\r\242\143\214\31q\212q\174s_\222\213\245(E\186\128R3\\\241u\186\158Zi\197\3\0\130w\23\182\228C9\241Ų\238\188J͟\199I\139w\130\20\154@g\243\1H\137\0L\218\0043i\250\tX\135\150\182\182\216\198D\233\172)\216B\174\147\156\183\152\128\28\135ӑ\240\152\190\228\25\4\232\u{5CB}\192\\X:\6s-\163\239{\128\5G\190r\202\0123\173۽2@\233\249\141\205\235\139\232\158 \127\130Q_\23f\189\148%\203A\202\224\167ن\152\220M\229\219?Bye\229\211a\215\7\28mT\138\160%\198\232\130O\147\25C\168\240\175\177\238A7\133\205}u:\193\0\228h\250\2\138\20\139H>\224i?\192D\238b8D\189\188\188#\210Ŗ\24\200+\14#_\159R3I\132<\174(y\30P\190g\31OWm\228\198k\159>(v5r\139g\249\1(\219\202\210\193w\0045\178\136[%\27ϰR\11\179? \246\17Y\233\28\240\195\239I\132IT\225W\129F\11\12\\\241\11\2\248%Q\1772\170\191\148\145\194Q\193i\252\230\224'\22\241\231z\206̏\192\219\244\28O\133.\16\30\154D\218\0061\217\0\1385\130n\252J\181ϳ(\248\151_ݍ\250,\140*\193Av-\247\225g\241\203~ź\187\246~\139P%e\230\164PO\27\162\180\226RS\\M\168m\163 ܱ\237POc\187\249jg\197$\250X\185tu\161\225C\169\204\231\0070\1\232\17\r\153\29T\154!B1m'\179\11f\n\166w\252.{\131o\\\2H\198\229\186g[\22\185\12WW\145\232C\187\19̫t\219Y\19\222q7*\142\200\11\231r\222p\22\30F\232\176;\198hM@\u{E22C};}A&\200\16\228{\27\207&ç\\\139@M\t\135\3\140P\143W?\209\253z\161\rw\t\249\188\22\27l\227\160[\8\195\205z)\242$I\183\136\131\22\22R\240\203;\241\244\133\148=6wG\162V\2\134\132\14l\160\171~ţ\228\t\0\246\153\145\158B\253\189M\138\235y(qY\247s\252\179\248\162&Yȳ\204-\0\200\nǅ\163\134\132zZ\1271Y\137\11\243\244\174i\221\205@\30\171o\214B\244\174\252\199g^sB\150i$|\3;\1571s1riW\209ԃ\197^\29\201Ƞ,E\183ҏ\139\184_qmW\202\225!\129j\18E\147q{͝E\248\182\168'$\5\199\219?\254W'\169\197\213?\179]As\243M3A`iL\220d%\8\174\192\192\252\0\140\230S\22M۫\228\252s\161\181\132B\131\134\17q䩳\2384\188\220;U(\173>%\143\156\147\228)\238#@\161UQ\151\11\136\197oz\156\160\1432\138\160\22\2321L\191\153\167S\2400\163;Ed\3\130\255\217\12\198\21\139*L\31u\0\192S\246\197\29\175Ær\224נ\186q]\u{5C9}\11\140VzE\252`\215,\2\239\234Dc'\212e\201QZ͋&\192\174Om\4\215O\29\208O\215kM|\141x>dk\184\160\142\191\171\30c\146\140\143\139\214u\132\172\211~0\188+u\12\164\239yg\149\r\30\19\217,\2\248\243\180q\250鰜\1652\147s\170\n\tJ\142b\157\142?\167\138N?\190\202\227Y\234CE\225h\255n\151\2\144/\"\135cZk\6\243\234\165LR\251\144E\191%<\190Y\171\197v\161\154\236\n\133\150\0239y\21\241<\29\8\190»_j\29\245;\228\0229\175\2521A¼\148:\218\242WE,\1352\154g>6.\206\228\204E\159\178\237\1296\178\145\162\15j\u{7FB}\238\194)o\152S\246\241o\136yE눩\3\172\30\176e\167\26F\n\128\254\204\6;L\249uyJ\226WDʝ\18\216\254\27\184\184XD\164Y?\153{\243r%\252\156\164\201\205\27l\u{5F5}\2430%ݦ\245\210'\243\180\16vWPg\221\12)Y&\157H\157N\176\203rx\208\11*X!\11\1296\206\24G\131\5E\11\26A_\237b \1562F\30\130\0303\166\169\"\1966\229^\216Z\223\209e\196\239\255#^\154oE\20\243\r.\15Bd\251م0\180\250\130\n_\224\237}aV\168\152\154\150\153\197r\140xP\238\240\214y\187u\29\1803\16<\214{\179*S\134\27\238\156\rr\198S\2057\t\152\195\31\7M\1294[\205\6\143\25\215,\232\196\255\255\214v\226և\146(\250\1768\157\1875\194;r\19\132\150\183!\135\156o9\151\157!>\7rc\8?q\226\21\225\177\0\r\154\221Wįe#\248\239\16\168\191w\177\245\168v\246}\1592\23\172b\200;\136|?\244^\221q\244\185\2\197\255|BS\2307\21\t]z&=\197>~I\244\226[u\187\130\191\182WI\134̽\220(\189\128\146Hf\209B.\158[D\154\196\28\245\151{\191\7˜\11\175\19\159\23X`\17g\195BC0\1\209\221\\p\238쿊\231Ry\229\221\227~\189\31\26\159k\23x3̵V\197\22vq\230&\226\246\\P\4Η\254l\154\197\229Lީ\216s\174\26ޗ\215/\216] \149\162;\244\n\137JЛ\164\237\1296\243\145,\27>\14\206\196\246@\138\248\213v\151\174l\209\239\205p\\n4\144\145\239\7S\169\221.\184w\219|7\1383HD\1\"\173O\238\128\210\20\0\243\4\135\228j~\30u\20IY\4\198\240u5{oz\31\18\217e\142OR4\203\227b\2`H\11\233\243\t\141\177<K\142\0\217\241O\\\227\209˥\236Cg\187\211'\23/E\128ٮ[\5\26V>\3\236\179I\174k\195\27>I\181\218,]\145\209\241\194\30\139r\158\152\184\189E6/\30B\159\192\152#\227\194;\184\20\175\19\147$C\1\147\217z\220[\155\219k譝\212g|\130\244.^\2068`\245\145\171\150\0\201\243\241S\223\4\243\133\142\12\2\183\202o?l5u\142\165OE\249\n\185\30o\187\239\175\2\219ׂ\253xOk\207\232\\\28~\239\245\u{40362}^]\17\229\214\193&O\187\14\130\127h$D\159\228\220%\225\192\n\138\181\143\27S[\190\204\219\246\149\225\130\31\230\21g\242<\22t\241\31\176*\211\244\134#A\18\171\16\242\2`\133엳\164\254\158\130jS%\187˹!\2465*E\232`=t\u{4955A};e\192S!\160\1406\241\169b\213?\230\1279l\185\208\25n\1902\133\235\1857\21\152\239\242\201\219i\138\251\251\211\232\156e\143\222\208^\192\174\148\141\22O\250$\232ð\249Q`\165\186-\147\7Z\243\189\171\194\219a\184r7|\194\220)`\29\206\3\28\149\243\131_[>\176U\166\190j_\232\229+\29\2\184\n\188*j\152Z\152R4\31\249\206\28D\255e=M'\156\212@\7\172\188\31\150?Dsuz\187R\138\213@\161hΒ\178M\144pd+a>\173\170W\141\168\228\n;K:>)\165\1276\170R\156\216\7@c\5'\128\216R\t\217>\22\225&}c\149u)\243z?h_n\135\136R\201\22@\171\254\14Y\170\236i\202~\23\191\243ϴ\193\231\230 _!+ݎ\236\213\215\25\159P\182M\213Ը\227\26\241\232\173V.\242\195\215 ՞\30\2499\172D\t\16\169\243\217\230\188]/$\14Q\182~v\249!\185N\8\191\209U\228\251\7\147\198`\156\186\139E;3\228#\245\244\200qA\135\4\174T\191\158\233\173p\2\209qXZI\252\255\209*;\\~\151\2103\136\143\220\230\162t\222\8\176yԫ\133?\248\203E\146\221\209\17s|\235\130\20+Mf\247\"\194%\209_f\159e,r/\169\178\1959\180\251a\155\239%x\137sK\239\165\0118\192l\28y\233\149^V\236\196b\188\176G\176\174c\t\131\0114I\246E\164\240r0\250\r\223\232\1693;΅\219\218\207c\151\246\217\241m\252\253\2511\156\143\252:\198y\249yӉ\225ӑ\186\0X\242x\n\188J\163@\0213\203\241\238\5\23qXB\165H\2099\183\225\15\170\207\17oD\1983\189\2306H\224\183g\240Dq\247\3~e@KM\134\142\12\171\231\26s\172\5t\151\214\18\169'-\147 M\161ǹ\184\234\19)\140\128U\17\149\179\144\160x\250\147,\158\228\n\143\164\156\140\"\165#+\142\133\177\176\164\19\1lEZ\131\128Z\148\230_\254\232\251\175\t\187\235\25>\244\t\238\127l0\171l{\0\1y\212\237{\238\189&MA\190\212\239\7\253\2440\30\8\142r\209\207\251\255\1417ܪ\203\194Y\211\247\\\245\173\156$/t\\\159\237\25v>\129\174D\1633F\4\178\24\203\215\8X}\206\r,$R>\185и\160\1796Ӝ\n\31\129\247\177\199*\167zE\1?\188%\172\193\140=\132W\179;\11\29\240\6\130\195NEF0V\189\205>\238A\134\8\204>\228sH\248qo#S\127j:@\27\245vMٹ\rv3#\212\251\191\2513\171\251\226\173yLi^T`\214y\227\164h8\246\175\\\184\179E~\145Yi-\15\153B\162\31\169MP\219C\222\243\144\1573H\212q8\150ȟ\31\156֙\2175\250\163\181\236M6\17מi菆@\3\252\218\235i\211\247\129\0184\218U\168LI1\27\143\184\22\207<!\179N\225\28\191\174\193!\143j\128\170\254\247\221\19ľ!\213\23\184\224\208\210]\228\193/4D\219\236\198vB\183\"yc\133e.>3\20[1ۍ\222\241\139A\243\193\0\207\192\169\235g\236\234G\8\159\19*\233\233\154\25\236\"\168{\188eDk\184e@V\22\170\205eIqH\140d\25\r؛\0115\253B\168\161\181_\166di_\25ПK/\192\152Y\170\149\17]\178\156\132\167H\11\190\223\195\225(̯Q\197\"Qҡ\7\223\t\221^\176E\19L\214$b4\246W\14\184\218\210mSh\151\nkV\176\131\143dR:f\132VL=\249\175\1271D\163AA\254\20z\251H{\18\n*\175-\178\246(\160$G\205R\200١\27c\199j\189%\29$~\2\n\212dQ.m\8r<\15\25\214mp\5\254\188\192Q\249A\224\8\21\133\228Y.\193\219\2493p\"\139OQB\181\191@@\159\238\241z鯕J\212\247\214U\0\158\146\176\174\19c34Z\249f\234d\233\134\233\31\25?n\21\2D\151\185\182uG/\215\1938\216K\231)\222\195\211h\6\141\174\158^\2352\0059VU\1977\190\14XǱ\0296 \17'\207\14\194\200qk}\211M\154\250D\139\u{5F9}\154\5\131\249\150\138\244\163\18-r*\189@\8\135*W2\233$\0{\27'\25\18\31\28=\222c\tx\217f\190\1911V\0\168\139Xr\6v\173\t\240\190օ \242\201G:q+bM\235T؍arP\28ط\156\131H\139.q;\194kig4\133V\148\178F \1540,\139\t͇\30\19%\163\156~\241 \198!\231\2373\27\160\137\203t6\214\2201ț\164\142;\131\183S\240\26{\168\143t\247\168c\227L\247\253n\228Erw\226f\27\24\7\223\239\167\1\0\20128\235-Y*\"|\139\249\12`\249\159\2!m\2320\153\162S\131\227\194O*L\20\231\129\207ҭZ\172\233\2\243N\245R\228\202i>L\0\181\153\3\0VP\193~\20\190\142\145B\168\218\29U\168\25\191\225\159٣lc\152Oʯ\206\12\170\213\4\155\162?\142!<\154\232cI\198\242\206-\242\221\227\203y5G6\131}x--\181L\142T\142\197-zCu\255-\236\30i\187\20\247\t\240\21GO\175\217VA\12\23\163i\252\172¶\250X\239\14\3\249D'\163\211`\147Ɲ\208Rs\151\164]iw\246\209\238U.\178\217\246\255\217\239\230\227\218\17\147\215\244\28\11L\0265\20\209\nG,\236\1567\238q\164\238\11\27MB\u{382}W\180b\142\164\145\16\196\244\215\21\18U\27\230\150\237\25\145\138\219\244\199\r-|1خ\194*^@ݖ\134(\175!<\174\222;f\232\236!U\154\196\192\8J\208P\250GUJ\243⺘p\165ľ\145\138\15296d\145\17٘n\185\20\155\165\214+\21\186.`\194c\254kX76}\129\173\225q@\210]O!\146\254ξ\n\188\254\213\193\199\249\251\164\7bm0\224\157T\0318E\155H\\\14\164D\11M\153Ix\143\14\24\147\2m\149M\145ɨ\186\244\139\235\164햴\155\2184\14\132\218\11T\182\154I\253n\245\153ؐ\196`\236\16'\249\149#\137\241\236S\143W\238\227N\140:\252\1\244\223\235o\22\\?\150,DC\214r\255e\3\179\222V\134\169zD&x\149Ȏs\205\n\25\135\20\158\148\127\2361kG\6\2003&\133\238I\246CF\1ǽ\178\245\191J|1Q#\26\236F\182\151\148\162\211\4H\140\140\25*\159Tb0i\230\201\21\235\189f\170\231\128\4P\184wM\196k\181\6#\200a\255\253\251焚\29\206D>\165\179m]F\156\240\177\236-\221\204'\173\239|\186\131A$\249\26/\208oIvH?$\255\243\158X\182\153\253Κu0 \186(\174\rk\156\249\133\250\nٯ\183\192y3\128\240š\177wx\153\174\181]b\1539pZ/\139)Εj\29\239\206\22\146P\1544\154\21`z\\\175\20\247G\206\16\237\153\23\212~\250\19\150\233V\233r2\195K\240\174#\224v\194f\238!\1361:\247\2421\154\137<\160f\180\133\245\162ˍ\239\26nZ\155\24\149$.\219\4\160\197\244e\5\202\234\241\14\203}\165u\154\204Ep\202\201\28cs>\24567\156b\228\252q\132\165\227l\r\1Gp\21\248\236\191Ѫ~[<r\199&v\192\138ʱr\151~h\232\237o\213|]\217\29Zi)\1775Qo\248W\186]4\252\251\242\134Liv\253\22\246m\21\6qO1\161\204\31\1807ԛ\151\194\232z\184uH\140\22#\242\212f\233^1\200]\11\163\175!\246\153\155\205FI\n\128;\176?\231p\252y\150\166v\u{E545}\179\199\218ku\136\132\24\3\217\3\204\211X\0\127\27I$/\213Lq\245\158\4\186\6y\r\152\252\155\172tQ\143\146lȂ\1+-a1v\196\253z\203ë\147\251\190\219ѠɊg\190\238\205\1\129f\nKc\11vB\176\161Y\252\16\180\231E\26 \233=\223\254n\"\21\23\220\rg\152p#dc\5\234Jt\207\251\160\131\22\20\8\159?\226\r=\201\194\247\244?\205\230\221l\248\142_t\188s\224\210\240\226\140\250\185WA\196/\11\23і\177zE\208\252c\17>{~3\133\190\243-\240\132\28\29de\195ZR\245f\28\133ʣu\27E\197\1\236|\223\203\3˃\248S\209\127\202\t\166\241J\248\250\180'\194\\\163\1704\229r`%q5h\194E\29\233\244\238T\19\199iR\135\185\248\6\182l\174H\"\rф\143\177\173\168\n@*&\141\147J\154\254Ɛǅ\2ES\174Eg\191=\155\141F5\15*\238\150\199W\12I\250\14x\16\201\249\164\151;3\239[8\1389M\229\r\254ѼK϶\190\193%\15\176\230\224Mڎ+3\20\24\232\18Գ\"\226m\2009\163Oڿc⾘\214tRj\164\227EIu\205\199.27!\215\25\8\186\213\243\5Hy\147\22\225\190C\6>\176\133X\193rQ\25W5\1372\1501ň\249\134\246\127s\213\238\176\22\197\245Х.\183~\147\249\204y\252\25X\213\18\156\193\157A\160tA\213\213st\165\3OG\182\12\205Z\182~?\145\254\247\0\203\235\163K8\\\244\189\127m>\188.\146\2244q^#S\150\137\253\7<\240\132}\138Ϝ\129\4`\163\145(_\160\241!\163\174(Z0N\240J\142\164\199p\8\14\18\144,\225_\228\0D{\30\237::\234ġ|ۈF\253|\249\181d\155Y+/B\240\219]\173:T\166\244\246\219_\243\188F\234\161\243P\140E\30i\136b\171\174\11\178Mzj\160S\240~6}&\t\243\131-s\157\22\187\239\232\195\235\191\241B\127\241\237\200\248\3\17\146W\140v\139\180*\168\22fZ')\128\243\8\146\202\25h\230a\176\209X8F\178$Y\2512䜦{FMC\2460\177Z\n\231\162g\u{9CF}?\191\140\4GC\188\167\167\208O\159\232\11k~N\134\194zG\152\202\245;J\234\229\216\n\15~\146\182\214F6n\169`\240O\210j\0^\155\221~L\245_D\170,}\204\233%s^Fh|\139\16I\1387\227\139`S\177\227˵\221\221\227\209E-\203\227B\191\22\141NGT\23\152\142O\225\26\26 \226\2042\20\236GM\169\r\235>\192/(\132\182ȏ\136\253\253k\207mH\153\165&Y %\183Ο\250\173k\248S\20\168\246\131/$]\183\146\140C\171\179\1410\149\182z\171D\\\30\185\224\189\29l;ܩ0>L\22\145\140\11WH\14\222w\165t\t\169^\155@\231,V\168\205\235\145H\166t{\240O\20\237\217\8ݓb\1296\128$\250\234G\0204\195s\160\180\6?\142\175\1728[2i_\209\23\144\151\31@\227\21\211\221]K\192=BF \229\213\217Jy\234\145\248\191\141\217D\244\27aI?\156ɌYl]ʹ\150\161\194\202\t<\2199\134f\221r\2507\228\1551\251\153\254\206O\203\215줙\183p,DQ1\239\189\248*\210\255o\31\209CJt\127\243S%)Sg\219$;\234\131\\\232\21z\190\2359ꌅ\209u\0\252\18\171\206*\201\237=\233\4uTm\251\138e\177\2\6\138Y\236IW\20\21~P\178Z\226\230\188`\168ьy?\7\252\254F8\166)\165K\179\133\158\191\145\216$\191\240\133< \166\208\r7\190\21H;\195\247\248\151k\157k2r\231*\216\234\230\249\19Py։\243`L\208\255Ǥ\r4\199P\229I\2291q\20392\211\227\160:\180\255\139\252A\215I\230\16FT\165R7Q\146\226\233F\8\1898\219\235\165u\1,a\179\"\138 /\157\241\16\245\244\241n\181\254\250Y\0193\0307J\16\163^\22\136.Ͷ\193\20\0001\207*\15u\235\144\22!RC\170\142Ƈ\7\169\127x\142Qq\132\255\216ee#\129\231.\247m4O\20h\225\5\156\248K\194\2487\0\147\248\199\196\t'\221qS\161l\19L\192\31ƚ٘4\235\130\210\216y\148\146\210:\142\176\150{\145\174\15ipP\29]>\146,\185\242\224\4\29\155X\177\192\244F\185\247\153\253m\201K\18\157\163\205x\207\195&\138\249C\230?t\151\229G\180\189ZB\14\201?\160^\221q\164-ie\189\16d\222\219\24\11\173\221\0³\153\254\156B*\201\0\218\222ݔ\189\0e?\31\12S\29@\239\163\213\198,~\19\161:S\152\30\197Xy)K\143\145\229vM\127\22\t,\203\0\176\190\25\n\197\231\237\227\160\225\145\243z\190\12>;_\139ߣ\18\17\29\212\234\216\23\174w\166\31\177\248\174\202\194q\153\142\127*\184\243\193Er\201\\+\176\243\186\18mZ\rHB{A/\146Z\0076\212]\237\210i\166\th/\184\166{\173\158\204-\129\159\21o\252H\u{98}Y\192X\142T\247BUg\11\1\2126z}2Qn\197\250\128Q\170\217\196pf\180J\184\186Vz5A\6\3P\231\12\28\183\27\157\129\0061\2380ɘPð\231WB\2134\150%RO\1\178\227̽n\227^\247\236d\19\141\228\2343\154v\168\204љ\31D\181\6<]\11u\250\17~\196U\242t\1773\163GQ\188f\166\197v\132\195\255\155\233웄zWC#\132pNE\19]0~\192\214t\222hg,\202ϩrk8ː\27\11Yo°T\17's!\154\239\253Z:\0267\165\127\24\234\191\15P\30\8\4?wg\141\247ƨጭ\228\161_V\1855\251A\150\1465\16c9F\191\1j\29\189\233\147+Ԗ\228\140\215P\132\"\198-8;\27aH\135f\220,8\31\146M{\20Gz\242\167Q\170\137\253\254\159݂\194\r\253\1955S\193m\134\11d{\182J\199\16\224\15\8x\00862\171\236,-g\214\218h\230@\236\191\250~y\143\137\247\234\19\156\139\27\247\16P&#]}5[\227lR\6\237>\127:?\137\158\148>\160#J\244\223[\196\16\192\241\237\193~\132\r#\31\242\171_Az\16\1\146\188\152\19\219\210\204V\239G;\1680\217f\255NG\216\25%\176\255\2559Prͫ4rE\20\145\4\170\202\18\152\226-@\162GH{\25N\255\236#dhh\189\138\177{6A\167\2203۷T\200\24\236\11L͢\28\11Mp\180\161\2181\172\29t\235\1373b\150E\4K\5\2\246\241m\151\1778\219X\203᮹j\191\208 \202f\254j\154T!\174\178ԐW\210\27\r\2099\21\25\6\171@\244\24\19\127\171\19CTڢ\217[]B\174\139\169#\30\224\r\18E?\250\203\207p\139`\128\177\134\7\172\223jg\27\n\5\153\237\152\29ɶN\242\17\153\166\132w\190t\245&\220\213\31l\161hxI{5\193\245\246\0233\18F;\14%p\212\11\145N\n\u{93}l\136^\141\143\231d\198B\151\128\139\146\245\212\248\17\255\149\29\255\204>nj\138?ś\2\222:\132\147z\246\157\164eč\2328\248;\134\203\15\187\251\241\178\206\199\206t\15\221.L)\244\223+\136t\254zvj\150\225\161\213\207\206\241;5y>\161\209'KͶFj\202;\200\19\19\186\230\178\18\245\204\3\29\r\25\234\222\224\27\194?v\129\233>\146_\11\230［]B\223G-\1933\137SA\17\u{E2F6}A\236\132\22\171\158\205q1VH`\172l.\204rS\166\221\213\31\224+\233\147\232\156,\133\0157\27\188\175\219\215G`C\241\228\239\11'\223]\188$\128\191?|\248\184\131Ж\172\133\160o\227\231t\201\200\25\161\237\247\3E\1+\131\236\191pԜ\4XV? \n\\\187V\235=\214\213\230\209߶\182)\23\17kQ\160\25\226;֍\186\208\224y\27\190S.}\0W4\251J\176zlʖ\183\163J\176\127\134|\18{8-\226)\4N\168\31\246v\25O*\134zC\\\131\173\tA71\149\204.\150\198.\234خ\139Bz\29\254\162D\140\246\233\236~j\127\148\198u\184\161\224\254.D\n\230\162\25\245\180\207ޟ\219\241\225+\"Ӈ\2557\148\209\241X\166I\144\173γ\4R9\179\u{87}+r\23n\249\255\163y\233\30\165VY\146\0V\30\222\\\240B\169^W\228\184\234\222͒:\19L\253\197\213U\155\245\21\149\241\174^%]\173?Y^\217V\147(\199{\2X\1831\171\176錟\30!%,\31\213k\213\245\237\147]\204\r1\195}\175\137ǹF\n\167I\182\194Z<\8TP\176B\255\136\169\244G\184\169\233͔y\244Q\191k9\0\211:\248\247\133\12\8\tu\26\2134\2154!u\5\145\0)\208\r\246\18&0梗2z6\190\18iM\182\148q\12\202p\255\0\181\244\11\252\238\6\190\184\157GЈ\186\255ؚ\176\202\21\148\163jR3v\2407^m\7\193\211\251\200`F(\243\206\204ߚ\246\2252Z!m\153c\208d\210\215ڃ\148o\190\248Y\224w\181|\242\30i\227\197\n\245)\150\n\30\194\228\163^K\175\189\200z\242`h+\237\213Y3`\246f\196٣\186ȉ\152\16\236-V\180WݭY1L\12\142H\249r\166Q\222Y\247=\130X\5.\246\200Hu?\19q-~\173\224B'v\1\154K\2\177C>\163:\250\30\239\29\26(X\253/BP\135!\189\11\162\253\6\1655c\195\211I\129:\222ٸ\245\227l\128\182\219\15V\199\31\231L\138{\163b\23\11\212\12\163\20q\7\138\7]\245'V$\216\250\252\214\5\t\128\155\147\u{3A2}\166\139\148\191\208\127Ô\217H[#\151\1501\159\135\192\252G\3\138\11\2436\233\251}]\26\242\1992\28\191@\161\195\249?\\̙{\154\142\31\178\7ͯ\207\19\167h\158Q\244\1953\247\169ի\184a\197t\161\162$\134^\128\250_\156v\253kt|\5X\12E\243\169\241\159\1361\187C\251l2\20\165fcK\136\177\5\166\156\245\160\250%2JT:\228\255o \160\134\20\208q\172\140\227Q\204|\188\170\18o(\1451\228>1 \189\29\22\232ˢ\2\172\14\178 \189\207,\17z\139Iy\19\1474\168,\216{\144\6\177'\177\207\207\250\177\140\178݁\3[\173\245\149\207\25\161\7\215\207\238\14\228\231\145\194/SKK\0\192kْ\209\5.W\15\153\141\1\184OKr$RH\167(?\1387\216\210\230\202\16)\149\1472\1\238\26\240\178\245vA\127N'\207E\22\1\7uX>\149\12w\171a\252\27 \164q\228-n\201*\161\171\174\224ڧ\215\127\225Wr\20\141b\20\252\141\160\221\r\142\131[L\236\17䡷\244\155\251\20=V>\225'\2094\12m\225\233ȝbzX\237\22\148\193\228\232\5\239\226\211\231\27W\213\2305\7\228\239\236q$\18A\240ɞS:g\21\189FN\180\30\240\171D;+\19$i\218e\247]\229\\\155fh\154U\24+\236q\201_\17A=\26\171\244\188\21\241S\200]o2\182[w-s \19\243HD\251h|\7;\186\25\7ف\1820\208\29\215P\147\250&n^\237F\226\173 ~\165XG\170\7\172\174\162xG\137\178\166t\2280\132U\170ZSW\166\160\26\150J\171\145U\16Q\1398\218\240\29\172\214\196l\217y\216\255б\184\135Ĥ+\221\251\201\252\235\220@$\255\155F+\26.\26O\237\12\241\162\5I\u{E021}&\25^\251\249\128S\14\23\5\162 H\19}u\184\173s\159Y\252\171\135\166?1\173#\141\11\132\205W\129\249H b̧\3a<\250\237\199B~j\174.ĭ\184\243\166\1921\180\203:ɗ\203\"\17e\132\222;\23\200\210`)\154\217\247\206#\245\1829\179Rsm\138$\151\205\192\187\2370\239D\137h\179\128\207\197\4\246\127\214⥠_W\186-W\168{$1<\138\187\208f\188\173\19\201\21\178+aÂr\245U8i\184\174\141\128s4fPev\201\251:%*\153\185\1450\208\210u\23\135\25\214:`\207s\186\19957\11\207 \25\156\31\170\142\220\244+\210\218P\152\217(\141[gn\239t\171\194\8\187E+\160\218@\152\220@\230\203o\250\146\135\184\135AjZ\152\1762ɻ\158y\143\194JQ\254u;\1785\18\15<]\149G\t/g\7E\237\"\4\175X?]\23\148\144\22T\\K\206R\8O\153\176\17u\212\29\255\151\171?\158c{\224J+\26\144*'x)\232Z\141\243\230^\31\n\7/\8\237BաY\199\229\188>\rԂ\235\162e\143\6\232+\160C\234I*\166\1JQa2\211o\239\14Y\190\21\137y\150\255W\26\137\2\140vZ\u{69EC1}\220\209G\202S#D\5\233NI \161\200:2j\163N\u{7BF}\255( r@F\235'\203>o\209_L\178=Ug{\251-\31)\180\183\160\11\1904\204\192\212\192\170B\245}\247kǬ\15I\168PB\234<bN\144]\246\226\152\4\196:\252/\177p\146W\238d\146\175t\133\192\17\16\199\220 m7嵕@*\225\132|?\250A\22G\166^\180\5\140u^Qp\191\169ٵ\173\239S\248>\203žI\218\0253$\2145j\214\248\ty\153\248\6\216\r\247$j}|;5\168K\227\t\7\142\182\172\191\167\1990KSQ\254\170\6\6\175\26\133,\6\26\184\192\1378\166\133\11eOL\6Gn\15\175\157\142;P$\23[\193\195w\2156Ǝű\n\222\t\162\185]VFy\173D\144բ>\1578\236u\164\\\247\17\206\201d(\204\27\"4]\178\150\14[\14\220\219\206\247n4\247dO\1_\154\212:a\8|\241\178[\134YoD\140U-\4\18a\186?\184k\171.o\252\251`*\204(\206,\214\30\2148\207\25p\189\197&U^5t\165\143\180h\28\226\29\156d\188\134\128}\238\30e\151\167t\163/B\255\184\216_j\244\210\214\"Ff\153R]\220i\195\26>\25\225cXA\2355\219\251\1893\205Y\128\149iv\134~B+Vy\2144j\223m\193\153[\159Iv\207\3\186\233}\146\136\253<\250\u{7B5}\161X\128y.\137\158\17\2272\24\155\240\191'\144v\165=\21\6(\224vs\229z㓞\1\4v9\211\29M\19\162\2213%\250\238\16\216t\22(8'm\1344ꊀs\145\194^k\156\163\152\28\225\182\210\196HB\11c\211~\244\16n5P#\128\137@w\160\160Ӧ$\168\141\225\220\209\239FF\153,\254\139+\5u\139\166V\237Ӏ8`m`\177Y\200z\r\201\229r?m\137\155~\209\237p%\2169\155\240\206\215\21\11~\248\139\236S\210\255V\196h\255\172!2hh:J\191\139\6tTQ\235T)8^p\177\247\140\219\205x\145\145.\240\136\182Բ\134?92\144\22&\232gL\22$2-y{\188(sc\16P\173\236\216\239\218P\226Aq\236}\3\150\14\195\12\169\2(\193U\190[pT\138ނ\251\142\137\4\185\182\134S\22\"Нn\207.+\183\249\5%\26\199`\204N\186{\220\202\220\218Bx\u{604}\253xE\178,\1458\226H\1585ĵ{\154\174t/\199\236\175Z\152\5́O\146\19k\141\180\18\224/d\142\21\219*\23\182\207{&\195\20,\137\208E\178˯\196Ut\172ywD\1399\219qt\239\199\216\250\132\218\31\24\221\199[\200\215\12\177J\224c⍢\143\253\3qҕ\25\135\30\198R~\221LF\147/\168\245\238\248V\221r\248`\174*(\203\19A\196\252\12ۥK\194I2\tB-7 (\237\203uLM\227\134\15\151\236\202$\223KH\145\144\189\246\169\180\186\247\244e5i\196W\246%\220M\134o֣\210\229\208\2245\179ƽ\144M\146=\231j7<r\8\159\156̔lJ\205\223.X\23\1613`\157;IV\201\243\145\249w\214[D&G\151\184^\"4\252\229f:L#Y[ǻ\237\201>\186\198\21\"\154T\31\190\232pT-\133e\\\140\173C\225\178X\231\159\242\139K\158t\197n\26\240\189ݳ\245톙O~1j\191\7֍\239{\19b\23:,\245eʷ\181ٯ.\n\240\1454\225\210Z\4ǔ\139ȑ~6\\\206`KՆ'\130&\16\29\3\153F\155X\156\244Cd\244\195\11|\141?\28\253\155\164\1949t\1681\207t\201\242\233\158\213d\253B\2129\242~SRp\224yǠ\215\210\nJH\171w\247\1Y\255\"\171\240\251\252H\255\\I\177\251>\1907\243^KVae\221\224{\240q.\129\252\131\242k\183~\181\152\19\138\221\207V\171\203M?\143\226Gc\2\151\1404\239[\23\2$\221\12\244\216q\1949\150T\130Y8\194\28\243<#\148Z\186\t\14.\226ql\146e\156\152\178d\197'1'%\182\171w\1797\164iц\245q\158\130\216\215pF\2279\tP\248\133\171\165\20\169~\177>\1938Z\169\1\3\3d\18\18\12\140~\206ו\25\3\178|\163\8\133\235\\?\243\179\246ؓ\133\239g\29a\29\227C\219\240\27\1275\152\253\170\209\236\142o)\227\"Д\5\11B\175:aj\165d\143\254\25\194|H\211/\16fF\11s\25@\185x{\164\187@\28\12\182\247\153Rv\245\135MҒ\17\188\2323\158ak\1353\189ϧ\150\142\0008\148\173i\18\210X\163\20=\222;\142\225\249\240\248\144\5\154\249\162g\142\14\216W\216\19\238\151z0\130\187w\1329}!\138\240\159\146m\131.\14f\21\150\139h\144\2\251\170\4\151|\7\229a\209\194G\148\138\0279\168Y\19\165H2\222\2450\199$\179\2024\136 \1901p\14\228E\8(Ֆ!f@EI\30ȽŽF5\23\243uz\141Q_\192w\144\190N\171Y\136\182H\147\168\227r\178\220$\234\8*\152\180\137\232o\196\"U\24\138r\5\151\133Zt\232\188ڰ\225\228B\204\193\1\247\198\226\191\192beW\234\139\249\221\127\253\160\205\235\186:u\1580\n\201\u{F3CB}\230אָ\237o\178\229G\"=k䰗\24\189\167\156y\26m.5u\16U\nt6\0215\235Ht&\"\216\24\190\14\160[\155@G\179\191\127\129\242+\146<\144\"\229\134᩼qw\139\146t\175\144\209\22H\25\251\17\245\174q\29߂\5\\\153u\161\3DD\196Dy\128\156`Ͱ\223I\241\29\177\227\149\29p,I\196]\22\170\223E8\200C\176{i\n\131\170\3\25e\2015\29/\154\249\187զ\142A\181\22^\8\144\1~\189WV2\242I\232V˕\192~\186\22;V\24s\2493\27\2448\246\\\233R\151ء\16䐚\244\150ͮ{\149\152dp#\243?\31\240Ce,\172\1517\235\29\6\16\159\136\246fwd\232L\165\29\219\254B\158\146\207w\218NסRyH\151}\8ѭb\194\11\141|\1620T\172\171@Q\230y\2\137\n\252\175{F\221\6\232g\198\250\26Z\27\184m\239_\7[\164\183\143\213\251U\161\243\153Z\14nt]0\5\248Z\166\240\213\254՞\183\12\1342\250\218\234;h\209~LC\218ኸ\178\218\23\151\228\248@.\245\28\247i\224a\229,{\246\152\5nठ\134z|\239\214ʵ\240\223uc5\11\181k\139\25\144\231+>)\15;\8T\200$nU\8\146\231\241@\7\20\243Y+=O_s%\148\0010V\172\230<L\242x\140e\206\0\8\163k\141\180\208\240\21\217\239\3a\132\8\230Q\163\179\4|G\8\2537\245\222¼\152W\203JjY\254_\175]\250\136\251\198\208:P\3u\236\197|\192\229\155\219]4\218\26\134\169_\148\t\230q\193 d\187\212\206\24G\4\206 ¦C\193\30~^\249\2098Sr\251\199iv(DZ\179ؽ\150\212'\164\2\189M6\239\236\\a\129\184\150\190\216,\254\134Xl\232.lj4\6\239\161\222u\25A\173\16\3\3\193\208e\183\232o\185I\140\130\134.\140P\16gA\172h\223\213AhY\153\136\144*i\u{5F6}\0237\242\19#\139\194\29/\128\185!<\246T\133\199\225\136=2\190+\155Lh\236~H>#CK\133\170\8f\133]\224\183~\246\245\t\194\3\147\199~s\14\245\t&\25\233\190\20C\159\219\233\207\240Щ\228\172~\181R\146\"%2U\21S \134 \139\19\18701\252\25\128\185\181\0318\149\154\229\129Sw\134\158N3Jn\27\236\252\131\237BM\179\217FK8\176\156bd\190\144-\176*\224|;ҧI\127\139@BN\196\31\243\20\182Z\7ǅ\2~\250\247\208x\164\26\175/ \30\240U~\184R,m@E#ƙ\133\17x\189 \179\242]\245\5\8z\253\179\17\179\\|\137\133\239\197\222\11$\n\149+\167a\189\224\152d$`\157\164w\31\184\228r\169\146^\134\18r\1306\127F,̝\220\"mb\6\215\12\233L\188\227;\16)\27\0lOu\189\31\162}y\250\138\205\226\174\195b2\1\169T\174\240cH\162\231\137\212g+\160㻢{\187\167\211)+kI\193I~\26`\145s\159.\153^k\220P\193։/p\228\24\4\242\191\247\194\232x\217\2143t\11\139$Χ\0199 \30\141#\148\25\192\25\146\177'\235\169jt&j`/\175\230\146\r\14\252\172\145h\192\250\191jՎ\231ᚤ\144\2u\220P\138\7`:\5\27\21\254\165\215\21\166/\188\191\154\193\232\194P\21\143\199m\209\248\191ov\1319\147A\197\242k\230\244\150\252\18;6\"b\0l\251x\14\239kٰ\30\149I\233\0315Ft\180\16\0\134\235\135\234H\212\2286%R\249y(X\149\174\208\r%\26,\1\177mT>1[]\1355\170\25厞v\150NX\241\1\145\193\165\254j\177,\244\246\143x\2Ma$\168\246\24\12\250\152\183\30\226І\1891V\245Y\195\23I\26\232ų\31\\!'6\220Xy\185wR\218%\235l\213gIE\201&7Ф\199\194=\15\153N\25\202 Lc\217\206\200X\16l\200?\229Za\154\157X\11!\22927O\221M\30\137&\222p\159\1609\236\211g\196\202\213\238\148{w4\166\20E\230)\135M\198{\158ي\195p`\146\224\221\"^Nע\243\130\172a\146!\191j\191\207\25\127\226\24\198\2108\189\208\195N\242&p\191\165.44\5\154R4\t\229ռ\152/\8\250\194E\134\26\133\140gI\250_W\28\16]|\216\5\255W\207\241\\\139\130\166\0\27\239\242GR\15L\229\139\8\134\197N\17\174\253\239\161\247\224\20bXhª\215~\189\140Nwr\144-1M!\2022BD\230h\231\14\149\21l\19\239\30\150\166D\234\226\236\1G\167Qx\12\161\158.\8\191\246\222\215\247\243C\150\2\149S\147\23\180\253\4\1937\253\202LTM\201գJ\194\199lYHXX:\181\24Ң\181\1614bA\27\193ꦄ\250œ\199\218\234!0\140&\190\157\129\1\223{\185\247\1933\231\232˾ɠϟ'O<\216$\246\129\208gT\20\144\11\163\254\8 \15\129\145=\251\232\128\n0\168`\244`\200+\170\165A\130\19j\130\205c\176\132g\2s\208Xi{Cm\224\209\229\249\u{F747}k|\232\19m\130\254x\171\238\202qm\149G\246\1472\188\221R+[\138\26\240Q\22\244\0\12=\0\153F\3\154aN!\178\184X(.\n0\r\245)c\227\192\136\143}\194\11\249x\240\185\234\136\214vU%\186\254]*m\12X͐\189\165y7LN\199T\139a\189\148v/M\205\3\16g\246˷\174\217P\241ܰ\213Ǻ\250J1Y[\195F\0157מ(+\174\191%8\188\158\\\8a\179\7-xb_\202\")\30F\155\233\226\237\27^\26\175\0\196*R\12\19\223\25\228\145\200\221\217\28f\30\29\147\166\152\217\219#\233\172\"\1274\158G\2087\\\127e\195n\130`igeʔ\197\197:\219\2\151s\200\3\171Orj\30-\n\136\r!'5)\179\190OQR绫j,\148\28\224H\167\235\172|֯\24i\129\169\246\186\246\152kJH\169\193>\127i\202*\214e\240\155\195}\r\169\2470ՙ+\155iMof3\t/\250H\250\138\178t\1\20(Cr\195^\164\233\201\27\140\14839\170/\234n\12\161\4\2277\4\179\186\188U\134\18VR\182qÏ#\5\174\30?\165D]>\150\156?\242nm\169\238\26\252\209\t\235\222\252\149\161\220Ks\179²\17l\143\136A*5\230\22S\202l\191\2\30\19˺\155\165'\163\246{\6\0127\193샀\174\251FD\236b\n\210\223\224\130x\228\181A\5OX\249\229\1Y\21\169\177\23J\245\214\3m\188\173(\149y\255C\\\169ai\240\30\170X\140\2139FB\231\219\6t$\132(\216\28IY4\152\244ĺD\195-d\232\178:\186\192Rl8\231\1389,\245bVō)\22\148`\29\19z\163LǍ\136\140\214\246\216I\251\169\145\239\1\221j&\137\0\169@\227]j\247\129\222\213N8\27\197\217│\236\208\244ٲ\3j`M\150\230\20\228\197\n\142\141\141<0>\188鄁դ\27\243L蟲\139\203\17\172R\16\146Q\254\239\229a\28\152\169\t\172\\\n\25\167\131\176\142\1W\12XF\162\5\178\150\250\156~D\140ēm\210lN\211x\127t\249\247NA\165g\\\0126\129\4t\184A-\182\22\237j\188\176\152\193\194A\140\2375\r\227Ľ\133\239\215\218A}ȾfP\193N\20\172b\232/\127\1584n\163\178\14\240\170\181vl\217_$\137\222?\26\31\183՜\255\175r\186\254u{\2L-\255+\218\243(\167\30\29\205h\159g\178\246J\181\224VcW\251\1597\150\5T\151\235\170ɱُ\25?\159\129\130'a\28\155\172s\255\207 X\155\u{5C8}\178}\218V\157\136i\178k\3]\18\17\248I\214\241=\166\204E`\\\135x\139\137\2026\143.\30\2\252kkĀ>\226\1598\139'1=\177w\255z\176V\196\250\198x!x\2=\172\1\162J\\a\132Q\246\251\30\130\130َ\142\244gc\179|\238\142\31\244*]\145\177\11\163\149XP\147҂V:\166'\220d\2513%vW|\230ţ\157\159*\159\201-\2126\204\243\251\137\209\tc\235$\12Cҷi\236\129\16J6\175]8\2115h\7\179:\159+\170\5<J\193\2\2077>\255\128~C\18\23\134@\176:\24\198\248\158\247\148\229\188\t\132ͳ7\255\226\254x\235.9\159H<\25B\2332\254\232>9\253\132:AϳQi\180\"4r`J\29\22u\242\0Vq9\26\174\tXc\157o\129\rQ\171̌\244\170\135Q\30\141\199\239\19\142F\248A\253\8uy\164\229\180=.g\232\31\141^KڀLk\n\130\215\229|\142LZ3\6\19\134\1279cGȡ\16\148\6\184\192\191x\208\225\134zU!C\241ץ|\181Fxp\149Kc5\232~;`\11\r\222\249\217\236\145\210\196\29٧K\17\183\241@\130\30\141R\130s\"\230j\146\133\211\8gRI'I\"$\223$\207v@co-2f&ZMΉ\218\195-\3\170\162\216냘g\145f\162y$.({t\195\234b\144\182\2148\254\225\rl\22i\160\205Z\16s\171\201\14\1396\247\220\"\233\"\1570]=+\145\172r\127\155\240\235\16\n\184\129\29\1349\t\240\144I>\149!\136q\212L\n\251\176S jV\20{\143\6\243\1433\219\214,\131\212[\197\234W5\167\146 ǻ\1561\197\3\8\223.\209ץ>ў\176t\218\n\152\191\216\216\29:\192\174\26\178\232\162=\225-\235H)\173l\171\230\237oڕN*9\189Kqp/:\172\27\127qJ#\t\1561\23Dl\243|\226k\233e\212\23\250\8Z\0\188\235\199\"Td67\159\138\227Lv\21gx\182)\247c\184\198\27\193\212n)\177Py\17\31\227\229\24\148\"\"\213\223er\138IS\204,\216\237\190ړ*b\154\247\171x+\27tꅐ_\233*\174\2434ylk̤\140\179\28\218\206/\166\5\223!\206?\243\151u-\11\237\137\t\196n\174&A\237\183\147\18W\210\0129<rQ#h\189\170\232+=X\246#\167\177\203\241SӇ\153\233\19\1308\165ἳ\156E\143\236=\190lS\158\183MGN\137\158\188\238Q\131\\\171;\148\7\133\240\19{\234\168[c\237\154{\215\0_\3\153\191Sj\142\171\18\196,\4:\227\254\229\5=:\209\15̼ڏHW\232:\249;\174k\217\202\228*\149h\242\127\0038\251F\2100\233\127xh\8\246\11bE\221\244\254\221\241\179ai\128_\237ao\26\28\156\28\243\174-\199\220k\179\164\136\u{5CA}\207\218\20?\145Y\17\20\196\215h\254qs\173?\18\15!\148\187\149vJ\17\190\27s\154\236\238\187\243\4\137f\155\185\157\171yFN\225\169z\136Q:\127\203\235+H}\12Zl\1601\155\134*E\143\0308\162\25\235I\231ŗ\232\15\1a\132\2131\196\249\14+%\190*\141\3V\241O\16]\26\153\206\223t\6P\128\rY\231v\207\255L\209<-\191JӺ\197쌔\170]\196e;h`Vt\250T\226\225\201\253\163\207\193.\\\230\230`m\244\190a\221k\222SE\1357\4\188\161\n\6\1\177\245\230Rf\24\247O\np|\2182Qa\u{7BC}\164N\150\159\190\182\25F\195\2F$\147\202pit\253\136ka\181\188\198-a\1688\146V\251\237$9s\145\148\164Y\239\23\15g\234\240\159\255|\209\21\161\214\223\211@\159\185Yn\237\250\190dHO\26E\169;\132y*\228EB\219\253\213*\181N\194\213e\239\187W\197\0\152P\1848\245\195\26\181\132\246\223jpG`\225~\u{5FB}\213\26!\2\225\14$\215/\24 \211V\21\8\134g\184C\26\150\18\0\151\149\229\158U8\175\249a\17\238$Q\180zE8\134\12b˭^\217=\160rV\164]\144\196\12gdc.\179\12u\245\19\16\145+v\246\138\29\1685\179\176\131/\161\146O%\1345\1\1908=Nd+\177䗺\1385\230\127`\204\15\2\197\8 \12\142\222\248\25\151H\206\192J\21z\172\179&\236\31\228\226l~\244\201\218\227\1827\132\15J\2528\168e\138Y\16\"iƦ\11F\253\247h\197(`:+\147\231#\255\158\28\186_\164\20E\235\215g\179\176\246e\181\216\233\242Z\220T7\216g\16\u{7BC}\29\228\0087G\135M\135 9\244Ę\163/_~m/\8A7&\"\195\u{F250}\191&\208\220L\17836u\2555\166{{\1353\151R\202(u\158\255\186\200\6\136\198\243,K\1qK\150\210c\218\240$\145\215\242\151\5'q\242\196\18C\146\1\8A\6\3\254\129R\177j\180KG\243\164\201\31\1904S\"\254\216\16,\142\n\253ii\27\237ј\210\238S\248\229\218\233\192I[k\228\215\197mQ\191\191\178Y\224\144w\5\11@\235b-\25\176\243\141&\216\236\"\253\30\186\240-L\156yR\23\146\24\174\152\200'\252;҅s\244\227\7\150|\174\0\156\165q\214\241s\29%:\199T\179\180Hh\145f\136\172\219\230l\207%,\197Oq\177\244\253\178R\8\1308\154H\178\144\219h\146@\26\249\167\205\236\2217\138\242(7\128[\233Ri\11\173iǁ0\222ι\229\207\240\229\232\253!\6ݹ\188\192\2:`E\237\6\221oP>\210\247c\14\212\31\213\218\232\6`\29\227\180=\220@\235\236\140$0\221\207%\240V\174 \180\249\225p\22\24p\206n\213h\149\4\30\183\1684P\234\130}\14\254\160p\199^A\185\158\214E\241\146xi\2549u\19\146\26\0\3\6\165PL$`͆\185\229\\FS\219\215 !>7Z\229*\16؛E\192\129\211ؗ\149\231-\180\164\243\231r\r,\0217lU\188\159\172R\n{\195\29.\235Ak\208\249\174XI\246\0\175\141hP&U5+\24}M*\1501*\181\188֥!\248KƁ\214~\8\173<F\u{1316}n\6\215\193\30\127\t\2\197#XG\128\226\151M\178\3\139F\173)\227\12\247oi\140S\215\235\174or\17gj\160&\229\168\205\200\236>\195$\22\1968\237E\189\235\131\231si\139S\222qp\188\246\249ӝ\137ilb=]\"\226\188P\225hj\182W\238\236\29m\218\255!\"\2051\226hC5\231\242P}\224NB\201\17V\31U\208=\232\245}(\128\0185\23\168\165\158h|\7\227\171:\160\20\r\145*\244\0227\197=\199\8MLk\133Q\131x\166\248\12kD\192\225\254\252\1900\244\219[>xc\225-Fk\225!\246\137\148\185&\18\12\254x\147Ռ\170\"\234g\159/\223D\193\25dI=Vl3\15\133\152\163\29\r\210\25\174_\214\2\1352\14\163\144\239Z\229\1640\132`\217{\178\24\186\247gu\11\182\211ٖ\164~\177\180\158\18N\199\229w\226\8\130z\127(\255\29\157\21\187x%\252\193\190\129\212\nPU\12\164\238\158\227V\22h\216\23r8[\166\201\19\127\135\179F\232\137\31\0246t\139\242\241\203\218\236\193T\233\198Ϩ\145K\2245\29,\246\144\154\n\247&\25j\8\181\237\187\"\224\244\254mt\178iĻ^#\"\162\231\14hn\173\225\20\221\200P(`q\247ÿ\204\252\254%\149\2\28~\156\3\204I\29\225q\191\189\245\151\133\181\224\233\254d\163%+g\8O\169\4\20\130]\176\3\252\15$\\4>]L\28\154]\229\233\248\17\17\211\244\203t\141\181l*.\\|y\6\247\242\135\226\187\22\131\15\231˄o\151S.\6+\158\247\8\238\12\159\26;\239\158\249\163\3D\247Z\0\182\201\212p&c\183D\164\254\129\132\175,_\244,)\5\236\12\167\160\185\191\212v\241~\176Eh/\202Y\161\135\179\188\133ˊbN\224-Ь\140\7Kc\149\138\20M\223s\23\2502\130\3\146-\1923B+\222\253\25\241\153\173\14/\226\219\0178\4\179vd\18\246\17\22\155\176ګ\r9\26\215P\175j]d\133\183\251\n\3w韞v\222Cq\167g\5y\242\0126\12f^\241E\213\255\234\250ȝ\31\224\174\0209\185*\251\22\2336\190\193,\28\134k\28\133?\241\130\179\233\146\250\178\148\217#\243\191\213\224\6\29h\28\8\224\162p,\129\16\151Џ\"\196\20\172\6\176\157\134\231\210L\r\244ԧ\198I\234\245\1503\217\n\244zl\152\1319\"->ƕ|\14\197\27\163L3\207&\1763$2\233S\168 I6\227\6#\248\28\168ne\128f\230u\252bm\174\202/\225\172BKi\232\31\158\131\6\170n\30\134T(\247\n!|\162\185ND\250\225{b2\133\29\19\178SŘ\252\6\146\139\143_}\231\31x\140\129m,\132\5\200J\234\162\12\197WjЇ\23\244\6\137\2213\224٭I\3\204\247\226ҤO\28\2209\1878\128I\208V\250\12\241X\0243\249v\174\248$\19\159\180\178\1980-\1460\246l\134,ග\245\247\26\138y\131\252z\166\208\197:O\1486}H\128\164\205\200\225+\232H3l\152\7h\140\26Q\251f\210\255z\153\142v\191D\193w\2459\234Ap\253\165\233\1866\201Y;4:\129\136\168%*\168\139\181*Uf\1\237h\195e\201\200Y\189\180\160\21\29\178\11\0\6\252\224\204\t\203\213\252<\241\143\n\139(\161\153\174\159%\n\254\159\152\155\193BQ&r\137X\2104<\186\n\0305Qh\167\127P)z\18pJ\193L\156\139\221|\8\232\22\2394\29\155\27\250\203\248_\17f;\244x\209\29\197\12k=y\21R\185\254F\0237\1\17\156\204^\135\19q4\233J\159\n\158\20\218Kʬ*\206v\249h\183r\228\1969\151\22c\139\187WM\216A\26\183\182dX\172)\188d=\167X#w\0\2208v\229\175\28\246\178\134\140\234M\244\135n\141\149\18B\242\2212F\151\\\2\182\184\211{\189\175\1982\156GT\144\165\6\214\243h\20\138\"-\202\26\246!\7\1633T\235\226\1284'\134L\6\174Bh\31u֛`E\8\149\169\179\18\211\213.\23\166\229}S\186\187\203P\175\1\1347=\181\t.\4h4\233\3IK\148\134\t\161\204\254Y\154\141\1634\224\135\n\20Ρ\237\18Rh\135K\160\14866\1831=\22<\180\140\12\212)\168\178\163m\241m\140\184\205!\173\174܈\152\193\234\196?\141\168\1\23A\169/\229\206\251\18\209M\215S\134\138|\1\196R\168\25\29\21\252\165\228\3)\136VF\225|X}\2\"X\157\193\149\220\t\131%\178\31\240\131\6Z\215zY\162\4s\1676\183\1494\160&\16\179\\\21\149\6^\213\224ѐ\169\238\191mn\169\159M\189\242\142\1378\182\15\t\185\"\177q\27\250sX\197ߙ\163\159+^\11,+\2527\7\170\236\15l\147@\166;W\131\25\\œ\194ډ\00237\131\168\159y\204\246\161U\156\138Ǚ\229\231+\132r;ķ\199\236ΰ8IU\164M(xOTz\17\183֙B\165\11\203z\153\233\23\209`ⱄ\238\177R\152H\251;\1407\238c\227\21\238ϧ\141\224\157\5x\223\218%\11\135\t\144/\199\2280\182\220\19\2056#\215\1944\235\218[a8X\197\8G\249ɒ!zP}Ш\203ˉ\227\160\248x݈H\144\166&\144\134\20\3\239@}\127a\19\21\188\244k\185\193|=H\11\246g\20\n\15\147l\180\29y\nt\151\235dczH\239\140[W\203|\230\178\20\227\212p \234\232\220{\230\"J\221w\133Ʊy\215k5\225\196X{\172G\175\137\2\175\23\6{^m\184\20\199s\250\4\133\12Ū\173V\4h%\3\230\174j\22\207Yَ\174\2\253Pu\19D\182\\\150\t\23\163\248\139\254hkOH\149\200\6D*ĸG\218\1\160ܒ(\244v-L\233\161\226\230@)!>q\190\192\135\212\r\224|\6Xx\127\8\u{74B}:\29i\147\132\223g\153l\162x\213䃧\\\31\174\227S\178\2136\u{E2B3}\137@\244\19\6\163\203\12\240\175`:т\17829\4rӨ\144\188\12\2535i\127\227\133\19\30\143w\1985I\133\208S\0\171\141@\1789\19\220&\239\7\140\138\187~4^e\159yyH\131~\225~\0015\171qj;x\180\8\188\n\r.$\170\t\223j\6\195\30\26\232\193\12{\173\12\177͐\240\237q\20%\156\178t\23ۼ\206\241\6\4$i&a\172\197\11\27\163\204\233\"\193W\247\145\205\229i\129\23w\219\22(bj0\242\150W\136\175)q\200\209\26/\2412\248\183\234y\247'\\{\237d\212\n\250g\248\2,\150\198\231\224\1532Y\230\228\190F\158\245-\176\148\195Z\14\179\0\152Z\7\208\217\226\140C-\217\197-\159\230\224\1775KS\219\21\141\190\240\159DW\183G\199\17*<ϫ+\165\243\194`\192\27\141\143\207<x\176\145\24Cm\138\7\162 \1394\179\215N\30u?\130\129W\148\241\175ZM\240\200y\164´\131c\171\20Ft!O\28\213:\2270}\167\242\237\165\7(\136\254VZP\153:\244\156\u{8B}\12\162\138\159\201N\200`\16\254\185\2\165d\r\239χ\\f#\1333\180H]\200\4E\246i\247\150\251\252#\12\154\14\165\137\153\246(k5\166\u{5C8}\129\16\213\1\183eJ8\8\127\243C|\151\158\138\17\14zO\191\168XQ\250\243e\25\6&\2B\240\8\140\190/\151\196\227\192\152\212\228\199qC\203\18\235\221ɼ\176\156\155C\179=\185\238\217>\1670,\251P\25O\137\226U\230\"[9\178\153\131&P\202F\147\134\239M\24370\225\134U\26\rAo\"h\23\26\192\254\185\162\255\151\168S\134\25;%\192~d\t\29\243\144A\156\187\200\25!n)\147D\140\130\224 \24,F\20\155\156\168\165\128R\193j|\245\7\140\165\4*7j\212\210K\129E\232\135s\242\11\175n\24691r\183ӟ7\134p\6\174}|\1\tp\133\250Ѓ\129\214\6\28\247\134Kx\184\198\22\219\209Z`\5\148z\21\\V\22\132\15\26\166_a\208\199\21\29*6/\234\u{80}\196S\151n\134\19(\7\197x`m\242\135\8\247\160%\221\236\1949\157U\128Z\29\18\159\231b\168\166\169\198\24\190\177z\156\131\171\245\148\247\217\2534gq\29SsGF\174\161\145\177\5W\221aw\141\20\14\155\128\15\203%1I;\155,\196\12\1r\132\24\224\16j{\25\182\177;\147\212\127\202\t\233\29\203aF\143\206\4\201z\"\30\228u\24T\136\26`\147(K\\5 \240\160@GR\229\164Z\216+\189$\201Mg\18%^\6H\206p\202\21\16\1321\183\5\253\250܋o\153\234\128tx\243\162w\28\162;X\169\184%\169\\\209\207\26\24T'\u{382}\21\143\149q\151|\202\254\190ٵP9N탰AT\27\5\1536\214\8\243\163\205\"\233\132Y9\247\224|\139\198'\208__\251\252z\192\182\228&@\232\2532\183}\247\151\136K\28Z\155\138[\188\130g1\25E\216\195\239\167 \176\169\226\145\15D\255\248Z\214\228#D겇́}\246\133\20r\224\1499?0\231Tꄠr#\166]L\242\217\250@\129a\\\157\163\148\199$\173O1\1762\242\220\232\224\234\0066D\6\238\173а\172\180\145\151g\0\174\187ΉH\29mH\133\u{379}X\132\22 \168\165\248u7\148.Š\137Ie\220\238\4pJt\u{EDD9}ƾ4c\255\140\138\226\243\191\178\27\147\137_\199\2349mo1\131Y\188p\236\24\239\28O\181\174\252\159}\178\24e\178\236\\\7\237@\161p\12\188k\160\208xho\164`\184g\17q\18\210\4s\152\169T4\181\133{\128mXSH\139\2110\0\211t\151~\161\250\235T\239\19300\161\203\242\197ˡi\245W\144\22\2211\245\243\235\244P\23S_W\185\148uBԹI\212[i\248E\30$:\166\235\188\224\157\138]|K\169m\164\130\134{\1337\143\235p\28T\4\"\203\23\253ҡ\163\164\1995/\163\182\5\28\198E\163\187\234s\213\210\r\137\238\224\139s\160\0038{\22n\174X\128\19{\193\148{R\136\200e#AS\231[\243\166ٽr\154\"\203ř\232\12\12\192\215%9A\22\26\140\239\25^ȩ\168wqr\0m\213\\\211\na\227\24o)\26\139<\222e\175\148\175\208M'UH\225\2123\127\212R\203~\220\n\24\25e\217`\151\177\231\145)\249D\152\200\t\244\152T\166\192F'\18\175\244\201\1]\245Qņ8D\0077\178\181ڋ-\11\237\"/&\30\190l\149\r]\143\212\24\219\227\139ȶ;f\139\255^<Q\195]ߞ\0q\135I'\160r\1300\247\15\141F9\n\235\236\178\250\138\195\236k\131z\189Rh\202˿\180\214+\131\177Eu\197\249&7o\205\219\245\151ލӜٴ#i\184\255\145\159\240\194\5\176\5\u{95}\6\186\6\246\31:\139B\00633e;\133+\130H\141\245~\179X\229\150m\199 '\1\0033%\251\156\175\145\194\247\166\173\133Φ\1865\144\164m[\4\199~$\136?\6߈\211\240F\176\135݇\164\195u\181\209U\150\134:e\2D\135\227\16\132)buJ\\t}\243Q\149\247v\186\200z\188\1>\1ń\20\162\11\216~\231\241Q\8\252\213`\194At#\14X:\"o\0\197t\214@\196\205\209\198\215W\133\157<\174D\228\243\142B\169\143\188M\245\2\250G\136\160k\140u\136\28=\147d\218\237ԟ\189\249uf\159R\198Õ\170,#\22\5\182\135\140\15Q\159\181\16{2\0\16\7\139\6\228f\204\248\17,\20\25ȓ\154)16\175 \184Z+\253\2124\5焉\18\7k\136\210]\162\234\197R\158E \19@\28\240|c\224\176$\187\20e\14u\"^\11=\226\135\252\246\176=\169\4\162\190.\127\183\207\205]\141\12\200\214x\145\212lgr\234\249\28`\16\189\133oٰ\2093\189\20\165\232\"i\161\n\205\235\224S\192zף\167\143\190F\181\r\247\229\157%\14Q\222*P\152wx؈\250\12\172үІ(f\251)\181w;\144\165\192 \171\n\238\n\23\180\131v\139.\230\150Xbvd\161#a\250\230e\190\133\138\151\209h\147\131\199\203\254f\24\254\135ǽz\4O6\210\227-xi\207\245B\161\194\194/\165\130*L\225³߬\255u\29\180\\R\205u,W\217\193\29\154\199k>%\18O)`y\255p\0111`\17\172\31\184G\"\232\213\2067q*\227\28,\183\169\226U<\185^\8\160\134\152\0fV\206\240\20\193c\\\212u\148\238\211(\162\198\206B\167_\4\250\143\2512y\190\180\28{\171\148\142\135ߦQ\26Ah\169:\30\176>\u{5CD}\158\12\189l%\207\n\249c\154\214\246_\204\31\215B\217>@\224|X\186\152\2277OU\196F;\171ی@N\173\149ӌ\191\1\178/ڕ'\1388\179\224_w\152\r\255\235)z\185\165\131\215yl\15m\208.Q\181\168\228/M\222,\138\148\2T\20\230aܨ'\255\165l\127\0213\5;\180H\155\14\23\31\133\168\239\152$ܢ\245yO-\221B\157\173\134\252w\233{E\130\148\214jH\3\174\255\205\210V\1\211\"\157\237\130\222yr\143r4\31Z[\"t\14\224Fx\29\1589\215\253\t\188\25q\0014\199<\140\227\247\135*9\204|:fo\169\20i\150TqN\182\28\146$\130\31\251\177e\148\219\228\201^\248\142\165\130\233c\157E\1578\2Ug*G\31/B\146\254ƱA\222\192={\140\25H\20\17\252\138\27v\17\30ҵ\159`\134\224\228n[\202\17\26j@\214∳\242\1749\8!u^}9\204]\213\243\169^&F\204EI\0039:9ѽ\208#\172aRx~VINL\241l\227\22-j\137\185\192{\1915A\167\165G%9-\234E\147\18\21\179\210p\176\218\26\243\207\234\252\4\206\31b\11w[\188z\195q\15Ɨ}\2254\149\2321l^T\142\234g\225\250\188\179\187\2418T\225\191\243\180\178V\226\207a\25\234D\154\170\239?a\131g 1\146\165\21/2H\17\232i\155\176\161\197\255\210\230r{\199\253~M\231f\148A\245\246,o\\\26Z\29q\r\23\200/\141\12\27QjJ\191\"\249\240\rߍ\245\184\22h\132\198Me\11\171i\"\167_d\243\222\203\27\226\140\233@\6\244\200U\6\245H\202}\130\20;\252\1\227\19h`\186\230\132_\\\184\136\151\"\27\140\165r\239\203\223:\138\31̚EC\201\22`\160#9E:\162Ƞ\n\234\5\162\204\0\134\246s\228\213E\28kU\150\170\192\206J\11\171\214f\0\151\163\159a\11sU:\3\4ȫ[\234xQz\221\248`\154\\\8Qgҵ\23\182\1618}\15/\146\132f\1546z\229\157"), {
	[21] = 141,
	[9] = 6,
	[18] = 172,
	[12] = 54,
	[3] = 12,
	[19] = 177,
	[11] = 153,
	136,
	[5] = 60,
	[6] = 28,
	[17] = 138,
	[22] = 160,
	[13] = 12,
	[16] = 212,
	[8] = 162,
	[4] = 228,
	[7] = 121,
	[10] = 213,
	[20] = 164,
	76,
	[15] = 175,
	[14] = 145,
}, 553)

local V33, S

do
	local Now2 = os.clock()
	local V34 = V25()
	local V35 = V26(V34)
	local V36 = Fn15()
	local V37 = Fn17(V36)
	local Tbl = { Url = Str3 .. "?d=" .. V35 .. V37.qs, Method = "GET", Headers = V37.hdrs }
-- start of bs 

    while true do
        wait()
        if not (game:IsLoaded() and game.Players.LocalPlayer) then
            continue
        end
        break
    end

    local Config
    Config = {}
    local HttpService2
    HttpService2 = game:GetService("HttpService")
    local Str10
    Str10 = "Banana Cat Hub"
    local Str11
    Str11 = "-KaitunLeviathan.json"
    local Str12
    Str12 = game.Players.LocalPlayer.Name .. Str11

    SaveSettings = function(Arg, Arg2)
        if Arg ~= nil then
            Config[Arg] = Arg2
        end

        if not isfolder("Banana Cat Hub") then
            makefolder("Banana Cat Hub")
        end

        writefile(Str10 .. "/" .. Str12, HttpService2:JSONEncode(Config))
    end

    if getgenv().Config then
        Config = getgenv().Config
        SaveSettings()
    end

    ReadSetting = function()
        local V60, V61 = V13(function()
            if not isfolder("Banana Cat Hub") then
                makefolder("Banana Cat Hub")
            end

            return HttpService2:JSONDecode(readfile(Str10 .. "/" .. Str12))
        end)

        if V60 then
            return V61
        end
        SaveSettings()
        return ReadSetting()
    end

    Config = ReadSetting()
    getgenv().Settings = Config

    repeat
        wait()
    until game:FindFirstChild("CoreGui")

    repeat
        wait()
    until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")

    while true do
        wait()
        if not (game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("DataLoaded")) then
            continue
        end
        break
    end

    FireButton = function(SelectedObject)
        SelectedObject.Selectable = true
        game:GetService("GuiService").SelectedObject = SelectedObject
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Return", false, SelectedObject)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Return", false, SelectedObject)

        SelectedObject.Activated:Connect(function()
            game:GetService("GuiService").SelectedObject = nil
        end)
    end

    while true do
        wait()
        if not (game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")) then
            continue
        end
        break
    end

    local MainMinimal = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")

    repeat
        wait()
    until MainMinimal:FindFirstChild("ChooseTeam")

    while true do
        wait()

        V13(function()
            FireButton(game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container.Marines.Frame.TextButton)
            wait(1)
        end)

        if not (game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") and game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:FindFirstChild("ChooseTeam") and not game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:WaitForChild("ChooseTeam").Visible or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main") and game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and not game:GetService("Players").LocalPlayer.PlayerGui.Main:WaitForChild("ChooseTeam").Visible) then
            continue
        end
        break
    end

    game:GetService("GuiService").SelectedObject = nil
    getgenv().ExploitReq = syn and syn.request or identifyexecutor() == "Fluxus" and request or http_request or http.request or requests
    if getgenv().LoadScript then
        return print("Double UI")
    end
    getgenv().LoadScript = true
    local LocalPlayer2
    LocalPlayer2 = game.Players.LocalPlayer

    if Config["Auto Dragon Storm(Risk)"] then
        task.spawn(function()
            local Players = game:GetService("Players")
            local RepStorage = game:GetService("ReplicatedStorage")
            local player = Players.LocalPlayer

            local TableAttribute = require(RepStorage:WaitForChild("Modules"):WaitForChild("Util"):WaitForChild("TableAttribute"))
            local WeaponToolShared = require(RepStorage:WaitForChild("SharedComponents"):WaitForChild("WeaponToolShared"))

            -- SeatController puts Locks.SeatLock on every Backpack tool while seated, which disables the hotbar slots
            local setKey = TableAttribute.SetKey
            TableAttribute.SetKey = function(self, inst, attr, key, value)
                if key == "SeatLock" then return end
                return setKey(self, inst, attr, key, value)
            end

            -- Humanoid.Seated sets component._seated = true on each weapon tool; while it's true a tool that
            -- reaches the character is bounced back to the Backpack before Tool.EquipEvent:FireServer(true)
            local function unlockTools()
                for _, container in { player.Backpack, player.Character } do
                    for _, tool in container:GetChildren() do
                        if tool:IsA("Tool") then
                            setKey(TableAttribute, tool, "Locks", "SeatLock", nil)
                            local comp = WeaponToolShared:FromInstance(tool)
                            if comp then comp._seated = false end
                        end
                    end
                end
            end

            local function onCharacter(char)
                char:WaitForChild("Humanoid").Seated:Connect(function()
                    task.defer(unlockTools)
                end)
            end

            if player.Character then
                onCharacter(player.Character)
            end
            player.CharacterAdded:Connect(onCharacter)
            unlockTools()
        end)
    end

    local Getupvalue = debug.getupvalue
    getgenv().getupvalue = Getupvalue
    local Getupvalues = debug.getupvalues
    getgenv().getupvalues = Getupvalues
    local VirtualUser = game:GetService("VirtualUser")

    game:GetService("Players").LocalPlayer.Idled:connect(function()
        VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

    local Tbl7

    do
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        game:GetService("RunService")

        Tbl7 = {
            Colors = {
                Green = Color3.fromRGB(90, 255, 150),
                Yellow = Color3.fromRGB(255, 210, 80),
                Red = Color3.fromRGB(255, 85, 85),
                White = Color3.fromRGB(200, 200, 210),
                Blue = Color3.fromRGB(90, 170, 255),
                Purple = Color3.fromRGB(190, 120, 255),
            },
        }

        -- Speeds tab: the saved value when it's a number above 0 (an empty or 0 input never reaches the tweens), else the default
        Tbl7.SpeedDefaults = {
            ["Speed Player Tween"] = 150,
            ["Speed Boat Find Leviathan"] = 350,
            ["Speed Boat Return"] = 350,
            ["Speed Boat Summon Leviathan"] = 350,
            ["Speed Boat Shoot Heart Position"] = 350,
            ["Input Speed Boat Auto Drive"] = 350,
        }

        Tbl7.Speed = function(Key)
            local Value = tonumber(Config[Key])
            return Value and Value > 0 and Value or Tbl7.SpeedDefaults[Key]
        end

        -- Reset: keep setting Health to 0 until it has stayed at 0 for 3s and the character has respawned
        Tbl7.ResetCharacter = function()
            local Character = Players.LocalPlayer.Character
            local DeadSince

            repeat
                local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

                if Humanoid and Humanoid.Health > 0 then
                    DeadSince = nil
                    Humanoid.Health = 0
                elseif not DeadSince then
                    DeadSince = tick()
                end

                task.wait()
            until DeadSince and tick() - DeadSince >= 3 and Players.LocalPlayer.Character ~= Character
        end

        local Tbl8 = {}
        local V60 = nil
        local Flag2 = false

        local function Fn25(Arg, Arg2, Arg3)
            if not Arg then
                return
            end
            TweenService:Create(Arg, TweenInfo.new(Arg3 or 0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), Arg2):Play()
        end

        Tbl7.CreateStatusUI = function()
            local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
            local BCH_Status = PlayerGui:FindFirstChild("BCH_Status")

            if BCH_Status then
                Tbl8.Gui = BCH_Status
                Tbl8.Pill = BCH_Status:FindFirstChild("Pill")

                if Tbl8.Pill then
                    Tbl8.Dot = Tbl8.Pill:FindFirstChild("Dot")
                    Tbl8.Label = Tbl8.Pill:FindFirstChild("Label")
                    Tbl8.Stroke = Tbl8.Pill:FindFirstChildOfClass("UIStroke")
                end

                return
            end

            local ScreenGui = Instance.new("ScreenGui")
            ScreenGui.Name = "BCH_Status"
            ScreenGui.ResetOnSpawn = false
            ScreenGui.IgnoreGuiInset = true
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            ScreenGui.Parent = PlayerGui
            Tbl8.Gui = ScreenGui
            local Frame = Instance.new("Frame")
            Frame.Name = "Pill"
            Frame.AutomaticSize = Enum.AutomaticSize.X
            Frame.Size = UDim2.new(0, 0, 0, 28)
            Frame.AnchorPoint = Vector2.new(0.5, 0)
            Frame.Position = UDim2.new(0.5, 0, 0, 10)
            Frame.BackgroundColor3 = Color3.fromRGB(12, 12, 16)
            Frame.BackgroundTransparency = 0.15
            Frame.BorderSizePixel = 0
            Frame.ZIndex = 10
            Frame.Parent = ScreenGui
            Tbl8.Pill = Frame
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(1, 0)
            UICorner.Parent = Frame
            local UIPadding = Instance.new("UIPadding")
            UIPadding.PaddingLeft = UDim.new(0, 14)
            UIPadding.PaddingRight = UDim.new(0, 16)
            UIPadding.Parent = Frame
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Color = Color3.fromRGB(40, 40, 50)
            UIStroke.Thickness = 1
            UIStroke.Transparency = 0.5
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Parent = Frame
            Tbl8.Stroke = UIStroke
            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Padding = UDim.new(0, 8)
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Parent = Frame
            local Frame2 = Instance.new("Frame")
            Frame2.Name = "Dot"
            Frame2.Size = UDim2.new(0, 6, 0, 6)
            Frame2.BackgroundColor3 = Tbl7.Colors.White
            Frame2.BorderSizePixel = 0
            Frame2.ZIndex = 12
            Frame2.LayoutOrder = 1
            Frame2.Parent = Frame
            Tbl8.Dot = Frame2
            local UICorner2 = Instance.new("UICorner")
            UICorner2.CornerRadius = UDim.new(1, 0)
            UICorner2.Parent = Frame2
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Name = "Label"
            TextLabel.AutomaticSize = Enum.AutomaticSize.X
            TextLabel.Size = UDim2.new(0, 0, 1, 0)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Text = "Idle"
            TextLabel.Font = Enum.Font.GothamMedium
            TextLabel.TextSize = 12
            TextLabel.TextColor3 = Tbl7.Colors.White
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.TextYAlignment = Enum.TextYAlignment.Center
            TextLabel.ZIndex = 12
            TextLabel.LayoutOrder = 2
            TextLabel.Parent = Frame
            Tbl8.Label = TextLabel
            Frame.Position = UDim2.new(0.5, 0, 0, -20)
            Frame.BackgroundTransparency = 1
            TextLabel.TextTransparency = 1
            Frame2.BackgroundTransparency = 1
            Fn25(Frame, { Position = UDim2.new(0.5, 0, 0, 10), BackgroundTransparency = 0.15 }, 0.4)
            Fn25(TextLabel, { TextTransparency = 0 }, 0.35)
            Fn25(Frame2, { BackgroundTransparency = 0 }, 0.35)
        end

        Tbl7.SetStatus = function(Arg, TextColor3)
            Tbl7.CreateStatusUI()
            if Flag2 then
                return
            end
            Flag2 = true
            local Text = V21(Arg or "Idle")
            TextColor3 = TextColor3 or Tbl7.Colors.White
            if V60 == Text then
                Flag2 = false
                return
            end
            V60 = Text
            Fn25(Tbl8.Label, { TextTransparency = 1 }, 0.08)
            task.wait(0.07)
            if not Tbl8.Label then
                Flag2 = false
                return
            end
            Tbl8.Label.Text = Text
            Tbl8.Label.TextColor3 = TextColor3

            if Tbl8.Dot then
                Tbl8.Dot.BackgroundColor3 = TextColor3
            end

            if Tbl8.Stroke then
                Fn25(Tbl8.Stroke, { Color = TextColor3, Transparency = 0.3 }, 0.2)

                task.delay(1, function()
                    if Tbl8.Stroke then
                        Fn25(Tbl8.Stroke, { Color = Color3.fromRGB(40, 40, 50), Transparency = 0.5 }, 0.6)
                    end
                end)
            end

            Fn25(Tbl8.Label, { TextTransparency = 0 }, 0.12)

            if TextColor3 == Tbl7.Colors.Red and Tbl8.Pill then
                task.spawn(function()
                    local Udim2 = UDim2.new(0.5, 0, 0, 10)

                    for I = 1, 3 do
                        Tbl8.Pill.Position = Udim2 + UDim2.new(0, math.random(-2, 2), 0, 0)
                        task.wait(0.02)
                    end

                    Fn25(Tbl8.Pill, { Position = Udim2 }, 0.1)
                end)
            end

            task.wait(0.03)
            Flag2 = false
        end

        Tbl7.ShowStatus = function()
            Tbl7.CreateStatusUI()

            if Tbl8.Pill then
                Tbl8.Pill.Visible = true
                Fn25(Tbl8.Pill, { Position = UDim2.new(0.5, 0, 0, 10), BackgroundTransparency = 0.15 }, 0.3)
            end

            Fn25(Tbl8.Label, { TextTransparency = 0 }, 0.2)
            Fn25(Tbl8.Dot, { BackgroundTransparency = 0 }, 0.2)
        end

        Tbl7.HideStatus = function()
            if not Tbl8.Pill then
                return
            end
            Fn25(Tbl8.Pill, { Position = UDim2.new(0.5, 0, 0, -20), BackgroundTransparency = 1 }, 0.2)
            Fn25(Tbl8.Label, { TextTransparency = 1 }, 0.15)
            Fn25(Tbl8.Dot, { BackgroundTransparency = 1 }, 0.15)

            task.delay(0.22, function()
                if Tbl8.Pill then
                    Tbl8.Pill.Visible = false
                end
            end)
        end

        Tbl7.Destroy = function()
            if Tbl8.Gui then
                Tbl8.Gui:Destroy()
            end

            Tbl8 = {}
        end
    end

    Tbl7.CreateStatusUI()
    local Lib
    Lib = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

    do
        local Flag2 = getgenv().Key and #getgenv().Key == 32
        local Str13 = " [ Premium ]"

        if Flag2 then
            Str13 = " [ Free ]"
        end

        local CreateWindow = Lib.CreateWindow

        getgenv().Window = CreateWindow(Lib, {
            Title = "Ayushop Levi [Developer]",
            SubTitle = "by Ayush",
            TabWidth = 125,
            Size = UDim2.fromOffset(500, 350),
            Acrylic = false,
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl,
        })
    end

    loadstring([[    local MT = getrawmetatable(game)
local OldNameCall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
local Method = getnamecallmethod()
local Args = {...}
if Method == 'FireServer' and self.Name == 'RemoteEvent' and AimPos 
and tostring(AimPos.X) ~= "nan"  then
if  #Args == 1 and typeof(Args[1]) == "Vector3" then
Args[1] = AimPos.Position
end
if #Args == 1 and typeof(Args[1]) == "CFrame" then
Args[1] = AimPos
end
end
return OldNameCall(self, unpack(Args))
end)
setreadonly(MT, true)]])()

    Translate = function(Arg)
        return Arg
    end

    tick()
    local Tbl8

    Tbl8 = {
        TabHunt = Window:AddTab({ Title = "Tab Setup Hunt Leviathan", Icon = "" }),
        TabSpeeds = Window:AddTab({ Title = "Speeds", Icon = "" }),
        SettingSkillMain = Window:AddTab({ Title = "Setting Hold \n and Select Skill", Icon = "" }),
        TabDevilFruit = Window:AddTab({ Title = "Tab Misc", Icon = "" }),
        TabEnchant = Window:AddTab({ Title = "Tab Auto Enchant", Icon = "" }),
        TabSwordRules = Window:AddTab({ Title = "Tab Sword Rules", Icon = "" }),
        TabGunRules = Window:AddTab({ Title = "Tab Gun Rules", Icon = "" }),
        TabRodRules = Window:AddTab({ Title = "Tab Rod Rules", Icon = "" }),
        WebhookTab = Window:AddTab({ Title = Translate("Tab Webhook"), Icon = "" }),
    }

    local Options_ = Lib.Options
    getgenv().Options = Options_
    Window:SelectTab(1)
    local Flag2 = false

    getgenv().IsPlayerDead = function()
        if not LocalPlayer2.Character or not LocalPlayer2.Character:FindFirstChild("Humanoid") or LocalPlayer2.Character.Humanoid.Health == 0 then
            return true
        end
    end

    toTarget = function(Arg, Arg2, CFrame_, Arg3, Arg4)
        if IsPlayerDead() then
            if getgenv().Tween then
                getgenv().Tween:Pause()
                getgenv().Tween:Cancel()
            end

            while true do
                wait()

                if getgenv().Tween then
                    getgenv().Tween:Pause()
                    getgenv().Tween:Cancel()
                end

                if not (LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character.Humanoid.Health > 0) then
                    continue
                end
                break
            end

            wait(3)
            return
        end

        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Sit then
            if getgenv().Tween then
                getgenv().Tween:Pause()
                getgenv().Tween:Cancel()
            end

            wait(1)
            getgenv().noclip = false
            game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
            wait()
            game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
            wait(1)

            if LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
            end

            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            wait(1)
            LocalPlayer2.Character.HumanoidRootPart.CFrame = LocalPlayer2.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
            return
        end

        if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") then
            if LocalPlayer2.Character.Humanoid.Health / LocalPlayer2.Character.Humanoid.MaxHealth < 0.4 then
                Flag2 = true
            elseif LocalPlayer2.Character.Humanoid.Health / LocalPlayer2.Character.Humanoid.MaxHealth > 0.6 then
                Flag2 = false
            end

            -- FrozenHeart = Leviathan already dead: come down even at low HP so the heart isn't missed
            local Panic = Flag2 and Config["Panic Mode"] ~= false and not workspace.Map:FindFirstChild("FrozenHeart")

            if (Arg2 - Arg).Magnitude <= 3 and not Arg3 and not Panic and not ReadyToDodge then
                getgenv().noclip = true

                if getgenv().Tween then
                    getgenv().Tween:Pause()
                    getgenv().Tween:Cancel()
                end

                LocalPlayer2.Character.HumanoidRootPart.CFrame = CFrame_
            else
                local TweenService = game:service("TweenService")
                local TweenInfo_ = TweenInfo.new((Arg2 - Arg).Magnitude / Tbl7.Speed("Speed Player Tween"), Enum.EasingStyle.Linear)

                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character.Humanoid.Health > 0 then
                    local Cframe = CFrame.new(0, 0, 0)

                    if not Arg4 then
                        if ReadyToDodge then
                            Cframe = CFrame.new(0, 150, 0)
                        end

                        if Panic then
                            local FrozenDimension = game.workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension")

                            if not FrozenDimension then
                                FrozenDimension = game.workspace:FindFirstChild("SeaBeasts")

                                if FrozenDimension then
                                    FrozenDimension = DetectLeviathan(game.workspace.SeaBeasts, 2) or DetectLeviathan(game.workspace.SeaBeasts, 3) or DetectLeviathan(game.workspace.SeaBeasts, 4) or DetectLeviathan(game.workspace.SeaBeasts)
                                end
                            end

                            local SelectOwnerBoatBeastHunter = Config["Select Owner Boat Beast Hunter"]
                            local Flag3 = type(SelectOwnerBoatBeastHunter) == "string" and SelectOwnerBoatBeastHunter ~= "" and string.lower(LocalPlayer2.Name) == string.lower(SelectOwnerBoatBeastHunter)

                            if FrozenDimension and not Flag3 and SelectOwnerBoatBeastHunter and SelectOwnerBoatBeastHunter ~= "" then
                                local V60 = game.Players:FindFirstChild(SelectOwnerBoatBeastHunter)
                                local HumanoidRootPart = V60 and V60.Character and V60.Character:FindFirstChild("HumanoidRootPart")

                                if HumanoidRootPart then
                                    local Position = LocalPlayer2.Character.HumanoidRootPart.Position
                                    local Position2 = HumanoidRootPart.Position
                                    local Vector = Vector3.new(Position.X - Position2.X, 0, Position.Z - Position2.Z)
                                    local Unit = Vector.Magnitude > 0.5 and Vector.Unit or Vector3.new(1, 0, 0)
                                    local Vector4 = Vector3.new(Position2.X + Unit.X * 300, 0, Position2.Z + Unit.Z * 300)
                                    Cframe = CFrame.new(Vector4.X - CFrame_.Position.X, 800, Vector4.Z - CFrame_.Position.Z)
                                else
                                    Cframe = CFrame.new(0, 800, 0)
                                end
                            else
                                Cframe = CFrame.new(0, 800, 0)
                            end
                        end
                    end

                    if (Vector3.new(0, LocalPlayer2.Character:FindFirstChild("HumanoidRootPart").Position.Y, 0) - Vector3.new(0, -60, 0)).Magnitude <= 60 then
                        LocalPlayer2.Character.HumanoidRootPart.CFrame = LocalPlayer2.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
                    end

                    local Create = TweenService.Create
                    local HumanoidRootPart = LocalPlayer2.Character.HumanoidRootPart
                    getgenv().Tween = Create(TweenService, HumanoidRootPart, TweenInfo_, { CFrame = CFrame_ * Cframe })
                    getgenv().Tween:Play()
                    getgenv().noclip = true
                end
            end
        end
    end

    local Caiconcac = toTarget
    getgenv().caiconcac = Caiconcac

    do
        local V60 = Tbl8.TabHunt:AddParagraph({ Title = "Status SPY", Content = "" })

        Tbl8.TabHunt:AddToggle("No Frog", {
            Title = Translate("No Frog"),
            Description = nil,
            Default = Config["No Frog"] or false,
            Callback = function(Arg)
                if Arg then
                    local Lighting = game.Lighting
                    Lighting.FogEnd = 100000

                    for _, Descendant in V17(Lighting:GetDescendants()) do
                        if Descendant:IsA("Atmosphere") then
                            Descendant:Destroy()
                        end
                    end
                end

                SaveSettings("No Frog", Arg)
            end,
        })

        Tbl8.TabHunt:AddToggle("Boost Fps", {
            Title = Translate("Boost Fps"),
            Description = nil,
            Default = Config["Boost Fps"] or false,
            Callback = function(Arg)
                if Arg then
                    local V61 = game
                    local Lighting = V61.Lighting
                    local Terrain = V61.Workspace.Terrain
                    Terrain.WaterWaveSize = 0
                    Terrain.WaterWaveSpeed = 0
                    Terrain.WaterReflectance = 0
                    Terrain.WaterTransparency = 0
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9e9
                    Lighting.Brightness = 0
                    settings().Rendering.QualityLevel = "Level01"

                    for _, Descendant in V17(V61:GetDescendants()) do
                        if Descendant:IsA("Part") or Descendant:IsA("Union") or Descendant:IsA("CornerWedgePart") or Descendant:IsA("TrussPart") then
                            Descendant.Material = "Plastic"
                            Descendant.Reflectance = 0
                        else
                            local IsDecal = Descendant:IsA("Decal")

                            if not IsDecal then
                                local IsTexture = Descendant:IsA("Texture")
                                IsDecal = true
                                IsDecal = IsTexture and IsDecal
                            end

                            if IsDecal then
                                Descendant.Transparency = 1
                            elseif Descendant:IsA("ParticleEmitter") or Descendant:IsA("Trail") and Descendant.Parent.Name ~= "RelicFire" then
                                Descendant.Lifetime = NumberRange.new(0)
                            elseif Descendant:IsA("Explosion") then
                                Descendant.BlastPressure = 1
                                Descendant.BlastRadius = 1
                            elseif Descendant:IsA("Fire") or Descendant:IsA("SpotLight") or Descendant:IsA("Smoke") or Descendant:IsA("Sparkles") then
                                Descendant.Enabled = false
                            elseif Descendant:IsA("MeshPart") then
                                Descendant.Material = "Plastic"
                                Descendant.Reflectance = 0
                                Descendant.TextureID = 10385902758728956
                            end
                        end
                    end

                    for _, V62 in V17(Lighting:GetChildren()) do
                        if V62:IsA("BlurEffect") or V62:IsA("SunRaysEffect") or V62:IsA("ColorCorrectionEffect") or V62:IsA("BloomEffect") or V62:IsA("DepthOfFieldEffect") then
                            V62.Enabled = false
                        end
                    end

                    wait(1)
                    local Map = workspace:WaitForChild("Map")
                    local Unloaded = game.ReplicatedStorage:WaitForChild("Unloaded")
                    local SmoothPlastic = Enum.Material.SmoothPlastic
                    local Descendants = Map:GetDescendants()
                    wait(0.5)
                    local Descendants2 = Unloaded:GetDescendants()
                    wait(0.5)
                    local Clock2 = os.clock
                    local Wait = task.wait
                    local IsA = Unloaded.IsA
                    local V62 = Clock2()
                    local Now5 = tick()
                    local N9 = 0
                    local V63 = V62

                    for _, V64 in V15, Descendants, nil do
                        if IsA(V64, "BasePart") then
                            V64.Material = SmoothPlastic
                            N9 += 1

                            if Clock2() - V63 > 0.0083333333333333332 then
                                Wait()
                                Wait()
                                V63 = Clock2()
                            end
                        elseif V64:IsA("Texture") and not V64:GetAttribute("Offset") then
                            V64:Destroy()
                        end
                    end

                    for _, V64 in V15, Descendants2, nil do
                        if IsA(V64, "BasePart") then
                            V64.Material = SmoothPlastic
                            N9 += 1

                            if Clock2() - V63 > 0.0083333333333333332 then
                                Wait()
                                Wait()
                                V63 = Clock2()
                            end
                        elseif V64:IsA("Texture") and not V64:GetAttribute("Offset") then
                            V64:Destroy()
                        end
                    end

                    game.Players.LocalPlayer.PlayerScripts.OptimizerClientActor:SendMessage("Optimize", true)
                    print("Time taken to Fast Mode: ", tick() - Now5, Clock2() - V62)
                end

                SaveSettings("Boost Fps", Arg)
            end,
        })

        Tbl8.TabHunt:AddButton({
            Title = "Stop Tween",
            Description = "",
            Callback = function()
                if LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                    LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                end

                if getgenv().Tween then
                    getgenv().Tween:Pause()
                    getgenv().Tween:Cancel()
                end

                getgenv().noclip = false
            end,
        })

        Tbl8.TabHunt:AddButton({
            Title = "Teleport Third Sea",
            Description = "",
            Callback = function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "TravelZou" }))
            end,
        })

        StatusCheckLeviathan = function()
            if game.Workspace:GetAttribute("MAP") == "Sea3" then
                local Status = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("InfoLeviathan", "1")

                if Status == 5 then
                    return "You can find leviathan now"
                end

                if type(Status) == "number" and Status >= 0 and Status < 5 then
                    return "Buy Find leviathan"
                end

                return "I DONT KNOW"
            end

            return "..."
        end

        FFCMatch = function(Arg, Arg2)
            for _, V61 in V17(Arg:GetChildren()) do
                if string.match(V61.Name, Arg2) then
                    return V61
                end
            end

            return nil
        end

        local ItemReplicationService = require(game:GetService("ReplicatedStorage"):WaitForChild("ItemReplicationService"))
        local ItemConfig = require(game:GetService("ReplicatedStorage"):WaitForChild("ItemConfig"))

        local function Fn25()
            local Tbl9 = {}
            local KEYS = require(game:GetService("ReplicatedStorage"):WaitForChild("ItemReplicationService")).KEYS

            for _, V61 in ItemReplicationService:GetItems(KEYS.QUANTITY) do
                if V61.Value and V61.Value > 0 then
                    local V62, V63 = V13(function()
                        return ItemConfig.match(V61.ItemId):unwrap()
                    end)

                    if V62 and V63 and V63.Display then
                        local Category = V63.Display.Category
                        local StorageKey = V63.Index and V63.Index.StorageKey
                        local Name2

                        if Category == "Blox Fruit" then
                            Name2 = StorageKey or V63.Display.Name or "ItemId_" .. V61.ItemId
                        else
                            Name2 = V63.Display.Name or StorageKey or "ItemId_" .. V61.ItemId
                        end

                        table.insert(Tbl9, {
                            Name = Name2,
                            Type = Category,
                            Count = V61.Value,
                            Mastery = ItemReplicationService:ReadItem(KEYS.MASTERY, V61.ItemId, V61.NetworkedUID) or 0,
                            ItemId = V61.ItemId,
                            UID = V61.NetworkedUID,
                        })
                    end
                end
            end

            return Tbl9
        end

        getgenv().CheckCountItem = function(Arg, Arg2)
            local V61, V62 = Fn25()

            for _, V63 in V15, V61, V62 do
                if V63.Name == Arg and V63.Count and V63.Count >= Arg2 then
                    return true
                end
            end

            return false
        end

        require(game:GetService("ReplicatedStorage").FruitInfo)

        StoreFruit = function(Arg)
            for _, V61 in V17(Arg:GetChildren()) do
                if V61:IsA("Tool") and V61:FindFirstChild("EatRemote", true) and not V61:FindFirstChild("Ignored") then
                    local Attribute = V61:GetAttribute("OriginalName") or V61.Name .. "-" .. V61.Name

                    V13(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Attribute, V61)
                    end)

                    Instance.new("IntValue", V61).Name = "Ignored"
                    wait(2)
                end
            end
        end

        require(game:GetService("ReplicatedStorage").Controllers.BannerClient)

        local function Fn26()
            local Gacha = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/GachaNetworkRF")

            if not Gacha then
                return
            end

            V13(function()
                local Banner = require(game:GetService("ReplicatedStorage").Controllers.BannerClient).TryGetBannerItemIfActive()

                Gacha:InvokeServer({ Context = "Purchase", BoxName = type(Banner) == "table" and Banner.BoxName or "ZiolesGacha" })
            end)
        end

        require(game.ReplicatedStorage.Util.runAsync)
        local Spinner = require(game:GetService("ReplicatedStorage").Controllers.UI.Spinner)

        spawn(function()
            -- Bribes this account paid since the Spy was last at level 5 / on cooldown (-1): max 2 per account, then it waits for the next cycle
            local Bribes = 0

            while wait(2) do
                V13(function()
                    local V61 = StatusCheckLeviathan()
                    V60:SetDesc(V61 == "Buy Find leviathan" and V61 .. " (bribed " .. Bribes .. "/2)" or V61)

                    if Config["Destroy IDK only Owner Boat"] then
                        SaveSettings("Status Leviathan", V61)
                    else
                        SaveSettings("Status Leviathan", V61)
                    end

                    if V61 == "Buy Find leviathan" then
                        if Bribes < 2 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("InfoLeviathan", "1")
                            local Paid = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("InfoLeviathan", "2")

                            -- 0 = not enough fragments (nothing paid), otherwise the new clue level
                            if type(Paid) == "number" and Paid > 0 then
                                Bribes += 1
                            end
                        end

                        if getgenv().WebhookIDK and Config["Webhook Destroy IDK"] then
                            getgenv().WebhookDestroyIdk()
                            getgenv().WebhookIDK = false
                        end
                    else
                        getgenv().WebhookIDK = true

                        -- Level 5 (Leviathan out there) or -1 (cooldown after it): the next bribe round gets 2 again
                        if V61 == "You can find leviathan now" or V61 == "I DONT KNOW" then
                            Bribes = 0
                        end
                    end

                    if not FFCMatch(LocalPlayer2.Character, "_BusoLayer1") and not LocalPlayer2.Character:FindFirstChild("HasBuso") then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
                        task.wait(2)
                    end

                    if not game:GetService("Lighting").Blur.Enabled then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                        wait()
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                        wait(3)
                    end

                    if LocalPlayer2.Character:FindFirstChild("RaceEnergy") and LocalPlayer2.Character.RaceEnergy.Value >= 1 and LocalPlayer2.Character:FindFirstChild("RaceTransformed") and not LocalPlayer2.Character.RaceTransformed.Value then
                        LocalPlayer2.Backpack.Awakening.RemoteFunction:InvokeServer(unpack({ true }))
                    end

                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")

                    if Config["Auto Craft Scroll"] then
                        if Options["Select Rarity Scroll "].Value.Mythical and CheckCountItem("Terror Eyes", 1) and CheckCountItem("Leviathan Scale", 15) and CheckCountItem("Leviathan Heart", 1) and CheckCountItem("Fool's Gold", 20) then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer(unpack({ "Craft", "MythicalScroll", 1, {} }))
                        end

                        if Options["Select Rarity Scroll "].Value.Legendary and CheckCountItem("Leviathan Scale", 5) and CheckCountItem("Fool's Gold", 7) and CheckCountItem("Electric Wing", 3) and CheckCountItem("Mutant Tooth", 3) then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer(unpack({ "Craft", "LegendaryScroll", 1, {} }))
                        end

                        if Options["Select Rarity Scroll "].Value.Rare and CheckCountItem("Fool's Gold", 5) and CheckCountItem("Electric Wing", 2) and CheckCountItem("Shark Tooth", 3) then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer(unpack({ "Craft", "RareScroll", 1, {} }))
                        end

                        if Options["Select Rarity Scroll "].Value.Common and CheckCountItem("Fool's Gold", 3) and CheckCountItem("Shark Tooth", 2) then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer(unpack({ "Craft", "CommonScroll", 1, {} }))
                        end
                    end

                    -- Recipes from the live RF/Craft "Check" (Beast Hunter NPC)
                    if Config["Auto Craft Leviathan Shield"] and not CheckCountItem("Leviathan Shield", 1) and CheckCountItem("Fool's Gold", 20) and CheckCountItem("Mirror Fractal", 1) and CheckCountItem("Leviathan Scale", 30) and CheckCountItem("Electric Wing", 10) then
                        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer("Craft", "LeviathanShield", 1, {})
                    end

                    if Config["Auto Craft Beast Hunter"] and CheckCountItem("Fool's Gold", 30) and CheckCountItem("Leviathan Scale", 20) and CheckCountItem("Shark Tooth", 6) and CheckCountItem("Mutant Tooth", 2) and CheckCountItem("Electric Wing", 6) then
                        local Unlocks = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables", "BoatDealer")

                        if type(Unlocks) == "table" and not Unlocks.BeastHunter then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/Craft"):InvokeServer("Craft", "LeviathanBoat", 1, {})
                        end
                    end

                    if Config["Random Devil Fruit"] then
                        if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SpinnerWindow") or not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SpinnerWindow").Enabled then
                            Fn26()
                        end
                    end

                    if Config["Auto Store Fruit"] then
                        StoreFruit(LocalPlayer2.Backpack)
                        StoreFruit(LocalPlayer2.Character)
                    end
                end)
            end
        end)

        -- The X of the spin window (PlayerGui.SpinnerWindow.AboveSpinner.Navigation.CloseButton). It shows up when the spin ends and its
        -- Activated just calls Spinner:Close(). Own fast loop so a slow Purchase invoke in the 2s loop above can't delay it
        task.spawn(function()
            while task.wait(0.25) and not Lib.Unloaded do
                if Config["Random Devil Fruit"] then
                    V13(function()
                        local SpinnerWindow = LocalPlayer2.PlayerGui:FindFirstChild("SpinnerWindow")
                        if not (SpinnerWindow and SpinnerWindow.Enabled) then
                            return
                        end
                        local AboveSpinner = SpinnerWindow:FindFirstChild("AboveSpinner")
                        local Navigation = AboveSpinner and AboveSpinner:FindFirstChild("Navigation")
                        local CloseButton = Navigation and Navigation:FindFirstChild("CloseButton")
                        if CloseButton and CloseButton.Visible then
                            Spinner:Close()
                        end
                    end)
                end
            end
        end)
    end

    DetectNamePlayer = function()
        local Tbl9 = {}
        local Players = game:GetService("Players")

        for _, V60 in V17(Players:GetChildren()) do
            if V60.Name ~= LocalPlayer2.Name and not table.find(Tbl9, V60.Name) then
                table.insert(Tbl9, V60.Name)
            end
        end

        return Tbl9
    end

    Tbl8.TabHunt:AddDropdown("Select Owner Boat Beast Hunter", {
        Title = Translate("Select Owner Boat \nBeast Hunter Heart"),
        Values = DetectNamePlayer(),
        Multi = false,
        Default = Config["Select Owner Boat Beast Hunter"] or "",
        Callback = function(Arg)
            SaveSettings("Select Owner Boat Beast Hunter", Arg)
        end,
    })

    Tbl8.TabHunt:AddButton({
        Title = Translate("Refresh List Player"),
        Description = "",
        Callback = function()
            Options["Select Owner Boat Beast Hunter"]:SetValues(DetectNamePlayer())
        end,
    })

    Tbl8.TabHunt:AddToggle("Account Buy Boat", {
        Title = Translate("Account Buy Boat"),
        Default = Config["Account Buy Boat"] or false,
        Callback = function(Arg)
            SaveSettings("Account Buy Boat", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Destroy IDK only Owner Boat", {
        Title = Translate("Destroy IDK only Owner Boat ( Toggle Only Account Boat ) "),
        Default = Config["Destroy IDK only Owner Boat"] or false,
        Callback = function(Arg)
            SaveSettings("Destroy IDK only Owner Boat", Arg)
        end,
    })

    --// Speeds tab: every speed the script uses, each read live through Tbl7.Speed(<key>)
    do
        local function AddSpeed(Container, Key, Title, Description)
            Container:AddInput(Key, {
                Title = Translate(Title),
                Description = Description,
                Default = Tbl7.Speed(Key),
                Numeric = true,
                Finished = false,
                Callback = function(Arg)
                    SaveSettings(Key, V51(Arg) == "string" and V16(Arg) or Arg)
                end,
            })
        end

        local PlayerSection = Tbl8.TabSpeeds:AddSection("Player")
        AddSpeed(PlayerSection, "Speed Player Tween", "Player Tween Speed", "Studs/s of every character tween (to NPCs, boat seats, owner, Frozen Watcher, enchant spot, Leviathan...)")

        local HuntSection = Tbl8.TabSpeeds:AddSection("Boat Tween (Hunting)")
        AddSpeed(HuntSection, "Speed Boat Find Leviathan", "Boat Speed: Find Leviathan", "Sailing out to look for the Leviathan")
        AddSpeed(HuntSection, "Speed Boat Return", "Boat Speed: Return (Too Far)", "Sailing back when it's more than 10km away")
        AddSpeed(HuntSection, "Speed Boat Summon Leviathan", "Boat Speed: Summon Leviathan", "Going to the Leviathan Gate to summon it")
        AddSpeed(HuntSection, "Speed Boat Shoot Heart Position", "Boat Speed: Shoot Heart Position", "Going to the spot where the Frozen Heart gets shot")

        local DriveSection = Tbl8.TabSpeeds:AddSection("Boat Drive (Tiki / Hydra)")
        AddSpeed(DriveSection, "Input Speed Boat Auto Drive", "Boat Speed: Drive To Tiki / Hydra", "MaxSpeed/TurnSpeed of the boat while driving the heart to Tiki or Hydra")
    end

    Tbl8.TabHunt:AddToggle("Drive Boat To Tiki", {
        Title = Translate("Drive Boat To Tiki"),
        Description = "Turn it on right after you shoot the heart, let it run until it's done, and avoid turning it on and off multiple times.",
        Default = Config["Drive Boat To Tiki"] or false,
        Callback = function(AutoDrive)
            _G.autoDrive = AutoDrive
            SaveSettings("Drive Boat To Tiki", AutoDrive)
        end,
    })

    Tbl8.TabHunt:AddToggle("Drive Boat To Hydra", {
        Title = Translate("Drive Boat To Hydra"),
        Description = "Turn it on right after you shoot the heart, let it run until it's done, and avoid turning it on and off multiple times.",
        Default = Config["Drive Boat To Hydra"] or false,
        Callback = function(AutoDrive)
            _G.autoDrive = AutoDrive
            SaveSettings("Drive Boat To Hydra", AutoDrive)
        end,
    })

    Tbl8.TabHunt:AddDropdown("Select Rarity Scroll ", {
        Title = Translate("Select Rarity Scroll"),
        Values = { "Mythical", "Legendary", "Rare", "Common" },
        Multi = true,
        Default = Config["Select Rarity Scroll "] or {},
        Callback = function(Arg)
            local Tbl9 = {}

            for K, V60 in V15, Arg, nil do
                if V51(V60) == "boolean" then
                    table.insert(Tbl9, K)
                end
            end

            SaveSettings("Select Rarity Scroll ", Tbl9)
        end,
    })

    Tbl8.TabHunt:AddToggle("Auto Craft Scroll", {
        Title = Translate("Auto Craft Scroll"),
        Default = Config["Auto Craft Scroll"] or false,
        Callback = function(Arg)
            SaveSettings("Auto Craft Scroll", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Auto Craft Leviathan Shield", {
        Title = Translate("Craft Leviathan Shield"),
        Default = Config["Auto Craft Leviathan Shield"] == true,
        Callback = function(Arg)
            SaveSettings("Auto Craft Leviathan Shield", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Auto Craft Beast Hunter", {
        Title = Translate("Craft Beast Hunter"),
        Default = Config["Auto Craft Beast Hunter"] == true,
        Callback = function(Arg)
            SaveSettings("Auto Craft Beast Hunter", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Panic Mode", {
        Title = Translate("Panic Mode"),
        Default = Config["Panic Mode"] ~= false,
        Callback = function(Arg)
            SaveSettings("Panic Mode", Arg)
        end,
    })

    DetectLight = function()
        local Tbl9 = { Green = "RelicGreen", Red = "RelicRed", Yellow = "RelicYellow" }
        local V60 = nil

        for _, V61 in V18(workspace.Map.Waterfall.IslandModel.DojoAddition:GetChildren()) do
            local V62 = Tbl9[V61.Name]

            if V62 then
                local V63 = V61:FindFirstChild(V62)

                if V63 and not V63.RelicFire.Attachment.Particle_1.Enabled then
                    V60 = V61
                end
            end
        end

        if V60 then
            print(V60)
            local Descendants, V61 = V60:GetDescendants()

            for _, V62 in V15, Descendants, V61 do
                if V62:IsA("ProximityPrompt") then
                    return V62, V60
                end
            end
        end
    end

    Tbl8.TabHunt:AddToggle("Auto light the torch", {
        Title = Translate("Auto light the torch\nwhen have Freezing Hydra Island"),
        Default = Config["Auto light the torch"] or false,
        Callback = function(Arg)
            spawn(function()
                while Config["Auto light the torch"] and task.wait() do
                    V13(function()
                        if game.workspace._WorldOrigin.Locations:FindFirstChild("Freezing Hydra Island") then
                            if not game.workspace.HydraIslandClient.RemoteFunction:InvokeServer("Interacted") then
                                getgenv().Webhookhavedracov4 = true
                                local Cframe = CFrame.new(5623.16259765625, 1207.139404296875, 913.849609375)

                                if LocalPlayer2:DistanceFromCharacter(Cframe.Position) <= 300 then
                                    local V60, V61 = DetectLight()

                                    if LocalPlayer2:DistanceFromCharacter(V61.PrimaryPart.Position) > 10 then
                                        toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V61.PrimaryPart.Position, V61.PrimaryPart.CFrame)
                                    else
                                        fireproximityprompt(V60)
                                    end
                                else
                                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Cframe.Position, Cframe)
                                end
                            elseif getgenv().Webhookhavedracov4 then
                                getgenv().WebhookUnlockDracov4()
                                getgenv().Webhookhavedracov4 = false
                            end
                        end
                    end)
                end
            end)

            SaveSettings("Auto light the torch", Arg)
        end,
    })

    getgenv().Chests = {}
    getgenv().BlBossHuman = {}

    loadstring([[    getgenv().GetChests = function()
local Dist = math.huge
local Chest
local Counter
for _, v in next, game:GetService("CollectionService"):GetTagged("_ChestTagged") do
if #getgenv().Chests < 10 then
local Mag = game.Players.LocalPlayer:DistanceFromCharacter(v.Position)
if Mag < Dist then
    Counter = i
    Dist = Mag
    Chest = v
    table.insert(getgenv().Chests, Chest)
end
end
end
end
]])()

    PathFindChest = function()
        local Children, V60 = game:GetService("Workspace")._WorldOrigin.PlayerSpawns.Pirates:GetChildren()

        for _, V61 in V15, Children, V60 do
            if V61:IsA("Model") and V61:FindFirstChild("Part") and not V61:FindFirstChild("Ignored") then
                return V61
            end
        end
    end

    GetNearestChest = function()
        local Tagged, V60 = game:GetService("CollectionService"):GetTagged("_ChestTagged")
        local Huge = math.huge
        local V61 = nil

        for _, V62 in V15, Tagged, V60 do
            if not V62:GetAttribute("IsDisabled") and not V62:FindFirstChild("Ignored") then
                local V63 = LocalPlayer2:DistanceFromCharacter(V62.Position)

                if V63 < Huge then
                    Huge = V63
                    V61 = V62
                end
            end
        end

        return V61
    end

    do
        local Tbl9 = {
            Ectoplasm = { Sea2 = "TravelDressrosa" },
            ["Magma Ore"] = { Sea2 = "TravelDressrosa" },
            Leather = { Sea3 = "TravelZou" },
            ["Scrap Metal"] = { Sea3 = "TravelZou" },
            ["Angel Wings"] = { Sea1 = "TravelMain" },
            ["Fish Tail"] = { Sea3 = "TravelZou" },
            ["Radioactive Material"] = { Sea2 = "TravelDressrosa" },
            ["Vampire Fang"] = { Sea2 = "TravelDressrosa" },
            ["Mystic Droplet"] = { Sea2 = "TravelDressrosa" },
            ["Mini Tusk"] = { Sea3 = "TravelZou" },
            Gunpowder = { Sea3 = "TravelZou" },
            ["Demonic Wisp"] = { Sea3 = "TravelZou" },
            ["Dragon Scale"] = { Sea3 = "TravelZou" },
            ["Conjured Cocoa"] = { Sea3 = "TravelZou" },
            Bones = { Sea3 = "TravelZou" },
        }

        local Tbl10 = {
            Ectoplasm = {
                "Ship Deckhand",
                "Ship Engineer",
                "Ship Steward",
                "Ship Officer",
                "Cursed Captain",
            },
            ["Magma Ore"] = { "Lava Pirate", "Magma Ninja" },
            Leather = { "Jungle Pirate", "Musketeer Pirate" },
            ["Scrap Metal"] = { "Jungle Pirate" },
            ["Angel Wings"] = { "God's Guard", "Shanda", "Royal Squad", "Royal Soldier" },
            ["Fish Tail"] = { "Fishman Raider", "Fishman Captain" },
            ["Radioactive Material"] = { "Factory Staff" },
            ["Vampire Fang"] = { "Vampire" },
            ["Mystic Droplet"] = { "Sea Soldier", "Water Fighter" },
            ["Mini Tusk"] = { "Mythological Pirate" },
            Gunpowder = { "Pistol Billionaire" },
            ["Demonic Wisp"] = { "Demonic Soul" },
            ["Dragon Scale"] = { "Dragon Crew Archer", "Dragon Crew Warrior" },
            ["Conjured Cocoa"] = { "Cocoa Warrior", "Chocolate Bar Battler" },
            Bones = { "Reborn Skeleton", "Demonic Soul", "Living Zombie", "Posessed Mummy" },
        }

        sizepart = function(Arg)
            AttackingMob = Arg

            if not Arg.HumanoidRootPart:FindFirstChild("vando") and LocalPlayer2:DistanceFromCharacter(Arg.HumanoidRootPart.Position) <= 50 then
                local Descendants, V60 = Arg:GetDescendants()

                for _, V61 in V15, Descendants, V60 do
                    if (V61:IsA("Part") or V61:IsA("MeshPart")) and V61.CanCollide then
                        V61.CanCollide = false
                    end
                end
            end
        end

        local V60 = nil
        local CFrame_ = nil

        DeleteIgnoredMob = function()
            for _, V61 in V17(game:GetService("Workspace").Enemies:GetChildren()) do
                if V61:IsA("Model") and V61:FindFirstChild("Ignored") then
                    V61.Ignored:Destroy()
                end
            end
        end

        IsMobAlive = function(Arg)
            if Arg and Arg.Parent and Arg:FindFirstChildWhichIsA("Humanoid") and Arg.Humanoid.Health > 0 then
                return true
            end
        end

        DetectMob = function(Arg)
            local Huge = math.huge
            local V61 = nil

            for _, V62 in V17(game.Workspace.Enemies:GetChildren()) do
                if (V51(Arg) == "table" and table.find(Arg, V62.Name) or V62.Name == Arg) and IsMobAlive(V62) then
                    local Magnitude = (V62.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude

                    if Magnitude < Huge then
                        Huge = Magnitude
                        V61 = V62
                    end
                end
            end

            return V61
        end

        CheckNameBoss = function(Arg)
            local Children, V61 = game.ReplicatedStorage:GetChildren()

            for _, V62 in V15, Children, V61 do
                if (V51(Arg) == "table" and table.find(Arg, V62.Name) or V62.Name == Arg) and IsMobAlive(V62) then
                    return V62
                end
            end

            local Children2, V62 = game.Workspace.Enemies:GetChildren()

            for _, V63 in V15, Children2, V62 do
                if (V51(Arg) == "table" and table.find(Arg, V63.Name) or V63.Name == Arg) and IsMobAlive(V63) then
                    return V63
                end
            end
        end

        local Tbl11 = {}

        getcenter = function(Arg)
            if string.find(Arg, "Lv.") then
                name1 = Arg:gsub(" %pLv. %d+%p", "")
            end

            local Position = nil
            local N9 = 0

            for _, V61 in V17(Tbl11) do
                local Str13 = nil

                if string.find(V61.Name, "Lv.") then
                    Str13 = V61.Name:gsub(" %pLv. %d+%p", "")
                end

                local IsPart = V61:IsA("Part")

                if IsPart then
                    IsPart = Str13 and Str13 == Arg or Arg == V61.Name or name1 and V61.Name == name1
                end

                if IsPart then
                    if Position == nil then
                        Position = V61.Position
                        N9 += 1
                    else
                        Position += V61.Position
                        N9 += 1
                    end
                end
            end

            return CFrame.new(Position / N9)
        end

        DetectPartMobBring = function(Arg, Arg2, Arg3, Arg4)
            local Tbl12 = {}
            local Str13 = nil

            if string.find(Arg, "Lv.") then
                Str13 = Arg:gsub(" %pLv. %d+%p", "")
            end

            for _, V61 in V17(Tbl11) do
                local Str14 = nil

                if string.find(V61.Name, "Lv.") then
                    Str14 = V61.Name:gsub(" %pLv. %d+%p", "")
                end

                local IsPart = V61:IsA("Part")

                if IsPart then
                    IsPart = Str14 and Str14 == Arg or Arg == V61.Name or Str13 and V61.Name == Str13
                end

                if IsPart then
                    table.insert(Tbl12, V61)
                end
            end

            if Arg3 then
                local Huge = math.huge
                local V61 = nil

                for _, V62 in V15, Tbl12, nil do
                    local Magnitude = (Arg2.HumanoidRootPart.Position - V62.Position).Magnitude

                    if Huge > Magnitude then
                        Huge = Magnitude
                        V61 = V62
                    end
                end

                return V61
            end

            local Tbl13 = {}

            for _, V61 in V15, Tbl12, nil do
                if (Arg4.Position - V61.Position).Magnitude <= 200 then
                    table.insert(Tbl13, V61)
                end
            end

            if #Tbl13 < #Tbl12 then
                return true
            end
        end

        isnetworkowner2 = function(Arg)
            local Children, V61 = game.Workspace.Characters:GetChildren()

            for _, V62 in V15, Children, V61 do
                if V62.Name ~= LocalPlayer2.Name and V62:FindFirstChild("HumanoidRootPart") and (V62.HumanoidRootPart.Position - Arg.Position).Magnitude <= 300 then
                    return false
                end
            end

            return true
        end

        BringMob = function(Arg)
            if Arg and V60 ~= Arg then
                V60 = Arg
                CFrame_ = DetectPartMobBring(Arg.Name, Arg, true).CFrame
                DeleteIgnoredMob()
            end

            if DaBringMob then
                delay(0.1, function()
                    getgenv().DaBringMob = false
                end)

                return
            end

            local Tbl12 = {}

            if not Arg:FindFirstChild("Ignored") then
                table.insert(Tbl12, Arg)
            end

            for _, V61 in V17(game:GetService("Workspace").Enemies:GetChildren()) do
                if V61 ~= Arg and V61.Name == Arg.Name and not V61:FindFirstChild("Ignored") and IsMobAlive(V61) and isnetworkowner2(V61.HumanoidRootPart) then
                    if (V61.HumanoidRootPart.Position - CFrame_.Position).Magnitude <= 200 and #Tbl12 < 2 then
                        table.insert(Tbl12, V61)
                    end
                end
            end

            if CFrame_ and (LocalPlayer2.Character.HumanoidRootPart.Position - Arg.HumanoidRootPart.Position).Magnitude <= 50 and isnetworkowner2(LocalPlayer2.Character.HumanoidRootPart) then
                for _, V61 in V17(Tbl12) do
                    sizepart(V61)
                    local Random2 = math.random
                    V61.HumanoidRootPart.CFrame = CFrame_ * CFrame.new(0, math.random(0, 2), Random2(0, 2))

                    task.spawn(function()
                        local Health = V61.Humanoid.Health
                        task.wait(3.5)

                        if V61.Humanoid.Health == Health and not V61:FindFirstChild("Ignored") then
                            V61.HumanoidRootPart.CFrame = V61.WorldPivot
                            Instance.new("IntValue", V61).Name = "Ignored"
                            task.wait(0.3)
                        end
                    end)

                    getgenv().DaBringMob = true
                end
            end
        end

        local PlaceId = game.PlaceId
        local Data = {}
        local Hour = os.date("!*t").hour

        if not V13(function()
            Data = game:GetService("HttpService"):JSONDecode(readfile("Banana Cat Hub/NotSameServers.json"))
        end) then
            table.insert(Data, Hour)
            writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(Data))
        end

        HopServerLess = function()
            for I = 1, 100 do
                local Response = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(I)
                local N9 = 0

                for K in V17(Response) do
                    if K ~= game.JobId then
                        ID = K
                        local Flag3 = true

                        for _, V61 in V17(Data) do
                            if N9 ~= 0 then
                                if ID == V21(V61) then
                                    Flag3 = false
                                end
                            elseif V16(Hour) ~= V16(V61) then
                                V13(function()
                                    delfile("Banana Cat Hub/NotSameServers.json")
                                    Data = {}
                                    table.insert(Data, Hour)
                                end)
                            end

                            N9 += 1
                        end

                        if Flag3 == true then
                            table.insert(Data, ID)
                            wait()

                            V13(function()
                                writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(Data))
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, ID, game.Players.LocalPlayer)
                            end)

                            wait(1)
                        end
                    end
                end
            end
        end

        DetectItemPlr = function(Arg)
            if LocalPlayer2.Character:FindFirstChild(Arg) or LocalPlayer2.Backpack:FindFirstChild(Arg) then
                return true
            end
        end


        DetectPartSpawnMob = function(Arg, Arg2)
            local Str13 = nil

            if string.find(Arg, "Lv.") then
                Str13 = Arg:gsub(" %pLv. %d+%p", "")
            end

            for _, V61 in V17(Tbl11) do
                local Str14 = nil

                if string.find(V61.Name, "Lv.") then
                    Str14 = V61.Name:gsub(" %pLv. %d+%p", "")
                end

                local IsPart = V61:IsA("Part")

                if IsPart then
                    IsPart = Str14 and Str14 == Arg or Arg == V61.Name or Str13 and V61.Name == Str13
                end

                local Flag3

                if IsPart then
                    Flag3 = Arg2 and not V61:FindFirstChild("Ignored") or not Arg2
                else
                    Flag3 = IsPart
                end

                if Flag3 then
                    if not table.find(Tbl11, V61) then
                        table.insert(Tbl11, V61)
                    end

                    return V61
                end
            end

            for _, V61 in V17(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren()) do
                local Str14 = nil

                if string.find(V61.Name, "Lv.") then
                    Str14 = V61.Name:gsub(" %pLv. %d+%p", "")
                end

                local IsPart = V61:IsA("Part")

                if IsPart then
                    IsPart = Str14 and Str14 == Arg or Arg == V61.Name or Str13 and V61.Name == Str13
                end

                if IsPart and (Arg2 and not V61:FindFirstChild("Ignored") or not Arg2) then
                    if not table.find(Tbl11, V61) then
                        table.insert(Tbl11, V61)
                    end

                    return V61
                end
            end

            for _, V61 in V17(Fn22()) do
                local Str14 = nil

                if string.find(V61.Name, "Lv.") then
                    Str14 = V61.Name:gsub(" %pLv. %d+%p", "")
                end

                local IsPart = V61:IsA("Part")

                if IsPart then
                    IsPart = Str14 and Str14 == Arg or Arg == V61.Name or Str13 and V61.Name == Str13
                end

                if IsPart and (Arg2 and not V61:FindFirstChild("Ignored") or not Arg2) and (not Arg2 or Arg2) then
                    if not table.find(Tbl11, V61) then
                        table.insert(Tbl11, V61)
                    end

                    return V61
                end
            end

            return nil
        end

        DeleteIgnoredMobSpawn = function()
            for _, V61 in V17(Tbl11) do
                if V61:FindFirstChild("Ignored") then
                    V61:FindFirstChild("Ignored"):Destroy()
                end
            end
        end

        local Tbl12 = {}

        DetectNameTablePart = function(Arg)
            for _, V61 in V15, Arg, nil do
                if not table.find(Tbl12, V61) then
                    return V61
                end
            end
        end

        local N9 = 0

        Tbl8.TabHunt:AddToggle("Auto Farm Material Sanguine Art", {
            Title = Translate("Auto Farm Material Sanguine Art"),
            Description = "Auto Farm Material Sanguine Art\nwhen have Leviathan Heart",
            Default = Config["Auto Farm Material Sanguine Art"] or false,
            Callback = function(Arg)
                spawn(function()
                    if Arg then
                        while Config["Auto Farm Material Sanguine Art"] and task.wait() do
                            local V61, V62 = V13(function()
                                if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt", true) == 1 then
                                    return
                                end

                                if CheckCountItem("Leviathan Heart", 1) then
                                    if CheckCountItem("Dark Fragment", 2) and CheckCountItem("Demonic Wisp", 20) and CheckCountItem("Vampire Fang", 20) then
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt", true)
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt")
                                    elseif not CheckCountItem("Dark Fragment", 2) then
                                        if game.Workspace:GetAttribute("MAP") == "Sea2" then
                                            if CheckNameBoss("Darkbeard") then
                                                N9 = V16(Options["Value Collect Chest to Hop"].Value)
                                            end

                                            if DetectItemPlr("Fist of Darkness") then
                                                N9 = V16(Options["Value Collect Chest to Hop"].Value)
                                            end

                                            if CheckNameBoss("Darkbeard") then
                                                local Darkbeard = CheckNameBoss("Darkbeard")

                                                if Darkbeard then
                                                    while true do
                                                        task.wait()
                                                        sizepart(Darkbeard)
                                                        local Position = Darkbeard.HumanoidRootPart.Position
                                                        local CFrame_2 = Darkbeard.HumanoidRootPart.CFrame
                                                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, Position, CFrame_2 * CFrame.new(7, 20, 0))
                                                        ClickM1(Darkbeard)
                                                        UsedualFlock()
                                                        if not (not IsMobAlive(Darkbeard) or not Config["Auto Farm Material Sanguine Art"]) then
                                                            continue
                                                        end
                                                        break
                                                    end
                                                end
                                            elseif LocalPlayer2.Character:FindFirstChild("Fist of Darkness") or LocalPlayer2.Backpack:FindFirstChild("Fist of Darkness") then
                                                local V61 = game
                                                local Position = LocalPlayer2.Character.HumanoidRootPart.Position

                                                if (V61:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.Position - Position).Magnitude <= 5 then
                                                    equiptool("Fist of Darkness")
                                                    firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 0)
                                                    firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 1)
                                                    firetouchinterest(LocalPlayer2.Character.HumanoidRootPart, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 0)
                                                    firetouchinterest(LocalPlayer2.Character.HumanoidRootPart, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection, 1)
                                                else
                                                    local V62 = game
                                                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, game:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.Position, V62:GetService("Workspace").Map.DarkbeardArena.Summoner.Detection.CFrame)
                                                end
                                            else
                                                if N9 and N9 >= V16(Options["Value Collect Chest to Hop"].Value) and Options["Auto Chest Hop"].Value then
                                                    HopServerLess()
                                                    return
                                                end
                                                N9 += 1
                                                local V61 = GetNearestChest()

                                                if V61 then
                                                    local Now5 = nil

                                                    while true do
                                                        task.wait()

                                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - V61.Position).Magnitude <= 5 then
                                                            if not Now5 then
                                                                Now5 = tick()
                                                            elseif tick() - Now5 >= 5 then
                                                                Instance.new("IntValue", V61).Name = "Ignored"
                                                                wait(0.5)
                                                            end

                                                            getgenv().noclip = false
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
                                                            wait()
                                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
                                                            firetouchinterest(V61, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                                                            firetouchinterest(V61, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                                                        else
                                                            toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, V61.Position, V61.CFrame * CFrame.new(0, 1, 0), true)
                                                        end

                                                        if not (not V61 or not V61.Parent or not Config["Auto Farm Material Sanguine Art"] or LocalPlayer2.Character:FindFirstChild("Fist of Darkness") or LocalPlayer2.Backpack:FindFirstChild("Fist of Darkness") or V61:GetAttribute("IsDisabled") or V61:FindFirstChild("Ignored")) then
                                                            continue
                                                        end
                                                        break
                                                    end

                                                    wait(1)
                                                else
                                                    local V62 = PathFindChest()

                                                    if V62 then
                                                        local Position = V62.Part.Position
                                                        local CFrame_2 = V62.Part.CFrame
                                                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, Position, CFrame_2)

                                                        if (V62.Part.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 100 or GetNearestChest() then
                                                            Instance.new("IntValue", V62).Name = "Ignored"
                                                        end
                                                    else
                                                        for _, V63 in V17(game:GetService("Workspace")._WorldOrigin.PlayerSpawns.Pirates:GetChildren()) do
                                                            if V63:FindFirstChild("Ignored") then
                                                                V63:FindFirstChild("Ignored"):Destroy()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        end
                                    elseif not CheckCountItem("Demonic Wisp", 20) or not CheckCountItem("Vampire Fangs", 20) then
                                        local Str13 = "Demonic Wisp"

                                        if not CheckCountItem("Vampire Fang", 20) then
                                            Str13 = "Vampire Fang"
                                        end

                                        MethodFarm = Tbl10[Str13]

                                        if not Tbl9[Str13][game.Workspace:GetAttribute("MAP")] then
                                            local Sea2 = Tbl9[Str13].Sea2 or Tbl9[Str13].Sea1 or Tbl9[Str13].Sea3
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(Sea2)
                                            return
                                        end

                                        local V61 = DetectMob(MethodFarm)

                                        if not V61 then
                                            if V51(MethodFarm) == "table" then
                                                if #Tbl12 >= #MethodFarm then
                                                    Tbl12 = {}
                                                    return
                                                end
                                                local V62 = DetectNameTablePart(MethodFarm)
                                                local V63 = DetectPartSpawnMob(V62)

                                                if V63 then
                                                    table.insert(Tbl12, V62)

                                                    while true do
                                                        task.wait()
                                                        local Position = V63.Position
                                                        local CFrame_2 = V63.CFrame
                                                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, Position, CFrame_2 * CFrame.new(0, 60, 0))
                                                        if not ((V63.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 100 or DetectMob(MethodFarm) or not Config["Auto Farm Material Sanguine Art"]) then
                                                            continue
                                                        end
                                                        break
                                                    end

                                                    wait(1)
                                                end
                                            else
                                                local V62 = DetectPartSpawnMob(MethodFarm, true)

                                                if V62 then
                                                    Instance.new("IntValue", V62).Name = "Ignored"

                                                    while true do
                                                        task.wait()
                                                        local Position = V62.Position
                                                        local CFrame_2 = V62.CFrame
                                                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, Position, CFrame_2 * CFrame.new(0, 60, 0))
                                                        if not ((V62.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 100 or DetectMob(MethodFarm) or not Config["Auto Farm Material Sanguine Art"]) then
                                                            continue
                                                        end
                                                        break
                                                    end

                                                    wait(1)
                                                else
                                                    DeleteIgnoredMobSpawn()
                                                end
                                            end
                                        else
                                            while true do
                                                task.wait()
                                                sizepart(V61)
                                                BringMob(V61)
                                                UsedualFlock()
                                                ClickM1(V61)
                                                local Position = V61.HumanoidRootPart.Position
                                                local CFrame_2 = V61.HumanoidRootPart.CFrame
                                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, Position, CFrame_2 * CFrame.new(7, 20, 0))
                                                if not (not IsMobAlive(V61) or not Config["Auto Farm Material Sanguine Art"]) then
                                                    continue
                                                end
                                                break
                                            end
                                        end
                                    end
                                end
                            end)

                            if V62 then
                                print(V62)
                            end
                        end
                    end
                end)

                SaveSettings("Auto Farm Material Sanguine Art", Arg)
            end,
        })
    end

    Tbl8.TabHunt:AddInput("Value Collect Chest to Hop", {
        Title = Translate("Value Collect Chest to Hop"),
        Default = Config["Value Collect Chest to Hop"] or 20,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Value Collect Chest to Hop", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Auto Chest Hop", {
        Title = "Auto Chest Hop",
        Default = Config["Auto Chest Hop"] or false,
        Callback = function(Arg)
            SaveSettings("Auto Chest Hop", Arg)
        end,
    })

    checkboatBeastHunter = function()
        local Value = Options["Select Owner Boat Beast Hunter"].Value
        local Children, V60 = game:GetService("Workspace").Boats:GetChildren()

        for _, V61 in V15, Children, V60 do
            if V61:IsA("Model") then
                if V61:FindFirstChild("Owner") and V21(V61.Owner.Value) == Value and V61.Humanoid.Value > 0 then
                    return V61
                end
            end
        end

        return false
    end

    checkboatMulti = function(Arg)
        local Value = Options["Select Owner Boat Beast Hunter"].Value
        local Children, V60 = game:GetService("Workspace").Boats:GetChildren()
        local V61 = nil

        for _, V62 in V15, Children, V60 do
            if V62:IsA("Model") then
                if V62:FindFirstChild("Owner") and V21(V62.Owner.Value) == Value and V62.Humanoid.Value > 0 then
                    V61 = V62
                end
            end
        end

        if V61 then
            if Arg then
                return V61
            end
            local Tbl9 = {}
            local Children2, V62 = V61:GetChildren()

            for _, V63 in V15, Children2, V62 do
                local Seat = V63:FindFirstChildWhichIsA("Seat") or V63:IsA("Seat") and V63

                if Seat and Seat:IsA("Seat") and not Seat:IsA("VehicleSeat") and Seat.Parent.Name ~= "Harpoon" then
                    if not table.find(Tbl9, Seat) then
                        table.insert(Tbl9, Seat)
                    end
                end
            end

            local Cannon = V61:FindFirstChild("Cannon")

            if Cannon then
                local Seat = Cannon:FindFirstChild("Seat")

                if Seat then
                    Cannon = Seat
                else
                    Cannon = Cannon:IsA("Seat") and Cannon
                end

                if Cannon and Cannon:IsA("Seat") and not Cannon:IsA("VehicleSeat") then
                    if not table.find(Tbl9, Cannon) then
                        table.insert(Tbl9, Cannon)
                    end
                end
            end

            local MyHumanoid = LocalPlayer2.Character:FindFirstChildWhichIsA("Humanoid")

            for _, V63 in V18(Tbl9) do
                if MyHumanoid and V63.Occupant == MyHumanoid then
                    return V63
                end
            end

            for _, V63 in V18(Tbl9) do
                local Occupant = V63.Occupant
                if not Occupant or Occupant == MyHumanoid then
                    return V63
                end
            end
        end

        return false
    end

    if game.Workspace:GetAttribute("MAP") == "Sea3" then
        require(game:GetService("ReplicatedStorage").DangerDistance)
    end

    DistanceFindLeviathan = function()
        local V60, V61 = V13(function()
            local V60 = getgenv().v17:GetNearestNPC(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, 2600)[1]
            local Floor = math.floor
            local V172 = getgenv().v17
            local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            return (Floor((V172:GetDistance(V60) - Position).magnitude / 10))
        end)

        if V60 and V61 and V61 > 0 then
            return V61
        end

        local V62, V63 = V13(function()
            local HumanoidRootPart = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")
            if not HumanoidRootPart then
                return 0
            end
            local Tbl9 = {}
            local NPCs = workspace:FindFirstChild("NPCs")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local FindFirstChild = ReplicatedStorage.FindFirstChild
            Tbl9[1] = NPCs

            do
                local values = table.pack(FindFirstChild(ReplicatedStorage, "NPCs"))
                table.move(values, 1, values.n, 2, Tbl9)
            end

            local Huge = math.huge
            local V62 = nil

            for _, V63 in V15, Tbl9, nil do
                if V63 then
                    local Children, V64 = V63:GetChildren()

                    for _, V65 in V15, Children, V64 do
                        if V65.Name == "Boat Dealer" and V65:FindFirstChild("HumanoidRootPart") then
                            local Magnitude = (HumanoidRootPart.Position - V65.HumanoidRootPart.Position).Magnitude

                            if Magnitude < Huge then
                                Huge = Magnitude
                                V62 = V65
                            end
                        end
                    end
                end
            end

            if not V62 then
                local V63 = NPCManager.getNPCsByName("Boat Dealer")

                if V63 then
                    for _, V64 in V15, V63, nil do
                        if V64._modelState and V64._modelState._instance then
                            local Instance_ = V64._modelState._instance

                            if Instance_:FindFirstChild("HumanoidRootPart") then
                                local Magnitude = (HumanoidRootPart.Position - Instance_.HumanoidRootPart.Position).Magnitude

                                if Magnitude < Huge then
                                    Huge = Magnitude
                                    V62 = Instance_
                                end
                            end
                        end
                    end
                end
            end

            if V62 and V62:FindFirstChild("HumanoidRootPart") then
                return math.floor((HumanoidRootPart.Position - V62.HumanoidRootPart.Position).Magnitude / 10)
            end
            return math.floor((HumanoidRootPart.Position - Vector3.new(-16065.729, 31, 421.89822)).Magnitude / 10)
        end)

        if V62 and V63 then
            return V63
        end
        return 0
    end

    do
        local Tbl9 = {}

        NoclipBoat = function(Arg)
            if not Arg or not Arg.Parent then
                return
            end

            for _, Descendant in V18(Arg:GetDescendants()) do
                if Descendant:IsA("BasePart") then
                    if Tbl9[Descendant] == nil then
                        Tbl9[Descendant] = Descendant.CanCollide
                    end

                    Descendant.CanCollide = false
                end
            end
        end

        local Tbl10 = { "Fish Crew Member", "Shark" }

        CheckNameBoss = function(Arg)
            local Children, V60 = game.ReplicatedStorage:GetChildren()

            for _, V61 in V15, Children, V60 do
                if (V51(Arg) == "table" and table.find(Arg, V61.Name) or V61.Name == Arg) and IsMobAlive(V61) then
                    return V61
                end
            end

            local Children2, V61 = game.Workspace.Enemies:GetChildren()

            for _, V62 in V15, Children2, V61 do
                if (V51(Arg) == "table" and table.find(Arg, V62.Name) or V62.Name == Arg) and IsMobAlive(V62) then
                    return V62
                end
            end
        end

        local function Fn25()
            if type(Config) ~= "table" then
                return false
            end
            local SelectOwnerBoatBeastHunter = Config["Select Owner Boat Beast Hunter"]
            if type(SelectOwnerBoatBeastHunter) ~= "string" or SelectOwnerBoatBeastHunter == "" then
                return false
            end
            return game.Players:FindFirstChild(SelectOwnerBoatBeastHunter) ~= nil
        end

        local function Fn26()
            local SelectOwnerBoatBeastHunter = ""

            if Fn25() then
                SelectOwnerBoatBeastHunter = Config["Select Owner Boat Beast Hunter"]
            end

            return Str10 .. "/" .. SelectOwnerBoatBeastHunter .. Str11
        end

        readStatusAccoountMain = function()
            if not isfolder("Banana Cat Hub") then
                makefolder("Banana Cat Hub")
            end

            local V60 = Fn26()

            local V61, V62 = V13(function()
                return readfile(V60)
            end)

            if not V61 or type(V62) ~= "string" or V62 == "" then
                local Tbl11 = {}

                V13(function()
                    writefile(V60, HttpService2:JSONEncode(Tbl11))
                end)

                return Tbl11
            end

            local V63, V64 = V13(function()
                return HttpService2:JSONDecode(V62)
            end)

            if V63 and type(V64) == "table" then
                return V64
            end
            local Tbl11 = {}

            V13(function()
                writefile(V60, HttpService2:JSONEncode(Tbl11))
            end)

            return Tbl11
        end

        DetectSeaEvents = function(Arg, Filter)
            if (Options["Select Sea Events"].Value.SeaBeast or Arg) and (not Filter or Filter.SeaBeast) then
                local Children, V60 = game:GetService("Workspace").SeaBeasts:GetChildren()

                for _, V61 in V15, Children, V60 do
                    if V61.Name == "SeaBeast1" and V61:FindFirstChild("HumanoidRootPart") and V61:FindFirstChild("HealthBBG") then
                        local Text = V61.HealthBBG.Frame.TextLabel.Text
                        local Text2 = V61.HealthBBG.Frame.TextLabel.Text
                        local Str13

                        if string.find(Text:gsub("/%d+,%d+", ""), ",") then
                            Str13 = Text2:gsub("%d+,%d+/", "")
                        else
                            Str13 = Text2:gsub("%d+/", "")
                        end

                        local Str14 = Str13:gsub(",", "")
                        if V16(Str14) >= 90000 and LocalPlayer2:DistanceFromCharacter(V61.HumanoidRootPart.Position) < 2000 then
                            return V61
                        end
                    end
                end
            end

            if (Options["Select Sea Events"].Value.Terrorshark or Arg) and (not Filter or Filter.Terrorshark) then
                local Terrorshark = CheckNameBoss("Terrorshark")
                if Terrorshark and LocalPlayer2:DistanceFromCharacter(Terrorshark.HumanoidRootPart.Position) < 2000 then
                    return Terrorshark
                end
            end

            if (Options["Select Sea Events"].Value.Ship or Arg) and (not Filter or Filter.Ship) then
                local Children, V60 = game:GetService("Workspace").Enemies:GetChildren()

                for _, V61 in V15, Children, V60 do
                    if V61:FindFirstChild("Health") and V61.Health.Value > 0 and V61:FindFirstChild("Engine") and LocalPlayer2:DistanceFromCharacter(V61.Engine.Position) < 2000 then
                        return V61
                    end
                end
            end

            if (Options["Select Sea Events"].Value.Shark or Arg) and (not Filter or Filter.Shark) then
                local V60 = DetectMob(Tbl10)
                if V60 and LocalPlayer2:DistanceFromCharacter(V60.HumanoidRootPart.Position) < 2000 then
                    return V60
                end
            end

            if (Options["Select Sea Events"].Value.Piranha or Arg) and (not Filter or Filter.Piranha) then
                local Piranha = DetectMob("Piranha")
                if Piranha and LocalPlayer2:DistanceFromCharacter(Piranha.HumanoidRootPart.Position) < 2000 then
                    return Piranha
                end
            end

            return false
        end

        -- seated players in the main's boat (driver included), 5 = main + 4 alts
        CountSeatedMainBoat = function()
            local Boat = Config["Account Buy Boat"] and checkboat() or checkboatMulti(true)
            local N = 0

            if Boat then
                for _, V61 in V17(Boat:GetDescendants()) do
                    if (V61:IsA("Seat") or V61:IsA("VehicleSeat")) and V61.Occupant then
                        N += 1
                    end
                end
            end

            return N
        end

        -- Mythical Scroll: Ship = Fool's Gold (20), Terrorshark = Terror Eyes (1)
        DetectSeaEventsMythic = function()
            if not (Config["Sea Events Only For Mythical Scroll"] and Config["Status Leviathan"] == "You can find leviathan now") then
                return DetectSeaEvents()
            end

            local Event = DetectSeaEvents(nil, { Ship = not CheckCountItem("Fool's Gold", 20), Terrorshark = not CheckCountItem("Terror Eyes", 1) })
            if Event then
                return Event
            end

            if LocalPlayer2.Character.Humanoid.Sit and CountSeatedMainBoat() < 5 then
                return DetectSeaEvents()
            end

            return false
        end

        equiptool = function(Arg)
            if Arg and LocalPlayer2:FindFirstChild("Backpack") and LocalPlayer2.Backpack:FindFirstChild(Arg) and not LocalPlayer2.Character.Humanoid.Sit then
                LocalPlayer2.Character.Humanoid:EquipTool(LocalPlayer2.Backpack:FindFirstChild(Arg))
            end
        end

        NameWeapon = function(Arg, Arg2)
            local Children, V60 = LocalPlayer2.Backpack:GetChildren()

            for _, V61 in V15, Children, V60 do
                if V61:IsA("Tool") and V61.ToolTip == Arg then
                    if not Arg2 then
                        return V61.Name
                    end
                    return V61
                end
            end

            local Children2, V61 = LocalPlayer2.Character:GetChildren()

            for _, V62 in V15, Children2, V61 do
                if V62:IsA("Tool") and V62.ToolTip == Arg then
                    if not Arg2 then
                        return V62.Name
                    end
                    return V62
                end
            end
        end

        local Tbl11 = { "rbxassetid://8708221792", "rbxassetid://8708222556" }
        getgenv().PosDodgeskill = 0

        AddAnimationSeabeastPlayed = function(Arg)
            local AnimationPlayed = Arg.Humanoid.AnimationPlayed

            getgenv().PathAnimationSeabit = AnimationPlayed:Connect(function(Arg2)
                if table.find(Tbl11, V21(Arg2.Animation.AnimationId)) then
                    getgenv().PosDodgeskill = 0

                    if V21(Arg2.Animation.AnimationId) == "rbxassetid://8708222556" then
                        task.wait(0.7)
                    else
                        task.wait(1.9)
                    end

                    local Now5 = tick()
                    getgenv().PosDodgeskill = 600

                    while true do
                        task.wait()
                        if not (not Arg2.IsPlaying or tick() - Now5 >= 10) then
                            continue
                        end
                        break
                    end

                    getgenv().PosDodgeskill = 0
                end
            end)
        end

        getgenv().PosSEaY = -50

        TeleportSeaEvents = function(Arg)
            if not Arg then
                return
            end

            if Arg:FindFirstChild("Engine") then
                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Arg.Engine.Position, Arg.Engine.CFrame * CFrame.new(0, -15, 0))
                return
            end

            if Arg.Name == "SeaBeast1" and Arg:FindFirstChild("HumanoidRootPart") then
                if (Vector3.new(0, Arg:FindFirstChild("HumanoidRootPart").Position.Y, 0) - Vector3.new(0, -60, 0)).Magnitude <= 175 then
                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Arg.HumanoidRootPart.Position, Arg.HumanoidRootPart.CFrame * CFrame.new(0, 200 + PosDodgeskill, 50), true)
                else
                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Vector3.new(Arg.HumanoidRootPart.Position.X, -60, Arg.HumanoidRootPart.Position.Z), CFrame.new(Arg.HumanoidRootPart.Position.X, 140, Arg.HumanoidRootPart.Position.Z), true)
                end
            else
                local N9 = 20

                if Arg.Name == "Terrorshark" then
                    N9 = 60
                end

                if Arg:FindFirstChild("HumanoidRootPart") then
                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Arg.HumanoidRootPart.Position, Arg.HumanoidRootPart.CFrame * CFrame.new(0, N9, 0))
                end
            end
        end

        CheckCDSkillTransformation2 = function(Arg, Arg2)
            local Children, V60 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[Arg]:GetChildren()

            for _, V61 in V15, Children, V60 do
                if V61:IsA("Frame") then
                    if V61.Name ~= "Template" and not string.find(V61.Title.Text, "Transformation") and Arg2[V61.Name] and V61.Title.TextColor3 == Color3.new(1, 1, 1) and V61.Cooldown.Size == UDim2.new(0, 0, 1, -1) or V61.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                        return V61
                    end
                end
            end
        end

        CheckCDSkillTransformation = function(Arg, Arg2)
            local Name2 = Arg.Name
            local Children, V60 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[Name2]:GetChildren()

            for _, V61 in V15, Children, V60 do
                if V61:IsA("Frame") then
                    if V61.Name ~= "Template" and not string.find(V61.Title.Text, "Transformation") and Arg2[V61.Name] and V61.Title.TextColor3 == Color3.new(1, 1, 1) and V61.Cooldown.Size == UDim2.new(0, 0, 1, -1) or V61.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                        return V61, Options["Skill " .. V61.Name .. " " .. Arg.ToolTip].Value
                    end
                end
            end
        end

        AutoAllSkill = function()
            local Melee = NameWeapon("Melee", true) or false
            local Sword = NameWeapon("Sword", true) or false
            local Flag3 = NameWeapon("Blox Fruit", true) or false
            local Gun = NameWeapon("Gun", true) or false
            local Skills = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills
            if Melee and not Skills:FindFirstChild(Melee.Name) then
                equiptool(Melee.Name)
                return
            end

            if Sword and not Skills:FindFirstChild(Sword.Name) then
                equiptool(Sword.Name)
                return
            end

            if Flag3 and not Skills:FindFirstChild(Flag3.Name) then
                equiptool(Flag3.Name)
                return
            end

            if Gun and not Skills:FindFirstChild(Gun.Name) then
                equiptool(Gun.Name)
                return
            end
            local V60

            if Melee and CheckCDSkillTransformation(Melee, Options["Select Skills " .. Melee.ToolTip].Value) then
                V60 = CheckCDSkillTransformation(Melee, Options["Select Skills " .. Melee.ToolTip].Value)
            elseif Sword and CheckCDSkillTransformation(Sword, Options["Select Skills " .. Sword.ToolTip].Value) then
                V60 = CheckCDSkillTransformation(Sword, Options["Select Skills " .. Sword.ToolTip].Value)
            elseif Gun and CheckCDSkillTransformation(Gun, Options["Select Skills " .. Gun.ToolTip].Value) then
                V60 = CheckCDSkillTransformation(Gun, Options["Select Skills " .. Gun.ToolTip].Value)
            else
                local V61 = Flag3 and CheckCDSkillTransformation(Flag3, Options["Select Skills " .. Flag3.ToolTip].Value)
                V60 = nil

                if V61 then
                    V60 = CheckCDSkillTransformation(Flag3, Options["Select Skills " .. Flag3.ToolTip].Value)
                end
            end

            if V60 then
                local Name2 = V60.Parent.Name
                equiptool(Name2)

                if LocalPlayer2.Character:FindFirstChild(Name2) then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, V60.Name, false, game)

                    if Config["Use skill fast dont hold"] then
                        task.wait(0.05)
                    else
                        task.wait(V16(holdskill))
                    end

                    game:GetService("VirtualInputManager"):SendKeyEvent(false, V60.Name, false, game)
                end
            end
        end

        UsedualFlock = function()
            equiptool(NameWeapon("Melee"))
        end

        local V60 = nil

        V13(function()
            V60 = getupvalue(require(game.ReplicatedStorage.Controllers.CombatController).Attack, 9)
        end)

        GetValidator2 = function()
            if not V60 then
                return 0, 1
            end
            local V61 = getupvalue(V60, 16)
            local V62 = getupvalue(V60, 14)
            local V63 = getupvalue(V60, 17)
            local V64 = getupvalue(V60, 18)
            local V65 = getupvalue(V60, 15)
            local V66 = getupvalue(V60, 13)
            local V67 = getupvalue(V60, 19)
            local N9 = ((V65 * V62 + V66 * V61) % V63 * V63 + V66 * V62) % V64
            local N10 = math.floor(N9 / V63)
            local N11 = V67 + 1
            setupvalue(V60, 15, N10)
            setupvalue(V60, 13, N9 - N10 * V63)
            setupvalue(V60, 19, N11)
            return math.floor(N9 / V64 * 16777215), N11
        end

        local N9 = 440

        local function Fn27(Arg)
            local Health = Arg:FindFirstChild("Health")
            if Health then
                return Health.Value
            end
            local Humanoid = Arg:FindFirstChild("Humanoid")
            if Humanoid then
                return Humanoid.Health
            end
            return nil
        end

        GetClosestGunTargetnpc = function()
            local Character = game.Players.LocalPlayer.Character
            if not Character or not Character:FindFirstChild("HumanoidRootPart") then
                return nil
            end
            local Position = Character.HumanoidRootPart.Position
            local N10 = 9999
            local V61 = nil

            for _, V62 in V18({ workspace.Enemies, workspace.SeaBeasts }) do
                for _, V63 in V18(V62:GetChildren()) do
                    local HumanoidRootPart = V63:FindFirstChild("HumanoidRootPart") or V63:FindFirstChild("Body") and V63.Body:FindFirstChild("Part")
                    local V64 = Fn27(V63)

                    if HumanoidRootPart and V64 and V64 > 0 and V63 ~= Character then
                        local Magnitude = (HumanoidRootPart.Position - Position).Magnitude

                        if Magnitude < N10 and Magnitude <= N9 then
                            N10 = Magnitude
                            V61 = HumanoidRootPart
                        end
                    end
                end
            end

            return V61
        end

        local function Fn28()
            for _, V61 in V18(game.Players.LocalPlayer.Character:GetChildren()) do
                if V61:GetAttribute("WeaponType") == "Gun" then
                    return V61
                end
            end

            return nil
        end

        EquipDragonstorm = function()
            -- Auto Enchant is using another gun (loaded from the inventory to roll it): LoadItem Dragonstorm would destroy that gun's Tool.
            -- Checked here too and not only in AutoGunAttackOnce, so no caller can load Dragonstorm during the enchant
            if getgenv().EnchantPausesGun then
                return false
            end
            local V61 = Fn28()
            if V61 and V61.Name == "Dragonstorm" then
                return true
            end
            local Dragonstorm = false

            V13(function()
                for _, V62 in V17(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if V62.Name == "Dragonstorm" then
                        Dragonstorm = true
                    end
                end

                if not Dragonstorm then
                    for _, V62 in V17(game.Players.LocalPlayer.Character:GetChildren()) do
                        if V62.Name == "Dragonstorm" then
                            Dragonstorm = true
                        end
                    end
                end
            end)

            if not Dragonstorm then
                if getgenv().EnchantPausesGun then
                    return false
                end
                V13(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({ "LoadItem", "Dragonstorm" }))
                end)

                task.wait(0.5)
                local Dragonstorm2 = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragonstorm")

                if Dragonstorm2 then
                    Dragonstorm = Dragonstorm2
                else
                    Dragonstorm = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Dragonstorm")
                end
            end

            if not Dragonstorm then
                Tbl7.SetStatus("No Dragonstorm!", Tbl7.Colors.Red)
                return false
            end
            -- equiptool() skips while Humanoid.Sit; Dragonstorm has to equip seated (boat search / 10km return), the _seated unlock at the top makes it stick
            local DragonstormTool = LocalPlayer2.Backpack:FindFirstChild("Dragonstorm")
            if DragonstormTool and not getgenv().EnchantPausesGun then
                LocalPlayer2.Character.Humanoid:EquipTool(DragonstormTool)
            end
            task.wait(0.2)
            return true
        end

        local Validator2 = game.ReplicatedStorage.Remotes.Validator2
        local ReShootGunEvent = game.ReplicatedStorage.Modules.Net["RE/ShootGunEvent"]

        AutoGunAttackOnce = function()
            -- Auto Enchant is rolling a weapon: equipping Dragonstorm now would swap it out every frame
            if getgenv().EnchantPausesGun then
                return
            end
            V13(function()
                if not EquipDragonstorm() then
                    return
                end
                local V61 = Fn28()
                if not V61 then
                    return
                end
                local V62 = GetClosestGunTargetnpc()
                if not V62 then
                    return
                end
                local Position = (V62.Parent:FindFirstChild("HumanoidRootPart") or V62).Position

                if V61.Name == "Dragonstorm" then
                    -- No waits here: one shot per frame (every caller loop yields with task.wait()), same pacing as dsaura.luau
                    local V63, V64 = GetValidator2()
                    Validator2:FireServer(V63, V64)
                    local V65, V66 = GetValidator2()
                    Validator2:FireServer(V65, V66)

                    ReShootGunEvent:FireServer(Position, {
                        V62.Parent:FindFirstChild("HumanoidRootPart") or V62.Parent:FindFirstChild("UpperTorso") or V62,
                    })
                else
                    local V63, V64 = GetValidator2()
                    local UpperTorso = V62.Parent:FindFirstChild("UpperTorso") or V62.Parent:FindFirstChild("HumanoidRootPart") or V62.Parent:FindFirstChildWhichIsA("BasePart") or V62
                    Validator2:FireServer(V63, V64)
                    task.wait(0.008)
                    ReShootGunEvent:FireServer(Position, { UpperTorso })
                    task.wait(0.055)
                end
            end)
        end

        local function Fn29(Arg, Arg2, Arg3)
            local Tbl12 = {}

            for _, V61 in V17(Arg:GetChildren()) do
                if V61:IsA("BasePart") and (V61.Position - Arg2).magnitude <= Arg3 then
                    Tbl12[#Tbl12 + 1] = V61
                end
            end

            return Tbl12
        end

        GetAllChildAttack = function(Arg)
            local Children = workspace:WaitForChild("Enemies"):GetChildren()
            local Children2 = workspace:WaitForChild("Characters"):GetChildren()
            local Tbl12 = {}

            for _, V61 in V17(Children) do
                table.insert(Tbl12, V61)
            end

            if Arg then
                for _, V61 in V17(Children2) do
                    table.insert(Tbl12, V61)
                end
            end

            return Tbl12
        end

        getgenv().getBladeHits = function(Arg, Arg2, Arg3, Arg4)
            game:GetService("CollectionService")
            local Tbl12 = {}
            local V61 = GetAllChildAttack(Arg4)

            for _, V62 in V17(Arg2) do
                for _, V63 in V17(V61) do
                    if V63:IsDescendantOf(game.Workspace) then
                        local N10

                        if game.Players:GetPlayerFromCharacter(V63) then
                            N10 = Arg3 / 1.5
                        else
                            N10 = Arg3
                        end

                        if V63 ~= Arg and V63:FindFirstChild("HumanoidRootPart") then
                            local Tbl13 = { V63.HumanoidRootPart.Position }

                            if V63.HumanoidRootPart.Size.Y > 5 then
                                table.insert(Tbl13, (V63.HumanoidRootPart.CFrame * CFrame.new(0, -V63.HumanoidRootPart.Size.Y * 1.5 + 3, 0)).p)
                            end

                            local Flag3 = false

                            for _, V64 in V17(Tbl13) do
                                if (V64 - V62.Position).magnitude < 10 + N10 + V63.HumanoidRootPart.Size.X / 2 then
                                    Flag3 = true
                                    break
                                end
                            end

                            if Flag3 then
                                local V64 = Fn29(V63, V62.Position, N10 + V63.HumanoidRootPart.Size.X / 2)

                                for _, V65 in V17(V64) do
                                    Tbl12[#Tbl12 + 1] = V65
                                end
                            end
                        end
                    end
                end
            end

            return Tbl12
        end

        local ReRegisterAttack = game:GetService("ReplicatedStorage").Modules.Net:WaitForChild("RE/RegisterAttack")
        local RegisterHit = require(game.ReplicatedStorage.Modules.Net):RemoteEvent("RegisterHit", true)
        local Tbl12 = {}

        for _, V61 in {
            "RightUpperArm",
            "RightLowerArm",
            "RightHand",
            "RightUpperLeg",
            "RightLowerLeg",
            "RightFoot",
            "LeftUpperArm",
            "LeftLowerArm",
            "LeftHand",
            "LeftUpperLeg",
            "LeftLowerLeg",
            "LeftFoot",
            "UpperTorso",
            "LowerTorso",
            "Head",
        }, nil, nil do
            Tbl12[V61] = true
        end

        local CombatUtil = require(game:GetService("ReplicatedStorage").Modules.CombatUtil)

        AttackAOE = function(Arg, Arg2)
            local Tbl13 = {}
            local Tbl14 = {}
            local GetBladeHits = getgenv().getBladeHits
            local Character = LocalPlayer2.Character
            local Tbl15 = { LocalPlayer2.Character.HumanoidRootPart }
            Arg = Arg or 80
            local V61 = nil
            local V62 = nil

            for _, V63 in GetBladeHits(Character, Tbl15, Arg, Arg2) do
                local RigOfHitPart = CombatUtil:GetRigOfHitPart(V63)

                if not RigOfHitPart then
                    warn("No rig found for hit part:", V63)
                elseif Tbl12[V63.Name] then
                    local Summoner = RigOfHitPart:FindFirstChild("Summoner")
                    local Summoner2 = LocalPlayer2.Character:FindFirstChild("Summoner")

                    if (not Summoner2 or RigOfHitPart ~= Summoner2.Value.Character) and (not game.Players:GetPlayerFromCharacter(LocalPlayer2.Character) or not Summoner or Summoner.Value ~= game.Players:GetPlayerFromCharacter(LocalPlayer2.Character)) then
                        if (not v159 or not RigOfHitPart:IsDescendantOf(workspace.Enemies) or Summoner2 or Summoner) and RigOfHitPart ~= l_Parent_0 and CombatUtil:IsVulnerable(RigOfHitPart) then
                            table.insert(Tbl13, { RigOfHitPart, V63 })
                            table.insert(Tbl14, RigOfHitPart)
                            V61 = RigOfHitPart
                            V62 = V63
                        end
                    end
                end
            end

            local Tbl16 = {}

            for _, V63 in V17(Tbl13) do
                table.insert(Tbl16, V63)
            end

            table.insert(Tbl16, { V61, V62 })
            if #Tbl16 > 0 then
                return Tbl16
            end
        end

        AttackFunction = function(Arg)
            if game.Players.LocalPlayer.Character.Stun.Value == 0 then
                bladehit = AttackAOE(Arg)

                if bladehit then
                    ReRegisterAttack:FireServer(0)
                    local V61 = bladehit
                    RegisterHit:FireServer(table.remove(bladehit, 1)[2], V61)
                    table.clear(bladehit)
                end
            end
        end

        local ReplicatedStorage = game.ReplicatedStorage
        getgenv().v17 = require(ReplicatedStorage:WaitForChild("GuideModule"))

        CreateTweenFloat = function()
            if not LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                local BodyVelocity = Instance.new("BodyVelocity")
                BodyVelocity.Parent = LocalPlayer2.Character.HumanoidRootPart
                BodyVelocity.Name = "EffectsSY"
                BodyVelocity.Velocity = Vector3.zero
                BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            end
        end

        game:GetService("RunService").Stepped:Connect(function()
            if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character:FindFirstChild("Humanoid") then
                local Descendants, V61 = LocalPlayer2.Character:GetDescendants()

                for _, V62 in V15, Descendants, V61 do
                    if (V62:IsA("MeshPart") or V62:IsA("Part")) and V62.CanCollide then
                        V62.CanCollide = false
                    end
                end
            end

            V13(function()
                local Boats = workspace:FindFirstChild("Boats")

                if Boats then
                    local SelectOwnerBoatBeastHunter = Config["Select Owner Boat Beast Hunter"] or ""

                    for _, V61 in V18(Boats:GetChildren()) do
                        local Owner = V61:FindFirstChild("Owner")

                        if Owner then
                            local Flag3 = string.lower(V21(Owner.Value)) == string.lower(LocalPlayer2.Name)

                            if Flag3 then
                                Owner = Flag3
                            else
                                Owner = SelectOwnerBoatBeastHunter ~= "" and string.lower(V21(Owner.Value)) == string.lower(SelectOwnerBoatBeastHunter)
                            end
                        end

                        if Owner then
                            for _, Descendant in V18(V61:GetDescendants()) do
                                if Descendant:IsA("BasePart") then
                                    if Tbl9[Descendant] == nil then
                                        Tbl9[Descendant] = Descendant.CanCollide
                                    end

                                    Descendant.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end)
        end)
    end

    game:GetService("RunService").Stepped:connect(function()
        V13(function()
            if getgenv().noclip then
                if LocalPlayer2.Character:FindFirstChild("Humanoid") then
                    CreateTweenFloat()
                end
            end

            if not getgenv().noclip then
                if LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                    LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                end
            end
        end)
    end)

    do
        local Part = nil
        local N9 = 0
        local Vector = Vector3.new(30, 2, 30)

        local function Fn25()
            if not Part or not Part.Parent then
                Part = Instance.new("Part")
                Part.Name = "WalkOnWaterPlatform"
                Part.Size = Vector
                Part.Anchored = true
                Part.CanCollide = true
                Part.Transparency = 1
                Part.Material = Enum.Material.SmoothPlastic
                Part.Parent = workspace
            end

            return Part
        end

        game:GetService("RunService").Heartbeat:Connect(function()
            V13(function()
                local Character = LocalPlayer2.Character
                if not Character or not Character:FindFirstChild("HumanoidRootPart") or not Character:FindFirstChild("Humanoid") then
                    return
                end
                local HumanoidRootPart = Character.HumanoidRootPart
                local Position = HumanoidRootPart.Position
                local V60 = Fn25()
                V60.CFrame = CFrame.new(Position.X, N9 - 1, Position.Z)

                if Position.Y > N9 + 50 or Character.Humanoid.Sit then
                    V60.CanCollide = false
                else
                    V60.CanCollide = true
                end

                if Position.Y < N9 - 3 and not Character.Humanoid.Sit then
                    HumanoidRootPart.Velocity = Vector3.new(HumanoidRootPart.Velocity.X, 80, HumanoidRootPart.Velocity.Z)
                    local CFrame_ = HumanoidRootPart.CFrame
                    HumanoidRootPart.CFrame = CFrame.new(Position.X, N9 + 5, Position.Z) * CFrame.Angles(CFrame_:ToEulerAnglesXYZ())
                end
            end)
        end)
    end

    getgenv().ClickM1 = function(Arg, Arg2)
        if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and (LocalPlayer2.Character.HumanoidRootPart.Position - Arg.HumanoidRootPart.Position).Magnitude < 70 and Arg.Humanoid.Health > 0 then
            if not Arg2 then
                AttackFunction(30)
            else
                AttackFunction(80)
            end
        end
    end

    checkboat = function()
        local Name2 = LocalPlayer2.Name
        local Children, V60 = game:GetService("Workspace").Boats:GetChildren()

        for _, V61 in V15, Children, V60 do
            if V61:IsA("Model") then
                if V61:FindFirstChild("Owner") and V21(V61.Owner.Value) == Name2 and V61.Humanoid.Value > 0 then
                    return V61
                end
            end
        end

        return false
    end

    -- Heart harpoon aim (called from the Account Buy Boat "Auto Shoot Heart" branch of HuntLeviathan).
    -- The game's own client code (ReplicatedStorage.Harpoon, the red trajectory preview) shows the harpoon is a ballistic
    -- projectile: speed 400 along the tube's LookVector, gravity = workspace.Gravity, pos(t) = P + V*t + 0.5*g*t^2.
    -- FireHarpoon's 2nd arg is the cannon pitch in radians (the game clamps it to -10deg..45deg). A fixed 45deg only hits
    -- when the heart sits at one specific height, so the pitch is solved from where the heart actually is.
    -- Everything is printed with the [HeartAim] prefix (F9 console / executor console) so a miss can be diagnosed.
    do
        local Speed = 400
        local MinPitch = math.rad(-10)
        local MaxPitch = math.rad(45)
        local Yaw = 0.00044342573293783646
        local State = { Busy = false, LastLog = 0, Shots = 0 }

        local function Say(Text, ...)
            print("[HeartAim] " .. string.format(Text, ...))
        end

        local function Vec(V)
            return string.format("(%.1f, %.1f, %.1f)", V.X, V.Y, V.Z)
        end

        -- Height of a shot fired at world elevation E from OriginY once it is S studs away horizontally
        local function HeightAt(OriginY, Gravity, E, S)
            return OriginY + S * math.tan(E) - Gravity * S * S / (2 * Speed * Speed * math.cos(E) ^ 2)
        end

        -- Angle (above horizontal) a Speed shot needs to pass through Target when fired from Origin, then converted to
        -- the pitch FireHarpoon expects (relative to the tube's rest elevation). Info.Capped = the heart is higher than
        -- the game's 45deg limit can reach (45deg is sent, the best possible); Info.Fallback = reason there is no
        -- solution at all (the old fixed 45deg is sent).
        local function Solve(Origin, Target, RestPitch)
            local Info = { Origin = Origin, Target = Target, RestPitch = RestPitch, Gravity = workspace.Gravity, Pitch = MaxPitch }
            Info.Dist = Vector3.new(Target.X - Origin.X, 0, Target.Z - Origin.Z).Magnitude
            Info.Dy = Target.Y - Origin.Y

            if Info.Dist < 1 then
                Info.Fallback = "heart is right above/below the tube (horizontal distance < 1 stud)"
                return Info
            end

            local G = Info.Gravity
            local V2 = Speed * Speed
            local Disc = V2 * V2 - G * (G * Info.Dist * Info.Dist + 2 * Info.Dy * V2)

            if Disc < 0 then
                Info.Fallback = "no angle can reach the heart from here at 400 studs/s (too far or too high)"
                return Info
            end

            local Root = math.sqrt(Disc)
            Info.LowArc = math.atan((V2 - Root) / (G * Info.Dist))
            Info.HighArc = math.atan((V2 + Root) / (G * Info.Dist))
            Info.Needed = Info.LowArc - RestPitch

            if Info.Needed > MaxPitch then
                Info.Capped = true
                return Info
            end

            Info.Pitch = math.max(Info.Needed, MinPitch)
            Info.Clamped = Info.Pitch ~= Info.Needed
            return Info
        end

        local function ReportAim(Cube, Heart, Info, ClientPitch)
            Say("===== aiming at the heart =====")
            Say("tube (launch point) %s | heart Cube %s size %s", Vec(Info.Origin), Vec(Info.Target), Vec(Cube.Size))
            local Inside = Heart:FindFirstChild("Inside")
            if Inside and Inside:IsA("BasePart") then
                Say("heart Inside is %s away from Cube (Harpooned attribute lives on Inside)", Vec(Inside.Position - Cube.Position))
            end
            Say("horizontal distance %.1f studs | heart is %+.1f studs relative to the tube height | workspace.Gravity %.1f | shot speed %d", Info.Dist, Info.Dy, Info.Gravity, Speed)
            Say("tube rest elevation %+.2f deg (boat tilt / mount angle; the game's cannon pitch right now is %+.2f deg)", math.deg(Info.RestPitch), math.deg(ClientPitch))
            if Info.LowArc then
                Say("solved world elevation %.2f deg (high arc would be %.2f deg, unusable: game limit is 45 deg)", math.deg(Info.LowArc), math.deg(Info.HighArc))
            end
            if Info.Fallback then
                warn("[HeartAim] FALLBACK to the old fixed 45 deg: " .. Info.Fallback)
            elseif Info.Capped then
                local Short = Info.Target.Y - HeightAt(Info.Origin.Y, Info.Gravity, Info.RestPitch + MaxPitch, Info.Dist)
                Say("sending pitch 45.00 deg, the game's maximum. The heart needs %.2f deg, so with this boat distance the ball is expected to pass about %.1f studs below the Cube center (if that is a lot, the boat should be closer to the heart)", math.deg(Info.Needed), Short)
            else
                Say("sending pitch %.2f deg (%.4f rad), yaw %.6f%s", math.deg(Info.Pitch), Info.Pitch, Yaw, Info.Clamped and " (clamped to the game's -10 deg minimum)" or "")
            end
        end

        -- Follows the real CannonBall after an accepted shot and says where it went relative to the heart
        local function Track(Spawn, Info, Heart, Boat, ShotId)
            local Ball = Spawn.Ball
            local Origin, Target = Info.Origin, Info.Target
            local Forward = Vector3.new(Target.X - Origin.X, 0, Target.Z - Origin.Z)
            Forward = Forward.Magnitude > 0 and Forward.Unit or Vector3.new(0, 0, -1)
            local Right = Forward:Cross(Vector3.yAxis)
            local E = Info.RestPitch + Info.Pitch

            local Vel = Spawn.Vel
            Say("ball #%d spawned %.1f studs from the tube", ShotId, (Spawn.Pos - Origin).Magnitude)
            if Vel.Magnitude > 1 then
                Say("velocity at spawn: %.0f studs/s (model: %d), elevation %.1f deg (model: %.1f deg). A few degrees of difference is normal if it was seen some frames after launch", Vel.Magnitude, Speed, math.deg(math.atan2(Vel.Y, Vector3.new(Vel.X, 0, Vel.Z).Magnitude)), math.deg(E))
            else
                Say("velocity was not replicated at spawn (reads 0), speed/angle check skipped; the position check below still works")
            end

            local Started = os.clock()
            local Ended = "timeout"
            local Prev, PrevS, Cross
            local Last = Spawn.Pos
            local Closest = math.huge

            while os.clock() - Started < 12 do
                if not Ball.Parent then
                    Ended = "removed"
                    break
                end

                local Pos = Ball.Position
                Last = Pos
                Closest = math.min(Closest, (Pos - Target).Magnitude)
                local S = (Pos - Origin):Dot(Forward)

                if not Cross and PrevS and PrevS < Info.Dist and S >= Info.Dist then
                    Cross = Prev:Lerp(Pos, (Info.Dist - PrevS) / (S - PrevS))
                end

                Prev, PrevS = Pos, S

                if Ball:GetAttribute("Welded") then
                    Ended = "welded"
                    break
                end

                task.wait()
            end

            local Harpooned = false
            pcall(function()
                Harpooned = Heart.Inside:GetAttribute("Harpooned") == true
            end)

            Say("ball #%d ended: %s after %.1fs at %s (closest it got to the Cube center: %.1f studs)", ShotId, Ended, os.clock() - Started, Vec(Last), Closest)

            if Harpooned or Ended == "welded" then
                Say("HIT: the heart is harpooned")
                return
            end

            warn(string.format("[HeartAim] MISS on shot #%d, details:", ShotId))

            if Cross then
                local Dy = Cross.Y - Target.Y
                local Lat = (Cross - Target):Dot(Right)
                local Expected = HeightAt(Origin.Y, Info.Gravity, E, Info.Dist)
                Say("at the heart's distance the ball was %.1f studs %s the Cube center and %.1f studs to the %s of it", math.abs(Dy), Dy > 0 and "ABOVE" or "BELOW", math.abs(Lat), Lat > 0 and "RIGHT" or "LEFT")
                Say("model check: predicted height there %.1f, actual %.1f (difference %+.1f studs)", Expected, Cross.Y, Cross.Y - Expected)

                if math.abs(Cross.Y - Expected) > 10 then
                    Say("-> the real flight does NOT follow the model, so the miss is aim-model error (speed, gravity, muzzle position or boat tilt differ from what was assumed), not the heart height. Send this log")
                elseif Info.Capped or Info.Fallback then
                    Say("-> expected: this shot could not be aimed at the Cube center (see the 45 deg maximum / FALLBACK line above), the heart is out of reach from this boat distance")
                elseif math.abs(Lat) > 15 then
                    Say("-> height is right but it went sideways: the boat is not pointing at the heart (boat yaw / cannon yaw), the pitch is fine")
                else
                    Say("-> the flight follows the model and the pitch was right for the Cube center, so the heart moved, the Cube center is not what the heart hit-box needs, or something blocked it")
                end
            else
                Say("the ball never reached the heart's distance (it got %.1f of %.1f studs horizontally), so it hit something first or fell short", PrevS or 0, Info.Dist)
                local Names, Seen = {}, {}
                for _, Part in ipairs(workspace:GetPartBoundsInRadius(Last, 12)) do
                    if Part ~= Ball and not Part:IsDescendantOf(Boat) and not Part:IsDescendantOf(LocalPlayer2.Character) and not Seen[Part.Name] and #Names < 6 then
                        Seen[Part.Name] = true
                        table.insert(Names, Part:GetFullName())
                    end
                end
                Say("things within 12 studs of its last position: %s", #Names > 0 and table.concat(Names, " | ") or "nothing (it fell into the water / despawned in the air)")
            end
        end

        Tbl7.FireHeartHarpoon = function(Harpoon, Heart)
            local Cube = Heart:FindFirstChild("Cube")
            local Seat = Harpoon:FindFirstChild("Seat")
            local TubeWeld = Seat and Seat:FindFirstChild("TubeWeld")
            local Tube = TubeWeld and TubeWeld.Part1
            local CannonWeld = Seat and Seat:FindFirstChild("CannonWeld")
            local ClientPitch = CannonWeld and (CannonWeld.C0:ToEulerAnglesXYZ()) or 0

            -- A shot can only go out when the game's Cooldown child is gone; only those get logged / tracked
            local Ready = not State.Busy and not Harpoon:FindFirstChild("Cooldown")
            local Verbose = Ready and os.clock() - State.LastLog > 3
            local Info, Pitch = nil, MaxPitch

            if Cube and Tube then
                local Rest = math.asin(math.clamp(Tube.CFrame.LookVector.Y, -1, 1)) - ClientPitch
                Info = Solve(Tube.Position, Cube.Position, Rest)
                Pitch = Info.Pitch
            elseif Verbose then
                warn(string.format("[HeartAim] cannot solve the angle, missing: %s%s. Using the old fixed 45 deg", Cube and "" or "FrozenHeart.Cube ", Tube and "" or "Harpoon.Seat.TubeWeld.Part1"))
            end

            if Verbose then
                State.LastLog = os.clock()
                if Info then
                    ReportAim(Cube, Heart, Info, ClientPitch)
                end
            end

            local Conn, Spawn
            if Ready then
                Conn = workspace.DescendantAdded:Connect(function(Inst)
                    if not Spawn and Inst.Name == "CannonBall" and Inst:IsA("BasePart") then
                        Spawn = { Ball = Inst, Pos = Inst.Position, Vel = Inst.AssemblyLinearVelocity }
                    end
                end)
            end

            local Ok, Ret = pcall(function()
                return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("FireHarpoon", Pitch, Yaw, Harpoon, workspace:GetServerTimeNow())
            end)

            if not Ready then
                return
            end

            if not Ok or not Ret then
                Conn:Disconnect()
                if Verbose then
                    warn(string.format("[HeartAim] FireHarpoon was not accepted (%s). Usual causes: cooldown not over yet, character not seated in the Harpoon seat, or the server refused the pitch", Ok and "server returned " .. tostring(Ret) or "error: " .. tostring(Ret)))
                end
                return
            end

            State.Busy = true
            State.Shots += 1
            local ShotId = State.Shots

            if not Verbose and Info then
                ReportAim(Cube, Heart, Info, ClientPitch)
            end

            Say("shot #%d accepted by the server (returned %s)", ShotId, tostring(Ret))

            task.spawn(function()
                local Waited = 0
                while not Spawn and Waited < 2 do
                    task.wait(0.05)
                    Waited += 0.05
                end

                Conn:Disconnect()

                if not Spawn then
                    warn("[HeartAim] the server accepted the shot but no 'CannonBall' part appeared in workspace within 2s, so the flight can't be tracked (ball parented somewhere else / named differently)")
                elseif Info then
                    local Success, Err = pcall(Track, Spawn, Info, Heart, Harpoon.Parent, ShotId)
                    if not Success then
                        warn("[HeartAim] flight tracker errored: " .. tostring(Err))
                    end
                end

                State.Busy = false
            end)
        end
    end

    countSeatedPlayers = function()
        local Name2 = LocalPlayer2.Name
        local Children, V60 = game:GetService("Workspace").Boats:GetChildren()
        local V61 = nil

        for _, V62 in V15, Children, V60 do
            if V62:IsA("Model") then
                if V62:FindFirstChild("Owner") and V21(V62.Owner.Value) == Name2 and V62.Humanoid.Value > 0 then
                    V61 = V62
                end
            end
        end

        local N9 = 0

        if V61 then
            local Tbl9 = {}
            local Children2, V62 = V61:GetChildren()

            for _, V63 in V15, Children2, V62 do
                local Seat = V63:FindFirstChildWhichIsA("Seat") or V63:IsA("Seat") and V63

                if Seat and Seat:IsA("Seat") and not Seat:IsA("VehicleSeat") then
                    if not table.find(Tbl9, Seat) then
                        table.insert(Tbl9, Seat)
                    end
                end
            end

            local Cannon = V61:FindFirstChild("Cannon")

            if Cannon then
                local Seat = Cannon:FindFirstChild("Seat") or Cannon:IsA("Seat") and Cannon

                if Seat and Seat:IsA("Seat") and not Seat:IsA("VehicleSeat") then
                    if not table.find(Tbl9, Seat) then
                        table.insert(Tbl9, Seat)
                    end
                end
            end

            for _, V63 in V18(Tbl9) do
                local Occupant = V63.Occupant

                if Occupant and Occupant:IsA("Humanoid") then
                    local Parent = Occupant.Parent

                    if Parent then
                        local PlayerFromCharacter = game.Players:GetPlayerFromCharacter(Parent)

                        if PlayerFromCharacter and PlayerFromCharacter ~= LocalPlayer2 then
                            N9 += 1
                        end
                    end
                end
            end
        end

        return N9
    end

    manageTween = function(Arg, Arg2, Arg3, Arg4)
        local V60 = getgenv()[Arg4]

        if V60 then
            V60:Cancel()
            getgenv()[Arg4] = nil
        end

        local TweenInfo_ = TweenInfo.new((Arg2.Position - Arg.Position).Magnitude / Arg3, Enum.EasingStyle.Quad)
        local Tween = game:GetService("TweenService"):Create(Arg, TweenInfo_, { CFrame = Arg2 })
        getgenv()[Arg4] = Tween
        Tween:Play()
        return Tween
    end

    do
        local Part = nil
        local Tween = nil
        local V60 = nil
        local Flag3 = false

        local function Fn25(Arg)
            if Part and Part.Parent == workspace then
                return Part
            end
            local BananaBoatGhostPart = workspace:FindFirstChild("BananaBoatGhostPart")

            if BananaBoatGhostPart then
                BananaBoatGhostPart:Destroy()
            end

            Part = Instance.new("Part")
            Part.Name = "BananaBoatGhostPart"
            Part.Size = Vector3.one
            Part.Anchored = true
            Part.CanCollide = false
            Part.CanTouch = false
            Part.CanQuery = false
            Part.Transparency = 1
            Part.CFrame = Arg.CFrame
            Part.Parent = workspace
            return Part
        end

        stopBoatGhost = function()
            Flag3 = false
            V60 = nil

            if Tween then
                Tween:Cancel()
                Tween = nil
            end

            if Part then
                Part:Destroy()
                Part = nil
            end

            V13(function()
                local V61 = checkboat()

                if V61 and V61:FindFirstChild("VehicleSeat") then
                    V61.VehicleSeat.AssemblyLinearVelocity = Vector3.zero
                    V61.VehicleSeat.AssemblyAngularVelocity = Vector3.zero
                end
            end)
        end

        moveBoatGhost = function(Arg, Arg2, Arg3)
            if not Arg or not Arg.Parent then
                return
            end
            local V61 = Fn25(Arg)

            if (Arg.Position - V61.Position).Magnitude > 200 then
                V61.CFrame = Arg.CFrame
            end

            V61.CFrame = CFrame.new(V61.Position.X, Arg2.Position.Y, V61.Position.Z)
            V60 = Arg2
            Flag3 = true
            local Magnitude = (Arg2.Position - V61.Position).Magnitude
            if Magnitude < 6 then
                return
            end

            if Tween and V60 and (V60.Position - Arg2.Position).Magnitude < 2 then
                return
            end

            if Tween then
                Tween:Cancel()
            end

            Tween = game:GetService("TweenService"):Create(V61, TweenInfo.new(math.max(Magnitude / Arg3, 0.1), Enum.EasingStyle.Linear), { CFrame = Arg2 })
            Tween:Play()
        end

        game:GetService("RunService").Heartbeat:Connect(function()
            if not Flag3 or not Part or not Part.Parent then
                return
            end
            local V61 = checkboat()
            if not V61 or not V61:FindFirstChild("VehicleSeat") then
                stopBoatGhost()
                return
            end
            local VehicleSeat = V61.VehicleSeat
            if not LocalPlayer2.Character or not LocalPlayer2.Character:FindFirstChild("Humanoid") or not LocalPlayer2.Character.Humanoid.Sit or LocalPlayer2.Character.Humanoid.SeatPart ~= VehicleSeat then
                stopBoatGhost()
                return
            end
            NoclipBoat(V61)
            VehicleSeat.CFrame = Part.CFrame
            VehicleSeat.AssemblyLinearVelocity = Vector3.zero
            VehicleSeat.AssemblyAngularVelocity = Vector3.zero
        end)
    end

    DetectItemPlr = function(Arg)
        if LocalPlayer2.Character:FindFirstChild(Arg) or LocalPlayer2.Backpack:FindFirstChild(Arg) then
            return true
        end
    end

    DetectLeviathan = function(Arg, Arg2)
        local Children, V60 = Arg:GetChildren()

        for _, V61 in V15, Children, V60 do
            if V61.Name == "Leviathan Tail" and V61:GetAttribute("HealthEnabled") and V61.Health.Value > 0 then
                return V61
            end
        end

        local Children2, V61 = Arg:GetChildren()

        for _, V62 in V15, Children2, V61 do
            if V62.Name == "Leviathan" and not V62:GetAttribute("Armored") and V62.Health.Value > 0 then
                return V62
            end
        end

        if Arg2 then
            local Children3, V62 = Arg:GetChildren()

            for _, V63 in V15, Children3, V62 do
                if V63.Name == "Leviathan Segment" and V63:GetAttribute("SegmentId") == Arg2 and V63.Health.Value > 0 then
                    return V63
                end
            end
        end
    end

    MultiSegmentLeviathan = function(Arg, Arg2)
        if Arg2 then
            local Children, V60 = Arg:GetChildren()

            for _, V61 in V15, Children, V60 do
                if V61.Name == "Leviathan Segment" and V61:GetAttribute("SegmentId") == Arg2 and V61.Health.Value > 0 and (not V61:FindFirstChild("Tinhdamage") or V61:FindFirstChild("Tinhdamage") and V61.Tinhdamage.Value < 21000) then
                    return V61
                end
            end
        end
    end

    -- alts: main's HumanoidRootPart + the Leviathan part closest to the main
    GetLeviFollow = function()
        if Config["Account Buy Boat"] then
            return nil
        end
        local Main = game.Players:FindFirstChild(V21(Config["Select Owner Boat Beast Hunter"] or ""))
        local Character = Main and Main.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        local Humanoid = Character and Character:FindFirstChild("Humanoid")

        if not HumanoidRootPart or not Humanoid or Humanoid.Health <= 0 then
            return nil
        end
        local Target = nil
        local Distance = math.huge

        for _, V61 in V17(game.workspace.SeaBeasts:GetChildren()) do
            local Valid = V61.Name == "Leviathan Segment" or V61.Name == "Leviathan Tail" and V61:GetAttribute("HealthEnabled") or V61.Name == "Leviathan" and not V61:GetAttribute("Armored")

            if Valid and V61:FindFirstChild("Health") and V61.Health.Value > 0 and V61:FindFirstChild("HumanoidRootPart") and V61:FindFirstChild("Hitbox11") then
                local Magnitude = ((V61.HumanoidRootPart.Position - HumanoidRootPart.Position) * Vector3.new(1, 0, 1)).Magnitude

                if Magnitude < Distance then
                    Target = V61
                    Distance = Magnitude
                end
            end
        end

        if Target then
            return HumanoidRootPart, Target
        end
    end

    getgenv().CFrameLeviathan = CFrame.new(0, 142, 0)

    do
        local N9 = 0
        local N10 = 0
        local Flag3 = false

        spawn(function()
            while true do
                wait()
                if not (game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main") and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main"):FindFirstChild("DmgCounter")) then
                    continue
                end
                break
            end

            game:GetService("Players").LocalPlayer.PlayerGui.Main.DmgCounter.Text:GetPropertyChangedSignal("Text"):Connect(function()
                if V16(game:GetService("Players").LocalPlayer.PlayerGui.Main.DmgCounter.Text.Text) == 0 then
                    N9 = 0
                    N10 = 0
                    Flag3 = false
                else
                    Flag3 = true
                    N9 = V16(game:GetService("Players").LocalPlayer.PlayerGui.Main.DmgCounter.Text.Text) - N10
                end
            end)
        end)

        local function Fn25(Arg, Arg2)
            local CFrame_ = Arg.PrimaryPart.CFrame
            local Unit = (CFrame_.LookVector * Vector3.new(1, 0, 1)).Unit
            local Unit2 = ((Arg2 - CFrame_.Position) * Vector3.new(1, 0, 1)).Unit
            local V60 = math.acos(math.clamp(Unit:Dot(Unit2), -1, 1))
            local V61 = Unit:Cross(Unit2)
            local V62 = math.deg(V60)
            local N11

            if V61.Y < 0 then
                N11 = -V62
            else
                N11 = V62
            end

            return N11
        end

        local function Fn26(Arg, Arg2)
            local Position = Arg.PrimaryPart.Position
            local Cframe = CFrame.lookAt
            local Vector = Vector3.new(Arg2.X, Position.Y, Arg2.Z)
            local V60 = Cframe(Position, Vector)
            Arg:SetPrimaryPartCFrame(V60)
        end

        local Tbl9 = {
            Vector3.new(7415.8325, 24.000849, -6664.6826),
            Vector3.new(-4703.16, 24.00002, -7.8222027),
            Vector3.new(-8762.331, 23.999748, -452.25867),
            Vector3.new(-15018.063, 23.999054, 199.03154),
            Vector3.new(-16065.729, 23.999151, 421.89822),
        }

        local Tbl10 = {
            Vector3.new(7415.8325, 24.000849, -6664.6826),
            Vector3.new(1162.8353, 24.000189, -1825.8121),
            Vector3.new(2517.8875, 24.000118, 5109.431),
            Vector3.new(5172.726, 23.999813, 3893.6245),
            Vector3.new(5203.809, 24.00104, 2013.0905),
        }

        game:GetService("VirtualInputManager")

        local function Fn27(Arg, ThrottleFloat)
            if not Arg then
                return
            end
            local VehicleSeat = Arg:FindFirstChildWhichIsA("VehicleSeat", true)
            local PrimaryPart = Arg.PrimaryPart or VehicleSeat
            local InputSpeedBoatAutoDrive = Tbl7.Speed("Input Speed Boat Auto Drive")

            if VehicleSeat then
                VehicleSeat.MaxSpeed = InputSpeedBoatAutoDrive
                VehicleSeat.TurnSpeed = InputSpeedBoatAutoDrive
                VehicleSeat.ThrottleFloat = ThrottleFloat
                VehicleSeat.Throttle = ThrottleFloat
            end

            if PrimaryPart then
                PrimaryPart.ThrottleFloat = ThrottleFloat
                PrimaryPart.Throttle = ThrottleFloat
            end
        end

        local function Fn28(Arg)
            local PrimaryPart = Arg.PrimaryPart or Arg:FindFirstChildWhichIsA("VehicleSeat", true)
            if not PrimaryPart then
                return
            end
            local Now5 = tick()

            while tick() - Now5 < 5 and task.wait() do
                Fn27(Arg, -1)
                NoclipBoat(Arg)
            end

            Fn27(Arg, 0)
            task.wait(0.1)
            Arg:SetPrimaryPartCFrame(PrimaryPart.CFrame * CFrame.Angles(0, 0.87266462599716477, 0))
            task.wait(0.2)
            local Now6 = tick()

            while tick() - Now6 < 8 and task.wait() do
                Fn27(Arg, 1)
                NoclipBoat(Arg)
            end
        end

        local function Fn29(Arg, Arg2)
            for _, V60 in V18(Arg) do
                if not _G.autoDrive or not workspace.Map:FindFirstChild("FrozenHeart") then
                    break
                end
                Tbl7.SetStatus(Arg2, Tbl7.Colors.Green)
                local Now5 = tick()
                local Position = nil

                while _G.autoDrive and workspace.Map:FindFirstChild("FrozenHeart") and task.wait() do
                    local V61 = checkboat()
                    if not V61 then
                        return
                    end
                    local PrimaryPart = V61.PrimaryPart or V61:FindFirstChildWhichIsA("VehicleSeat", true)
                    if not PrimaryPart then
                        return
                    end
                    NoclipBoat(V61)

                    if LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") then
                        local Humanoid = LocalPlayer2.Character.Humanoid

                        if not Humanoid.Sit then
                            local VehicleSeat = V61:FindFirstChildWhichIsA("VehicleSeat", true)

                            if VehicleSeat then
                                LocalPlayer2.Character.HumanoidRootPart.CFrame = VehicleSeat.CFrame + Vector3.new(0, 2, 0)
                                task.wait(0.2)
                                VehicleSeat:Sit(Humanoid)
                                task.wait(0.5)
                            end
                        end
                    end

                    if not Position then
                        Position = PrimaryPart.Position
                        Now5 = tick()
                    end

                    if tick() - Now5 >= 3 then
                        if (PrimaryPart.Position - Position).Magnitude < 5 then
                            Fn28(V61)
                            Tbl7.SetStatus(Arg2, Tbl7.Colors.Green)
                        end

                        Position = PrimaryPart.Position
                        Now5 = tick()
                    end

                    local Magnitude = (PrimaryPart.Position - V60).Magnitude
                    local V62 = Fn25(V61, V60)
                    if Magnitude < 15 then
                        Fn27(V61, 0)
                        break
                    end

                    if math.abs(V62) > 5 then
                        Fn26(V61, V60)
                        Fn27(V61, 0)
                    else
                        Fn27(V61, 1)
                    end
                end

                task.wait(0.3)
            end
        end

        DriveBoatToTiki = function()
            Fn29(Tbl9, "Go Tiki")
            wait(10)
            _G.autoDrive = false

            if Config["Webhook Drive To Tiki/Hydra"] then
                getgenv().WebhookDriveTo()
            end
        end

        DriveBoatToHydra = function()
            Fn29(Tbl10, "Go Hydra")
            wait(10)
            _G.autoDrive = false

            if Config["Webhook Drive To Tiki/Hydra"] then
                getgenv().WebhookDriveTo()
            end
        end

        local Tbl11 = {
            BuyBlackLeg = "Dark Step Teacher",
            BuySuperhuman = "Martial Arts Master",
            BuySharkmanKarate = "Sharkman Teacher",
            DragonClaw = "Sabi",
            BuyDragonTalon = "Uzoth",
            BuyElectro = "Mad Scientist",
            BuyFishmanKarate = "Water Kung-fu Teacher",
            BuyDeathStep = "Phoeyu, the Reformed",
            BuyGodhuman = "Ancient Monk",
            BuyElectricClaw = "Previous Hero",
            BuySanguineArt = "Shafi",
        }

        NPCManager = require(game:GetService("ReplicatedStorage").NPCManager)

        DetectNpc = function(Arg)
            local HumanoidRootPart = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")
            if not HumanoidRootPart then
                return
            end
            local Tbl12 = {}
            local NPCs = workspace.NPCs
            local NPCs2 = game:GetService("ReplicatedStorage").NPCs
            Tbl12[1] = NPCs
            Tbl12[2] = NPCs2
            local Huge = math.huge
            local V60 = nil

            for _, V61 in V15, Tbl12, nil do
                local Children, V62 = V61:GetChildren()

                for _, V63 in V15, Children, V62 do
                    if V63:GetAttribute("NPCLoaded") and V63:GetAttribute("NPCReady") and V63.Name == Arg and V63:FindFirstChild("HumanoidRootPart") then
                        local Magnitude = (HumanoidRootPart.Position - V63.HumanoidRootPart.Position).Magnitude

                        if Magnitude < Huge then
                            Huge = Magnitude
                            V60 = V63
                        end
                    end
                end
            end

            if not V60 then
                return NPCManager.getNPCsByName(Arg)[1]._modelState._instance
            end
            return V60, Huge
        end

        GetPlayerNears = function()
            local Players, V60 = game:GetService("Players"):GetPlayers()

            for _, V61 in V15, Players, V60 do
                if V61 ~= LocalPlayer2 and V61.Character and V61.Character:FindFirstChild("HumanoidRootPart") then
                    return V61.Character
                end
            end
        end

        HuntLeviathan = function()
            if Config["Auto Farm Material Sanguine Art"] and game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt", true) ~= 1 and CheckCountItem("Leviathan Heart", 1) then
                return
            end

            if Config["Auto light the torch"] and game.workspace._WorldOrigin.Locations:FindFirstChild("Freezing Hydra Island") then
                return
            end

            -- Auto Enchant after delivering the heart at Tiki (defined with the Auto Enchant tab further down)
            if AutoEnchantAfterTiki and AutoEnchantAfterTiki() then
                return
            end

            if not DetectItemPlr("Sharkman Karate") and Config["Auto Buy Sharkman Karate"] then
                Tbl7.SetStatus("Tween To Buy Sharkman Karate", Tbl7.Colors.Blue)
                local BuySharkmanKarate = DetectNpc(Tbl11.BuySharkmanKarate)

                if not BuySharkmanKarate or not BuySharkmanKarate:FindFirstChild("HumanoidRootPart") then
                    V13(function()
                        local NPCs = workspace:FindFirstChild("NPCs")

                        if NPCs then
                            BuySharkmanKarate = NPCs:FindFirstChild("Sharkman Teacher")
                        end
                    end)
                end

                if BuySharkmanKarate and BuySharkmanKarate:FindFirstChild("HumanoidRootPart") then
                    local Position = BuySharkmanKarate.HumanoidRootPart.Position

                    if LocalPlayer2:DistanceFromCharacter(Position) < 15 then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    else
                        toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Position, CFrame.new(Position))
                    end
                else
                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Vector3.new(-4970.1304, 314.57855, -3197.0002), CFrame.new(Vector3.new(-4970.1304, 314.57855, -3197.0002)))
                end

                return
            end

            -- Harpoon seat is only for Shoot Heart (main, FrozenHeart not harpooned yet)
            local HarpoonBoat = Config["Account Buy Boat"] and checkboat() or checkboatMulti(true)
            local HarpoonSeat = HarpoonBoat and HarpoonBoat:FindFirstChild("Harpoon") and HarpoonBoat.Harpoon:FindFirstChild("Seat")

            if HarpoonSeat then
                local ShootHeart = Config["Account Buy Boat"] and workspace.Map:FindFirstChild("FrozenHeart") and not workspace.Map.FrozenHeart.Inside:GetAttribute("Harpooned") and true or false
                HarpoonSeat.CanTouch = ShootHeart

                if not ShootHeart and LocalPlayer2.Character.Humanoid.SeatPart == HarpoonSeat then
                    LocalPlayer2.Character.Humanoid.Sit = false
                end
            end

            if workspace.Map:FindFirstChild("FrozenHeart") then
                getgenv().DontTeleWatcher = false

                if Config["Account Buy Boat"] then
                    if not workspace.Map.FrozenHeart.Inside:GetAttribute("Harpooned") then
                        local IceSpike = workspace.Map:FindFirstChild("IceSpike", true)

                        if Config["Shoot Heart When Ice Spike Breaks"] and IceSpike then
                            Tbl7.SetStatus("Waiting Ice Spike Destroy", Tbl7.Colors.Green)

                            if getgenv().Tween then
                                getgenv().Tween:Pause()
                                getgenv().Tween:Cancel()
                            end

                            return
                        end

                        if Config["Webhook Shoot Heart Leviathan"] and getgenv().ShootHeartz then
                            getgenv().WebhookShootHeart()
                            getgenv().ShootHeartz = false
                        end

                        local V60 = checkboat()
                        NoclipBoat(V60)
                        local N11 = CFrame.new(workspace.Map.FrozenHeart.Cube.Position.X, 31, workspace.Map.FrozenHeart.Cube.Position.Z) * CFrame.new(0, 0, 300)
                        local Vector = Vector3.new(workspace.Map.FrozenHeart.Cube.Position.X, 31, workspace.Map.FrozenHeart.Cube.Position.Z)
                        local Cframe = CFrame.new(N11.Position, Vector)

                        if (Cframe.Position - V60.VehicleSeat.Position).Magnitude > 20 then
                            Tbl7.SetStatus("Tween To Position Shoot Heart", Tbl7.Colors.Blue)

                            if LocalPlayer2.Character.Humanoid.SeatPart and LocalPlayer2.Character.Humanoid.SeatPart.Name == "VehicleSeat" then
                                moveBoatGhost(V60.VehicleSeat, Cframe, Tbl7.Speed("Speed Boat Shoot Heart Position"))

                                while true do
                                    task.wait(0.5)
                                    NoclipBoat(V60)
                                    if not ((Cframe.Position - V60.VehicleSeat.Position).Magnitude <= 20 or not LocalPlayer2.Character.Humanoid.Sit) then
                                        continue
                                    end
                                    break
                                end

                                stopBoatGhost()
                                wait(1)
                            else
                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V60.VehicleSeat.Position, V60.VehicleSeat.CFrame)
                            end
                        elseif LocalPlayer2.Character.Humanoid.SeatPart and LocalPlayer2.Character.Humanoid.SeatPart.Parent.Name == "Harpoon" then
                            Tbl7.SetStatus("Auto Shoot Heart", Tbl7.Colors.Green)
                            Tbl7.FireHeartHarpoon(V60.Harpoon, workspace.Map.FrozenHeart)
                        else
                            Tbl7.SetStatus("Tween To Seat Shoot", Tbl7.Colors.Blue)
                            toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V60.Harpoon.Seat.Position, V60.Harpoon.Seat.CFrame)
                        end
                    else
                        local V60 = checkboat()

                        if V60 and not LocalPlayer2.Character.Humanoid.Sit or LocalPlayer2.Character.Humanoid.SeatPart.Name ~= "VehicleSeat" then
                            toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V60.VehicleSeat.Position, V60.VehicleSeat.CFrame)
                        elseif (Config["Drive Boat To Tiki"] or Config["Drive Boat To Hydra"]) and countSeatedPlayers() < 4 then
                            -- Heart harpooned: don't sail off until every account is sitting on the boat
                            Tbl7.SetStatus("Waiting 4 Players To Drive (" .. countSeatedPlayers() .. "/4)", Tbl7.Colors.Blue)
                            return
                        elseif Config["Drive Boat To Tiki"] then
                            Tbl7.SetStatus("Waiting Go Tiki", Tbl7.Colors.Green)
                            _G.autoDrive = true
                            getgenv().noclip = false

                            if LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                                LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                            end

                            DriveBoatToTiki()
                            _G.autoDrive = false
                        elseif Config["Drive Boat To Hydra"] then
                            Tbl7.SetStatus("Waiting Go Hydra", Tbl7.Colors.Green)
                            _G.autoDrive = true
                            getgenv().noclip = false

                            if LocalPlayer2.Character:FindFirstChild("Humanoid") and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                                LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                            end

                            DriveBoatToHydra()
                            _G.autoDrive = false
                        end
                    end
                elseif workspace.Map.FrozenHeart.Inside:GetAttribute("Harpooned") then
                    Tbl7.SetStatus("Waiting Go Tiki Or Hydra", Tbl7.Colors.Green)
                    local V60 = checkboatMulti()

                    if V60 and not LocalPlayer2.Character.Humanoid.Sit then
                        local N11 = V60.CFrame * CFrame.new(0, 2, 0)

                        if (LocalPlayer2.Character.HumanoidRootPart.Position - N11.Position).Magnitude > 6 then
                            toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, N11.Position, N11, false, true)
                        else
                            V13(function()
                                V60:Sit(LocalPlayer2.Character.Humanoid)
                            end)
                        end
                    elseif LocalPlayer2.Character.Humanoid.Sit and getgenv().noclip then
                        getgenv().noclip = false
                    elseif not V60 and not LocalPlayer2.Character.Humanoid.Sit then
                        local N11 = workspace.Map.FrozenHeart.Inside.CFrame * CFrame.new(0, 50, 0)
                        toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, N11.Position, N11, false, true)
                    end
                else
                    Tbl7.SetStatus("Waiting Account Buy Boat Shoot Heart", Tbl7.Colors.Blue)
                end
            else
                local SeaBeasts = DetectLeviathan(game.workspace.SeaBeasts, 2) or DetectLeviathan(game.workspace.SeaBeasts, 3) or DetectLeviathan(game.workspace.SeaBeasts, 4) or DetectLeviathan(game.workspace.SeaBeasts)

                if not game.workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") and not SeaBeasts then
                    getgenv().DontTeleWatcher = false
                    getgenv().RespawnLeviathan = true
                    getgenv().LeviSpawnWait = true
                    getgenv().ShootHeartz = true
                    local PathTerrorshark = DetectSeaEventsMythic()

                    if PathTerrorshark then
                        Tbl7.SetStatus("Attack Sea Event", Tbl7.Colors.Blue)
                        getgenv().DesIdk = true

                        if getgenv().TweenBoat then
                            getgenv().TweenBoat:Pause()
                            getgenv().TweenBoat:Cancel()
                        end

                        if PathTerrorshark.Name == "Terrorshark" then
                            getgenv().PathTerrorshark = PathTerrorshark
                        end

                        getgenv().PathSpinBoat = PathTerrorshark
                        local HumanoidRootPart = nil

                        while true do
                            task.wait()

                            spawn(function()
                                TeleportSeaEvents(PathTerrorshark)
                            end)

                            if Config["Auto Dragon Storm(Risk)"] then
                                HumanoidRootPart = PathTerrorshark:FindFirstChild("HumanoidRootPart") or PathTerrorshark:FindFirstChild("Engine")

                                if PathTerrorshark.Name == "SeaBeast1" then
                                    getgenv().PathSeaBeast = PathTerrorshark
                                    getgenv().AimPos = CFrame.new(HumanoidRootPart.Position.X, 40, HumanoidRootPart.Position.Z)
                                elseif not PathTerrorshark:FindFirstChildWhichIsA("Humanoid") then
                                    getgenv().AimPos = CFrame.new(LocalPlayer2.Character.HumanoidRootPart.Position.X, -58, LocalPlayer2.Character.HumanoidRootPart.Position.Z)
                                end

                                AutoGunAttackOnce()
                            elseif PathTerrorshark:FindFirstChildWhichIsA("Humanoid") then
                                UsedualFlock()
                                ClickM1(PathTerrorshark, true)
                            else
                                HumanoidRootPart = PathTerrorshark:FindFirstChild("HumanoidRootPart") or PathTerrorshark:FindFirstChild("Engine")

                                if PathTerrorshark.Name == "SeaBeast1" then
                                    getgenv().PathSeaBeast = PathTerrorshark
                                    getgenv().AimPos = CFrame.new(HumanoidRootPart.Position.X, 40, HumanoidRootPart.Position.Z)
                                else
                                    getgenv().AimPos = CFrame.new(LocalPlayer2.Character.HumanoidRootPart.Position.X, -58, LocalPlayer2.Character.HumanoidRootPart.Position.Z)
                                end

                                if LocalPlayer2:DistanceFromCharacter(HumanoidRootPart.Position) < 400 then
                                    AutoAllSkill()
                                end
                            end

                            local Flag4 = not PathTerrorshark or not PathTerrorshark.Parent or PathTerrorshark:FindFirstChild("Health") and PathTerrorshark.Health.Value == 0
                            local Flag5

                            if Flag4 then
                                Flag5 = Flag4
                            else
                                Flag5 = PathTerrorshark:FindFirstChildWhichIsA("Humanoid") and PathTerrorshark.Humanoid.Health == 0
                            end

                            Flag5 = Flag5 or not HumanoidRootPart
                            if not Flag5 then
                                continue
                            end
                            break
                        end

                        getgenv().DesIdk = false
                        return
                    end

                    getgenv().PathSeaBeast = false
                    getgenv().PathTerrorshark = false
                    getgenv().PathSpinBoat = false

                    if Config["Account Buy Boat"] then
                        local OldBoat = checkboat()

                        -- A sea event pulled the owner away from Tiki before the rebuy: keep the working boat instead of resetting (the reset also made the alts reset)
                        if OldBoat and getgenv().RebuyBoat and LocalPlayer2:GetAttribute("CurrentLocation") ~= "Tiki Outpost" and LocalPlayer2:DistanceFromCharacter(Vector3.new(-16927.451, 9.086, 433.864)) > 1000 then
                            getgenv().RebuyBoat = false
                        end

                        -- RebuyBoat: heart delivered at Tiki (+ enchants done), buy it again same as when there's no boat
                        if not OldBoat or getgenv().RebuyBoat then
                            SaveSettings("BoatStatus", "Buying")
                            Tbl7.SetStatus(OldBoat and "Rebuy Boat" or "Buy Boat", Tbl7.Colors.Blue)
                            local Cframe = CFrame.new(-16927.451, 9.086, 433.864)

                            if (Cframe.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude > 8 then
                                if (Cframe.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude > 1000 and LocalPlayer2:GetAttribute("CurrentLocation") ~= "Tiki Outpost" then
                                    if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki" or game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki2" then
                                        Tbl7.ResetCharacter()
                                        return
                                    end
                                end

                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Cframe.Position, Cframe)
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", "Beast Hunter")
                                getgenv().RebuyBoat = false
                                wait(3)
                            end
                        elseif OldBoat and LocalPlayer2.Character.Humanoid.Sit then
                            SaveSettings("BoatStatus", "HasBoat")

                            if countSeatedPlayers() < 4 then
                                stopBoatGhost()
                                local Blue = Tbl7.Colors.Blue
                                Tbl7.SetStatus("Waiting 4 Players (" .. countSeatedPlayers() .. "/4)", Blue)
                                return
                            end

                            stopBoatGhost()
                            SaveSettings("BoatStatus", "Sailing")
                            Tbl7.SetStatus("Go Find Leviathan", Tbl7.Colors.Blue)
                            getgenv().noclip = false
                            local Cframe = CFrame.new(-10000000, 175, 37016.25)
                            local Cframe2 = CFrame.new(-32975.9921875, 160, 25963.7109375)
                            local Y = OldBoat.VehicleSeat.Position.Y
                            local Flag4

                            if DistanceFindLeviathan() >= 12000 then
                                Flag4 = true
                            else
                                Flag4 = false

                                if not (DistanceFindLeviathan() <= 4800) then
                                end
                            end

                            wait(0.5)

                            while true do
                                task.wait(0.5)
                                NoclipBoat(OldBoat)

                                if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character:FindFirstChild("Humanoid") then
                                    local Descendants, V60 = LocalPlayer2.Character:GetDescendants()

                                    for _, V61 in V15, Descendants, V60 do
                                        if (V61:IsA("MeshPart") or V61:IsA("Part")) and V61.CanCollide then
                                            V61.CanCollide = false
                                        end
                                    end
                                end

                                if DistanceFindLeviathan() >= 10000 then
                                    Flag4 = true
                                elseif DistanceFindLeviathan() <= 4800 then
                                    Flag4 = false
                                end

                                if countSeatedPlayers() < 4 then
                                    stopBoatGhost()
                                    local Blue = Tbl7.Colors.Blue
                                    Tbl7.SetStatus("Waiting players (" .. countSeatedPlayers() .. "/4)", Blue)
                                elseif Flag4 then
                                    Tbl7.SetStatus("Too far (>10km), returning...", Tbl7.Colors.Yellow)
                                    stopBoatGhost()
                                    moveBoatGhost(OldBoat.VehicleSeat, Cframe2, Tbl7.Speed("Speed Boat Return"))
                                else
                                    Tbl7.SetStatus("Go Find Leviathan", Tbl7.Colors.Blue)
                                    stopBoatGhost()
                                    moveBoatGhost(OldBoat.VehicleSeat, Cframe, Tbl7.Speed("Speed Boat Find Leviathan"))
                                end

                                if not (not LocalPlayer2.Character.Humanoid.Sit or game.workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") or DetectSeaEventsMythic() or not OldBoat or not OldBoat.Parent or not checkboat()) then
                                    continue
                                end
                                break
                            end

                            stopBoatGhost()
                            SaveSettings("BoatStatus", "Buying")
                            getgenv().OldBoat = OldBoat

                            if OldBoat and OldBoat:FindFirstChild("VehicleSeat") then
                                V13(function()
                                    OldBoat.VehicleSeat.CFrame = CFrame.new(OldBoat.VehicleSeat.Position.X, Y, OldBoat.VehicleSeat.Position.Z)
                                end)
                            end
                        elseif OldBoat and not LocalPlayer2.Character.Humanoid.Sit then
                            SaveSettings("BoatStatus", "HasBoat")

                            if not LocalPlayer2.Character.Humanoid.Sit then
                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, OldBoat.VehicleSeat.Position, OldBoat.VehicleSeat.CFrame)
                            end
                        end
                    else
                        Tbl7.SetStatus("Go Find Leviathan", Tbl7.Colors.Blue)
                        local V60 = checkboatMulti()
                        local V61 = checkboatMulti(true)

                        if V60 then
                            if LocalPlayer2.Character.Humanoid.Sit and LocalPlayer2.Character.Humanoid.SeatPart == V60 then
                                if getgenv().noclip then
                                    getgenv().noclip = false

                                    if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                                        LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                                    end
                                end
                            elseif LocalPlayer2.Character.Humanoid.Sit and LocalPlayer2.Character.Humanoid.SeatPart ~= V60 then
                                LocalPlayer2.Character.Humanoid.Sit = false
                                task.wait(0.15)
                            else
                                local N11 = V60.CFrame * CFrame.new(0, 2, 0)

                                if (LocalPlayer2.Character.HumanoidRootPart.Position - N11.Position).Magnitude > 6 then
                                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, N11.Position, N11, false, true)
                                else
                                    V13(function()
                                        V60:Sit(LocalPlayer2.Character.Humanoid)
                                    end)
                                end
                            end
                        elseif not V60 and not LocalPlayer2.Character.Humanoid.Sit and V61 then
                            local MeshesSerpentShipRetopoRopes = V61:FindFirstChild("Meshes/Serpent Ship Retopo ropes ", true)

                            if MeshesSerpentShipRetopoRopes and not LocalPlayer2.Character.Humanoid.Sit then
                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, MeshesSerpentShipRetopoRopes.Position, MeshesSerpentShipRetopoRopes.CFrame)
                            end
                        elseif not V60 and not V61 then
                            local V62 = checkboatBeastHunter()
                            local Value = Options["Select Owner Boat Beast Hunter"].Value
                            local V63 = game.Players:FindFirstChild(Value)

                            if not V62 then
                                local BoatStatus = nil

                                V13(function()
                                    BoatStatus = HttpService2:JSONDecode(readfile(Str10 .. "/" .. Value .. Str11)).BoatStatus
                                end)

                                if not V63 then
                                    Tbl7.SetStatus("Waiting owner join server...", Tbl7.Colors.Yellow)
                                elseif BoatStatus == "HasBoat" or BoatStatus == "Sailing" then
                                    if LocalPlayer2:GetAttribute("CurrentLocation") == "Tiki Outpost" then
                                        Tbl7.SetStatus("At Tiki, waiting boat...", Tbl7.Colors.Yellow)

                                        if getgenv().noclip then
                                            getgenv().noclip = false

                                            if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                                                LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                                            end
                                        end
                                    else
                                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki" or game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki2" then
                                            Tbl7.SetStatus("Owner has boat, resetting...", Tbl7.Colors.Yellow)
                                            Tbl7.ResetCharacter()
                                            return
                                        end

                                        if V63 and V63.Character and V63.Character:FindFirstChild("HumanoidRootPart") then
                                            Tbl7.SetStatus("Tween to owner...", Tbl7.Colors.Yellow)
                                            toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V63.Character.HumanoidRootPart.Position, V63.Character.HumanoidRootPart.CFrame)
                                        end
                                    end
                                elseif LocalPlayer2:GetAttribute("CurrentLocation") == "Tiki Outpost" then
                                    Tbl7.SetStatus("Waiting owner buy boat...", Tbl7.Colors.Yellow)

                                    if getgenv().noclip then
                                        getgenv().noclip = false

                                        if LocalPlayer2.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
                                            LocalPlayer2.Character.HumanoidRootPart.EffectsSY:Destroy()
                                        end
                                    end
                                else
                                    Tbl7.SetStatus("Owner no boat, resetting...", Tbl7.Colors.Yellow)
                                    if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki" or game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Tiki2" then
                                        Tbl7.ResetCharacter()
                                        return
                                    end
                                end
                            elseif V63 and V63.Character and V63.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer2:DistanceFromCharacter(V63.Character.HumanoidRootPart.Position) >= 1000 then
                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V63.Character.HumanoidRootPart.Position, V63.Character.HumanoidRootPart.CFrame)
                            end
                        end
                    end
                else
                    if getgenv().RespawnLeviathan and Config["Webhook Find Leviathan"] then
                        getgenv().RespawnLeviathan = false
                        WebhookFindLeviathan()
                    end

                    if SeaBeasts and getgenv().LeviSpawnWait then
                        getgenv().LeviSpawnWait = false
                        Tbl7.SetStatus("Leviathan Spawned, Waiting 10s", Tbl7.Colors.Purple)
                        task.wait(10)
                    end

                    if GetLeviFollow() then
                        Tbl7.SetStatus("Attacking Leviathan (Follow Main)", Tbl7.Colors.Purple)
                        getgenv().DontTeleWatcher = true

                        while true do
                            task.wait()
                            local MainRoot, Target = GetLeviFollow()

                            if not MainRoot or workspace.Map:FindFirstChild("FrozenHeart") then
                                break
                            end

                            getgenv().AimPos = Target.Hitbox11.CFrame

                            spawn(function()
                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, MainRoot.Position, MainRoot.CFrame)
                            end)

                            if Config["Auto Dragon Storm(Risk)"] then
                                AutoGunAttackOnce()
                            elseif LocalPlayer2:DistanceFromCharacter(Target.Hitbox11.Position) < 400 then
                                AutoAllSkill()
                            end
                        end

                        if getgenv().Tween then
                            getgenv().Tween:Pause()
                            getgenv().Tween:Cancel()
                        end

                        return
                    end

                    local V60 = MultiSegmentLeviathan(game.workspace.SeaBeasts, 2) or MultiSegmentLeviathan(game.workspace.SeaBeasts, 3) or MultiSegmentLeviathan(game.workspace.SeaBeasts, 4)

                    if V60 then
                        Tbl7.SetStatus("Attacking Leviathan", Tbl7.Colors.Purple)
                        getgenv().DontTeleWatcher = true

                        while true do
                            task.wait()

                            if not V60:FindFirstChild("Tinhdamage") then
                                Instance.new("IntValue", V60).Name = "Tinhdamage"
                            end

                            if V60:FindFirstChild("Tinhdamage") and V60.Tinhdamage.Value < 21000 then
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.DmgCounter.Visible and Flag3 then
                                    V60.Tinhdamage.Value = V60.Tinhdamage.Value + N9
                                    N10 = N9
                                    Flag3 = false
                                    task.wait(0.1)
                                end
                            end

                            if V60.Name == "Leviathan" then
                                local CFrame_ = V60.Hitbox11.CFrame
                                getgenv().AimPos = CFrame_

                                spawn(function()
                                    local Cframe = CFrame.new(V60.HumanoidRootPart.Position.X, 140, V60.HumanoidRootPart.Position.Z)
                                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Cframe.Position, Cframe)
                                end)
                            else
                                local CFrame_ = V60.Hitbox11.CFrame
                                getgenv().AimPos = CFrame_

                                spawn(function()
                                    local Cframe = CFrame.new(V60.HumanoidRootPart.Position.X, 142, V60.HumanoidRootPart.Position.Z)
                                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Cframe.Position, Cframe)
                                end)
                            end

                            if Config["Auto Dragon Storm(Risk)"] then
                                AutoGunAttackOnce()
                            elseif LocalPlayer2:DistanceFromCharacter(V60.RootPart.Position) < 400 then
                                AutoAllSkill()
                            end

                            if GetLeviFollow() then
                                break
                            end

                            if not (not V60 or not V60.Parent or V60.Health.Value == 0 or V60:FindFirstChild("Tinhdamage") and V60.Tinhdamage.Value >= 21000 or workspace.Map:FindFirstChild("FrozenHeart")) then
                                continue
                            end
                            break
                        end

                        if getgenv().Tween then
                            getgenv().Tween:Pause()
                            getgenv().Tween:Cancel()
                        end

                        return
                    end

                    local SeaBeasts2 = DetectLeviathan(game.workspace.SeaBeasts, 2) or DetectLeviathan(game.workspace.SeaBeasts, 3) or DetectLeviathan(game.workspace.SeaBeasts, 4) or DetectLeviathan(game.workspace.SeaBeasts)

                    if SeaBeasts2 then
                        Tbl7.SetStatus("Attacking Leviathan", Tbl7.Colors.Purple)
                        getgenv().DontTeleWatcher = true

                        while true do
                            task.wait()

                            if SeaBeasts2.Name == "Leviathan" then
                                local CFrame_ = SeaBeasts2.Hitbox11.CFrame
                                getgenv().AimPos = CFrame_

                                spawn(function()
                                    local Cframe = CFrame.new(SeaBeasts2.HumanoidRootPart.Position.X, 140, SeaBeasts2.HumanoidRootPart.Position.Z)
                                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Cframe.Position, Cframe)
                                end)
                            else
                                local CFrame_ = SeaBeasts2.Hitbox11.CFrame
                                getgenv().AimPos = CFrame_

                                spawn(function()
                                    local Cframe = CFrame.new(SeaBeasts2.HumanoidRootPart.Position.X, 142, SeaBeasts2.HumanoidRootPart.Position.Z)
                                    toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, Cframe.Position, Cframe)
                                end)
                            end

                            if Config["Auto Dragon Storm(Risk)"] then
                                AutoGunAttackOnce()
                            elseif LocalPlayer2:DistanceFromCharacter(SeaBeasts2.Hitbox11.Position) < 400 then
                                AutoAllSkill()
                            end

                            if GetLeviFollow() then
                                break
                            end

                            if not (not SeaBeasts2 or not SeaBeasts2.Parent or SeaBeasts2.Health.Value == 0 or V60 or workspace.Map:FindFirstChild("FrozenHeart")) then
                                continue
                            end
                            break
                        end

                        if getgenv().Tween then
                            getgenv().Tween:Pause()
                            getgenv().Tween:Cancel()
                        end

                        return
                    end

                    local V61 = DetectNpc("Frozen Watcher")

                    if Config["Account Buy Boat"] then
                        Tbl7.SetStatus("Summon Leviathan", Tbl7.Colors.Blue)
                        if getgenv().DontTeleWatcher then
                            return
                        end
                        local V62 = checkboat()

                        if V61 then
                            if getgenv().TweenBoatBack then
                                getgenv().TweenBoatBack:Pause()
                                getgenv().TweenBoatBack:Cancel()
                            end

                            if LocalPlayer2:DistanceFromCharacter(V61.HumanoidRootPart.Position) < 8 then
                                local Now5 = tick()

                                while true do
                                    task.wait(1)
                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("OpenLeviathanGate")
                                    if not (DetectLeviathan(game.workspace.SeaBeasts, 2) or DetectLeviathan(game.workspace.SeaBeasts, 3) or DetectLeviathan(game.workspace.SeaBeasts, 4) or DetectLeviathan(game.workspace.SeaBeasts) or tick() - Now5 >= 15) then
                                        continue
                                    end
                                    break
                                end

                                if DetectLeviathan(game.workspace.SeaBeasts, 2) or DetectLeviathan(game.workspace.SeaBeasts, 3) or DetectLeviathan(game.workspace.SeaBeasts, 4) or DetectLeviathan(game.workspace.SeaBeasts) then
                                    task.wait(5)
                                else
                                    local V63 = GetPlayerNears()

                                    if not LocalPlayer2.Character.Humanoid.Sit then
                                        toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V63.HumanoidRootPart.Position, V63.HumanoidRootPart.CFrame)
                                        task.wait(10)
                                    end
                                end
                            else
                                toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V61.HumanoidRootPart.Position, V61.HumanoidRootPart.CFrame)
                            end
                        elseif workspace.Map:FindFirstChild("LeviathanGate") then
                            local Map = workspace.Map
                            moveBoatGhost(V62.VehicleSeat, CFrame.new(workspace.Map:FindFirstChild("LeviathanGate").WorldPivot.Position.X, 31, Map:FindFirstChild("LeviathanGate").WorldPivot.Position.Z), Tbl7.Speed("Speed Boat Summon Leviathan"))
                            NoclipBoat(V62)
                        end
                    else
                        Tbl7.SetStatus("Waiting Summon Leviathan", Tbl7.Colors.Blue)

                        if workspace.Map:FindFirstChild("LeviathanGate") then
                            local Now5 = tick()

                            while true do
                                wait(1)

                                if tick() - Now5 >= 30 then
                                    if LocalPlayer2:DistanceFromCharacter(V61.HumanoidRootPart.Position) < 8 then
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("OpenLeviathanGate")
                                    else
                                        toTarget(LocalPlayer2.Character.HumanoidRootPart.Position, V61.HumanoidRootPart.Position, V61.HumanoidRootPart.CFrame)
                                    end
                                end

                                if not (DetectLeviathan(game.workspace.SeaBeasts, 2) or DetectLeviathan(game.workspace.SeaBeasts, 3) or DetectLeviathan(game.workspace.SeaBeasts, 4) or DetectLeviathan(game.workspace.SeaBeasts)) then
                                    continue
                                end
                                break
                            end
                        end

                        wait(5)
                    end
                end
            end
        end
    end

    Tbl8.TabHunt:AddDropdown("Select Sea Events", {
        Title = Translate("Select Sea Event"),
        Values = { "SeaBeast", "Ship", "Shark", "Terrorshark", "Piranha" },
        Multi = true,
        Default = Config["Select Sea Events"] or { "Shark", "Terrorshark", "Piranha" },
        Callback = function(Arg)
            local Tbl9 = {}

            for K, V60 in V15, Arg, nil do
                if V51(V60) == "boolean" then
                    table.insert(Tbl9, K)
                end
            end

            SaveSettings("Select Sea Events", Tbl9)
        end,
    })

    Tbl8.TabHunt:AddToggle("Sea Events Only For Mythical Scroll", {
        Title = Translate("Sea Events Only For Mythical Scroll"),
        Description = "Only farm when missing materials or IDK status",
        Default = Config["Sea Events Only For Mythical Scroll"] or false,
        Callback = function(Arg)
            SaveSettings("Sea Events Only For Mythical Scroll", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Auto Buy Sharkman Karate", {
        Title = Translate("Auto Buy Sharkman Karate"),
        Default = Config["Auto Buy Sharkman Karate"] or false,
        Callback = function(Arg)
            SaveSettings("Auto Buy Sharkman Karate", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Auto Dragon Storm(Risk)", {
        Title = Translate("Auto Dragon Storm(Risk)"),
        Default = Config["Auto Dragon Storm(Risk)"] or false,
        Callback = function(Arg)
            if Arg then
                spawn(function()
                    while Config["Auto Dragon Storm(Risk)"] and task.wait() do
                        V13(function()
                            AutoGunAttackOnce()
                        end)
                    end
                end)
            end

            SaveSettings("Auto Dragon Storm(Risk)", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Start Hunt Leviathan", {
        Title = Translate("Start Hunt Leviathan"),
        Default = Config["Start Hunt Leviathan"] or false,
        Callback = function(Arg)
            if Arg then
                spawn(function()
                    while Config["Start Hunt Leviathan"] and task.wait() do
                        local V60, V61 = V13(function()
                            HuntLeviathan()
                        end)

                        if V61 then
                            print(V61)
                        end
                    end
                end)
            end

            SaveSettings("Start Hunt Leviathan", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Shoot Heart When Ice Spike Breaks", {
        Title = Translate("Shoot Heart When Ice Spike Breaks"),
        Default = Config["Shoot Heart When Ice Spike Breaks"] or false,
        Callback = function(Arg)
            SaveSettings("Shoot Heart When Ice Spike Breaks", Arg)
        end,
    })

    Tbl8.TabHunt:AddToggle("Use New Method Shoot Heart", {
        Title = Translate("Use New Method Shoot Heart"),
        Default = Config["Use New Method Shoot Heart"] or false,
        Callback = function(Arg)
            SaveSettings("Use New Method Shoot Heart", Arg)
        end,
    })

    local function Fn25(Arg)
        if type(Arg) ~= "table" then
            return V21(Arg)
        end
        local Tbl9 = {}
        local Tbl10 = {}
        local Tbl11 = {}
        local Str13 = "{\n"
        local N9 = 1

        while true do
            local N10 = 0

            for K in V17(Arg) do
                N10 += 1
            end

            local V60, V61, V62 = V17(Arg)
            local N11 = 1

            for K, V63 in V60, V61, V62 do
                if Tbl9[Arg] == nil or N11 >= Tbl9[Arg] then
                    if string.find(Str13, "}", Str13:len()) then
                        Str13 ..= ",\n"
                    elseif not string.find(Str13, "\n", Str13:len()) then
                        Str13 ..= "\n"
                    end

                    table.insert(Tbl11, Str13)
                    local Str14

                    if type(K) == "number" or type(K) == "boolean" then
                        Str14 = "[" .. V21(K) .. "]"
                    else
                        Str14 = "[\"" .. V21(K) .. "\"]"
                    end

                    local Kind = type(V63)
                    local Str15

                    if Kind == "number" then
                        Str15 = "" .. string.rep("\t", N9) .. Str14 .. " = " .. V21(V63)

                        if N11 == N10 then
                            Str13 = Str15 .. "\n" .. string.rep("\t", N9 - 1) .. "}"
                        else
                            Str13 = Str15 .. ","
                        end

                        N11 += 1
                    elseif Kind == "boolean" then
                        V63 = V63 and "true" or "false"
                        Str15 = "" .. string.rep("\t", N9) .. Str14 .. " = " .. V63

                        if N11 == N10 then
                            Str13 = Str15 .. "\n" .. string.rep("\t", N9 - 1) .. "}"
                        else
                            Str13 = Str15 .. ","
                        end

                        N11 += 1
                    elseif Kind == "table" then
                        Str13 = "" .. string.rep("\t", N9) .. Str14 .. " = {\n"
                        table.insert(Tbl10, Arg)
                        table.insert(Tbl10, V63)
                        Tbl9[Arg] = N11 + 1
                        break
                    else
                        Str15 = "" .. string.rep("\t", N9) .. Str14 .. " = \"" .. V21(V63) .. "\""

                        if N11 == N10 then
                            Str13 = Str15 .. "\n" .. string.rep("\t", N9 - 1) .. "}"
                        else
                            Str13 = Str15 .. ","
                        end

                        N11 += 1
                    end
                else
                    if N11 == N10 then
                        Str13 ..= "\n" .. string.rep("\t", N9 - 1) .. "}"
                    end

                    N11 += 1
                end
            end

            if N10 == 0 then
                Str13 ..= "\n" .. string.rep("\t", N9 - 1) .. "}"
            end

            if #Tbl10 > 0 then
                Arg = Tbl10[#Tbl10]
                Tbl10[#Tbl10] = nil
                N9 = Tbl9[Arg] == nil and N9 + 1 or N9 - 1
                continue
            end

            break
        end

        table.insert(Tbl11, Str13)
        return "getgenv().Config = " .. table.concat(Tbl11)
    end

    Tbl8.TabHunt:AddButton({
        Title = "Copy Config",
        Description = "",
        Callback = function()
            local Data = HttpService2:JSONDecode(readfile(Str10 .. "/" .. Str12))
            setclipboard(Fn25(Data))
            Lib:Notify({ Title = "Banana Cat Hub", Content = "Successfully Copy Config", SubContent = "...", Duration = 5 })
        end,
    })

    Tbl8.WebhookTab:AddParagraph({ Title = "Plz just use account have Boat Beast Hunter" })

    Tbl8.WebhookTab:AddInput("Input Url Webhook", {
        Title = Translate("Input Url Webhook"),
        Default = Config["Input Url Webhook"] or "",
        Numeric = false,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Input Url Webhook", Arg)
        end,
    })

    Tbl8.WebhookTab:AddInput("Input Discord Ping", {
        Title = Translate("Input Discord Ping (Everyone/ID)"),
        Default = Config["Url Webhook"] or "",
        Numeric = false,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Input Discord Ping", Arg)
        end,
    })

    Tbl8.WebhookTab:AddToggle("Ping Discord", {
        Title = "Ping Everyone/Id Discord]\n When Spawn Island and Store Fruit",
        Description = nil,
        Default = Config["Ping Discord"] or false,
        Callback = function(Arg)
            SaveSettings("Ping Discord", Arg)
        end,
    })

    getgenv().WebhookFindLeviathan = function()
        local Str13 = ""

        if Config["Ping Discord"] then
            if V16(Options["Input Discord Ping"].Value) then
                Str13 = "<@" .. Options["Input Discord Ping"].Value .. ">"
            else
                Str13 = "@everyone"
            end
        end

        local Tbl9 = {
            content = Str13,
            username = "Binini Hub",
            avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
            embeds = {
                {
                    title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                    description = "**Main Status**\nUsername : ||" .. V21(LocalPlayer2.Name) .. "||",
                    color = V16(16776960),
                    footer = { text = "Binini Hub" },
                    fields = { { name = "**Frozen Dimension**", value = "```\nSpawned\n```", inline = true } },
                    thumbnail = {
                        url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                },
            },
        }

        ExploitReq({
            Url = Options["Input Url Webhook"].Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = game:GetService("HttpService"):JSONEncode(Tbl9),
        })
    end

    getgenv().WebhookDestroyIdk = function()
        local Str13 = ""

        if Config["Ping Discord"] then
            if V16(Options["Input Discord Ping"].Value) then
                Str13 = "<@" .. Options["Input Discord Ping"].Value .. ">"
            else
                Str13 = "@everyone"
            end
        end

        local Tbl9 = {
            content = Str13,
            username = "Binini Hub",
            avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
            embeds = {
                {
                    title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                    description = "**Main Status**\nUsername : ||" .. V21(LocalPlayer2.Name) .. "||",
                    color = V16(16776960),
                    footer = { text = "Binini Hub" },
                    fields = { { name = "**Status**", value = "```\nCan Find Leviathan\n```", inline = true } },
                    thumbnail = {
                        url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                },
            },
        }

        ExploitReq({
            Url = Options["Input Url Webhook"].Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = game:GetService("HttpService"):JSONEncode(Tbl9),
        })
    end

    getgenv().WebhookDriveTo = function()
        local Str13 = ""

        if Config["Ping Discord"] then
            if V16(Options["Input Discord Ping"].Value) then
                Str13 = "<@" .. Options["Input Discord Ping"].Value .. ">"
            else
                Str13 = "@everyone"
            end
        end

        local Tbl9 = {
            content = Str13,
            username = "Binini Hub",
            avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
            embeds = {
                {
                    title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                    description = "**Main Status**\nUsername : ||" .. V21(LocalPlayer2.Name) .. "||",
                    color = V16(16776960),
                    footer = { text = "Binini Hub" },
                    fields = {
                        {
                            name = "**Status**",
                            value = "```\nAuto-drive to Hydra/Tiki completed\n```",
                            inline = true,
                        },
                    },
                    thumbnail = {
                        url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                },
            },
        }

        ExploitReq({
            Url = Options["Input Url Webhook"].Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = game:GetService("HttpService"):JSONEncode(Tbl9),
        })
    end

    getgenv().WebhookShootHeart = function()
        local Str13 = ""

        if Config["Ping Discord"] then
            if V16(Options["Input Discord Ping"].Value) then
                Str13 = "<@" .. Options["Input Discord Ping"].Value .. ">"
            else
                Str13 = "@everyone"
            end
        end

        local Tbl9 = {
            content = Str13,
            username = "Binini Hub",
            avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
            embeds = {
                {
                    title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                    description = "**Main Status**\nUsername : ||" .. V21(LocalPlayer2.Name) .. "||",
                    color = V16(16776960),
                    footer = { text = "Binini Hub" },
                    fields = { { name = "**Status**", value = "```\nStart Shoot Heart\n```", inline = true } },
                    thumbnail = {
                        url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                },
            },
        }

        ExploitReq({
            Url = Options["Input Url Webhook"].Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = game:GetService("HttpService"):JSONEncode(Tbl9),
        })
    end

    getgenv().WebhookUnlockDracov4 = function()
        local Str13 = ""

        if Config["Ping Discord"] then
            if V16(Options["Input Discord Ping"].Value) then
                Str13 = "<@" .. Options["Input Discord Ping"].Value .. ">"
            else
                Str13 = "@everyone"
            end
        end

        local Tbl9 = {
            content = Str13,
            username = "Binini Hub",
            avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
            embeds = {
                {
                    title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                    description = "**Main Status**\nUsername : ||" .. V21(LocalPlayer2.Name) .. "||",
                    color = V16(16776960),
                    footer = { text = "Binini Hub" },
                    fields = { { name = "**Status**", value = "```\nUnlock Draco V4\n```", inline = true } },
                    thumbnail = {
                        url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                },
            },
        }

        ExploitReq({
            Url = Options["Input Url Webhook"].Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = game:GetService("HttpService"):JSONEncode(Tbl9),
        })
    end

    Tbl8.WebhookTab:AddToggle("Webhook Find Leviathan", {
        Title = Translate("Webhook Find Leviathan"),
        Default = Config["Webhook Find Leviathan"] or false,
        Callback = function(Arg)
            SaveSettings("Webhook Find Leviathan", Arg)
        end,
    })

    Tbl8.WebhookTab:AddToggle("Webhook Destroy IDK", {
        Title = Translate("Webhook Destroy IDK"),
        Default = Config["Webhook Destroy IDK"] or false,
        Callback = function(Arg)
            SaveSettings("Webhook Destroy IDK", Arg)
        end,
    })

    Tbl8.WebhookTab:AddToggle("Webhook Drive To Tiki/Hydra", {
        Title = Translate("Webhook Drive To Tiki/Hydra"),
        Default = Config["Webhook Drive To Tiki/Hydra"] or false,
        Callback = function(Arg)
            SaveSettings("Webhook Drive To Tiki/Hydra", Arg)
        end,
    })

    Tbl8.WebhookTab:AddToggle("Webhook Shoot Heart Leviathan", {
        Title = Translate("Webhook Shoot Heart Leviathan"),
        Default = Config["Webhook Shoot Heart Leviathan"] or false,
        Callback = function(Arg)
            SaveSettings("Webhook Shoot Heart Leviathan", Arg)
        end,
    })

    Tbl8.WebhookTab:AddToggle("Webhook Unlock Draco v4", {
        Title = Translate("Webhook Unlock Draco v4"),
        Default = Config["Webhook Unlock Draco v4"] or false,
        Callback = function(Arg)
            SaveSettings("Webhook Unlock Draco v4", Arg)
        end,
    })

    -- Fewer than LowPlayers in the server for more than LowPlayersMinutes in a row -> one webhook per low stretch
    -- (sent again only after the server went back to LowPlayers or more and dropped again)
    getgenv().WebhookLowPlayers = function(Count, Minutes)
        local Str13 = ""

        if Config["Ping Discord"] then
            if V16(Options["Input Discord Ping"].Value) then
                Str13 = "<@" .. Options["Input Discord Ping"].Value .. ">"
            else
                Str13 = "@everyone"
            end
        end

        local Tbl9 = {
            content = Str13,
            username = "Binini Hub",
            avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
            embeds = {
                {
                    title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                    description = "**Main Status**\nUsername : ||" .. V21(LocalPlayer2.Name) .. "||",
                    color = V16(16776960),
                    footer = { text = "Binini Hub" },
                    fields = {
                        {
                            name = "**Low Players**",
                            value = "```\n" .. Count .. " players in the server for " .. Minutes .. "+ minutes\n```",
                            inline = true,
                        },
                    },
                    thumbnail = {
                        url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                },
            },
        }

        ExploitReq({
            Url = Options["Input Url Webhook"].Value,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = game:GetService("HttpService"):JSONEncode(Tbl9),
        })
    end

    Tbl8.WebhookTab:AddToggle("Webhook Low Players", {
        Title = Translate("Webhook Low Players"),
        Description = "Sends a webhook when the server has had fewer than 5 players for more than 10 minutes",
        Default = Config["Webhook Low Players"] or false,
        Callback = function(Arg)
            SaveSettings("Webhook Low Players", Arg)
        end,
    })

    spawn(function()
        local LowPlayers = 5
        local LowPlayersMinutes = 10
        local LowSince = nil
        local Sent = false

        while wait(5) and not Lib.Unloaded do
            local Count = #game:GetService("Players"):GetPlayers()

            if Count >= LowPlayers then
                LowSince = nil
                Sent = false
            else
                LowSince = LowSince or tick()

                if not Sent and Config["Webhook Low Players"] and tick() - LowSince >= LowPlayersMinutes * 60 then
                    Sent = true
                    V13(getgenv().WebhookLowPlayers, Count, LowPlayersMinutes)
                end
            end
        end
    end)

    spawn(function()
        repeat
            wait()
        until game.workspace:FindFirstChild("Rocks")

        local Children, V60 = workspace.Rocks:GetChildren()

        for _, V61 in V15, Children, V60 do
            V61:Destroy()
        end

        workspace.Rocks.ChildAdded:Connect(function(Child)
            while true do
                wait()
                Child:Destroy()
                if not (not Child or not Child.Parent) then
                    continue
                end
                break
            end
        end)
    end)

    spawn(function()
        while wait(1) do
            local Tiki = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("TikiOutpost")
            local Island = Tiki and Tiki:FindFirstChild("IslandModel")
            local Chunks = Island and Island:FindFirstChild("IslandChunks")

            for _, Name in V18({ "A", "B" }) do
                local Chunk = Chunks and Chunks:FindFirstChild(Name)

                if Chunk then
                    Chunk:Destroy()
                end
            end
        end
    end)

    Tbl8.SettingSkillMain:AddToggle("Use skill fast dont hold", {
        Title = Translate("Use skill fast dont hold"),
        Default = Config["Use skill fast dont hold"] or true,
        Callback = function(Arg)
            SaveSettings("Use skill fast dont hold", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddParagraph({ Title = "Setting Melee", Content = "-----" })

    Tbl8.SettingSkillMain:AddDropdown("Select Skills Melee", {
        Title = Translate("Select Skills Melee"),
        Values = { "Z", "X", "C" },
        Multi = true,
        Default = Config["Select Skills Melee"] or { "Z", "X", "C" },
        Callback = function(Arg)
            local Tbl9 = {}

            for K, V60 in V15, Arg, nil do
                if V51(V60) == "boolean" then
                    table.insert(Tbl9, K)
                end
            end

            SaveSettings("Select Skills Melee", Tbl9)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill Z Melee", {
        Title = Translate("Skill Z Melee"),
        Default = Config["Skill Z Melee"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill Z Melee", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill X Melee", {
        Title = Translate("Skill X Melee"),
        Default = Config["Skill X Melee"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill X Melee", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill C Melee", {
        Title = Translate("Skill C Melee"),
        Default = Config["Skill C Melee"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill C Melee", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddParagraph({ Title = "Setting Sword", Content = "-----" })

    Tbl8.SettingSkillMain:AddDropdown("Select Skills Sword", {
        Title = Translate("Select Skills Sword"),
        Values = { "Z", "X" },
        Multi = true,
        Default = Config["Select Skills Sword"] or { "Z", "X" },
        Callback = function(Arg)
            local Tbl9 = {}

            for K, V60 in V15, Arg, nil do
                if V51(V60) == "boolean" then
                    table.insert(Tbl9, K)
                end
            end

            SaveSettings("Select Skills Sword", Tbl9)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill Z Sword", {
        Title = Translate("Skill Z Sword"),
        Default = Config["Skill Z Sword"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill Z Sword", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill X Sword", {
        Title = Translate("Skill X Sword"),
        Default = Config["Skill X Sword"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill X Sword", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddParagraph({ Title = Translate("Setting Gun"), Content = "-----" })

    Tbl8.SettingSkillMain:AddDropdown("Select Skills Gun", {
        Title = Translate("Select Skills Gun"),
        Values = { "Z", "X" },
        Multi = true,
        Default = Config["Select Skills Gun"] or { "Z", "X" },
        Callback = function(Arg)
            local Tbl9 = {}

            for K, V60 in V15, Arg, nil do
                if V51(V60) == "boolean" then
                    table.insert(Tbl9, K)
                end
            end

            SaveSettings("Select Skills Gun", Tbl9)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill Z Gun", {
        Title = Translate("Skill Z Gun"),
        Default = Config["Skill Z Gun"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill Z Gun", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill X Gun", {
        Title = Translate("Skill X Gun"),
        Default = Config["Skill X Gun"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill X Gun", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddParagraph({ Title = "Setting Blox Fruit", Content = "-----" })

    Tbl8.SettingSkillMain:AddDropdown("Select Skills Blox Fruit", {
        Title = Translate("Select Skills Blox Fruit"),
        Values = { "Z", "X", "C", "V", "F" },
        Multi = true,
        Default = Config["Select Skills Blox Fruit"] or { "Z", "X", "C", "V", "F" },
        Callback = function(Arg)
            local Tbl9 = {}

            for K, V60 in V15, Arg, nil do
                if V51(V60) == "boolean" then
                    table.insert(Tbl9, K)
                end
            end

            SaveSettings("Select Skills Blox Fruit", Tbl9)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill Z Blox Fruit", {
        Title = Translate("Skill Z Blox Fruit"),
        Default = Config["Skill Z Blox Fruit"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill Z Blox Fruit", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill X Blox Fruit", {
        Title = Translate("Skill X Blox Fruit"),
        Default = Config["Skill X Blox Fruit"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill X Blox Fruit", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill C Blox Fruit", {
        Title = Translate("Skill C Blox Fruit"),
        Default = Config["Skill C Blox Fruit"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill C Blox Fruit", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill V Blox Fruit", {
        Title = Translate("Skill V Blox Fruit"),
        Default = Config["Skill V Blox Fruit"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill V Blox Fruit", Arg)
        end,
    })

    Tbl8.SettingSkillMain:AddInput("Skill F Blox Fruit", {
        Title = Translate("Skill F Blox Fruit"),
        Default = Config["Skill F Blox Fruit"] or 0.5,
        Numeric = true,
        Finished = false,
        Callback = function(Arg)
            SaveSettings("Skill F Blox Fruit", Arg)
        end,
    })

    Tbl8.TabDevilFruit:AddToggle("Random Devil Fruit", {
        Title = Translate("Random Devil Fruit"),
        Default = Config["Random Devil Fruit"] or false,
        Callback = function(Arg)
            SaveSettings("Random Devil Fruit", Arg)
        end,
    })

    Tbl8.TabDevilFruit:AddToggle("Auto Store Fruit", {
        Title = Translate("Auto Store Fruit"),
        Default = Config["Auto Store Fruit"] or false,
        Callback = function(Arg)
            SaveSettings("Auto Store Fruit", Arg)
        end,
    })

    Tbl8.TabDevilFruit:AddButton({
        Title = "Reset Stats",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
        end,
    })

    Tbl8.TabDevilFruit:AddButton({
        Title = "Change Race",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", '1')
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", '2')
        end,
    })
    --// Auto Enchant (same logic as AutoEnchant.luau). Everything saves through SaveSettings like the rest of the config.
    do
        local EnchantInvoke = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/EnchantInvoke")

        -- Where the account goes to enchant after delivering the heart at Tiki
        local EnchantSpot = Vector3.new(-15904, 484, 945)

        -- The Mythical Scroll gets crafted (Auto Craft Scroll, every few seconds) from the Leviathan Heart you get at Tiki,
        -- so right after arriving it isn't there yet: keep checking on the boat for this long before giving up
        local CheckWindow = 20
        local CheckEvery = 3

        -- The server answers "Enchant" with false and no reason when it refuses a roll: try again (after the Roll Delay, with a fresh Check) this many times in a row
        local MaxEnchantFailures = 3

        local WeaponOrder = { "Sword", "Gun", "Rod" }
        local StatusOrder = { "Sword", "Gun", "Rod", "Info" }
        local RuleKeys = { Sword = "Auto Enchant Sword Rules", Gun = "Auto Enchant Gun Rules", Rod = "Auto Enchant Rod Rules" }
        local RuleTabs = { Sword = Tbl8.TabSwordRules, Gun = Tbl8.TabGunRules, Rod = Tbl8.TabRodRules }

        -- Which weapons get rolled and in what order. The first one uses the scrolls first,
        -- the second starts once the first has its target (or can't be rolled).
        local EnchantModeNames = { "Both - Sword First", "Both - Gun First", "Sword Only", "Gun Only" }
        local EnchantModes = {
            ["Both - Sword First"] = { "Sword", "Gun" },
            ["Both - Gun First"] = { "Gun", "Sword" },
            ["Sword Only"] = { "Sword" },
            ["Gun Only"] = { "Gun" },
        }

        local Scrolls = {
            Legendary = "Legendary Scroll",
            Mythical = "Mythical Scroll",
        }

        -- Weapon enchants for the rule builder dropdowns (Max = max level, none = single level).
        -- Blessings/Curses match ReplicatedStorage.FX.AuraAssets; levels seen live: Agile 3, Natural 5, Lucky 4, Elemental 5, Siphon 3.
        local EnchantList = {
            { Name = "Burning" }, { Name = "Frozen" }, { Name = "Rot" }, { Name = "Storm" },
            { Name = "Curse of the Reaper" }, { Name = "Curse of the Thief" },

            { Name = "Masterpiece" }, { Name = "Rage" }, { Name = "Sharpshooter" },
            { Name = "Strong Grip" }, { Name = "Unbreakable" }, { Name = "Unreal" },

            { Name = "Agile", Max = 3 }, { Name = "Beast", Max = 5 }, { Name = "Deadly", Max = 5 },
            { Name = "Efficient", Max = 4 }, { Name = "Elemental", Max = 5 }, { Name = "Fortune", Max = 4 },
            { Name = "Lucky", Max = 4 }, { Name = "Natural", Max = 5 }, { Name = "Piercing", Max = 4 },
            { Name = "Sharp", Max = 6 }, { Name = "Siphon", Max = 3 }, { Name = "Vampiric", Max = 3 },
        }

        -- MaxLevels: the server doesn't always send MaxLevel (e.g. Sharp comes back as just Level 4)
        local MustHaveValues, EnchantNames, MaxLevels = {}, {}, {}
        for _, enchant in ipairs(EnchantList) do
            EnchantNames[#EnchantNames + 1] = enchant.Name
            MaxLevels[enchant.Name] = enchant.Max
            if enchant.Max then
                for level = 1, enchant.Max do
                    MustHaveValues[#MustHaveValues + 1] = ("%s %d"):format(enchant.Name, level)
                end
            else
                MustHaveValues[#MustHaveValues + 1] = enchant.Name
            end
        end

        -- Fishing rod enchants, own rule tab: leveled ones + Blessings/Curses from the wiki (Update 27), skills = live JobToolsInfo names
        local RodEnchants = { MustHave = {}, Names = {}, List = {
            { Name = "Blessing of an Angler's Treasure" }, { Name = "Blessing of Bait Efficiency" },
            { Name = "Curse of the Leviathan" }, { Name = "Curse of the Whale" }, { Name = "Curse of the Terrorshark" },

            { Name = "Reel Boost" }, { Name = "Instant Reaction" }, { Name = "Lucky Cast" }, { Name = "Calming Technique" },
            { Name = "Conserve Bait" }, { Name = "Fishing Rod Protector" },

            { Name = "Baitless Catch", Max = 3 }, { Name = "Experience Sharing", Max = 5 }, { Name = "Fish Scanner", Max = 5 },
            { Name = "Resilient Fishing Rod", Max = 4 }, { Name = "Tasty Bait", Max = 3 },
        } }
        for _, enchant in ipairs(RodEnchants.List) do
            RodEnchants.Names[#RodEnchants.Names + 1] = enchant.Name
            MaxLevels[enchant.Name] = enchant.Max
            for level = 1, enchant.Max or 1 do
                RodEnchants.MustHave[#RodEnchants.MustHave + 1] = enchant.Max and ("%s %d"):format(enchant.Name, level) or enchant.Name
            end
        end

        -- Phase: nil (normal hunt) | "Check" (just delivered at Tiki) | "Go" (tween to EnchantSpot and roll)
        local EnchantState = { Status = {}, HeartHarpooned = false, HeartGoneAt = nil, Phase = nil, ArrivedAt = 0, NextCheck = 0 }
        local EnchantUI = {}
        -- Enchanter Ui overlay: Data[weaponType] = { Tool, Modifiers } from the last Check/roll
        -- Rank = display order of the enchants everywhere (Enchanter Ui, tab paragraphs, webhook): Blessing/Curse, Unique, then the normal ones
        local Overlay = {
            Data = {},
            Colors = { Blessing = "#78c8ff", Curse = "#ff5a5a", Unique = "#ffc850", Normal = "#dcdce6" },
            Rank = { Blessing = 1, Curse = 1, Unique = 2, Normal = 3 },
        }

        --// Weapon
        local function GetWeapon(weaponType)
            for _, container in ipairs({ LocalPlayer2.Backpack, LocalPlayer2.Character }) do
                for _, item in ipairs(container:GetChildren()) do
                    -- IsA("Tool"): an equipped weapon also leaves a visual Model "EquippedWeapon" in the Character with the same WeaponType, the server asserts on it
                    if item:IsA("Tool") and (item:GetAttribute("WeaponType") == weaponType or weaponType == "Rod" and item:GetAttribute("InventoryCategory") == "Rod") then
                        return item
                    end
                end
            end
            return nil
        end

        -- Every Tool of that WeaponType in the Backpack/Character, sorted by name so the order doesn't depend on where a tool is right now
        -- (equipping a weapon moves it from the Backpack to the Character, which used to change which one counted as "the first")
        local function GetWeapons(weaponType)
            local list = {}
            for _, container in ipairs({ LocalPlayer2.Backpack, LocalPlayer2.Character }) do
                for _, item in ipairs(container and container:GetChildren() or {}) do
                    if item:IsA("Tool") and (item:GetAttribute("WeaponType") == weaponType or weaponType == "Rod" and item:GetAttribute("InventoryCategory") == "Rod") then
                        list[#list + 1] = item
                    end
                end
            end
            table.sort(list, function(a, b)
                return a.Name < b.Name
            end)
            return list
        end

        -- Every owned weapon of that WeaponType in the inventory, stored ones too: { [name] = what LoadItem takes (NetworkedUID, or the name for items without one) }.
        -- ItemReplicationService + ItemConfig StorageKey = the Tool's name, Display.Category is "Sword" / "Gun".
        -- Read in its own thread: done in the UI thread it took that thread's capabilities away and the next Fluent call failed ("lacking capability Plugin")
        local function InventoryWeapons(weaponType)
            local list, done = {}, false
            task.spawn(function()
                pcall(function()
                    local Replication = require(game:GetService("ReplicatedStorage"):WaitForChild("ItemReplicationService"))
                    local Items = require(game:GetService("ReplicatedStorage"):WaitForChild("ItemConfig"))
                    for _, item in Replication:GetItems(Replication.KEYS.QUANTITY) do
                        if item.Value and item.Value > 0 then
                            local ok, config = pcall(function()
                                return Items.match(item.ItemId):unwrap()
                            end)
                            local name = ok and config and config.Index and config.Index.StorageKey
                            if name and config.Display and config.Display.Category == weaponType then
                                list[name] = item.NetworkedUID or name
                            end
                        end
                    end
                end)
                done = true
            end)
            while not done do
                task.wait()
            end
            return list
        end

        -- The gun picked in "Gun To Enchant" ("Auto" = the first one BY NAME, always the same one).
        -- A picked weapon that isn't owned right now returns nil + its name (never falls back to another weapon)
        local WeaponKeys = { Gun = "Auto Enchant Gun Weapon" }

        local function GetPickedWeapon(weaponType)
            if not WeaponKeys[weaponType] then
                return GetWeapon(weaponType)
            end
            local name = Config[WeaponKeys[weaponType]]
            if not name or name == "Auto" then
                return GetWeapons(weaponType)[1]
            end
            for _, tool in ipairs(GetWeapons(weaponType)) do
                if tool.Name == name then
                    return tool
                end
            end
            return nil, name
        end

        --// Enchant info
        -- "Check" is what the game's enchant UI calls when it opens.
        -- Returns { Rarity, Upgrades, Modifiers = { [id] = { Name, Level, MaxLevel?, Description, Curse?, Blessing?, Unique? } }, Scrolls = { [name] = { owned, rarity, requiredGrade } } }
        local function GetEnchantInfo(tool)
            local ok, info = pcall(EnchantInvoke.InvokeServer, EnchantInvoke, "Check", tool)
            if ok and type(info) == "table" then
                return info
            end
            -- second value = what came back instead (the error text or the non-table result)
            return nil, tostring(info)
        end

        -- { Kind, Rank, Mod } per modifier, ordered Blessing/Curse -> Unique -> normal (alphabetical inside each group)
        local function SortModifiers(modifiers)
            local list = {}
            for _, mod in pairs(modifiers or {}) do
                local kind = (mod.Blessing and "Blessing") or (mod.Curse and "Curse") or (mod.Unique and "Unique") or "Normal"
                list[#list + 1] = { Kind = kind, Rank = Overlay.Rank[kind], Mod = mod }
            end
            table.sort(list, function(a, b)
                if a.Rank ~= b.Rank then
                    return a.Rank < b.Rank
                end
                return tostring(a.Mod.Name) < tostring(b.Mod.Name)
            end)
            return list
        end

        local function FormatModifiers(modifiers)
            local lines = {}
            for _, entry in ipairs(SortModifiers(modifiers)) do
                local mod = entry.Mod
                local tag = entry.Kind ~= "Normal" and (" (" .. entry.Kind:upper() .. ")") or ""
                local max = mod.MaxLevel or MaxLevels[tostring(mod.Name)]
                local level = max and ("%s/%s"):format(tostring(mod.Level), tostring(max)) or tostring(mod.Level)
                lines[#lines + 1] = ("%s Lv.%s%s"):format(tostring(mod.Name), level, tag)
            end
            return #lines > 0 and table.concat(lines, "\n") or "(no modifiers)"
        end

        -- Defined below with the Dmg % rules, ParseRule/RuleMatches only call it while a weapon is being checked
        local Dmg

        --// Rules
        --   "Curse of the Reaper"     -> has it
        --   "Natural 5"               -> Natural at level 5 or higher
        --   "Burning + Sharpshooter"  -> has both
        --   "Natural 5 - Unreal"      -> Natural 5 but NOT Unreal
        --   "25% Natural/Beast"       -> total damage of 25% or more for Natural or Beast (see the Dmg % rules below)
        -- Comma separated, a weapon stops rolling as soon as ANY of them matches ("Curse of the Reaper, 25% Natural" = Reaper OR 25%+).
        -- Empty = never enchant that weapon.
        local function ParseRule(text)
            local rule = { Text = text, Need = {}, Avoid = {} }

            -- "25% Natural/Beast" (a trailing "+" like "25%+" is fine): a Dmg % rule, no Need/Avoid terms
            local percent, typeText = text:match("^(%d+)%s*%%%+?%s*(.-)$")
            if percent then
                local words, valid = Dmg.ParseWords(typeText)
                rule.Dmg = { Min = tonumber(percent), Words = words, Valid = valid }
                return rule
            end

            for sign, term in ("+" .. text):gmatch("([%+%-])([^%+%-]+)") do
                term = term:match("^%s*(.-)%s*$")
                if term ~= "" then
                    local name, level = term:match("^(.-)%s+(%d+)$")
                    table.insert(sign == "+" and rule.Need or rule.Avoid, {
                        Name = (name or term):lower(),
                        Level = tonumber(level) or 1,
                    })
                end
            end
            return rule
        end

        local function SplitRules(text)
            local list = {}
            for part in tostring(text or ""):gmatch("[^,]+") do
                part = part:match("^%s*(.-)%s*$")
                if part ~= "" then
                    list[#list + 1] = part
                end
            end
            return list
        end

        local function ParseRules(text)
            local rules = {}
            for _, part in ipairs(SplitRules(text)) do
                rules[#rules + 1] = ParseRule(part)
            end
            return rules
        end

        -- mustHave / mustNot are Fluent multi-dropdown values ({ ["Natural 5"] = true, ... })
        local function BuildRuleText(mustHave, mustNot)
            local need = {}
            for entry in pairs(mustHave) do
                local name, level = entry:match("^(.-)%s+(%d+)$")
                name = name or entry
                need[name] = math.max(need[name] or 0, tonumber(level) or 1)
            end

            local needParts, avoidParts = {}, {}
            for name, level in pairs(need) do
                if mustNot[name] then
                    return nil, ("%s can't be in Must Have and Must NOT Have"):format(name)
                end
                needParts[#needParts + 1] = level > 1 and ("%s %d"):format(name, level) or name
            end
            for name in pairs(mustNot) do
                avoidParts[#avoidParts + 1] = name
            end

            if #needParts == 0 then
                return nil, "Pick at least one Must Have"
            end
            table.sort(needParts)
            table.sort(avoidParts)

            local text = table.concat(needParts, " + ")
            if #avoidParts > 0 then
                text ..= " - " .. table.concat(avoidParts, " - ")
            end
            return text
        end

        local function GetLevels(modifiers)
            local levels = {}
            for _, mod in pairs(modifiers or {}) do
                levels[tostring(mod.Name):lower()] = tonumber(mod.Level) or 1
            end
            return levels
        end

        -- enchant = tool's "Enchant" attribute (its Blessing/Curse), only counts towards Need terms (and Burning in Dmg % rules)
        local function RuleMatches(rule, levels, enchant)
            if rule.Dmg then
                return Dmg.Reaches(rule.Dmg, levels, enchant)
            end
            for _, term in ipairs(rule.Need) do
                local level = levels[term.Name] or (enchant == term.Name and 1) or nil
                if not level or level < term.Level then
                    return false
                end
            end
            for _, term in ipairs(rule.Avoid) do
                local level = levels[term.Name]
                if level and level >= term.Level then
                    return false
                end
            end
            return true
        end

        local function FindMatch(rules, levels, enchant)
            for _, rule in ipairs(rules) do
                if RuleMatches(rule, levels, enchant) then
                    return rule
                end
            end
            return nil
        end

        --// Dmg % rules ("25% Natural/Beast" in the rules list, see ParseRule): total damage % of 25 or more. Wiki values
        --// (bloxodes.com/wiki/blox-fruits/enchantments, bloxswaps): Natural/Elemental/Beast/Sharp +3% per level, Deadly +2% per level,
        --// Sharpshooter +10%, Masterpiece +5%, Unreal -15%. Burning +12% and Piercing +2% per level (ignored defense converted
        --// to dmg) are the numbers the user set. Natural/Elemental/Beast only work on that kind of fruit, so they only count for the
        --// types written in the rule: each type is its own total (always-on enchants + that type's enchant) and ANY of them
        --// reaching the minimum is enough. No type written = only the always-on enchants.
        Dmg = {
            -- Word = what the rule text uses (and the enchant it adds), Name = what the builder dropdown shows
            TypeList = {
                { Name = "Natural DMG", Word = "natural" },
                { Name = "Elemental DMG", Word = "elemental" },
                { Name = "Beast DMG", Word = "beast" },
                { Name = "Sharp DMG (NPC)", Word = "sharp" },
            },
            TypePerLevel = 3,
            -- Count for every type: Flat = fixed %, PerLevel = % per enchant level
            Always = {
                { Name = "burning", Flat = 12 },
                { Name = "sharpshooter", Flat = 10 },
                { Name = "masterpiece", Flat = 5 },
                { Name = "unreal", Flat = -15 },
                { Name = "deadly", PerLevel = 2 },
                { Name = "piercing", PerLevel = 2 },
            },
        }

        Dmg.TypeNames, Dmg.ByWord = {}, {}
        for _, typeInfo in ipairs(Dmg.TypeList) do
            Dmg.TypeNames[#Dmg.TypeNames + 1] = typeInfo.Name
            Dmg.ByWord[typeInfo.Word] = typeInfo
        end

        -- "Natural/Beast" (what follows the % in a rule) -> { "natural", "beast" }, valid = false if a word isn't a Dmg Type
        -- ("dmg" and "npc" are skipped so the dropdown names "Natural DMG" / "Sharp DMG (NPC)" work typed by hand too)
        function Dmg.ParseWords(text)
            local words, valid = {}, true
            for word in text:gmatch("%a+") do
                word = word:lower()
                if Dmg.ByWord[word] then
                    words[#words + 1] = word
                elseif word ~= "dmg" and word ~= "npc" then
                    valid = false
                end
            end
            return words, valid
        end

        -- Total dmg % of a weapon for one Dmg Type word (nil = only the always-on enchants) and the parts it adds up from
        -- ({"Burning +12", "Natural 4 +12"}). levels = GetLevels(modifiers), enchant = the tool's Blessing/Curse attribute (lowercase) or nil
        function Dmg.Total(levels, enchant, word)
            local total, parts = 0, {}

            local function add(name, level, percent)
                total += percent
                local label = name:sub(1, 1):upper() .. name:sub(2)
                parts[#parts + 1] = ("%s%s %s%d"):format(label, level and (" " .. level) or "", percent < 0 and "-" or "+", math.abs(percent))
            end

            for _, entry in ipairs(Dmg.Always) do
                local level = levels[entry.Name] or (enchant == entry.Name and 1) or nil
                if level then
                    if entry.Flat then
                        add(entry.Name, nil, entry.Flat)
                    else
                        add(entry.Name, level, entry.PerLevel * level)
                    end
                end
            end

            local level = word and levels[word]
            if level then
                add(word, level, Dmg.TypePerLevel * level)
            end

            return total, parts
        end

        -- dmgRule = rule.Dmg = { Min, Words, Valid }
        function Dmg.Reaches(dmgRule, levels, enchant)
            if not dmgRule.Valid then
                return false
            end
            if #dmgRule.Words == 0 then
                return (Dmg.Total(levels, enchant, nil)) >= dmgRule.Min
            end
            for _, word in ipairs(dmgRule.Words) do
                if (Dmg.Total(levels, enchant, word)) >= dmgRule.Min then
                    return true
                end
            end
            return false
        end

        -- "Natural DMG 28% (Sharpshooter +10, Deadly 3 +6, Natural 4 +12) | Beast DMG 16% (...) | need 25%"
        function Dmg.Describe(dmgRule, levels, enchant)
            if not dmgRule.Valid then
                return "unknown Dmg Type in the rule, it never matches"
            end
            local out = {}
            for _, word in ipairs(#dmgRule.Words > 0 and dmgRule.Words or { false }) do
                local total, parts = Dmg.Total(levels, enchant, word or nil)
                out[#out + 1] = ("%s %d%% (%s)"):format(word and Dmg.ByWord[word].Name or "base", total, #parts > 0 and table.concat(parts, ", ") or "none")
            end
            return ("%s | need %d%%"):format(table.concat(out, " | "), dmgRule.Min)
        end

        -- Rule text for the builder: minimum % + picked (Fluent multi-dropdown value { ["Natural DMG"] = true, ... }) -> "25% Natural/Beast"
        local function BuildDmgRuleText(minimum, picked)
            local words = {}
            for _, typeInfo in ipairs(Dmg.TypeList) do
                if picked[typeInfo.Name] then
                    words[#words + 1] = typeInfo.Word:sub(1, 1):upper() .. typeInfo.Word:sub(2)
                end
            end
            if #words == 0 then
                return nil, "Pick at least one Dmg Type"
            end
            return ("%d%% %s"):format(minimum, table.concat(words, "/"))
        end

        --// Total rolls per weapon (by tool name), kept in a file so the count keeps going after rejoining
        local Rolls = { File = Str10 .. "/" .. LocalPlayer2.Name .. "-EnchantRolls.json", Counts = {} }

        function Rolls.Load()
            local ok, data = pcall(function()
                return HttpService2:JSONDecode(readfile(Rolls.File))
            end)
            Rolls.Counts = ok and type(data) == "table" and data or {}
        end

        function Rolls.Get(toolName)
            return tonumber(Rolls.Counts[toolName]) or 0
        end

        function Rolls.Add(toolName)
            Rolls.Counts[toolName] = Rolls.Get(toolName) + 1
            pcall(function()
                if not isfolder(Str10) then
                    makefolder(Str10)
                end
                writefile(Rolls.File, HttpService2:JSONEncode(Rolls.Counts))
            end)
            return Rolls.Counts[toolName]
        end

        Rolls.Load()

        --// Webhook (uses the Tab Webhook url like the other webhooks). Sent after every roll;
        --// rule = the rule it hit (target reached -> @everyone) or nil (no match yet, no ping)
        local function SendEnchantWebhook(tool, rule, modifiers, rolls)
            if not Config["Webhook Auto Enchant"] then
                return
            end

            local Result = rule and ("%s got \"%s\" on roll #%d"):format(tool.Name, rule.Text, rolls)
                or ("%s roll #%d, no target yet"):format(tool.Name, rolls)

            local Tbl9 = {
                content = rule and "@everyone" or "",
                username = "Binini Hub",
                avatar_url = "https://images-ext-1.discordapp.net/external/9LSZu__Uvs7I0N8MWag-JmwF2iT-pHCHSe2UdixGEXQ/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1262364141968949308/a_0c5fb64e2cbb35d029d73b44576c6a60.gif",
                embeds = {
                    {
                        title = "<:bananacon:1261744974534541352>  Banana Hub Notification <:bananacon:1261744974534541352>",
                        description = "**Main Status**\nUsername : ||" .. tostring(LocalPlayer2.Name) .. "||",
                        color = 16776960,
                        footer = { text = "Binini Hub" },
                        fields = {
                            { name = "**Auto Enchant**", value = "```\n" .. Result .. "\n```", inline = false },
                            { name = "**Enchants**", value = "```\n" .. FormatModifiers(modifiers) .. "\n```", inline = false },
                        },
                        thumbnail = {
                            url = "https://cdn.discordapp.com/attachments/1017024488665264218/1262729537578471504/banner_server.jpg?ex=6697a806&is=66965686&hm=e0bd7cbb8460651cc19481bf516ede631dc881b52dcebd9ab54791c37d5dc893&",
                        },
                        timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                    },
                },
            }

            pcall(ExploitReq, {
                Url = Options["Input Url Webhook"].Value,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = HttpService2:JSONEncode(Tbl9),
            })
        end

        --// Display
        local function SetStatus(key, text)
            -- Only print when something actually changed
            if EnchantState.Status[key] ~= text then
                print(("[AutoEnchant] %s: %s"):format(key, text))
            end
            EnchantState.Status[key] = text
            local lines = {}
            for _, k in ipairs(StatusOrder) do
                if EnchantState.Status[k] then
                    lines[#lines + 1] = ("%s: %s"):format(k, EnchantState.Status[k])
                end
            end
            if EnchantUI.Status then
                EnchantUI.Status:SetDesc(table.concat(lines, "\n"))
            end
        end

        local function ShowWeapon(weaponType, text, tool, modifiers)
            if EnchantUI[weaponType] then
                EnchantUI[weaponType]:SetDesc(text)
            end
            if tool then
                Overlay.Data[weaponType] = { Tool = tool, Modifiers = modifiers }
                Overlay.Render()
            end
        end

        local function ShowScrolls(scrolls)
            if not (EnchantUI.Scrolls and scrolls) then
                return
            end
            local parts = {}
            for _, key in ipairs({ "Legendary", "Mythical" }) do
                local entry = scrolls[Scrolls[key]]
                parts[#parts + 1] = ("%s: %s"):format(key, entry and tostring(entry[1]) or "?")
            end
            EnchantUI.Scrolls:SetDesc(table.concat(parts, " | "))
        end

        local function RefreshDisplay()
            for _, weaponType in ipairs(WeaponOrder) do
                local tool, missingName = GetPickedWeapon(weaponType)
                local info = tool and GetEnchantInfo(tool)
                if info then
                    ShowWeapon(weaponType, ("%s | Grade %s\n%s"):format(tool.Name, tostring(info.Upgrades), FormatModifiers(info.Modifiers)), tool, info.Modifiers)
                    ShowScrolls(info.Scrolls)
                elseif missingName then
                    local stored = InventoryWeapons(weaponType)[missingName] ~= nil
                    ShowWeapon(weaponType, ("%s | %s"):format(missingName, stored and "in the inventory, read when it gets loaded to enchant" or "not owned"))
                else
                    ShowWeapon(weaponType, tool and "Check failed" or ("No %s in Backpack/Character"):format(weaponType))
                end
            end
        end

        --// Main
        local function IsActive()
            return Config["Auto Enchant"] and not Lib.Unloaded
        end

        local function GetOrder()
            local order = table.clone(EnchantModes[Config["Auto Enchant Weapons"]] or EnchantModes[EnchantModeNames[1]])
            if Config["Auto Enchant Rod"] == true then
                order[#order + 1] = "Rod"
            end
            return order
        end

        -- Fresh read of one weapon, never roll on unknown state.
        -- Returns "roll" (can roll now), "done" (target reached), "noscroll" (no scroll of the selected type),
        -- "skip" (can't roll this weapon) or "stop" (server call failed), and for "roll" also tool, info, rules, scrollName, owned
        local function EvaluateWeapon(weaponType)
            -- what is loaded of that type right now, for the logs ("Dragonstorm" = it got loaded over the picked gun)
            local function Loaded()
                local names = {}
                for _, item in ipairs(GetWeapons(weaponType)) do
                    names[#names + 1] = item.Name
                end
                return #names > 0 and table.concat(names, ", ") or "nothing"
            end

            -- A Tool destroyed while it's read ("in ?", another gun loaded over it) is found / loaded again, 3 tries
            local tool, info, err
            for _ = 1, 3 do
                local missingName
                tool, missingName = GetPickedWeapon(weaponType)
                -- the picked weapon is stored in the inventory: LoadItem puts it in the Backpack (it replaces the one loaded now, like the game's inventory)
                local loadArg = not tool and missingName and InventoryWeapons(weaponType)[missingName]
                if loadArg then
                    SetStatus(weaponType, ("loading %s from the inventory"):format(missingName))
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", loadArg)
                    end)
                    for _ = 1, 10 do
                        tool = GetPickedWeapon(weaponType)
                        if tool then
                            break
                        end
                        task.wait(0.3)
                    end
                end
                if not tool then
                    if loadArg then
                        SetStatus(weaponType, ("couldn't load %s from the inventory (loaded: %s)"):format(missingName, Loaded()))
                    else
                        SetStatus(weaponType, missingName and ("%s not in the inventory"):format(missingName) or "not in Backpack/Character")
                    end
                    return "skip"
                end

                info, err = GetEnchantInfo(tool)
                if info or tool.Parent then
                    break
                end
                print(("[AutoEnchant] %s got replaced while reading it (loaded: %s), getting it again"):format(tool.Name, Loaded()))
                task.wait(0.5)
            end
            if not info then
                SetStatus(weaponType, ("Check failed (%s | %s in %s, loaded: %s), not rolling"):format(err, tool.Name, tool.Parent and tool.Parent.Name or "?", Loaded()))
                return "stop"
            end
            ShowWeapon(weaponType, ("%s | Grade %s\n%s"):format(tool.Name, tostring(info.Upgrades), FormatModifiers(info.Modifiers)), tool, info.Modifiers)
            ShowScrolls(info.Scrolls)

            local rules = ParseRules(Config[RuleKeys[weaponType]])
            local scrollName = Scrolls[Config["Auto Enchant Scroll"]] or Scrolls.Mythical
            if #rules == 0 then
                SetStatus(weaponType, "no rules set, not touching it")
                return "skip"
            end

            local enchant = tool:GetAttribute("Enchant")
            local match = FindMatch(rules, GetLevels(info.Modifiers), enchant and tostring(enchant):lower())
            if match then
                SetStatus(weaponType, ("has \"%s\", keeping it"):format(match.Text))
                return "done"
            end

            local scroll = info.Scrolls and info.Scrolls[scrollName]
            local owned = scroll and tonumber(scroll[1]) or 0
            if owned < 1 then
                SetStatus(weaponType, ("no %s left"):format(scrollName))
                return "noscroll"
            end

            -- Same lock as the game UI: scroll above the weapon's grade breaks it (rods don't care about their grade)
            if weaponType ~= "Rod" and (tonumber(info.Upgrades) or 0) < (tonumber(scroll[3]) or 0) then
                SetStatus(weaponType, ("grade too low for %s"):format(scrollName))
                return "skip"
            end

            return "roll", tool, info, rules, scrollName, owned
        end

        -- Puts the weapon in the hands (Humanoid:EquipTool, same as the hotbar). The Enchant call itself works from the Backpack too,
        -- so a weapon that doesn't stay equipped is only logged and the roll goes on
        local function EquipForEnchant(tool)
            local character = LocalPlayer2.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            if not humanoid then
                return
            end
            for _ = 1, 3 do
                if tool.Parent == character then
                    return
                end
                pcall(humanoid.EquipTool, humanoid, tool)
                task.wait(0.3)
            end
            if tool.Parent ~= character then
                print(("[AutoEnchant] couldn't equip %s (it is in %s), rolling anyway"):format(tool.Name, tool.Parent and tool.Parent.Name or "?"))
            end
        end

        -- Returns EvaluateWeapon's verdict once it stops being "roll" (or "done" on a hit), or "off" (toggled off)
        local function RollWeapon(weaponType)
            local rolls = 0
            local failures = 0
            local replaced = 0
            while true do
                if rolls > 0 or failures > 0 then
                    task.wait(tonumber(Config["Auto Enchant Roll Delay"]) or 5)
                end
                if not IsActive() then
                    return "off"
                end

                local verdict, tool, info, rules, scrollName, owned = EvaluateWeapon(weaponType)
                if verdict ~= "roll" then
                    return verdict
                end

                if not IsActive() then
                    return "off"
                end

                if weaponType == "Gun" then
                    EquipForEnchant(tool)
                    -- the Tool got destroyed after the equip (another gun loaded over it): the next turn finds / loads it again, twice at most
                    if not tool.Parent and replaced < 2 then
                        replaced += 1
                        print(("[AutoEnchant] %s got replaced right before the roll, getting it again"):format(tool.Name))
                        continue
                    end
                end

                SetStatus(weaponType, ("rolling #%d (%s left: %d)"):format(Rolls.Get(tool.Name) + 1, scrollName, owned))
                local ok, result = pcall(EnchantInvoke.InvokeServer, EnchantInvoke, "Enchant", tool, scrollName)
                if not ok or type(result) ~= "table" then
                    failures += 1
                    if failures >= MaxEnchantFailures then
                        SetStatus(weaponType, ("Enchant failed (%s) %d times in a row"):format(tostring(result), failures))
                        return "stop"
                    end
                    SetStatus(weaponType, ("Enchant failed (%s), retrying %d/%d"):format(tostring(result), failures, MaxEnchantFailures - 1))
                    continue
                end
                failures = 0
                rolls += 1
                -- From here on "roll #N" is the saved total for this weapon, not the count of this visit
                local total = Rolls.Add(tool.Name)

                print(("[AutoEnchant] %s roll #%d:\n%s"):format(tool.Name, total, FormatModifiers(result.Modifiers)))
                ShowWeapon(weaponType, ("%s | Grade %s\n%s"):format(tool.Name, tostring(info.Upgrades), FormatModifiers(result.Modifiers)), tool, result.Modifiers)

                local levels = GetLevels(result.Modifiers)
                local hit = FindMatch(rules, levels)
                for _, rule in ipairs(rules) do
                    if rule.Dmg then
                        print(("[AutoEnchant] %s \"%s\": %s"):format(tool.Name, rule.Text, Dmg.Describe(rule.Dmg, levels)))
                    end
                end
                -- Every roll gets its webhook (spawned so the request doesn't hold up the next roll)
                task.spawn(SendEnchantWebhook, tool, hit, result.Modifiers, total)
                if hit then
                    SetStatus(weaponType, ("got \"%s\" on roll #%d!"):format(hit.Text, total))
                    return "done"
                end
            end
        end

        local function ShowNotSelected(order)
            for _, weaponType in ipairs(WeaponOrder) do
                if not table.find(order, weaponType) then
                    SetStatus(weaponType, "not selected")
                end
            end
        end

        -- Anything to roll on the selected weapons?
        -- "roll" = yes, "noscroll" = only missing the scroll, "no" = nothing to roll (targets there / no rules / grade too low / Check failed)
        local function NeedsEnchant()
            local order = GetOrder()
            ShowNotSelected(order)
            local result = "no"
            for _, weaponType in ipairs(order) do
                local verdict = EvaluateWeapon(weaponType)
                if verdict == "roll" then
                    return "roll"
                elseif verdict == "stop" then
                    return "no"
                elseif verdict == "noscroll" then
                    result = "noscroll"
                end
            end
            return result
        end

        local function RunPass()
            local order = GetOrder()
            ShowNotSelected(order)

            -- Dragonstorm's auto equip (AutoGunAttackOnce) puts Dragonstorm back in the hands every frame, so it is paused
            -- for the whole pass; once the scrolls are used up (or the targets are reached) Dragonstorm is equipped again
            getgenv().EnchantPausesGun = true
            local ok, err = pcall(function()
                for _, weaponType in ipairs(order) do
                    local status = RollWeapon(weaponType)
                    if status == "stop" or status == "off" then
                        return
                    end
                end
            end)
            getgenv().EnchantPausesGun = false

            if Config["Auto Dragon Storm(Risk)"] then
                pcall(EquipDragonstorm)
            end
            if not ok then
                error(err, 0)
            end
        end

        -- Called at the top of HuntLeviathan every tick. Once the heart is delivered at Tiki the account goes into
        -- "Enchant": nothing to roll -> keeps going with the boat, otherwise tween to EnchantSpot, roll, and the next
        -- HuntLeviathan tick puts it back on the boat. The boat owner waits by itself (countSeatedPlayers < 4) while alts are off.
        -- Returns true while it's using the character, so HuntLeviathan skips that tick.
        AutoEnchantAfterTiki = function()
            local FrozenHeart = workspace.Map:FindFirstChild("FrozenHeart")

            if FrozenHeart then
                local Inside = FrozenHeart:FindFirstChild("Inside")
                if Inside and Inside:GetAttribute("Harpooned") then
                    EnchantState.HeartHarpooned = true
                end
                return false
            end

            -- Heart gone after being harpooned = delivered (same signal the Tiki drive stops on)
            if EnchantState.HeartHarpooned then
                EnchantState.HeartHarpooned = false
                EnchantState.HeartGoneAt = tick()
            end

            if EnchantState.HeartGoneAt then
                if LocalPlayer2:GetAttribute("CurrentLocation") == "Tiki Outpost" then
                    EnchantState.HeartGoneAt = nil
                    -- Heart delivered: the boat owner rebuys the boat once the enchants are done (HuntLeviathan "Account Buy Boat" branch)
                    if Config["Account Buy Boat"] then
                        getgenv().RebuyBoat = true
                    end
                    EnchantState.Phase = IsActive() and "Check" or nil
                    EnchantState.ArrivedAt = tick()
                    EnchantState.NextCheck = 0
                elseif tick() - EnchantState.HeartGoneAt > 30 then
                    EnchantState.HeartGoneAt = nil -- never got to Tiki (Hydra / heart lost)
                end
            end

            if not EnchantState.Phase then
                return false
            end

            if not IsActive() then
                EnchantState.Phase = nil
                getgenv().EnchantPausesGun = false
                return false
            end

            -- Dragonstorm's auto equip stays paused for the whole visit (Check at Tiki, tween, rolls): it would LoadItem Dragonstorm
            -- right back over a gun loaded from the inventory to be enchanted (only one gun can be loaded)
            getgenv().EnchantPausesGun = true

            if EnchantState.Phase == "Check" then
                if tick() - EnchantState.ArrivedAt > CheckWindow then
                    EnchantState.Phase = nil
                    getgenv().EnchantPausesGun = false
                    SetStatus("Info", "no scroll showed up, staying with the boat")
                    return false
                end

                -- Waits on the boat between checks (returning false would let the boat owner sail off
                -- and its sailing loop doesn't come back here until it finds the Leviathan)
                if tick() < EnchantState.NextCheck then
                    return true
                end
                EnchantState.NextCheck = tick() + CheckEvery
                Tbl7.SetStatus("Auto Enchant: Checking Scrolls", Tbl7.Colors.Purple)

                local need = NeedsEnchant()
                if need == "no" then
                    EnchantState.Phase = nil
                    getgenv().EnchantPausesGun = false
                    SetStatus("Info", "delivered at Tiki, nothing to roll, staying with the boat")
                    return false
                elseif need == "noscroll" then
                    SetStatus("Info", "delivered at Tiki, waiting for the scroll to get crafted")
                    return true
                end

                EnchantState.Phase = "Go"
                SetStatus("Info", "delivered at Tiki, going to enchant")
            end

            local HumanoidRootPart = LocalPlayer2.Character and LocalPlayer2.Character:FindFirstChild("HumanoidRootPart")
            if not HumanoidRootPart then
                return true
            end

            if (HumanoidRootPart.Position - EnchantSpot).Magnitude > 10 then
                Tbl7.SetStatus("Auto Enchant: Tween To Enchant", Tbl7.Colors.Purple)
                toTarget(HumanoidRootPart.Position, EnchantSpot, CFrame.new(EnchantSpot), false, true)
                return true
            end

            Tbl7.SetStatus("Auto Enchant: Rolling", Tbl7.Colors.Purple)
            local ok, err = pcall(RunPass)
            if not ok then
                SetStatus("Info", "error: " .. tostring(err))
            end

            EnchantState.Phase = nil
            SetStatus("Info", "enchant done, back to the boat")
            return true
        end

        --// Enchanter Ui: one card per selected weapon (name, enchants) in the middle of the screen, shown while Auto Enchant + Enchanter Ui are on
        Overlay.New = function(className, props, parent)
            local inst = Instance.new(className)
            for k, v in pairs(props) do
                inst[k] = v
            end
            inst.Parent = parent
            return inst
        end

        Overlay.EnchantText = function(modifiers)
            local lines = {}
            for _, entry in ipairs(SortModifiers(modifiers)) do
                local mod = entry.Mod
                local text = tostring(mod.Name)
                local max = mod.MaxLevel or MaxLevels[text]
                if max then
                    text ..= (" %s/%s"):format(tostring(mod.Level), tostring(max))
                elseif (tonumber(mod.Level) or 1) > 1 then
                    text ..= " " .. tostring(mod.Level)
                end
                lines[#lines + 1] = ('<font color="%s">%s</font>'):format(Overlay.Colors[entry.Kind], text)
            end
            return #lines > 0 and table.concat(lines, "\n") or '<font color="#8c8c9b">no enchants</font>'
        end

        Overlay.Build = function()
            local PlayerGui = LocalPlayer2:WaitForChild("PlayerGui")
            local Old = PlayerGui:FindFirstChild("Ayush_Enchanter")
            if Old then
                Old:Destroy()
            end

            Overlay.Gui = Overlay.New("ScreenGui", { Name = "Ayush_Enchanter", ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, Enabled = false }, PlayerGui)
            Overlay.Holder = Overlay.New("Frame", {
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.new(0.5, 0, 0.5, 0),
                Size = UDim2.new(0, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.XY,
                BackgroundTransparency = 1,
            }, Overlay.Gui)
            Overlay.New("UIListLayout", {
                FillDirection = Enum.FillDirection.Horizontal,
                VerticalAlignment = Enum.VerticalAlignment.Top,
                Padding = UDim.new(0, 14),
                SortOrder = Enum.SortOrder.LayoutOrder,
            }, Overlay.Holder)
        end

        Overlay.Card = function(weaponType, order)
            local data = Overlay.Data[weaponType]
            local New = Overlay.New

            local Card = New("Frame", {
                LayoutOrder = order,
                Size = UDim2.new(0, 220, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundColor3 = Color3.fromRGB(12, 12, 16),
                BackgroundTransparency = 0.15,
                BorderSizePixel = 0,
            }, Overlay.Holder)
            New("UICorner", { CornerRadius = UDim.new(0, 12) }, Card)
            New("UIStroke", { Color = Color3.fromRGB(40, 40, 50), Thickness = 1, Transparency = 0.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, Card)
            New("UIPadding", { PaddingTop = UDim.new(0, 14), PaddingBottom = UDim.new(0, 14), PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14) }, Card)
            New("UIListLayout", { HorizontalAlignment = Enum.HorizontalAlignment.Center, Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder }, Card)

            New("TextLabel", {
                LayoutOrder = 1,
                Size = UDim2.new(1, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
                Text = data and data.Tool.Name or ("No " .. weaponType),
                Font = Enum.Font.GothamBold,
                TextSize = 22,
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextWrapped = true,
            }, Card)

            New("TextLabel", {
                LayoutOrder = 2,
                Size = UDim2.new(1, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
                RichText = true,
                Text = Overlay.EnchantText(data and data.Modifiers),
                Font = Enum.Font.GothamMedium,
                TextSize = 15,
                TextColor3 = Color3.fromRGB(220, 220, 230),
                TextWrapped = true,
            }, Card)
        end

        Overlay.Render = function()
            if not (Overlay.Gui and Overlay.Gui.Parent) then
                Overlay.Build()
            end

            Overlay.Gui.Enabled = Config["Auto Enchant"] and Config["Enchanter Ui"] and not Lib.Unloaded or false
            if not Overlay.Gui.Enabled then
                return
            end

            for _, child in ipairs(Overlay.Holder:GetChildren()) do
                if child:IsA("Frame") then
                    child:Destroy()
                end
            end
            for i, weaponType in ipairs(GetOrder()) do
                Overlay.Card(weaponType, i)
            end
        end

        --// UI
        local EnchantTab = Tbl8.TabEnchant

        EnchantUI.Status = EnchantTab:AddParagraph({ Title = "Status", Content = "Idle" })

        EnchantTab:AddToggle("Auto Enchant", {
            Title = Translate("Auto Enchant"),
            Description = "Auto Enchants selected weapons",
            Default = Config["Auto Enchant"] or false,
            Callback = function(Arg)
                SaveSettings("Auto Enchant", Arg)
                Overlay.Render()
            end,
        })

        EnchantTab:AddToggle("Enchanter Ui", {
            Title = Translate("Enchanter Ui"),
            Description = "Enchant Ui",
            Default = Config["Enchanter Ui"] or false,
            Callback = function(Arg)
                SaveSettings("Enchanter Ui", Arg)
                Overlay.Render()
            end,
        })

        local EnchantConfigSection = EnchantTab:AddSection("Config")

        EnchantConfigSection:AddDropdown("Auto Enchant Weapons", {
            Title = Translate("Weapons"),
            Description = "Both = the first one gets the scrolls, the second starts when the first has its target (or can't roll)",
            Values = EnchantModeNames,
            Multi = false,
            Default = Config["Auto Enchant Weapons"] or EnchantModeNames[1],
            Callback = function(Arg)
                if EnchantModes[Arg] then
                    SaveSettings("Auto Enchant Weapons", Arg)
                    Overlay.Render()
                end
            end,
        })

        EnchantConfigSection:AddToggle("Auto Enchant Rod", {
            Title = Translate("Enchant Rod"),
            Description = "The rod you have loaded, after the weapons. Rules in Tab Rod Rules",
            Default = Config["Auto Enchant Rod"] == true,
            Callback = function(Arg)
                SaveSettings("Auto Enchant Rod", Arg)
                Overlay.Render()
            end,
        })

        EnchantConfigSection:AddDropdown("Auto Enchant Scroll", {
            Title = Translate("Scroll"),
            Values = { "Legendary", "Mythical" },
            Multi = false,
            Default = Config["Auto Enchant Scroll"] or "Mythical",
            Callback = function(Arg)
                if Scrolls[Arg] then
                    SaveSettings("Auto Enchant Scroll", Arg)
                end
            end,
        })

        EnchantConfigSection:AddSlider("Auto Enchant Roll Delay", {
            Title = Translate("Roll Delay"),
            Description = "Seconds between rolls",
            Default = tonumber(Config["Auto Enchant Roll Delay"]) or 5,
            Min = 1,
            Max = 10,
            Rounding = 0,
            Callback = function(Arg)
                SaveSettings("Auto Enchant Roll Delay", Arg)
            end,
        })

        --// Gun to enchant
        -- WeaponLists = the dropdowns that list owned weapons, refreshed by the Refresh button
        local WeaponLists = {}

        -- Names of the owned weapons of those types; keep = a saved name that isn't owned right now stays selectable,
        -- stored = also the ones stored in the inventory (EvaluateWeapon loads them)
        local function OwnedWeaponNames(weaponTypes, keep, stored)
            local names, seen = {}, {}
            for _, weaponType in ipairs(weaponTypes) do
                for _, tool in ipairs(GetWeapons(weaponType)) do
                    if not seen[tool.Name] then
                        seen[tool.Name] = true
                        names[#names + 1] = tool.Name
                    end
                end
                if stored then
                    for name in pairs(InventoryWeapons(weaponType)) do
                        if not seen[name] then
                            seen[name] = true
                            names[#names + 1] = name
                        end
                    end
                end
            end
            table.sort(names)
            if keep and keep ~= "Auto" and not seen[keep] then
                names[#names + 1] = keep
            end
            return names
        end

        local function RefreshWeaponLists()
            for _, entry in ipairs(WeaponLists) do
                local keep = Config[entry.Key]
                local values = OwnedWeaponNames(entry.Types, keep, true)
                table.insert(values, 1, "Auto")
                entry.Dropdown:SetValues(values)
                entry.Dropdown:SetValue(keep or "Auto")
            end
        end

        local EnchantWeaponSection = EnchantTab:AddSection("Weapon To Enchant")

        do
            local key = WeaponKeys.Gun
            local values = OwnedWeaponNames({ "Gun" }, Config[key], true)
            table.insert(values, 1, "Auto")
            local dropdown = EnchantWeaponSection:AddDropdown(key, {
                Title = "Gun To Enchant",
                Description = "Every one you own, stored ones too (loaded from the inventory before the roll). Auto = the first one in the Backpack",
                Values = values,
                Multi = false,
                Default = Config[key] or "Auto",
                Callback = function(Arg)
                    if Arg then
                        SaveSettings(key, Arg)
                    end
                end,
            })
            WeaponLists[#WeaponLists + 1] = { Dropdown = dropdown, Types = { "Gun" }, Key = key }
        end

        local EnchantCurrentSection = EnchantTab:AddSection("Current Enchants")

        EnchantUI.Scrolls = EnchantCurrentSection:AddParagraph({ Title = "Scrolls", Content = "..." })
        EnchantUI.Sword = EnchantCurrentSection:AddParagraph({ Title = "Sword", Content = "..." })
        EnchantUI.Gun = EnchantCurrentSection:AddParagraph({ Title = "Gun", Content = "..." })
        EnchantUI.Rod = EnchantCurrentSection:AddParagraph({ Title = "Rod", Content = "..." })

        EnchantCurrentSection:AddButton({
            Title = Translate("Refresh"),
            Description = "Re-read both weapons' enchants and the gun list",
            Callback = function()
                task.spawn(function()
                    RefreshDisplay()
                    RefreshWeaponLists()
                end)
            end,
        })

        --// Rule builder (one tab per weapon). The "Auto Enchant <Weapon> Rules" input is the saved source of truth,
        --// the dropdowns just write into it.
        for _, weaponType in ipairs(WeaponOrder) do
            local tab = RuleTabs[weaponType]
            local id = RuleKeys[weaponType]

            local rulesPara = tab:AddParagraph({ Title = weaponType .. " Rules", Content = "..." })

            -- Appends a rule to this weapon's list (text, err = what BuildRuleText/BuildDmgRuleText return). true = added
            local function AddRule(text, err)
                if not text then
                    Lib:Notify({ Title = "Auto Enchant", Content = err, Duration = 3 })
                    return false
                end
                local list = SplitRules(Config[id])
                if table.find(list, text) then
                    Lib:Notify({ Title = "Auto Enchant", Content = "That rule already exists", Duration = 3 })
                    return false
                end
                list[#list + 1] = text
                Options[id]:SetValue(table.concat(list, ", "))
                return true
            end

            local newSection = tab:AddSection("New Rule")

            local mustHave = newSection:AddDropdown("Auto Enchant " .. weaponType .. " Must Have", {
                Title = "Must Have",
                Description = "All picked must be on the weapon. Level = minimum (Natural 3 = Natural 3 or higher)",
                Values = weaponType == "Rod" and RodEnchants.MustHave or MustHaveValues,
                Multi = true,
                Default = {},
            })

            local mustNot = newSection:AddDropdown("Auto Enchant " .. weaponType .. " Must Not", {
                Title = "Must NOT Have",
                Description = "Rule fails if the weapon has any of these",
                Values = weaponType == "Rod" and RodEnchants.Names or EnchantNames,
                Multi = true,
                Default = {},
            })

            newSection:AddButton({
                Title = "Add Rule",
                Callback = function()
                    if AddRule(BuildRuleText(mustHave.Value or {}, mustNot.Value or {})) then
                        mustHave:SetValue({})
                        mustNot:SetValue({})
                    end
                end,
            })

            if weaponType ~= "Rod" then
                local dmgSection = tab:AddSection("New Dmg % Rule")

                local dmgMin = dmgSection:AddSlider("Auto Enchant " .. weaponType .. " Dmg Rule Min", {
                    Title = "Min Dmg %",
                    Description = "This damage % or more.",
                    Default = 25,
                    Min = 1,
                    Max = 40,
                    Rounding = 0,
                })

                local dmgTypes = dmgSection:AddDropdown("Auto Enchant " .. weaponType .. " Dmg Rule Types", {
                    Title = "Dmg Types",
                    Description = "Natural/Elemental/Beast/Sharp. Several picked = valid when ANY of them reaches the Min Dmg %",
                    Values = Dmg.TypeNames,
                    Multi = true,
                    Default = {},
                })

                dmgSection:AddButton({
                    Title = "Add Dmg % Rule",
                    Description = "",
                    Callback = function()
                        if AddRule(BuildDmgRuleText(dmgMin.Value, dmgTypes.Value or {})) then
                            dmgTypes:SetValue({})
                        end
                    end,
                })
            end

            local removeSection = tab:AddSection("Remove Rule")

            local removeDropdown = removeSection:AddDropdown("Auto Enchant " .. weaponType .. " Remove Rule", {
                Title = "Rule",
                Values = {},
                Multi = false,
                AllowNull = true,
            })

            removeSection:AddButton({
                Title = "Remove Rule",
                Callback = function()
                    local selected = removeDropdown.Value
                    local list = SplitRules(Config[id])
                    local index = selected and table.find(list, selected)
                    if not index then
                        return
                    end
                    table.remove(list, index)
                    Options[id]:SetValue(table.concat(list, ", "))
                end,
            })

            local advancedSection = tab:AddSection("Advanced")

            local input = advancedSection:AddInput(id, {
                Title = "Rules (text)",
                Description = "Same rules as text, comma separated. + = also has, - = must NOT have, 25% Natural/Beast = Dmg % (Natural, Elemental, Beast, Sharp). Press Enter to apply.",
                Default = Config[id] or "",
                Placeholder = "Curse of the Reaper, 25% Natural/Beast, Natural 5 - Unreal",
                Numeric = false,
                Finished = true,
                Callback = function(Arg)
                    SaveSettings(id, Arg)
                end,
            })

            input:OnChanged(function(Value)
                local list = SplitRules(Value)
                local lines = {}
                for i, text in ipairs(list) do
                    lines[i] = ("%d. %s"):format(i, text)
                end
                rulesPara:SetDesc(#lines > 0
                    and table.concat(lines, "\n") .. "\n\nStops rolling when ANY rule matches."
                    or ("(no rules) %s won't be enchanted"):format(weaponType))
                removeDropdown:SetValues(list)
                removeDropdown:SetValue(nil)
            end)
        end

        Tbl8.WebhookTab:AddToggle("Webhook Auto Enchant", {
            Title = Translate("Webhook Auto Enchant"),
            Description = "After every roll (weapon + its enchants), @everyone when a roll hits one of the rules",
            Default = Config["Webhook Auto Enchant"] or false,
            Callback = function(Arg)
                SaveSettings("Webhook Auto Enchant", Arg)
            end,
        })

        task.spawn(function()
            RefreshDisplay()
            RefreshWeaponLists()
        end)
    end

    -- Camera always at the max zoom distance the game allows + Invisicam (goes through walls)
    task.spawn(function()
        local function ApplyCamera()
            if LocalPlayer2.CameraMinZoomDistance ~= LocalPlayer2.CameraMaxZoomDistance then
                LocalPlayer2.CameraMinZoomDistance = LocalPlayer2.CameraMaxZoomDistance
            end
            if LocalPlayer2.DevCameraOcclusionMode ~= Enum.DevCameraOcclusionMode.Invisicam then
                LocalPlayer2.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
            end
        end

        ApplyCamera()
        LocalPlayer2:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(ApplyCamera)
        LocalPlayer2:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(ApplyCamera)
        LocalPlayer2:GetPropertyChangedSignal("DevCameraOcclusionMode"):Connect(ApplyCamera)
    end)

    spawn(function()
        -- Starts closed: open it with the button or LeftControl
        getgenv().UIToggled = false
        Window:Minimize()
        HideGui = Instance.new("ScreenGui")
        HideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        HideGui.Name = "Banana Cat Hub Btn"
        HideGui.Enabled = true
        HideGui.Parent = game:GetService("CoreGui")
        local Frame = Instance.new("Frame", HideGui)
        Frame.AnchorPoint = Vector2.new(0, 1)
        Frame.Size = UDim2.new(0, 50, 0, 50)
        Frame.Position = UDim2.new(0, 15, 0.2, 5)
        Frame.Name = "dut dit"
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = getgenv().UIToggled and 0 or 0.25
        local TextButton = Instance.new("TextButton", Frame)
        TextButton.BackgroundTransparency = 1
        TextButton.Text = ""
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        local ImageLabel = Instance.new("ImageLabel", Frame)
        ImageLabel.AnchorPoint = Vector2.new(0, 0)
        ImageLabel.Image = "rbxassetid://5009915795"
        ImageLabel.BackgroundTransparency = 1
        ImageLabel.Size = UDim2.new(0, getgenv().UIToggled and 40 or 30, 0, getgenv().UIToggled and 40 or 30)
        ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        local UICorner = Instance.new("UICorner")
        UICorner.Parent = Frame
        UICorner.CornerRadius = UDim.new(1, 0)

        TextButton.MouseButton1Click:Connect(function()
            getgenv().UIToggled = not getgenv().UIToggled
            local N9 = getgenv().UIToggled and 40 or 30
            game:GetService("TweenService"):Create(ImageLabel, TweenInfo.new(0.25), { Size = UDim2.new(0, N9, 0, N9) }):Play()
            game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), { BackgroundTransparency = getgenv().UIToggled and 0 or 0.25 }):Play()
            game:service("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)
        end)
    end)

    do
        local V60 = Key
        local UserId = V21(LocalPlayer and LocalPlayer.UserId or 0)
        local V61 = Name
        S = nil
        V33 = nil
        Str = nil
        Str7 = nil
        Key = nil
        V22 = nil
        S = nil
        V33 = nil
        V54 = nil
        V55 = nil
        N5 = nil
        Fn9 = nil
        local V62 = request

        if V62 then
            local Str13 = V21(V19()) .. "|" .. V21(tick())
            local V63 = V21(V19(1, 999999))
            local V64 = V21(V19(12345, 54321))
            local V65 = _G

            V65.encryptUrl = function(Arg)
                return Fn12(Fn10(Str13, V63, V64, Arg))
            end

            local Tbl9 = {
                __index = function(Arg, Arg2)
                    return rawget(Arg, Arg2)
                end,
                __newindex = rawset,
                __metatable = nil,
            }

            V65.request = function(...)
                local V66 = table.pack(...)
                local Tbl10 = { ... }

                if type(Tbl10[1]) == "table" then
                    local Tbl11 = {}

                    for K, V67 in V17(Tbl10[1]) do
                        rawset(Tbl11, K, V67)
                    end

                    local Value = rawget(Tbl11, "Url")

                    if type(Value) == "string" and #Value > 10 and #Value % 2 == 0 then
                        local V67 = Fn11(Str13, V63, V64, Value)

                        if V67 and type(V67) == "string" and #V67 > 5 then
                            rawset(Tbl11, "Url", V67)
                        end
                    end

                    setmetatable(Tbl11, Tbl9)
                    Tbl10[1] = Tbl11
                end

                return V62(table.unpack(Tbl10, 1, V14("#", table.unpack(V66, 1, V66.n))))
            end
        end
    end
end
