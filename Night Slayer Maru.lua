--// This file was created by XHider v1.2 [https://discord.gg/hATuHQaQRb]

local p = game:GetService("Players");
local P = game:GetService("ReplicatedStorage");
local C = game:GetService("Workspace");
local Y = game:GetService("RunService");
local r = game:GetService("TweenService");
local U = game:GetService("HttpService");
local v = game:GetService("TeleportService");
local u = game:GetService("VirtualInputManager");
local d = game:GetService("VirtualUser");
local i = game:GetService("Lighting");
local Z = game:GetService("CollectionService");
local N = game:GetService("Stats");
local X = game:GetService("ReplicatedStorage");
local A = X:WaitForChild("Remotes");
local s = A:WaitForChild("CommF_");
local L = p.LocalPlayer;
local e = L:WaitForChild("PlayerGui", 5);
local q = e:WaitForChild("Main", 5);
local V = L.Character or L.CharacterAdded:Wait();
local f = V:WaitForChild("Humanoid");
local y = V:WaitForChild("HumanoidRootPart");
local j = ((X:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/Craft");
local c = X:WaitForChild("FishReplicated");
local D = c:WaitForChild("FishingRequest");
local G = require(c.FishingClient.Config);
local m = ((X:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/JobsRemoteFunction");
local o = ((X:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/JobToolAbilities");
local E = require(X.Util.GetWaterHeightAtLocation);
local T = "https://discord.com/api/webhooks/1470044798202151134/4uLMDv_QBhalhhsoo9XnNEBmnLKOQ4xIhJgO91tTBBDwkZ3_eyojKnHWrmtfLoLHH1sZ";
local M = "https://discord.com/api/webhooks/1470044798202151134/4uLMDv_QBhalhhsoo9XnNEBmnLKOQ4xIhJgO91tTBBDwkZ3_eyojKnHWrmtfLoLHH1sZ";
local a = getexecutorname() or identifyexecutor();
	local P = game:GetService("ReplicatedStorage");
	local l = require(P.DialogueController);
	local C = require(P.DialoguesList);
local n = game.PlaceId;
local S = game.PlaceId == 2753915549 or 85211729168715;
local F = game.PlaceId == 4442272183 or 79091703265657;
local h = game.PlaceId == 7449423635 or 85211729168715;
local J = S or F or h;
local K = C.Enemies;
local B = X;
local Q = L;
local x = y;
local O = L.Data.Level.Value;
local H = L.Team;
local I = V.Energy.Value;
local W = u;
local R = d;
local z = r;
local b = 0;
local pP = 10;
local PP = p;
local lP = X;
local CP = Y;
local YP = {};
local rP = {};
local UP = {};
local vP = {};
local uP = false;
local dP = false;
local iP = true;
local ZP = false;
local NP = false;
local XP = false;
local AP = false;
local sP = .1;
local LP = 0;
local eP = 25;
	local p = (Q.PlayerGui:WaitForChild("Main")):WaitForChild("Loading");
local qP = {};
local function VP(p)
	local P = tostring(p);
	while true do
		P, k = P:gsub("^(-?%d+)(%d%d%d)", "%1,%2");
		if k == 0 then
			break;
		end;
	end;
	return P;
end;
		local p = VP(P.Price);
		local l = P.Name;
local kP = {};
		local p = VP(P.Price);
		local l = P.Name;
local fP = {
		"Flame",
		"Ice",
		"Quake",
		"Light",
		"Dark",
		"String",
		"Rumble",
		"Magma",
		"Human: Buddha",
		"Sand",
		"Bird: Phoenix",
		"Dough",
	};
local yP = {
		"Guardian",
		"PirateGrandBrigade",
		"MarineGrandBrigade",
		"PirateBrigade",
		"MarineBrigade",
		"PirateSloop",
		"MarineSloop",
		"Beast Hunter",
	};
local jP = {
		"Lv 1",
		"Lv 2",
		"Lv 3",
		"Lv 4",
		"Lv 5",
		"Lv 6",
		"Lv Infinite",
	};
local cP = {
		"Snow Lurker",
		"Arctic Warrior",
		"Hidden Key",
		"Awakened Ice Admiral",
	};
local DP = {
		Mob = "Mythological Pirate",
		Mob2 = "Cursed Skeleton",
		"Hell\'s Messenger",
		Mob3 = "Cursed Skeleton",
		"Heaven\'s Guardian",
	};
local GP = {
		"Part",
		"SpawnLocation",
		"Terrain",
		"WedgePart",
		"MeshPart",
	};
local mP = { "Swan Pirate", "Jeremy" };
local oP = { "Forest Pirate", "Captain Elephant" };
local EP = { "Fajita", "Jeremy", "Diamond" };
local TP = {
		"Beast Hunter",
		"Lantern",
		"Guardian",
		"Grand Brigade",
		"Dinghy",
		"Sloop",
		"The Sentinel",
	};
local gP = { "Cookie Crafter" };
local MP = { "Reborn Skeleton" };
		local p = i:FindFirstChild("LightingLayers");
			local P = p:FindFirstChild("DarkFog");
		local p = getnamecallmethod();
		local P = { ... };
		local p = { [1] = { NPC = "Dragon Wizard", Command = "Upgrade" } };
local aP = workspace:FindFirstChild(block.Name);
	local p = game.Players.LocalPlayer;
					local P = p.Character and p.Character.PrimaryPart;
				local P = p.Character;
				local P = p.Character;
		local P = Q.Character;
		local l = P.HumanoidRootPart;
		local C = (p.Position - l.Position).Magnitude;
		local Y = TweenInfo.new(C / ((getgenv()).TweenSpeed or 300), Enum.EasingStyle.Linear);
		local r = (game:GetService("TweenService")):Create(block, Y, { CFrame = p });
	local P = game.Players.LocalPlayer;
	local l = P.Character.HumanoidRootPart;
	local C = P.Character.Humanoid;
	local Y = P.PlayerGui.Main;
	local r = p.Position;
	local U = l.Position;
					local p = Instance.new("BodyVelocity");
		local p = QuestB();
		local p = game.Players.LocalPlayer.Data.Level.Value;
		local p = game.Players.LocalPlayer;
		local P = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
				local C = (P.Position - p).Magnitude;
				local p = Vector3.new(-4607.82275, 872.54248, -1667.55688);
				local p = Vector3.new(61163.8515625, 5.3423423767089844, 1819.7841796875);
				local p = Vector3.new(61163.8515625, 5.3423423767089844, 1819.7841796875);
		local p = QuestCheck();
		local p = QuestCheck();
local nP = {};
local FP = {};
local hP = {};
local JP = game;
local KP = JP:GetService("Players");
local BP = JP:GetService("RunService");
local tP = JP:GetService("ReplicatedStorage");
local wP = JP:GetService("Workspace");
local QP = KP.LocalPlayer;
local xP = QP.Character or QP.CharacterAdded:Wait();
local function OP(p, P)
	local l, C = pcall(function()
			return p:WaitForChild(P);
		end);
	return C;
end;
local HP = OP(wP, "Enemies");
local IP = OP(wP, "Characters");
local WP = OP(tP, "Modules");
local RP = OP(WP, "Net");
	local P = p:FindFirstChild("Humanoid");
	local l = (p:GetPivot()).Position;
	local C = {};
	local Y = P:GetChildren();
		local P = Y[p];
		local r = P:FindFirstChild("Humanoid");
		local U = P:FindFirstChild("HumanoidRootPart");
			local p = (U.Position - l).Magnitude;
	local P = {};
	local l = #p;
		local C = p[l];
		local Y = C:FindFirstChild("Head") or C.PrimaryPart;
	local P = nP.GetNearbyTargets(p, HP);
	local l = nP.GetNearbyTargets(p, IP);
	local C = {};
	local p = QP.Character;
	local P = p:FindFirstChildOfClass("Tool");
	local l = nP.GetAllTargets(p);
	local C = nP.GetTargetParts(l);
	local Y = RP["RE/RegisterAttack"];
	local r = RP["RE/RegisterHit"];
	local U = C[1][2];
local function pH()
	local p = {
			tP.Util,
			tP.Common,
			tP.Remotes,
			tP.Assets,
			tP.FX,
		};
	for p, P in ipairs(p) do
		local l = P:GetChildren();
		for p, P in ipairs(l) do
			if P:IsA("RemoteEvent") and P:GetAttribute("Id") then
				zP = P;
				bP = P:GetAttribute("Id");
			end;
		end;
		P.ChildAdded:Connect(function(p)
			if p:IsA("RemoteEvent") and p:GetAttribute("Id") then
				zP = p;
				bP = p:GetAttribute("Id");
			end;
		end);
	end;
end;
	local p = QP.Character;
	local P = p:FindFirstChild("HumanoidRootPart");
	local l = {};
	local function C(C)
		local Y = C:GetChildren();
		for C = 1, #Y, 1 do
			local r = Y[C];
			local U = r:FindFirstChild("Humanoid");
			local v = r:FindFirstChild("HumanoidRootPart");
			if U and (v and (U.Health > 0 and r ~= p)) then
				local p = (v.Position - P.Position).Magnitude;
				if p <= 60 then
					local p = r:GetChildren();
					for p, P in ipairs(p) do
						if P:IsA("BasePart") then
							table.insert(l, { r, P });
						end;
					end;
				end;
			end;
		end;
	end;
	local Y = p:FindFirstChildOfClass("Tool");
		local p = WP.Net.seed:InvokeServer();
		local P = RP["RE/RegisterAttack"];
		local C = RP["RE/RegisterHit"];
		local Y = l[1][1]:FindFirstChild("Head");
			local P = "RE/RegisterHit";
			local C = math.floor((wP:GetServerTimeNow() / 10) % 10) + 1;
			local r = string.gsub(P, ".", function(p)
					return string.char(bit32.bxor(string.byte(p), C));
				end);
			local U = bit32.bxor(bP + 909090, p * 2);
local function PH()
	local p = require(tP.Util.CameraShaker);
	p:Stop();
end;
local function lH()
	task.spawn(function()
		while task.wait(nP.Rate) do
			nP.ExecuteFastAttack();
		end;
	end);
	BP.Heartbeat:Connect(function()
		pcall(FP.Execute);
	end);
end;
local CH = {};
local YH = {};
local rH = {};
local UH = {};
local vH = {};
local function uH(p)
	return p .. (p .. p);
end;
local dH = 0;
local iH = {};
local function ZH(p)
	local P = "";
	for p = 1, p, 1 do
		P = P .. string.char(p % 26 + 97);
	end;
	return P;
end;
local NH = ZH(5000);
local XH = ZH(3000);
local AH = ZH(2000);
local function sH()
	local p = game.PlaceId;
	local P = {};
	local l = "";
	local C = (os.date("!*t")).hour;
	local function Y()
		local Y;
		if l == "" then
			Y = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. (p .. "/servers/Public?sortOrder=Asc&limit=100")));
		else
			Y = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. (p .. ("/servers/Public?sortOrder=Asc&limit=100&cursor=" .. l))));
		end;
		local r = "";
		if Y.nextPageCursor and (Y.nextPageCursor ~= "null" and Y.nextPageCursor ~= nil) then
			l = Y.nextPageCursor;
		end;
		local U = 0;
		for l, Y in pairs(Y.data) do
			local v = true;
			r = tostring(Y.id);
			if tonumber(Y.maxPlayers) > tonumber(Y.playing) then
				for p, l in pairs(P) do
					if U ~= 0 then
						if r == tostring(l) then
							v = false;
						end;
					else
						if tonumber(C) ~= tonumber(l) then
							pcall(function()
								P = {};
								table.insert(P, C);
							end);
						end;
					end;
					U = U + 1;
				end;
				if v then
					table.insert(P, r);
					wait(.1);
					pcall(function()
						(game:GetService("TeleportService")):TeleportToPlaceInstance(p, r, game.Players.LocalPlayer);
					end);
					wait(1);
					break;
				end;
			end;
		end;
	end;
	local function r()
		while true do
			pcall(function()
				Y();
				if l ~= "" then
					Y();
				end;
			end);
			wait(2);
		end;
	end;
	r();
end;
	local p = true;
	local P = game;
	local l = P.Workspace;
	local C = P.Lighting;
	local Y = l.Terrain;
	local function r(P)
		if P:IsA("Part") or P:IsA("Union") or P:IsA("CornerWedgePart") or P:IsA("TrussPart") or P:IsA("MeshPart") then
			P.Material = "Plastic";
			P.Reflectance = 0;
			if P:IsA("MeshPart") then
				P.TextureID = "";
			end;
		elseif (P:IsA("Decal") or P:IsA("Texture")) and p then
			P.Transparency = 1;
		elseif P:IsA("ParticleEmitter") or P:IsA("Trail") then
			P.Lifetime = NumberRange.new(0);
		elseif P:IsA("Explosion") then
			P.BlastPressure = 1;
			P.BlastRadius = 1;
		elseif P:IsA("Fire") or P:IsA("SpotLight") or P:IsA("Smoke") or P:IsA("Sparkles") then
			P.Enabled = false;
		end;
	end;

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local VirtualUser = game:GetService("VirtualUser")
local Lighting = game:GetService("Lighting")
local CollectionService = game:GetService("CollectionService")
local Stats = game:GetService("Stats")
local remotes = ReplicatedStorage:WaitForChild("Remotes")
local commf_ = remotes:WaitForChild("CommF_")
local _v1 = Players.LocalPlayer:WaitForChild("PlayerGui", 5)
local _v2 = _v1:WaitForChild("Main", 5)
local humanoid = Players.LocalPlayer.Character:WaitForChild("Humanoid")
local hrp = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local modules = ReplicatedStorage:WaitForChild("Modules")
local net = modules:WaitForChild("Net")
local rf/craft = net:WaitForChild("RF/Craft")
local fishreplicated = ReplicatedStorage:WaitForChild("FishReplicated")
local fishingrequest = fishreplicated:WaitForChild("FishingRequest")
local _v3 = require(fishreplicated.FishingClient.Config)
local rf/jobsremotefunction = net:WaitForChild("RF/JobsRemoteFunction")
local rf/jobtoolabilities = net:WaitForChild("RF/JobToolAbilities")
local _v4 = require(ReplicatedStorage.Util.GetWaterHeightAtLocation)
local _v5 = Players.LocalPlayer:Kick("Please use Delta Exploit or PC use volcano or Exploit paid!")
local playDlg = function() end
getgenv().Team = "Pirates"
local main = Players.LocalPlayer.PlayerGui:WaitForChild("Main")
local loading = main:WaitForChild("Loading")
local _v = wait(0)
local _v6 = game:IsLoaded()
local _v7 = ReplicatedStorage.Remotes.CommF_:InvokeServer(ReplicatedStorage.Remotes.CommF_, "SetTeam", "Pirates")
local _v8 = ReplicatedStorage.Remotes.CommF_:InvokeServer(ReplicatedStorage.Remotes.CommF_, "GetFruits", true)
local _v9 = ReplicatedStorage.Remotes.CommF_:InvokeServer(ReplicatedStorage.Remotes.CommF_, "GetFruits", false)
local code = {
    "LIGHTNINGABUSE",
    "1LOSTADMIN",
    "ADMINFIGHT",
    "NOMOREHACK",
    "BANEXPLOIT",
    "krazydares",
    "TRIPLEABUSE",
    "24NOADMIN",
    "REWARDFUN",
    "Chandler",
    "NEWTROLL",
    "KITT_RESET",
    "Magicbus",
    "Starcodeheo",
    "fudd10_v2",
    "Sub2UncleKizaru",
    "Fudd10",
    "Bignews",
    "SECRET_ADMIN",
    "SUB2GAMERROBOT_RESET1",
    "SUB2OFFICIALNOOBIE",
    "AXIORE",
    "BIGNEWS",
    "BLUXXY",
    "CHANDLER",
    "ENYU_IS_PRO",
    "FUDD10",
    "FUDD10_V2",
    "KITTGAMING",
    "MAGICBUS",
    "STARCODEHEO",
    "STRAWHATMAINE",
    "SUB2CAPTAINMAUI",
    "SUB2DAIGROCK",
    "SUB2FER999",
    "SUB2NOOBMASTER123",
    "SUB2UNCLEKIZARU",
    "TANTAIGAMING",
    "THEGREATACE",
    "WildDares",
    "BossBuild",
    "GetPranked",
    "FIGHT4FRUIT",
    "EARN_FRUITS"
}
local PosMsList = {
    ["Baking Staff"] = CFrame.new(-1932, 38, -12848),
    ["Cake Guard"] = CFrame.new(-2024, 38, -12026),
    ["Candy Rebel"] = CFrame.new(47, 61, -12889),
    ["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
    ["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
    ["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
    ["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
    ["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
    ["Dragon Crew Warrior"] = CFrame.new(7021.5043945313, 55.762702941895, -730.12908935547),
    ["Female Islander"] = CFrame.new(4692.7939453125, 797.97668457031, 858.84802246094),
    ["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
    ["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
    ["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
    Ghost = CFrame.new(5251, 5, 1111),
    ["Head Baker"] = CFrame.new(-1932, 38, -12848),
    ["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
    ["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
    ["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
    ["Living Zombie"] = CFrame.new(-10227, 421, 6161),
    ["Marine Commodore"] = CFrame.new(2401, 123, -7589),
    ["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
    ["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
    ["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
    ["Peanut President"] = CFrame.new(-2215, 159, -10474),
    ["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
    ["Pirate Millionaire"] = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625),
    ["Pistol Billionaire"] = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625),
    ["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
    ["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
    ["Sweet Thief"] = CFrame.new(116, 36, -12478),
    ["Venomous Assailant"] = CFrame.new(4902, 670, 39)
}
local EquipWeapon = function() end
local weaponSc = function() end
local _v10 = require(ReplicatedStorage.Effect.Container.Death)
local _v11 = hookfunction(_v10, function() end)
local guidemodule = ReplicatedStorage:WaitForChild("GuideModule")
local _v12 = require(guidemodule)
local _v13 = hookfunction(_v12.ChangeDisplayedNPC, function() end)
local _v14 = hookfunction(function() end, function() end)
local _v15 = hookfunction(function() end, function() end)
local Rock = workspace:FindFirstChild("Rocks")
local Rock = Rock
local _v17 = Rock:Destroy()
local _v18 = Lighting:FindFirstChild("LightingLayers")
local _v19 = _v18:FindFirstChild("DarkFog")
local _v20 = _v19:Destroy()

	l.DescendantAdded:Connect(function(p)
		r(p);
	end);
	print("FPS Booster activated!");
end;
local LH = false;
local eH = false;
local qH;
local VH = game:GetService("Players");
local kH = VH.LocalPlayer;
local fH = kH.Character:WaitForChild("Humanoid");
local function yH()
	return fH.RigType == Enum.HumanoidRigType.R15 and "R15" or "R6";
end;
local jH = Instance.new("Animation");
jH.AnimationId = yH() == "R15" and "rbxassetid://698251653" or "rbxassetid://72042024";
local function cH()
	while LH do
		if not qH then
			qH = fH:LoadAnimation(jH);
		end;
		qH:Play();
		qH:AdjustSpeed(1.5);
		qH.TimePosition = .3;
		task.wait(.15);
		if qH then
			qH:Stop();
			qH:Destroy();
			qH = nil;
		end;
	end;
end;
local function DH()
	local p = Instance.new("Part");
	p.Name = "WhiteBullet";
	p.BrickColor = BrickColor.new("White");
	p.Material = Enum.Material.Neon;
	p.Shape = Enum.PartType.Block;
	p.Size = Vector3.new(1, 1, 8);
	p.Anchored = true;
	p.CanCollide = false;
	p.CastShadow = false;
	local P = Instance.new("PointLight");
	P.Brightness = 5;
	P.Range = 15;
	P.Color = Color3.new(1, 1, 1);
	P.Parent = p;
	local l = Instance.new("Beam");
	l.Color = ColorSequence.new(Color3.new(1, 1, 1));
	l.Brightness = 3;
	l.Width0 = .5;
	l.Width1 = .5;
	l.Parent = p;
	local C = Instance.new("Attachment");
	C.Parent = p;
	local Y = Instance.new("Attachment");
	Y.Position = Vector3.new(0, 0, -4);
	Y.Parent = p;
	l.Attachment0 = C;
	l.Attachment1 = Y;
	return p;
end;
local function GH()
	while eH do
		local p = kH.Character;
		if p and p:FindFirstChild("HumanoidRootPart") then
			local P = p.HumanoidRootPart;
			local l = P.Position + P.CFrame.LookVector * 3;
			local C = P.CFrame.LookVector;
			local Y = DH();
			Y.Position = l;
			Y.CFrame = CFrame.lookAt(l, l + C);
			Y.Parent = workspace;
			local r = 120;
			local U = 0;
			local v = 600;
			(coroutine.wrap(function()
				while Y and (Y.Parent and (U < v and eH)) do
					local P = r * task.wait();
					Y.Position = Y.Position + C * P;
					U = U + P;
					local l = Y.Position;
					local v = C * 3;
					local u = RaycastParams.new();
					u.FilterDescendantsInstances = { p };
					u.FilterType = Enum.RaycastFilterType.Exclude;
					local d = workspace:Raycast(l, v, u);
					if d then
						local p = Instance.new("Part");
						p.BrickColor = BrickColor.new("White");
						p.Material = Enum.Material.Neon;
						p.Size = Vector3.new(3, 3, 3);
						p.Position = d.Position;
						p.Anchored = true;
						p.CanCollide = false;
						p.Parent = workspace;
						local P = TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
						local l = (game:GetService("TweenService")):Create(p, P, { Size = Vector3.new(8, 8, 8), Transparency = 1 });
						l:Play();
						task.delay(.6, function()
							if p then
								p:Destroy();
							end;
						end);
						Y:Destroy();
						break;
					end;
					task.wait();
				end;
				if Y and Y.Parent then
					Y:Destroy();
				end;
			end))();
		end;
		task.wait(.03);
	end;
end;
Library = (loadstring(game:HttpGet("https://pastefy.app/vgSGtrbP/raw")))();
Window = Library:CreateWindow({ Title = "Night Slayer Hub", Subtitle = "- Blox Fruit", Image = "rbxassetid://96779554580445" });
wait(1);
Library:Notify({ Title = "Night Slayer Hub", Description = "The UI automatically hides once executed.\nPress the button at the bottom-left of the screen to show the GUI.", Duration = 3 });
wait(0);
Webhook = Window:AddTab("Report And Ideas");
ReportIdeas = Webhook:AddLeftGroupbox("Report And Ideas");
local mH = game.Players.LocalPlayer;
local oH = game:GetService("HttpService");
local EH = nil;
local TH = "";
ReportIdeas:AddDropdown("ReportAndIdeasSelect", {
	Title = "Select Type",
	Values = { "Report", "Ideas" },
	Default = nil,
	Multi = false,
	Callback = function(p)
		EH = p;
	end,
});
ReportIdeas:AddInput("InputMessage", { Title = "Input Message", Placeholder = "Input Here", Callback = function(p)
		TH = p;
	end });
ReportIdeas:AddButton({ Title = "Send To Server Developer", Callback = function()
		if not EH then
			print("Please select a type first!");
			return;
		end;
		local p = os.date("%Y-%m-%d %H:%M:%S");
		local P = TH ~= "" and TH or "No message provided!";
		local l, C, Y;
		if EH == "Report" then
			l = T;
			C = 16711680;
			Y = "\240\159\154\168 Bug Report";
		else
			l = M;
			C = 8384863;
			Y = "\240\159\146\161 New Idea";
		end;
		local r = { username = "Night Slayer Hub BOT", avatar_url = "https://cdn.discordapp.com/attachments/...", embeds = { {
						title = Y,
						color = C,
						thumbnail = { url = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. (mH.UserId .. "&width=420&height=420&format=png") },
						fields = {
							{ name = "\240\159\145\164 User Name", value = "```" .. (mH.Name .. "```"), inline = true },
							{ name = "\240\159\134\148 User ID", value = "```" .. (mH.UserId .. "```"), inline = true },
							{ name = "\240\159\147\140 Type", value = "```" .. (EH .. "```"), inline = true },
							{ name = "\240\159\147\157 Message", value = "```" .. (P .. "```"), inline = false },
						},
						footer = { text = "Night Slayer Hub \226\128\162 " .. p, icon_url = "https://cdn.discordapp.com/attachments/..." },
						timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
					} } };
		local U, v = pcall(function()
				local p = syn and syn.request or request or http and http.request or http_request or fluxus and fluxus.request or Krnl and Krnl.request;
				if not p then
					error("No HTTP request function found!");
				end;
				return p({
					Url = l,
					Method = "POST",
					Headers = { ["Content-Type"] = "application/json" },
					Body = oH:JSONEncode(r),
				});
			end);
		if U then
			print("\226\156\133 Message sent successfully!");
		else
			print("\226\157\140 Failed to send: " .. tostring(v));
		end;
	end });
ShopBuy = Window:AddTab("Shop");
MiscShopBuy = ShopBuy:AddLeftGroupbox("Misc Shop");
code = {
		"LIGHTNINGABUSE",
		"1LOSTADMIN",
		"ADMINFIGHT",
		"NOMOREHACK",
		"BANEXPLOIT",
		"krazydares",
		"TRIPLEABUSE",
		"24NOADMIN",
		"REWARDFUN",
		"Chandler",
		"NEWTROLL",
		"KITT_RESET",
		"Magicbus",
		"Starcodeheo",
		"fudd10_v2",
		"Sub2UncleKizaru",
		"Fudd10",
		"Bignews",
		"SECRET_ADMIN",
		"SUB2GAMERROBOT_RESET1",
		"SUB2OFFICIALNOOBIE",
		"AXIORE",
		"BIGNEWS",
		"BLUXXY",
		"CHANDLER",
		"ENYU_IS_PRO",
		"FUDD10",
		"FUDD10_V2",
		"KITTGAMING",
		"MAGICBUS",
		"STARCODEHEO",
		"STRAWHATMAINE",
		"SUB2CAPTAINMAUI",
		"SUB2DAIGROCK",
		"SUB2FER999",
		"SUB2NOOBMASTER123",
		"SUB2UNCLEKIZARU",
		"TANTAIGAMING",
		"THEGREATACE",
		"WildDares",
		"BossBuild",
		"GetPranked",
		"FIGHT4FRUIT",
		"EARN_FRUITS",
	};
MiscShopBuy:AddButton({ Title = "Redeem Code", Callback = function()
		function RedeemCode(p)
			(game:GetService("ReplicatedStorage")).Remotes.Redeem:InvokeServer(p);
		end;
		local p = .5;
		for P, l in pairs(code) do
			spawn(function()
				RedeemCode(l);
				wait(p);
			end);
		end;
	end });
MiscShopBuy:AddButton({ Title = "Teleport Old World", Callback = function()
		s:InvokeServer("TravelMain");
	end });
MiscShopBuy:AddButton({ Title = "Teleport New World", Callback = function()
		s:InvokeServer("TravelDressrosa");
	end });
MiscShopBuy:AddButton({ Title = "Teleport Third Sea", Callback = function()
		s:InvokeServer("TravelZou");
	end });
MiscShopBuy:AddButton({ Title = "Buy Dual Flintlock", Description = "", Callback = function()
		lP.Remotes.CommF_:InvokeServer("BuyItem", "Dual Flintlock");
	end });
MiscShopBuy:AddButton({ Title = "Reroll Race", Callback = function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
	end });
MiscShopBuy:AddButton({ Title = "Reset Stats", Callback = function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
	end });
MiscShopBuy:AddButton({ Title = "Buy Ghoul Race", Callback = function()
		local p = { [1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4 };
		local P = { [1] = "Ectoplasm", [2] = "Change", [3] = 4 };
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(p));
		wait(.5);
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(P));
	end });
MiscShopBuy:AddButton({ Title = "Buy Cyborg Race", Callback = function()
		if not isBuying then
			isBuying = true;
			local p = { [1] = "CyborgTrainer", [2] = "Buy" };
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(p));
			wait(.5);
			isBuying = false;
		end;
	end });
FightingShop = ShopBuy:AddLeftGroupbox("Fighting Shop");
local gH = game:GetService("ReplicatedStorage");
local MH = gH.Remotes.CommF_;
FightingShop:AddToggle("BlackLegMeleeBuy", { Title = "Black Leg", Default = false, Callback = function(p)
		if p then
			local p = { "BuyBlackLeg" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("FishManMeleeBuy", { Title = "Fishman Karate", Default = false, Callback = function(p)
		if p then
			local p = { "BuyFishmanKarate" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("ElectroMeleeBuy", { Title = "Electro", Default = false, Callback = function(p)
		if p then
			local p = { "BuyElectro" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("DragonClawMeleeBuy", { Title = "Dragon Breath", Default = false, Callback = function(p)
		if p then
			local p = { "BlackbeardReward", "DragonClaw", "2" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("SuperHumanMeleeBuy", { Title = "SuperHuman", Default = false, Callback = function(p)
		if p then
			local p = { "BuySuperhuman" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("DeathStepMeleeBuy", { Title = "Death Step", Default = false, Callback = function(p)
		if p then
			local p = { "BuyDeathStep" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("SharkmanMeleeBuy", { Title = "Sharkman Karate", Default = false, Callback = function(p)
		if p then
			local p = { "BuySharkmanKarate" };
			(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(p));
		end;
	end });
FightingShop:AddToggle("ElectricClawMeleeBuy", { Title = "Electric Claw", Default = false, Callback = function(p)
		if p then
			MH:InvokeServer("BuyElectricClaw");
		end;
	end });
FightingShop:AddToggle("DragonTalonMeleeBuy", { Title = "Dragon Talon", Default = false, Callback = function(p)
		if p then
			MH:InvokeServer("BuyDragonTalon");
		end;
	end });
FightingShop:AddToggle("GodHumanMeleeBuy", { Title = "God Human", Default = false, Callback = function(p)
		if p then
			MH:InvokeServer("BuyGodhuman");
		end;
	end });
FightingShop:AddToggle("SanguineArt", { Title = "Sanguine Art", Default = false, Callback = function(p)
		if p then
			MH:InvokeServer("BuySanguineArt");
		end;
	end });
HakiShop = ShopBuy:AddLeftGroupbox("Ability Shop");
HakiShop:AddButton({ Title = "Skyjump [ $10,000 Beli ]", Callback = function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
	end });
HakiShop:AddButton({ Title = "Buso Haki [ $25,000 Beli ]", Callback = function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
	end });
HakiShop:AddButton({ Title = "Observation haki [ $750,000 Beli ]", Callback = function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk", "Buy");
	end });
HakiShop:AddButton({ Title = "Soru [ $100,000 Beli ]", Callback = function()
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end });
StatSer = Window:AddTab("Status And Server");
Status = StatSer:AddLeftGroupbox("Status");
Time = Status:AddLabel("Time Zone: ");
function UpdateOS()
	local p = os.date("*t");
	local P = p.hour % 24;
	local l = P < 12 and "AM" or "PM";
	local C = string.format("%02i:%02i:%02i %s", (P - 1) % 12 + 1, p.min, p.sec, l);
	local Y = string.format("%02d/%02d/%04d", p.day, p.month, p.year);
	local r = game:GetService("LocalizationService");
	local U = (game:GetService("Players")).LocalPlayer;
	local v;
	if (getgenv()).countryRegionCode then
		v = (getgenv()).countryRegionCode;
	else
		local p, P = pcall(function()
				return r:GetCountryRegionForPlayerAsync(U);
			end);
		if p then
			(getgenv()).countryRegionCode = P;
			v = P;
		else
			(getgenv()).countryRegionCode = "Unknown";
			v = "Unknown";
		end;
	end;
	Time:SetText(Y .. ("  - " .. (C .. (" [ " .. (v .. " ]")))));
end;
spawn(function()
	while true do
		UpdateOS();
		wait(1);
	end;
end);
ServerTime = Status:AddLabel("Time: ");
function UpdateServerTime()
	local p = math.floor(workspace.DistributedGameTime + .5);
	local P = math.floor(p / 3600) % 24;
	local l = math.floor(p / 60) % 60;
	local C = p % 60;
	ServerTime:SetText(string.format("| Hour: %02d | Minute: %02d | Second: %02d |", P, l, C));
end;
task.spawn(function()
	while task.wait(1) do
		pcall(UpdateServerTime);
	end;
end);
Miragecheck = Status:AddLabel("Mirage Island:  ");
lastMirageStatus = "";
spawn(function()
	pcall(function()
		while true do
			wait(1);
			local p = game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") ~= nil;
			local P = p and "\226\156\133" or "\226\157\140";
			if P ~= lastMirageStatus then
				Miragecheck:SetText("Mirage Island: " .. P);
				lastMirageStatus = P;
			end;
		end;
	end);
end);
Kitsunecheck = Status:AddLabel("Kitsune Island: ");
spawn(function()
	lastKitsuneStatus = "";
	while task.wait(1) do
		pcall(function()
			local p = (game:GetService("Workspace")).Map:FindFirstChild("KitsuneIsland");
			local P = p and "\226\156\133" or "\226\157\140";
			if P ~= lastKitsuneStatus then
				Kitsunecheck:SetText("Kitsune Island: " .. P);
				lastKitsuneStatus = P;
			end;
		end);
	end;
end);
CPrehistoriccheck = Status:AddLabel("Prehistoric Island: ");
task.spawn(function()
	lastPrehistoricStatus = "";
	while task.wait(1) do
		pcall(function()
			local p = game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island");
			local P = p and "\226\156\133" or "\226\157\140";
			if P ~= lastPrehistoricStatus then
				CPrehistoriccheck:SetText("Prehistoric Island: " .. P);
				lastPrehistoricStatus = P;
			end;
		end);
	end;
end);
FrozenIsland = Status:AddLabel("Frozen Dimension: ");
spawn(function()
	lastFrozenStatus = "";
	while wait(1) do
		pcall(function()
			local p = game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension");
			local P = p and "\226\156\133" or "\226\157\140";
			if P ~= lastFrozenStatus then
				FrozenIsland:SetText("Frozen Dimension: " .. P);
				lastFrozenStatus = P;
			end;
		end);
	end;
end);
MobCakePrince = Status:AddLabel("Dimension Killed: ");
spawn(function()
	while wait(1) do
		pcall(function()
			local p = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner");
			local P = string.len(p) < 86 and "Cake Prince: \226\156\133" or "Kill: " .. string.sub(p, 39, 41);
			MobCakePrince:SetText(P);
		end);
	end;
end);
CheckRip = Status:AddLabel("Rip_Indra: ");
spawn(function()
	lastRipStatus = "";
	while wait(1) do
		pcall(function()
			local p = (game:GetService("ReplicatedStorage")):FindFirstChild("rip_indra True Form") or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra");
			local P = p and "\226\156\133" or "\226\157\140";
			if P ~= lastRipStatus then
				CheckRip:SetText("Rip_Indra: " .. P);
				lastRipStatus = P;
			end;
		end);
	end;
end);
CheckDoughKing = Status:AddLabel("Dough King: ");
spawn(function()
	lastDoughKingStatus = "";
	while wait(1) do
		pcall(function()
			local p = (game:GetService("ReplicatedStorage")):FindFirstChild("Dough King") or (game:GetService("Workspace")).Enemies:FindFirstChild("Dough King");
			local P = p and "\226\156\133" or "\226\157\140";
			if P ~= lastDoughKingStatus then
				CheckDoughKing:SetText("Dough King: " .. P);
				lastDoughKingStatus = P;
			end;
		end);
	end;
end);
EliteHunter = Status:AddLabel("Elite Hunter: ");
spawn(function()
	lastEliteStatus = "";
	while wait(1) do
		pcall(function()
			local p = (game:GetService("ReplicatedStorage")):FindFirstChild("Diablo") or (game:GetService("ReplicatedStorage")):FindFirstChild("Deandre") or (game:GetService("ReplicatedStorage")):FindFirstChild("Urban") or (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban");
			local P = p and "\226\156\133" or "\226\157\140";
			local l = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress");
			if P ~= lastEliteStatus then
				EliteHunter:SetText("Elite Hunter: " .. (P .. (" | Killed: " .. l)));
				lastEliteStatus = P;
			end;
		end);
	end;
end);
FM = Status:AddLabel("Full Moon: ");
task.spawn(function()
	while task.wait(1) do
		pcall(function()
			local p = (game:GetService("Lighting")).Sky.MoonTextureId;
			local P;
			if p == "http://www.roblox.com/asset/?id=9709149431" then
				P = "Moon: 5/5";
			elseif p == "http://www.roblox.com/asset/?id=9709149052" then
				P = "Moon: 4/5";
			elseif p == "http://www.roblox.com/asset/?id=9709143733" then
				P = "Moon: 3/5";
			elseif p == "http://www.roblox.com/asset/?id=9709150401" then
				P = "Moon: 2/5";
			elseif p == "http://www.roblox.com/asset/?id=9709149680" then
				P = "Moon: 1/5";
			else
				P = "Moon: 0/5";
			end;
			FM:SetText(P);
		end);
	end;
end);
LegendarySword = Status:AddLabel("Legendary Sword: ");
spawn(function()
	while wait(1) do
		pcall(function()
			local p = "Legendary Sword: \226\157\140";
			if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
				p = "Legendary Sword: Shisui";
			elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") then
				p = "Legendary Sword: Wando";
			elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") then
				p = "Legendary Sword: Saddi";
			end;
			LegendarySword:SetText(p);
		end);
	end;
end);
Server = StatSer:AddLeftGroupbox("Server");
JobInput = Server:AddInput("Input", { Title = "Input Your JobID Here", Placeholder = "Input Here", Callback = function(p)
			(getgenv()).Job = p;
		end });
JoinToggle = false;
Server:AddToggle("Toggle", { Title = "Spam Join", Default = false, Callback = function(p)
		JoinToggle = p;
		if p then
			spawn(function()
				lastTeleportTime = 0;
				teleportCooldown = 1;
				while JoinToggle and task.wait() do
					if tick() - lastTeleportTime >= teleportCooldown and (getgenv()).Job then
						lastTeleportTime = tick();
						pcall(function()
							(game:GetService("TeleportService")):TeleportToPlaceInstance(game.placeId, (getgenv()).Job, game.Players.LocalPlayer);
						end);
					end;
				end;
			end);
		end;
	end });
lastTeleportTime = 0;
teleportCooldown = 5;
lastCopyTime = 0;
copyCooldown = 2;
lastRejoinTime = 0;
rejoinCooldown = 3;
Server:AddButton({ Title = "Join Server", Callback = function()
		if tick() - lastTeleportTime >= teleportCooldown then
			if (getgenv()).Job and (getgenv()).Job ~= "" then
				lastTeleportTime = tick();
				pcall(function()
					(game:GetService("TeleportService")):TeleportToPlaceInstance(game.PlaceId, (getgenv()).Job, game.Players.LocalPlayer);
				end);
			else
				print("Please enter JobID first!");
			end;
		else
			print("Please wait " .. (math.ceil(teleportCooldown - (tick() - lastTeleportTime)) .. " seconds!"));
		end;
	end });
Server:AddButton({ Title = "Copy JobId", Callback = function()
		if tick() - lastCopyTime >= copyCooldown then
			lastCopyTime = tick();
			pcall(function()
				if setclipboard then
					setclipboard(tostring(game.JobId));
					print("JobId Copied to Clipboard!");
				else
					print("Clipboard function not available!");
				end;
			end);
		else
			print("Please try again in " .. (math.ceil(copyCooldown - (tick() - lastCopyTime)) .. " seconds!"));
		end;
	end });
Server:AddButton({ Title = "Rejoin Server", Callback = function()
		if tick() - lastRejoinTime >= rejoinCooldown then
			lastRejoinTime = tick();
			pcall(function()
				(game:GetService("TeleportService")):Teleport(game.PlaceId, game.Players.LocalPlayer);
			end);
		else
			print("Please wait " .. (math.ceil(rejoinCooldown - (tick() - lastRejoinTime)) .. " seconds!"));
		end;
	end });
Server:AddButton({ Title = "Hop Server", Callback = function()
		Hop();
	end });
function Hop()
	local p = {};
	local P = "";
	local l = (os.date("!*t")).hour;
	local C = false;
	function TPReturner()
		local C;
		if P == "" then
			C = (game:GetService("HttpService")):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. (game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")));
		else
			C = (game:GetService("HttpService")):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. (game.PlaceId .. ("/servers/Public?sortOrder=Asc&limit=100&cursor=" .. P))));
		end;
		local Y = "";
		if C.nextPageCursor and (C.nextPageCursor ~= "null" and C.nextPageCursor ~= nil) then
			P = C.nextPageCursor;
		end;
		local r = 0;
		for P, C in pairs(C.data) do
			local U = true;
			Y = tostring(C.id);
			if tonumber(C.maxPlayers) > tonumber(C.playing) then
				for P, C in pairs(p) do
					if r ~= 0 then
						if Y == tostring(C) then
							U = false;
						end;
					else
						if tonumber(l) ~= tonumber(C) then
							local P = pcall(function()
									p = {};
									table.insert(p, l);
								end);
						end;
					end;
					r = r + 1;
				end;
				if U == true then
					table.insert(p, Y);
					wait(.1);
					pcall(function()
						(game:GetService("TeleportService")):TeleportToPlaceInstance(game.PlaceId, Y, game.Players.LocalPlayer);
					end);
					wait(1);
					break;
				end;
			end;
		end;
	end;
	function Teleport()
		while true do
			pcall(function()
				TPReturner();
				if P ~= "" then
					TPReturner();
				end;
			end);
			wait(2);
		end;
	end;
	Teleport();
end;
Server:AddButton({ Title = "Hop Server Less Player", Callback = function()
		local p = "https://games.roblox.com/v1/games/";
		local P = game:GetService("HttpService");
		local l = game:GetService("TeleportService");
		local C = game.Players.LocalPlayer;
		local function Y(l)
			return P:JSONDecode(game:HttpGet(p .. (game.PlaceId .. ("/servers/Public?sortOrder=Asc&limit=100" .. (l and "&cursor=" .. l or "")))));
		end;
		local r, U;
		repeat
			local p = Y(U);
			r = p.data[1];
			U = p.nextPageCursor;
		until r;
		l:TeleportToPlaceInstance(game.PlaceId, r.id, C);
	end });
kH = Window:AddTab("LocalPlayer");
L = kH:AddLeftGroupbox("Local Player");
L:AddButton({ Title = "Open Devil Fruit Shop", Description = "", Callback = function()
		playDlg("FruitShop");
	end });
L:AddButton({ Title = "Open Devil Fruit Shop Mirage", Description = "", Callback = function()
		playDlg("FruitShop2");
	end });
L:AddButton({ Title = "Open Title", Description = "", Callback = function()
		local p = { "getTitles" };
		local P, l = pcall(function()
				return (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(p));
			end);
		if P then
			game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true;
		end;
	end });
L:AddButton({ Title = "Boost FPS", Callback = function()
		local p = true;
		local P = game;
		local l = P.Workspace;
		local C = P.Lighting;
		local Y = l.Terrain;
		Y.WaterWaveSize = 0;
		Y.WaterWaveSpeed = 0;
		Y.WaterReflectance = 0;
		Y.WaterTransparency = 0;
		C.GlobalShadows = false;
		C.FogEnd = 9000000000.0;
		C.Brightness = 0;
		(settings()).Rendering.QualityLevel = "Level01";
		for P, l in pairs(P:GetDescendants()) do
			if l:IsA("Part") or l:IsA("Union") or l:IsA("CornerWedgePart") or l:IsA("TrussPart") then
				l.Material = "Plastic";
				l.Reflectance = 0;
			elseif l:IsA("Decal") or l:IsA("Texture") and p then
				l.Transparency = 1;
			elseif l:IsA("ParticleEmitter") or l:IsA("Trail") then
				l.Lifetime = NumberRange.new(0);
			elseif l:IsA("Explosion") then
				l.BlastPressure = 1;
				l.BlastRadius = 1;
			elseif l:IsA("Fire") or l:IsA("SpotLight") or l:IsA("Smoke") or l:IsA("Sparkles") then
				l.Enabled = false;
			elseif l:IsA("MeshPart") then
				l.Material = "Plastic";
				l.Reflectance = 0;
				l.TextureID = 10385902758728957;
			end;
		end;
		for p, P in pairs(C:GetChildren()) do
			if P:IsA("BlurEffect") or P:IsA("SunRaysEffect") or P:IsA("ColorCorrectionEffect") or P:IsA("BloomEffect") or P:IsA("DepthOfFieldEffect") then
				P.Enabled = false;
			end;
		end;
	end });
L:AddButton({ Title = "Turn on Fast Mode", Callback = function()
		for p, P in pairs(workspace:GetDescendants()) do
			if table.find({
				"Part",
				"SpawnLocation",
				"WedgePart",
				"Terrain",
				"MeshPart",
			}, P.ClassName) then
				P.Material = Enum.Material.Plastic;
			end;
		end;
	end });
local aH = true;
local nH = 2;
L:AddButton({ Title = "Change Team To Pirates", Callback = function()
		if aH then
			aH = false;
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
			end);
			task.delay(nH, function()
				aH = true;
			end);
		end;
	end });
L:AddButton({ Title = "Change Team To Marines", Callback = function()
		if aH then
			aH = false;
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Marines");
			end);
			task.delay(nH, function()
				aH = true;
			end);
		end;
	end });
L:AddToggle("AutoSpawnCPToggle", { Title = "Auto Summon Cake Prince", Default = true, Callback = function(p)
		_G.AutoSpawnCP = p;
	end });
L:AddToggle("NoCLip", { Title = "No Clip", Default = false, Callback = function(p)
		(getgenv()).NoClip = p;
	end });
spawn(function()
	pcall(function()
		(game:GetService("RunService")).Stepped:Connect(function()
			if (getgenv()).NoClip then
				for p, P in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if P:IsA("BasePart") or P:IsA("Part") then
						P.CanCollide = false;
					end;
				end;
			end;
		end);
	end);
end);
L:AddToggle("RemoveDamageTextToggle", { Title = "Remove Damage Text", Default = true, Callback = function(p)
		if (game:GetService("ReplicatedStorage")).Assets.GUI:FindFirstChild("DamageCounter") then
			(game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = not p;
		end;
	end });
L:AddToggle("RemoveNotificationToggle", { Title = "Remove Notification", Default = false, Callback = function(p)
		game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not p;
	end });
spawn(function()
	local p = 0;
	local P = 1;
	while task.wait() do
		if _G.AutoSpawnCP and tick() - p >= P then
			p = tick();
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
		end;
	end;
end);
L:AddDropdown("StatsDropdown", {
	Title = "Select Stats",
	Values = {
		"Melee",
		"Sword",
		"Gun",
		"Devil Fruit",
		"Defense",
	},
	Default = nil,
	Callback = function(p)
		_G.SelectedStat = p;
	end,
});
L:AddSlider({
	Title = "Point Stats",
	Min = 0,
	Max = 6736,
	Default = 1,
	Callback = function(p)
		_G.pSats = p;
	end,
});
L:AddToggle("AutoStatsToggle", { Title = "Auto Stats", Default = false, Callback = function(p)
		_G.Auto_Stats = p;
	end });
task.spawn(function()
	while task.wait(sP) do
		if _G.Auto_Stats then
			pcall(function()
				if _G.SelectedStat == "Melee" then
					statsSetings("Melee", _G.pSats);
				elseif _G.SelectedStat == "Sword" then
					statsSetings("Sword", _G.pSats);
				elseif _G.SelectedStat == "Gun" then
					statsSetings("Gun", _G.pSats);
				elseif _G.SelectedStat == "Devil Fruit" then
					statsSetings("Devil", _G.pSats);
				elseif _G.SelectedStat == "Defense" then
					statsSetings("Defense", _G.pSats);
				end;
			end);
		end;
	end;
end);
Location = {};
for p, P in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
	table.insert(Location, P.Name);
end;
L:AddDropdown("TeleportDropdown", {
	Title = "Select Island",
	Values = Location,
	Default = nil,
	Callback = function(p)
		_G.Island = p;
	end,
});
L:AddToggle("TeleportToggle", { Title = "Teleport to Island", Default = false, Callback = function(p)
		_G.Teleport = p;
		if p then
			for p, P in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
				if P.Name == _G.Island then
					repeat
						wait();
						_tp(P.CFrame * CFrame.new(0, 30, 0));
					until not _G.Teleport or x.CFrame == P.CFrame;
				end;
			end;
		end;
	end });
Settings = Window:AddTab("Setting Farm");
SetAutoFarm = Settings:AddLeftGroupbox("Setting Farm");
SetAutoFarm:AddDropdown("SelectWeapon", {
	Title = "Select Weapon",
	Values = { "Melee", "Sword", "Blox Fruit" },
	Default = nil,
	Callback = function(p)
		_G.ChooseWP = p;
	end,
});
spawn(function()
	while wait(sP) do
		pcall(function()
			if _G.ChooseWP == "Melee" then
				for p, P in pairs(Q.Backpack:GetChildren()) do
					if P.ToolTip == "Melee" then
						if Q.Backpack:FindFirstChild(tostring(P.Name)) then
							_G.SelectWeapon = P.Name;
						end;
					end;
				end;
			elseif _G.ChooseWP == "Sword" then
				for p, P in pairs(Q.Backpack:GetChildren()) do
					if P.ToolTip == "Sword" then
						if Q.Backpack:FindFirstChild(tostring(P.Name)) then
							_G.SelectWeapon = P.Name;
						end;
					end;
				end;
			elseif _G.ChooseWP == "Blox Fruit" then
				for p, P in pairs(Q.Backpack:GetChildren()) do
					if P.ToolTip == "Blox Fruit" then
						if Q.Backpack:FindFirstChild(tostring(P.Name)) then
							_G.SelectWeapon = P.Name;
						end;
					end;
				end;
			end;
		end);
	end;
end);
SetAutoFarm:AddToggle("BringMob", { Title = "Bring Mob", Default = false, Callback = function(p)
		_B = p;
	end });
SetAutoFarm:AddToggle("ObservationOpen", { Title = "Teleport Y if low hearth", Default = false, Callback = function(p)
		_G.Safemode = p;
	end });
spawn(function()
	while task.wait(sP) do
		pcall(function()
			if _G.Safemode then
				local p = (Q.Character.Humanoid.Health / Q.Character.Humanoid.MaxHealth) * 100;
				if p < eP then
					uP = true;
					_tp(x.CFrame * CFrame.new(0, 500, 0));
				else
					uP = false;
				end;
			end;
		end);
	end;
end);
SetAutoFarm:AddToggle("ObservationOpen", { Title = "Auto Open Observation", Default = false, Callback = function(p)
		(getgenv()).Observation = p;
	end });
spawn(function()
	while wait() do
		if (getgenv()).Observation then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommE:FireServer("Ken", true);
			end);
		end;
	end;
end);
SetAutoFarm:AddToggle("BusoOpen", { Title = "Auto Open Buso", Default = false, Callback = function(p)
		(getgenv()).AutoHakiBuso = p;
	end });
spawn(function()
	while wait() do
		if (getgenv()).AutoHakiBuso then
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local p = { [1] = "Buso" };
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(p));
			end;
		end;
	end;
end);
SetAutoFarm:AddToggle("RaceV3", { Title = "Auto Open Race V3", Default = false, Callback = function(p)
		(getgenv()).AutoTurnOnV3 = p;
	end });
spawn(function()
	pcall(function()
		while wait() do
			if (getgenv()).AutoTurnOnV3 then
				(game:GetService("ReplicatedStorage")).Remotes.CommE:FireServer("ActivateAbility");
			end;
		end;
	end);
end);
SetAutoFarm:AddToggle("RaceV4", { Title = "Auto Open Race V4", Default = false, Callback = function(p)
		(getgenv()).AutoTurnOnV4 = p;
	end });
spawn(function()
	while wait() do
		if (getgenv()).AutoTurnOnV4 then
			local p = game.Players.LocalPlayer.Character;
			if p:FindFirstChild("RaceEnergy") and (p.RaceEnergy.Value >= 1 and not p.RaceTransformed.Value) then
				local p = game:GetService("VirtualInputManager");
				p:SendKeyEvent(true, "Y", false, game);
				task.wait();
				p:SendKeyEvent(false, "Y", false, game);
			end;
		end;
	end;
end);
SetAutoFarm:AddToggle("AntiAFK", { Title = "Anti AFK", Default = false, Callback = function(p)
		_G.AntiAFK = p;
	end });
SetAutoFarm:AddToggle("SpinPosition", { Title = "Spin Position", Default = false, Callback = function(p)
		RandomCFrame = p;
	end });
SkillsHold = Window:AddTab("Hold and Select Skill");
Skills = SkillsHold:AddLeftGroupbox("Select Skills");
Skills:AddDropdown("MeleeSkills", {
	Title = "Select Skill Melee",
	Values = { "Z", "X", "C" },
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.MeleeSkills = p;
	end,
});
Skills:AddDropdown("SwordSkills", {
	Title = "Select Skill Sword",
	Values = { "Z", "X" },
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.SwordSkills = p;
	end,
});
Skills:AddDropdown("GunSkills", {
	Title = "Select Skill Gun",
	Values = { "Z", "X" },
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.GunSkills = p;
	end,
});
Skills:AddDropdown("FruitsSkills", {
	Title = "Select Skill Blox Fruit",
	Values = {
		"Z",
		"X",
		"C",
		"V",
		"F",
	},
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.BfSkills = p;
	end,
});
HoldSkills = SkillsHold:AddLeftGroupbox("Hold Skills");
KillAtSlider = HoldSkills:AddSlider({
		Title = "Kill At % Health",
		Description = "Use skills when enemy health below this percentage",
		Min = 10,
		Max = 90,
		Default = 70,
		Rounding = 0,
		Callback = function(p)
			(getgenv()).Kill_At = p;
		end,
	});
HoldSkillZSlider = HoldSkills:AddSlider({
		Title = "Hold Skill Z (seconds)",
		Description = "How long to hold Z key",
		Min = .1,
		Max = 2,
		Default = .1,
		Rounding = 1,
		Callback = function(p)
			(getgenv()).HoldSkillZ = p;
		end,
	});
HoldSkillXSlider = HoldSkills:AddSlider({
		Title = "Hold Skill X (seconds)",
		Description = "How long to hold X key",
		Min = .1,
		Max = 2,
		Default = .1,
		Rounding = 1,
		Callback = function(p)
			(getgenv()).HoldSkillX = p;
		end,
	});
HoldSkillCSlider = HoldSkills:AddSlider({
		Title = "Hold Skill C (seconds)",
		Description = "How long to hold C key",
		Min = .1,
		Max = 2,
		Default = .1,
		Rounding = 1,
		Callback = function(p)
			(getgenv()).HoldSkillC = p;
		end,
	});
AutoModeFarm = Window:AddTab("Farming");
SelectMethodFarm = AutoModeFarm:AddLeftGroupbox("Setting Farm");
SelectMethodFarm:AddDropdown("SelectMethodFarm", {
	Title = "Select Method Farm",
	Values = {
		"Level Farm",
		"Farm Bones",
		"Farm Katakuri",
		"Farm Tyrant of the Skies",
		"Aura Farm",
	},
	Default = nil,
	Callback = function(p)
		_G.MethodSelect = p;
	end,
});
SelectMethodFarm:AddSlider({
	Title = "Distance Farm Aura",
	Min = 0,
	Max = 500,
	Default = 300,
	Callback = function(p)
		_G.Safemode = p;
	end,
});
SelectMethodFarm:AddToggle("HopKataV1", { Title = "Hop Find Katakuri", Default = false, Callback = function(p)
		_G.Auto_Cake_Prince = p;
	end });
spawn(function()
	while wait() do
		if _G.Auto_Cake_Prince then
			pcall(function()
				local p = game.Players.LocalPlayer;
				local P = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
				local l = workspace.Enemies;
				local C = workspace.Map.CakeLoaf.BigMirror;
				if not P then
					return;
				end;
				local Y = C.Other.Transparency == 0 or l:FindFirstChild("Cake Prince");
				if Y then
					local p = GetConnectionEnemies("Cake Prince");
					if p then
						repeat
							wait();
							Attack.Kill2(p, _G.Auto_Cake_Prince);
						until not _G.Auto_Cake_Prince or not p.Parent or p.Humanoid.Health <= 0;
					else
						if C.Other.Transparency == 0 and ((CFrame.new(-1990.67, 4533, -14973.67)).Position - P.Position).Magnitude >= 2000 then
							_tp(CFrame.new(-2151.82, 149.32, -12404.91));
						end;
					end;
				else
					Hop();
					wait(5);
				end;
			end);
		end;
	end;
end);
SelectMethodFarm:AddToggle("AcceptQuest", { Title = "Accept Quest [Katakuri/Bone/Tyrant]", Default = false, Callback = function(p)
		_G.AcceptQuestC = p;
	end });
SelectMethodFarm:AddToggle("StartFarm", { Title = "Start Farm", Default = false, Callback = function(p)
		_G.StartFarm = p;
	end });
local SH = game.Players.LocalPlayer;
local FH = game:GetService("ReplicatedStorage");
local hH = Vector3.new(-16267.8, 25.4, 1373.2);
local JH = false;
local KH = SH.Character and SH.Character:FindFirstChild("HumanoidRootPart");
local function BH()
	if not SH or not SH:FindFirstChild("Data") then
		return false;
	end;
	local p = SH.Data;
	local P = p:FindFirstChild("SpawnPoint") or p:FindFirstChild("CurrentIsland");
	if not P then
		return false;
	end;
	local l = (tostring(P.Value)):lower();
	return string.find(l, "submerged") or string.find(l, "underwater");
end;
SH.CharacterAdded:Connect(function(p)
	KH = p:WaitForChild("HumanoidRootPart", 10);
	task.defer(function()
		task.wait(2);
		if KH then
			JH = BH();
		end;
	end);
end);
spawn(function()
	while task.wait(1) do
		if _G.StartFarm and _G.MethodSelect == "Level Farm" then
			pcall(function()
				if not KH or not KH.Parent then
					KH = SH.Character and SH.Character:FindFirstChild("HumanoidRootPart");
					if not KH then
						return;
					end;
				end;
				local p = SH.Data.Level.Value;
				JH = BH();
				if p >= 2600 and not JH then
					if not BH() then
						repeat
							task.wait();
							_tp(CFrame.new(hH));
						until not _G.StartFarm or (KH.Position - hH).Magnitude <= 80;
						pcall(function()
							(game:GetService("ReplicatedStorage")).Modules.Net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland");
						end);
						task.wait(1);
					end;
				end;
				local P = SH.PlayerGui:FindFirstChild("Main") and SH.PlayerGui.Main:FindFirstChild("Quest");
				if not P or not P.Container or not P.Container:FindFirstChild("QuestTitle") then
					return;
				end;
				local l = P.Container.QuestTitle.Title.Text;
				local C = QuestNeta();
				if not C then
					return;
				end;
				if not string.find(l, C[5]) then
					FH.Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if not SH.PlayerGui.Main.Quest.Visible then
					local p = C[6];
					local P = C[3];
					local l = C[2];
					if _G.DelayQuest then
						task.wait(20);
					end;
					if not _G.RemoteQuest then
						for C = 1, 10, 1 do
							_tp(p);
							task.wait(.25);
							if KH and (KH.Position - p.Position).Magnitude <= 100 then
								pcall(function()
									FH.Remotes.CommF_:InvokeServer("StartQuest", P, l);
								end);
								break;
							end;
						end;
					else
						for p = 1, 3, 1 do
							if SH.PlayerGui.Main.Quest.Visible then
								break;
							end;
							pcall(function()
								FH.Remotes.CommF_:InvokeServer("StartQuest", P, l);
							end);
							task.wait(.3);
						end;
					end;
				elseif SH.PlayerGui.Main.Quest.Visible then
					local p = C[1];
					if workspace.Enemies:FindFirstChild(p) then
						for P, Y in pairs(workspace.Enemies:GetChildren()) do
							if Attack.Alive(Y) and Y.Name == p then
								if string.find(l, C[5]) then
									repeat
										task.wait();
										Attack.Kill(Y, _G.StartFarm);
									until not _G.StartFarm or Y.Humanoid.Health <= 0 or not Y.Parent or not SH.PlayerGui.Main.Quest.Visible;
								else
									FH.Remotes.CommF_:InvokeServer("AbandonQuest");
								end;
							end;
						end;
					else
						_tp(C[4]);
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while task.wait(1) do
		if _G.StartFarm and _G.MethodSelect == "Farm Bones" then
			pcall(function()
				local p = game.Players.LocalPlayer;
				local P = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
				local l = p.PlayerGui:FindFirstChild("Main") and p.PlayerGui.Main:FindFirstChild("Quest");
				local C = {
						"Reborn Skeleton",
						"Living Zombie",
						"Demonic Soul",
						"Posessed Mummy",
					};
				if not P then
					return;
				end;
				local Y = GetConnectionEnemies(C);
				if Y then
					if _G.AcceptQuestC and (l and not l.Visible) then
						local p = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
						_tp(p);
						local l = 0;
						while l < 50 and (p.Position - P.Position).Magnitude > 50 do
							task.wait(.2);
							l = l + 1;
						end;
						local C = math.random(1, 4);
						local Y = {
								[1] = { "StartQuest", "HauntedQuest2", 2 },
								[2] = { "StartQuest", "HauntedQuest2", 1 },
								[3] = { "StartQuest", "HauntedQuest1", 1 },
								[4] = { "StartQuest", "HauntedQuest1", 2 },
							};
						pcall(function()
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(Y[C]));
						end);
					end;
					repeat
						task.wait();
						Attack.Kill(Y, _G.StartFarm);
					until not _G.StartFarm or not Y or not Y.Parent or Y.Humanoid and Y.Humanoid.Health <= 0 or _G.AcceptQuestC and (l and not l.Visible);
				else
					_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125));
				end;
			end);
		end;
	end;
end);
spawn(function()
	while task.wait(1) do
		if _G.StartFarm and _G.MethodSelect == "Farm Katakuri" then
			pcall(function()
				local p = game.Players.LocalPlayer;
				local P = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
				local l = p.PlayerGui:FindFirstChild("Main") and p.PlayerGui.Main:FindFirstChild("Quest");
				local C = workspace.Enemies;
				local Y = workspace.Map.CakeLoaf.BigMirror;
				if not P then
					return;
				end;
				if not Y:FindFirstChild("Other") then
					_tp(CFrame.new(-2077, 252, -12373));
				end;
				if Y.Other.Transparency == 0 or C:FindFirstChild("Cake Prince") then
					local p = GetConnectionEnemies("Cake Prince");
					if p then
						repeat
							wait();
							Attack.Kill2(p, _G.StartFarm);
						until not _G.StartFarm or not p.Parent or p.Humanoid.Health <= 0;
					else
						if Y.Other.Transparency == 0 and ((CFrame.new(-1990.67, 4533, -14973.67)).Position - P.Position).Magnitude >= 2000 then
							_tp(CFrame.new(-2151.82, 149.32, -12404.91));
						end;
					end;
				else
					local p = {
							"Cookie Crafter",
							"Cake Guard",
							"Baking Staff",
							"Head Baker",
						};
					local C = GetConnectionEnemies(p);
					if C then
						if _G.AcceptQuestC and (l and not l.Visible) then
							local p = CFrame.new(-1927.92, 37.8, -12842.54);
							_tp(p);
							local l = 0;
							while l < 50 and (p.Position - P.Position).Magnitude > 50 do
								wait(.2);
								l = l + 1;
							end;
							local C = math.random(1, 4);
							local Y = {
									[1] = { "StartQuest", "CakeQuest2", 2 },
									[2] = { "StartQuest", "CakeQuest2", 1 },
									[3] = { "StartQuest", "CakeQuest1", 1 },
									[4] = { "StartQuest", "CakeQuest1", 2 },
								};
							pcall(function()
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(Y[C]));
							end);
						end;
						repeat
							wait();
							Attack.Kill(C, _G.StartFarm);
						until not _G.StartFarm or not C or not C.Parent or C.Humanoid and C.Humanoid.Health <= 0 or Y.Other.Transparency == 0 or _G.AcceptQuestC and (l and not l.Visible);
					else
						_tp(CFrame.new(-2077, 252, -12373));
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while task.wait(1) do
		if _G.StartFarm and _G.MethodSelect == "Farm Tyrant of the Skies" then
			pcall(function()
				local p = game.Players.LocalPlayer;
				if not (p and p.Character) then
					return;
				end;
				local P = p.Character:FindFirstChild("HumanoidRootPart");
				if not P then
					return;
				end;
				local l = workspace:FindFirstChild("Enemies");
				local C = Vector3.new(-16268.287, 152.616, 1390.773);
				if (P.Position - C).Magnitude > 5 then
					if _tp then
						pcall(_tp, CFrame.new(C));
					else
						pcall(function()
							p.Character.HumanoidRootPart.CFrame = CFrame.new(C);
						end);
					end;
					local P = 0;
					repeat
						wait();
						P = P + 1;
					until not _G.StartFarm or p.Character and (p.Character:FindFirstChild("HumanoidRootPart") and (p.Character.HumanoidRootPart.Position - C).Magnitude <= 5) or P > 100;
				end;
				local Y = l and l:FindFirstChild("Tyrant of the Skies");
				if Y and (Y:FindFirstChild("Humanoid") and Y.Humanoid.Health > 0) then
					repeat
						if not _G.StartFarm then
							break;
						end;
						if AutoHaki then
							pcall(AutoHaki);
						end;
						if SelectWeapon and EquipTool then
							pcall(EquipTool, SelectWeapon);
						end;
						if Attack and Attack.Kill then
							pcall(function()
								Attack.Kill(Y, _G.StartFarm);
							end);
						end;
						wait();
					until not _G.StartFarm or not Y.Parent or not Y:FindFirstChild("Humanoid") or Y.Humanoid.Health <= 0;
					return;
				end;
				local r = {
						"Serpent Hunter",
						"Skull Slayer",
						"Isle Champion",
						"Sun-kissed Warrior",
					};
				if l then
					for C, Y in ipairs(r) do
						if not _G.StartFarm then
							break;
						end;
						for l, C in ipairs(l:GetChildren()) do
							if not _G.StartFarm then
								break;
							end;
							if C and (C.Name == Y and (C:FindFirstChild("HumanoidRootPart") and (C:FindFirstChild("Humanoid") and C.Humanoid.Health > 0))) then
								P = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
								if not P then
									break;
								end;
								if (P.Position - C.HumanoidRootPart.Position).Magnitude > 5000 then
									if _tp then
										pcall(_tp, C.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
									else
										pcall(function()
											p.Character.HumanoidRootPart.CFrame = C.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
										end);
									end;
									local l = tick();
									repeat
										wait();
										P = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
									until not _G.StartFarm or not P or (P.Position - C.HumanoidRootPart.Position).Magnitude <= 6 or tick() - l > 8;
								end;
								repeat
									if not _G.StartFarm then
										break;
									end;
									if AutoHaki then
										pcall(AutoHaki);
									end;
									if SelectWeapon and EquipTool then
										pcall(EquipTool, SelectWeapon);
									end;
									if Attack and Attack.Kill then
										pcall(function()
											Attack.Kill(C, _G.StartFarm);
										end);
									end;
									wait();
								until not _G.StartFarm or not C.Parent or not C:FindFirstChild("Humanoid") or C.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while task.wait(1) do
		if _G.StartFarm and _G.MethodSelect == "Aura Farm" then
			pcall(function()
				for p, P in pairs(workspace.Enemies:GetChildren()) do
					if not _G.StartFarm then
						break;
					end;
					if P:FindFirstChild("Humanoid") and P:FindFirstChild("HumanoidRootPart") then
						if P.Humanoid.Health > 0 then
							repeat
								wait();
								Attack.Kill(P, _G.StartFarm);
							until not _G.StartFarm or not P.Parent or P.Humanoid.Health <= 0;
						end;
					end;
				end;
			end);
		end;
	end;
end);
MeterialFarm = AutoModeFarm:AddLeftGroupbox("Mastery Farm");
MeterialFarm:AddDropdown("SelectMethodFarm", {
	Title = "Select Method Farm Mastery",
	Values = { "Blox Fruit", "Gun" },
	Default = nil,
	Callback = function(p)
		_G.MasteryTypeSelect = p;
	end,
});
MeterialFarm:AddToggle("MasteryStart", { Title = "Farm Mastery", Default = false, Callback = function(p)
		_G.MasteryFarmStart = p;
		if not _G.StartFarn then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Start Farm Plz!", Duration = 3 });
		end;
	end });
local tH = game:GetService("RunService");
local wH = game:GetService("VirtualInputManager");
local QH = .1;
local xH = {};
spawn(function()
	tH.RenderStepped:Connect(function()
		pcall(function()
			if _G.MasteryFarmStart and (_G.StartFarm and not _G.MethodSelect) then
				local p = SH.PlayerGui:FindFirstChild("Notifications");
				if p then
					for p, P in pairs(p:GetChildren()) do
						if P.Name == "NotificationTemplate" then
							if string.find(P.Text, "Skill locked!") then
								P:Destroy();
							end;
						end;
					end;
				end;
			end;
		end);
	end);
end);
spawn(function()
	local p = .1;
	while wait(p) do
		pcall(function()
			if _G.MasteryFarmStart and (_G.StartFarm and not _G.MethodSelect) then
				if _G.MasteryTypeSelect == "Blox Fruit" then
					local p = GetConnectionEnemies(xH);
					if p and (p:FindFirstChild("Humanoid") and p:FindFirstChild("HumanoidRootPart")) then
						HealthM = (p.Humanoid.MaxHealth * 70) / 100;
						repeat
							wait();
							MousePos = p.HumanoidRootPart.Position;
							Attack.Mas(p, _G.MasteryFarmStart);
						until not _G.MasteryFarmStart or not p.Parent or p.Humanoid and p.Humanoid.Health <= 0;
					else
						_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125));
					end;
				elseif _G.MasteryTypeSelect == "Gun" then
					local p = GetConnectionEnemies(xH);
					if p and (p:FindFirstChild("Humanoid") and p:FindFirstChild("HumanoidRootPart")) then
						HealthM = (p.Humanoid.MaxHealth * 70) / 100;
						repeat
							wait();
							MousePos = p.HumanoidRootPart.Position;
							Attack.Masgun(p, _G.MasteryFarmStart);
							local P = FH:FindFirstChild("Modules");
							local l = P and P:FindFirstChild("Net");
							local C = l and l:FindFirstChild("RE/ShootGunEvent");
							local Y = SH.Character;
							if not Y then
								break;
							end;
							local r = Y:FindFirstChildOfClass("Tool");
							if not r then
								break;
							end;
							if r.ToolTip ~= "Gun" then
								break;
							end;
							if r and r.Name == "Skull Guitar" then
								dP = true;
								if r:FindFirstChild("RemoteEvent") then
									r.RemoteEvent:FireServer("TAP", MousePos);
								end;
								if _G.MasteryFarmStart then
									wH:SendMouseButtonEvent(0, 0, 0, true, game, 1);
									wait(.05);
									wH:SendMouseButtonEvent(0, 0, 0, false, game, 1);
									wait(.05);
								end;
							elseif r and r.Name ~= "Skull Guitar" then
								dP = false;
								if C then
									C:FireServer(MousePos, { p.HumanoidRootPart });
								end;
								if _G.MasteryFarmStart then
									wH:SendMouseButtonEvent(0, 0, 0, true, game, 1);
									wait(.05);
									wH:SendMouseButtonEvent(0, 0, 0, false, game, 1);
									wait(.05);
								end;
							end;
						until not _G.MasteryFarmStart or not p.Parent or p.Humanoid and p.Humanoid.Health <= 0;
						dP = false;
					else
						_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125));
					end;
				end;
			end;
		end);
	end;
end);
MeterialFarm = AutoModeFarm:AddLeftGroupbox("Farming Meterial");
if S then
	UP = {
			"Leather + Scrap Metal",
			"Angel Wings",
			"Magma Ore",
			"Fish Tail",
		};
elseif F then
	UP = {
			"Leather + Scrap Metal",
			"Radioactive Material",
			"Ectoplasm",
			"Mystic Droplet",
			"Magma Ore",
			"Vampire Fang",
		};
elseif h then
	UP = {
			"Scrap Metal",
			"Demonic Wisp",
			"Conjured Cocoa",
			"Dragon Scale",
			"Gunpowder",
			"Fish Tail",
			"Mini Tusk",
		};
end;
MeterialFarm:AddDropdown("SelectMethodFarm", {
	Title = "Select Meterial",
	Values = UP,
	Default = nil,
	Callback = function(p)
		_G.SelectMaterial = p;
	end,
});
MeterialFarm:AddToggle("MeterialStart", { Title = "Farm Meterial", Default = false, Callback = function(p)
		_G.AutoMaterial = p;
		if not _G.StartFarm then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Start Farm Plz!", Duration = 3 });
		end;
	end });
spawn(function()
	local function p(p, P)
		if p:FindFirstChild("Humanoid") and (p:FindFirstChild("HumanoidRootPart") and p.Humanoid.Health > 0) then
			if p.Name == P then
				repeat
					wait();
					Attack.Kill(p, _G.AutoMaterial);
				until not _G.AutoMaterial or not p.Parent or p.Humanoid.Health <= 0;
			end;
		end;
	end;
	local function P()
		for p, P in pairs((game:GetService("Workspace"))._WorldOrigin.EnemySpawns:GetChildren()) do
			for p, l in ipairs(MMon) do
				if string.find(P.Name, l) then
					local p = game.Players.LocalPlayer.Character;
					local l = p and p:FindFirstChild("HumanoidRootPart");
					if l and (l.Position - P.Position).Magnitude >= 10 then
						_tp(P.CFrame * Pos);
					end;
				end;
			end;
		end;
	end;
	while wait() do
		if _G.AutoMaterial then
			pcall(function()
				if _G.SelectMaterial then
					MaterialMon(_G.SelectMaterial);
					_tp(MPos);
				end;
				for P, l in ipairs(MMon) do
					for P, C in pairs(workspace.Enemies:GetChildren()) do
						p(C, l);
					end;
				end;
				P();
			end);
		end;
	end;
end);
Stack = Window:AddTab("Stack Farming");
WorldGet = Stack:AddLeftGroupbox("Auto World");
WorldGet:AddToggle("World2AutoGet", { Title = "Auto New World", Default = false, Callback = function(p)
		_G.TravelDres = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.TravelDres then
				if SH.Data.Level.Value >= 700 then
					if workspace.Map.Ice.Door.CanCollide == true and workspace.Map.Ice.Door.Transparency == 0 then
						FH.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
						EquipWeapon("Key");
						repeat
							wait();
							_tp(CFrame.new(1347.7124, 37.3751602, -1325.6488));
						until not _G.TravelDres or KH.Position == (CFrame.new(1347.7124, 37.3751602, -1325.6488)).Position;
					elseif workspace.Map.Ice.Door.CanCollide == false and workspace.Map.Ice.Door.Transparency == 1 then
						if HP:FindFirstChild("Ice Admiral") then
							for p, P in pairs(HP:GetChildren()) do
								if P.Name == "Ice Admiral" and Attack.Alive(P) then
									repeat
										task.wait();
										Attack.Kill(P, _G.TravelDres);
									until _G.TravelDres == false or P.Humanoid.Health <= 0;
									FH.Remotes.CommF_:InvokeServer("TravelDressrosa");
								end;
							end;
						else
							_tp(CFrame.new(1347.7124, 37.3751602, -1325.6488));
						end;
					else
						FH.Remotes.CommF_:InvokeServer("TravelDressrosa");
					end;
				end;
			end;
		end);
	end;
end);
WorldGet:AddToggle("World3AutoGet", { Title = "Auto Third World", Default = false, Callback = function(p)
		_G.AutoZou = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.AutoZou then
				if SH.Data.Level.Value >= 1500 then
					if FH.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
						if (FH.Remotes.CommF_:InvokeServer("GetUnlockables")).FlamingoAccess ~= nil then
							FH.Remotes.CommF_:InvokeServer("F_", "TravelZou");
							if FH.Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 0 then
								local p = GetConnectionEnemies("rip_indra");
								if p then
									repeat
										wait();
										Attack.Kill(p, _G.AutoZou);
									until not _G.AutoZou or not p.Parent or p.Humanoid.Health <= 0;
									Check = 2;
									repeat
										wait();
										FH.Remotes.CommF_:InvokeServer("F_", "TravelZou");
									until Check == 1;
								else
									FH.Remotes.CommF_:InvokeServer("F_", "ZQuestProgress", "Check");
									wait(.1);
									FH.Remotes.CommF_:InvokeServer("F_", "ZQuestProgress", "Begin");
								end;
							elseif FH.Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 1 then
								FH.Remotes.CommF_:InvokeServer("F_", "TravelZou");
							else
								local p = GetConnectionEnemies("Don Swan");
								if p then
									repeat
										wait();
										Attack.Kill(p, _G.AutoZou);
									until not _G.AutoZou or not p.Parent or p.Humanoid.Health <= 0;
								else
									repeat
										wait();
										_tp(CFrame.new(2288.802, 15.1870775, 863.034607));
									until not _G.AutoZou or KH.Position == (CFrame.new(2288.802, 15.1870775, 863.034607)).Position;
									if KH.CFrame == CFrame.new(2288.802, 15.1870775, 863.034607) then
										notween(CFrame.new(2288.802, 15.1870775, 863.034607));
									end;
								end;
							end;
						else
							if (FH.Remotes.CommF_:InvokeServer("GetUnlockables")).FlamingoAccess == nil then
								TabelDevilFruitStore = {};
								TabelDevilFruitOpen = {};
								for p, P in pairs(FH.Remotes.CommF_:InvokeServer("getInventoryFruits")) do
									for p, P in pairs(P) do
										if p == "Name" then
											table.insert(TabelDevilFruitStore, P);
										end;
									end;
								end;
								for p, P in next, (game.ReplicatedStorage:WaitForChild("Remotes")).CommF_:InvokeServer("GetFruits") do
									if P.Price >= 1000000 then
										table.insert(TabelDevilFruitOpen, P.Name);
									end;
								end;
								for p, P in pairs(TabelDevilFruitOpen) do
									for p, l in pairs(TabelDevilFruitStore) do
										if P == l and (FH.Remotes.CommF_:InvokeServer("GetUnlockables")).FlamingoAccess == nil then
											if not SH.Backpack:FindFirstChild(l) then
												FH.Remotes.CommF_:InvokeServer("F_", "LoadFruit", l);
											else
												FH.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "1");
												FH.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "2");
												FH.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "3");
											end;
										end;
									end;
								end;
								FH.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "1");
								FH.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "2");
								FH.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "3");
							end;
						end;
					else
						if FH.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
							if string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and (string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and SH.PlayerGui.Main.Quest.Visible == true) then
								local p = GetConnectionEnemies("Swan Pirate");
								if p then
									pcall(function()
										repeat
											wait();
											Attack.Kill(p, _G.AutoZou);
										until not p.Parent or p.Humanoid.Health <= 0 or _G.AutoZou == false or SH.PlayerGui.Main.Quest.Visible == false;
									end);
								else
									_tp(CFrame.new(1057.92761, 137.614319, 1242.08069));
								end;
							else
								_tp(CFrame.new(-456.28952, 73.0200958, 299.895966));
							end;
						elseif FH.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
							local p = GetConnectionEnemies("Jeremy");
							if p then
								repeat
									wait();
									Attack.Kill(p, _G.AutoZou);
								until not p.Parent or p.Humanoid.Health <= 0 or _G.AutoZou == false;
							else
								_tp(CFrame.new(2099.88159, 448.931, 648.997375));
							end;
						elseif FH.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
							repeat
								wait();
								_tp(CFrame.new(-1836, 11, 1714));
							until not _G.AutoZou or KH.Position == (CFrame.new(-1836, 11, 1714)).Position;
							if KH.CFrame == CFrame.new(-1836, 11, 1714) then
								notween(CFrame.new(-1836, 11, 1714));
							end;
							notween(CFrame.new(-1850.49329, 13.1789551, 1750.89685));
							wait(.1);
							notween(CFrame.new(-1858.87305, 19.3777466, 1712.01807));
							wait(.1);
							notween(CFrame.new(-1803.94324, 16.5789185, 1750.89685));
							wait(.1);
							notween(CFrame.new(-1858.55835, 16.8604317, 1724.79541));
							wait(.1);
							notween(CFrame.new(-1869.54224, 15.987854, 1681.00659));
							wait(.1);
							notween(CFrame.new(-1800.0979, 16.4978027, 1684.52368));
							wait(.1);
							notween(CFrame.new(-1819.26343, 14.795166, 1717.90625));
							wait(.1);
							notween(CFrame.new(-1813.51843, 14.8604736, 1724.79541));
						end;
					end;
				end;
			end;
		end);
	end;
end);
DevilFarm = Stack:AddLeftGroupbox("Devil Fruit");
DevilFarm:AddToggle("DevilFarmNormal", { Title = "Teleport to Fruit", Default = false, Callback = function(p)
		_G.TwFruits = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.TwFruits then
			pcall(function()
				for p, P in pairs(workspace:GetChildren()) do
					if string.find(P.Name, "Fruit") then
						_tp(P.Handle.CFrame);
					end;
				end;
			end);
		end;
	end;
end);
DevilFarm:AddToggle("DevilFarmHopServer", { Title = "Teleport to Fruit [Hop Server]", Default = false, Callback = function(p)
		_G.HopFruitsFarm = p;
		if not _G.TwFruits then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Teleport to Fruit Plz!", Duration = 3 });
		end;
	end });
spawn(function()
	while wait(QH) do
		if _G.TwFruits and _G.HopFruitsFarm then
			pcall(function()
				local p = false;
				for P, l in pairs(workspace:GetChildren()) do
					if string.find(l.Name, "Fruit") then
						p = true;
						break;
					end;
				end;
				if not p then
					Hop();
				end;
			end);
		end;
	end;
end);
EventRaid = Stack:AddLeftGroupbox("Event Game");
EventRaid:AddToggle("FactoryRaidFarm", { Title = "Auto Factory", Default = false, Callback = function(p)
		_G.AutoFactory = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.AutoFactory then
				local p = GetConnectionEnemies("Core");
				if p then
					repeat
						wait();
						EquipWeapon(_G.SelectWeapon);
						_tp(CFrame.new(448.46756, 199.356781, -441.389252));
					until p.Humanoid.Health <= 0 or _G.AutoFactory == false;
				else
					_tp(CFrame.new(448.46756, 199.356781, -441.389252));
				end;
			end;
		end);
	end;
end);
EventRaid:AddToggle("PirateRaidRaidFarm", { Title = "Auto Pirate Raid", Default = false, Callback = function(p)
		_G.AutoRaidCastle = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoRaidCastle then
			pcall(function()
				local p = CFrame.new(-5496.17432, 313.768921, -2841.53027, .924894512, 7.37058015e-009, .380223751, 3.5881019e-008, 1, -1.06665446e-007, -0.380223751, 1.12297109e-007, .924894512);
				if ((CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125)).Position - KH.Position).Magnitude <= 500 then
					for p, P in pairs(workspace.Enemies:GetChildren()) do
						if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Humanoid") and P.Humanoid.Health > 0) then
							if P.Name then
								if (P.HumanoidRootPart.Position - KH.Position).Magnitude <= 2000 then
									repeat
										wait();
										Attack.Kill(P, _G.AutoRaidCastle);
									until not _G.AutoRaidCastle or not P.Parent or P.Humanoid.Health <= 0 or not workspace.Enemies:FindFirstChild(P.Name);
								end;
							end;
						end;
					end;
				else
					local P = {
							"Galley Pirate",
							"Galley Captain",
							"Raider",
							"Mercenary",
							"Vampire",
							"Zombie",
							"Snow Trooper",
							"Winter Warrior",
							"Lab Subordinate",
							"Horned Warrior",
							"Magma Ninja",
							"Lava Pirate",
							"Ship Deckhand",
							"Ship Engineer",
							"Ship Steward",
							"Ship Officer",
							"Arctic Warrior",
							"Snow Lurker",
							"Sea Soldier",
							"Water Fighter",
						};
					for l = 1, #P, 1 do
						if FH:FindFirstChild(P[l]) then
							for l, C in pairs(FH:GetChildren()) do
								if table.find(P, C.Name) then
									_tp(p);
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
RipIndraBoss = Stack:AddLeftGroupbox("Boss Rip Indra");
RipIndraBoss:AddToggle("EliteHunterFarm", { Title = "Auto Elite Hunter", Default = false, Callback = function(p)
		_G.FarmEliteHunt = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.FarmEliteHunt then
				local p = SH.PlayerGui.Main.Quest;
				if p.Visible == true then
					local P = p.Container.QuestTitle.Title.Text;
					local l = string.find(P, "Diablo") or string.find(P, "Urban") or string.find(P, "Deandre");
					if l then
						for p, P in pairs(FH:GetChildren()) do
							local l = string.find(P.Name, "Diablo") or string.find(P.Name, "Urban") or string.find(P.Name, "Deandre");
							if l and P:FindFirstChild("HumanoidRootPart") then
								_tp(P.HumanoidRootPart.CFrame);
								break;
							end;
						end;
						local P = workspace:FindFirstChild("Enemies") or workspace;
						for P, l in pairs(P:GetChildren()) do
							if not l:FindFirstChild("Humanoid") then
								continue;
							end;
							local C = string.find(l.Name, "Diablo") or string.find(l.Name, "Urban") or string.find(l.Name, "Deandre");
							if C and l.Humanoid.Health > 0 then
								if l:FindFirstChild("HumanoidRootPart") then
									_tp(l.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5));
								end;
								repeat
									wait();
									if Attack and Attack.Kill then
										Attack.Kill(l, _G.FarmEliteHunt);
									end;
								until not _G.FarmEliteHunt or not p.Visible or not l.Parent or l.Humanoid.Health <= 0;
								break;
							end;
						end;
					end;
				else
					if FH:FindFirstChild("Remotes") and FH.Remotes:FindFirstChild("CommF_") then
						FH.Remotes.CommF_:InvokeServer("EliteHunter");
					end;
				end;
			end;
		end);
	end;
end);
RipIndraBoss:AddToggle("EliteHunterFarmHop", {
	Title = "Hop Server Elite Hunter",
	Description = "Hop if u have God chalice and teleport in safezone",
	Default = false,
	Callback = function(p)
		_G.EliteHop = p;
		if not _G.TwFruits then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Elite Hunter Plz!", Duration = 3 });
		end;
	end,
});
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.FarmEliteHunt and _G.EliteHop then
				if GetBP("God\'s Chalice") or GetBP("Sweet Chalice") or GetBP("Fist of Darkness") then
					return;
				end;
				local p = SH.PlayerGui.Main.Quest;
				if GetBP("God\'s Chalice") or GetBP("Sweet Chalice") or GetBP("Fist of Darkness") then
					_G.FarmEliteHunt = false;
				end;
				if p.Visible == true then
					local P = p.Container.QuestTitle.Title.Text;
					local l = string.find(P, "Diablo") or string.find(P, "Urban") or string.find(P, "Deandre");
					if not l then
						Hop();
					end;
				end;
			end;
		end);
	end;
end);
RipIndraBoss:AddToggle("TouchPadHaki", { Title = "Auto Touch Pad Haki", Default = false, Callback = function(p)
		(getgenv()).AutoTouchPadHaki = p;
	end });
spawn(function()
	while task.wait(1) do
		pcall(function()
			if (getgenv()).AutoTouchPadHaki and h then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
				task.wait(.5);
				local p = CFrame.new(-5420.16602, 1084.9657, -2666.8208);
				repeat
					topos(p);
					task.wait(.2);
				until (getgenv()).StopTween == true or (getgenv()).AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude <= 10;
				task.wait(.5);
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
				task.wait(.5);
				local P = CFrame.new(-5414.41357, 309.865753, -2212.45776);
				repeat
					topos(P);
					task.wait(.2);
				until (getgenv()).StopTween == true or (getgenv()).AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - P.Position).Magnitude <= 10;
				task.wait(.5);
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Snow White");
				task.wait(.5);
				local l = CFrame.new(-4971.47559, 331.565765, -3720.02954);
				repeat
					topos(l);
					task.wait(.2);
				until (getgenv()).StopTween == true or (getgenv()).AutoTouchPadHaki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - l.Position).Magnitude <= 10;
				task.wait(.5);
				(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
				task.wait(1);
				(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
			end;
		end);
	end;
end);
RipIndraBoss:AddToggle("RipIndraAutoFarm", { Title = "Auto Rip Indra", Default = false, Callback = function(p)
		_G.AutoRipIngay = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.AutoRipIngay then
				local p = GetConnectionEnemies("rip_indra");
				if not GetWP("Dark Dagger") or not GetIn("Valkyrie") and p then
					repeat
						wait();
						Attack.Kill(p, _G.AutoRipIngay);
					until not _G.AutoRipIngay or not p.Parent or p.Humanoid.Health <= 0;
				else
					FH.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-008, .914313197, -1.90943332e-008, 1, 3.8755779e-008, -0.914313197, -1.76180437e-009, -0.405007899));
					wait(.1);
					_tp(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
				end;
			end;
		end);
	end;
end);
SoulReaperBoss = Stack:AddLeftGroupbox("Boss Soul Reaper");
SoulReaperBoss:AddToggle("SoulReaperNormal", { Title = "Auto Soul Reaper", Default = false, Callback = function(p)
		_G.AutoHytHallow = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoHytHallow then
			pcall(function()
				local p = GetConnectionEnemies("Soul Reaper");
				if p then
					repeat
						task.wait();
						Attack.Kill(p, _G.AutoHytHallow);
					until p.Humanoid.Health <= 0 or _G.AutoHytHallow == false;
				else
					if not GetBP("Hallow Essence") then
						repeat
							task.wait(.1);
							FH.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
						until _G.AutoHytHallow == false or GetBP("Hallow Essence");
					else
						repeat
							wait(.1);
							_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
						until _G.AutoHytHallow == false or (SH.Character.HumanoidRootPart.Position - Vector3.new(-8932.322265625, 146.83154296875, 6062.55078125)).Magnitude <= 10;
						EquipWeapon("Hallow Essence");
					end;
				end;
			end);
		end;
	end;
end);
SoulReaperBoss:AddToggle("SoulReaperHop", { Title = "Auto Soul Reaper [ Hop Server ]", Default = false, Callback = function(p)
		_G.SoulHopR = p;
		if not _G.AutoHytHallow then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Soul Reaper Plz!", Duration = 3 });
		end;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoHytHallow and _G.SoulHopR then
			pcall(function()
				if not GetConnectionEnemies("Soul Reaper") then
					Hop();
				end;
			end);
		end;
	end;
end);
DoughKingBoss = Stack:AddLeftGroupbox("Boss Dough King");
DoughKingBoss:AddToggle("DoughKingNormal", { Title = "Auto Dough King", Default = false, Callback = function(p)
		_G.AutoMiror = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoMiror then
			pcall(function()
				local p = GetConnectionEnemies("Dough King");
				if p then
					repeat
						wait();
						Attack.Kill(p, _G.AutoMiror);
					until not _G.AutoMiror or not p.Parent or p.Humanoid.Health <= 0;
				else
					_tp(CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375));
				end;
			end);
		end;
	end;
end);
DoughKingBoss:AddToggle("DoughKingHop", { Title = "Auto Dough King [ Hop Server ]", Default = false, Callback = function(p)
		_G.DoughKingHop = p;
		if not _G.AutoMiror then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Dough King Plz!", Duration = 3 });
		end;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoMiror and _G.DoughKingHop then
			pcall(function()
				if not GetConnectionEnemies("Dough King") then
					Hop();
				end;
			end);
		end;
	end;
end);
DarkbeardBoss = Stack:AddLeftGroupbox("Boss Darkbeard");
DarkbeardBoss:AddToggle("DarkBreadNormal", { Title = "Auto Darkbread", Default = false, Callback = function(p)
		_G.Auto_Def_DarkCoat = p;
	end });
spawn(function()
	while wait(.1) do
		if _G.Auto_Def_DarkCoat then
			pcall(function()
				if GetBP("Fist of Darkness") and not workspace.Enemies:FindFirstChild("Darkbeard") then
					_tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531));
				else
					local p = GetConnectionEnemies("Darkbeard");
					if p then
						repeat
							wait();
							Attack.Kill(p, _G.Auto_Def_DarkCoat);
						until _G.Auto_Def_DarkCoat == false or not p.Parent or p.Humanoid.Health <= 0;
					end;
				end;
			end);
		end;
	end;
end);
DarkbeardBoss:AddToggle("DarkBreadHop", { Title = "Auto Darkbread [ Hop Server ]", Default = false, Callback = function(p)
		_G.DarkbreadHop = p;
		if not _G.Auto_Def_DarkCoat then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Darkbread Plz!", Duration = 3 });
		end;
	end });
spawn(function()
	local p = .1;
	while wait(p) do
		if _G.Auto_Def_DarkCoat and _G.DarkbreadHop then
			pcall(function()
				if not workspace.Enemies:FindFirstChild("Darkbeard") then
					Hop();
				end;
			end);
		end;
	end;
end);
Other = Window:AddTab("Farming Other");
Fishing = Other:AddLeftGroupbox("Fishing");
local function OH()
	if not COMMF_ then
		return;
	end;
	pcall(function()
		COMMF_:InvokeServer("FishingNPC", "FirstTimeFreeRod");
		if _G.SelectedRod then
			COMMF_:InvokeServer("LoadItem", _G.SelectedRod, { "Gear" });
		end;
	end);
	task.wait(.5);
	local p = kH:FindFirstChild("Data") and kH.Data:FindFirstChild("FishingData");
	if p and (p:GetAttribute("SelectedBait") == "None" or p:GetAttribute("SelectedBait") == nil) then
		local p, P = pcall(function()
				return COMMF_:InvokeServer("getInventory");
			end);
		if p and P then
			for p, P in pairs(P) do
				if P.Type == "Bait" and P.Name == _G.SelectedBait then
					COMMF_:InvokeServer("LoadItem", P.Name, { "Usables" });
					return;
				end;
			end;
		end;
		if CraftRF and _G.SelectedBait then
			CraftRF:InvokeServer("Craft", _G.SelectedBait);
			task.wait(2);
		end;
	end;
end;
local function HH()
	local p = kH.Character;
	if not p then
		return;
	end;
	local P = p:FindFirstChildOfClass("Humanoid");
	if not p:FindFirstChild(_G.SelectedRod) then
		local p = kH.Backpack:FindFirstChild(_G.SelectedRod);
		if p and P then
			P:EquipTool(p);
			task.wait(.3);
		end;
	end;
end;
local function IH()
	local p = kH.Character;
	if not p then
		return;
	end;
	local P = p:WaitForChild("HumanoidRootPart");
	local l = E(P.Position);
	local C = P.CFrame.LookVector * (Config.Rod.MaxLaunchDistance or 50);
	local Y, r = wP:FindPartOnRayWithIgnoreList(Ray.new(p.Head.Position, C), { p, wP.Characters, wP.Enemies });
	if not r then
		return P.Position + Vector3.new(0, -10, 0);
	end;
	return r;
end;
local function WH()
	if not D then
		return;
	end;
	pcall(function()
		D:InvokeServer("StartCasting");
		task.wait(.7);
		D:InvokeServer("CastLineAtLocation", IH(), 100, true);
	end);
end;
local function RH()
	if not D then
		return;
	end;
	pcall(function()
		D:InvokeServer("Catching", 1);
		task.wait(.25);
		D:InvokeServer("Catch", 1);
	end);
end;
Fishing:AddDropdown("SelectRod", {
	Title = "Select Rod",
	Values = {
		"Fishing Rod",
		"Gold Rod",
		"Shark Rod",
		"Shell Rod",
		"Treasure Rod",
	},
	Default = nil,
	Callback = function(p)
		SelectedRod = p;
	end,
});
Fishing:AddDropdown("SelectBait", {
	Title = "Select Bait",
	Values = {
		"Basic Bait",
		"Kelp Bait",
		"Good Bait",
		"Abyssal Bait",
		"Frozen Bait",
		"Epic Bait",
		"Carnivore Bait",
	},
	Default = nil,
	Callback = function(p)
		SelectedBait = p;
		if AutoBuyBait then
			pcall(function()
				j:InvokeServer("Craft", SelectedBait, {});
			end);
		end;
	end,
});
Fishing:AddButton({ Title = "Buy Bait", Callback = function()
		j:InvokeServer("Craft", SelectedBait, {});
	end });
Fishing:AddToggle("AutoFishing", { Title = "Auto Fishing", Default = false, Callback = function(p)
		AutoFishing = p;
	end });
task.spawn(function()
	local p = G.Rod.MaxLaunchDistance;
	while task.wait(.5) do
		if AutoFishing then
			pcall(function()
				local P = L.Character or L.CharacterAdded:Wait();
				local l = P:FindFirstChild("HumanoidRootPart");
				if not l then
					return;
				end;
				local C = P:FindFirstChildOfClass("Tool");
				if SelectedRod and (not C or C.Name ~= SelectedRod) then
					local p = L.Backpack:FindFirstChild(SelectedRod);
					if p then
						P.Humanoid:EquipTool(p);
						C = p;
					end;
				end;
				if C then
					local Y = E(l.Position);
					local r, U = wP:FindPartOnRayWithIgnoreList(Ray.new(P.Head.Position, l.CFrame.LookVector * p), { P, wP.Characters, wP.Enemies });
					local v = U and Vector3.new(U.X, math.max(U.Y, Y), U.Z);
					local u = C:GetAttribute("State");
					local d = C:GetAttribute("ServerState");
					if v and (u == "ReeledIn" or d == "ReeledIn") then
						D:InvokeServer("StartCasting");
						task.wait();
						D:InvokeServer("CastLineAtLocation", v, 100, true);
					elseif d == "Biting" then
						D:InvokeServer("Catching", true);
						task.wait(.1);
						D:InvokeServer("Catch", 1);
					end;
				end;
			end);
		end;
	end;
end);
Fishing:AddToggle("QuestFishing", { Title = "Auto Quest Fishing", Default = false, Callback = function(p)
		AutoFishingQuest = p;
	end });
local function zH()
	local p = L.PlayerGui:FindFirstChild("Quest") or L.PlayerGui:FindFirstChild("QuestGui");
	if p and (p:FindFirstChild("Container") and p.Container:FindFirstChild("QuestTitle")) then
		return true;
	end;
	return false;
end;
task.spawn(function()
	while task.wait(1) do
		if AutoFishingQuest then
			pcall(function()
				if not zH() then
					m:InvokeServer("FishingNPC", "Angler", "AskQuest");
				end;
			end);
		end;
	end;
end);
Fishing:AddToggle("QuestFishing", { Title = "Auto Done Quest Fishing", Default = false, Callback = function(p)
		AutoQuestComplete = p;
		if p then
			pcall(function()
				m:InvokeServer("FishingNPC", "FinishQuest");
			end);
		end;
	end });
task.spawn(function()
	while task.wait(5) do
		if AutoQuestComplete then
			pcall(function()
				m:InvokeServer("FishingNPC", "FinishQuest");
			end);
		end;
	end;
end);
Fishing:AddToggle("SellFishing", { Title = "Sell Fishing", Default = false, Callback = function(p)
		AutoSellFish = p;
		if p then
			pcall(function()
				m:InvokeServer("FishingNPC", "SellFish");
			end);
		end;
	end });
task.spawn(function()
	while task.wait(5) do
		if AutoSellFish then
			pcall(function()
				m:InvokeServer("FishingNPC", "SellFish");
			end);
		end;
	end;
end);
Fishing:AddToggle("SpawmSkillZ", { Title = "Spam Skill Z if Fishing", Default = false, Callback = function(p)
		AutoSkillZ = p;
	end });
task.spawn(function()
	while task.wait(.5) do
		if AutoSkillZ then
			pcall(function()
				o:InvokeServer("Z", true);
			end);
		end;
	end;
end);
DragonQuest = Other:AddLeftGroupbox("Quest Dragon");
DragonQuest:AddToggle("DojoTrainer", { Title = "Auto Dojo Trainer", Default = false, Callback = function(p)
		_G.Dojoo = p;
	end });
function printBeltName(p)
	if type(p) == "table" and p.Quest.BeltName then
		return p.Quest.BeltName;
	end;
end;
spawn(function()
	while wait(QH) do
		if _G.Dojoo then
			pcall(function()
				local p = { [1] = { NPC = "Dojo Trainer", Command = "RequestQuest" } };
				local P = (FH.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(p));
				local l = printBeltName(P);
				if ZP == false and (not P and not l) then
					_tp(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875));
					ZP = true;
				elseif ZP == true and ((CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 50 then
					if l == "White" then
						local p = GetConnectionEnemies("Skull Slayer");
						if p then
							repeat
								task.wait();
								Attack.Kill(p, _G.Dojoo);
							until not P or not _G.Dojoo or not Attack.Alive(p);
						else
							_tp(CFrame.new(-16759.58984375, 71.283767700195312, 1595.3399658203125));
						end;
					elseif l == "Yellow" then
						repeat
							task.wait();
							_G.SeaBeast1 = true;
							_G.TerrorShark = true;
							_G.Shark = true;
							_G.Piranha = true;
							_G.MobCrew = true;
							_G.FishBoat = true;
							_G.SailBoats = true;
						until not _G.Dojoo or not P;
						_G.SeaBeast1 = false;
						_G.TerrorShark = false;
						_G.Shark = false;
						_G.Piranha = false;
						_G.MobCrew = false;
						_G.FishBoat = false;
						_G.SailBoats = false;
					elseif l == "Green" then
						repeat
							task.wait();
							_G.SailBoats = true;
						until not _G.Dojoo or not P;
						_G.SailBoats = false;
					elseif l == "Purple" then
						repeat
							task.wait();
							_G.FarmEliteHunt = true;
						until not _G.Dojoo or not P;
						_G.FarmEliteHunt = false;
					elseif l == "Red" then
						repeat
							task.wait();
							_G.SailBoats = true;
							_G.FishBoat = true;
						until not _G.Dojoo or not P;
						_G.SailBoats = false;
						_G.FishBoat = false;
					elseif l == "Black" then
						repeat
							task.wait();
							if workspace.Map:FindFirstChild("PrehistoricIsland") or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
								_G.Prehis_Find = true;
								if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
									_G.Prehis_Skills = false;
									_G.Prehis_Find = true;
								else
									_G.Prehis_Skills = true;
									_G.Prehis_Find = false;
								end;
							else
								_G.Prehis_Find = true;
								_G.Prehis_Skills = false;
							end;
						until not _G.Dojoo or not P;
						_G.Prehis_Find = false;
						_G.Prehis_Skills = false;
					elseif l == "Orange" or l == "Blue" then
						return nil;
					end;
				end;
				if not P then
					ZP = false;
					local p = { [1] = { NPC = "Dojo Trainer", Command = "ClaimQuest" } };
					(FH.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(p));
				end;
			end);
		end;
	end;
end);
DragonQuest:AddToggle("DragonHunter", { Title = "Auto Dragon Hunter", Default = false, Callback = function(p)
		_G.FarmBlazeEM = p;
	end });
checkQuesta = function()
		local p = { [1] = { Context = "Check" } };
		local P = nil;
		pcall(function()
			local p = { [1] = { Context = "RequestQuest" } };
			((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(p));
		end);
		local l, C = pcall(function()
				P = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer(unpack(p));
			end);
		local Y = false;
		local r;
		local U;
		local v;
		if P then
			if P.Text then
				Y = true;
				local p = P.Text;
				if string.find(tostring(p), "Defeat") then
					v = 1;
					r = string.sub(tostring(p), 8, 9);
					r = tonumber(r);
					local P = { "Hydra Enforcer", "Venomous Assailant" };
					for P, l in pairs(P) do
						if string.find(p, l) then
							U = l;
							break;
						end;
					end;
				elseif string.find(tostring(p), "Destroy") then
					r = 10;
					v = 2;
					U = nil;
				end;
			end;
		end;
		return Y, U, r, v;
	end;
BackTODoJo = function()
		for p, P in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
			if P.Name == "NotificationTemplate" then
				if string.find(P.Text, "Head back to the Dojo to complete more tasks") then
					return true;
				end;
			end;
		end;
		return false;
	end;
DragonMobClear = function(p, P, l)
		if workspace.Enemies:FindFirstChild(P) then
			for l, C in pairs(workspace.Enemies:GetChildren()) do
				if C.Name == P and Attack.Alive(C) then
					if p then
						Attack.Kill(C, p);
					end;
				end;
			end;
		else
			_tp(l);
		end;
	end;
spawn(function()
	while wait() do
		if _G.FarmBlazeEM then
			pcall(function()
				local p, P, l, C = checkQuesta();
				if p == true and not BackTODoJo() then
					if C == 1 then
						if P == "Hydra Enforcer" or P == "Venomous Assailant" then
							repeat
								wait();
								DragonMobClear(true, P, CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188));
							until not _G.FarmBlazeEM or not p or BackTODoJo();
						end;
					elseif C == 2 then
						if workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true) then
							repeat
								wait();
								spawn(function()
									_tp((workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)).CFrame * CFrame.new(4, 0, 0));
								end);
								if ((workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)).Position - KH.Position).Magnitude <= 200 then
									MousePos = (workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true)).Position;
									Useskills("Melee", "Z");
									Useskills("Melee", "X");
									Useskills("Melee", "C");
									wait(.5);
									Useskills("Sword", "Z");
									Useskills("Sword", "X");
									wait(.5);
									Useskills("Blox Fruit", "Z");
									Useskills("Blox Fruit", "X");
									Useskills("Blox Fruit", "C");
									wait(.5);
									Useskills("Gun", "Z");
									Useskills("Gun", "X");
								end;
							until not _G.FarmBlazeEM or not p or BackTODoJo();
						end;
					end;
				else
					_tp(CFrame.new(5813, 1208, 884));
					DragonMobClear(false, nil, nil);
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(.1) do
		if _G.FarmBlazeEM then
			pcall(function()
				if workspace.EmberTemplate:FindFirstChild("Part") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame;
				end;
			end);
		end;
	end;
end);
MobAttackAlls = Other:AddLeftGroupbox("Attack All Mobs");
MobAttackAlls:AddToggle("AllMobAndBoss", { Title = "Auto Attack All Mobs and Boss", Default = false, Callback = function(p)
		_G.AutoFarmNear = p;
	end });
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoFarmNear then
				for p, P in pairs(workspace.Enemies:GetChildren()) do
					if P:FindFirstChild("Humanoid") or P:FindFirstChild("HumanoidRootPart") then
						if P.Humanoid.Health > 0 then
							repeat
								wait();
								Attack.Kill(P, _G.AutoFarmNear);
							until not _G.AutoFarmNear or not P.Parent or P.Humanoid.Health <= 0;
						end;
					end;
				end;
			end;
		end);
	end;
end);
BerryFarm = Other:AddLeftGroupbox("Berry");
BerryFarm:AddToggle("BerryFarmAuto", { Title = "Auto Collect Berry", Default = false, Callback = function(p)
		_G.AutoBerry = p;
	end });
BerryFarm:AddToggle("BerryFarmHop", { Title = "Hop Find Berry", Default = false, Callback = function(p)
		_G.HopBerry = p;
		if not _G.AutoBerry then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Berry Plz!", Duration = 3 });
		end;
	end });
local function bH()
	local p = game:GetService("CollectionService");
	local P = p:GetTagged("BerryBush");
	return #P > 0;
end;
spawn(function()
	local p = .1;
	while wait(p) do
		if _G.AutoBerry and _G.HopBerry then
			if not bH() then
				Hop();
			end;
		end;
	end;
end);
spawn(function()
	local p = .1;
	while wait(p) do
		if _G.AutoBerry then
			pcall(function()
				local p = game:GetService("CollectionService");
				local P = game:GetService("Players");
				local l = P.LocalPlayer;
				local C = p:GetTagged("BerryBush");
				if #C > 0 then
					local p = nil;
					local P = math.huge;
					local Y = l.Character;
					local r = Y and Y:FindFirstChild("HumanoidRootPart");
					if r then
						for l = 1, #C, 1 do
							local Y = C[l];
							if Y and Y.Parent then
								local l = (r.Position - (Y.Parent:GetPivot()).Position).Magnitude;
								if l < P then
									P = l;
									p = Y;
								end;
							end;
						end;
						if p then
							_tp(p.Parent:GetPivot());
							for p, P in pairs(p.Parent:GetChildren()) do
								if P:IsA("BasePart") and P:FindFirstChild("ProximityPrompt") then
									fireproximityprompt(P.ProximityPrompt, math.huge);
								end;
							end;
						end;
					end;
				else
					if _G.HopBerry then
						Hop();
					end;
				end;
			end);
		end;
	end;
end);
ChestFarm = Other:AddLeftGroupbox("Farm Chest");
ChestFarm:AddToggle("ChestNormalAuto", { Title = "Auto Chest", Default = false, Callback = function(p)
		_G.AutoFarmChest = p;
	end });
ChestFarm:AddToggle("ChestHopAuto", { Title = "Auto Chest Hop", Default = false, Callback = function(p)
		_G.ChestHop = p;
		if not _G.AutoFarmChest then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Chest Plz!", Duration = 3 });
		end;
	end });
local function p5()
	local p = game:GetService("CollectionService");
	local P = p:GetTagged("_ChestTagged");
	return #P > 0;
end;
spawn(function()
	local p = .1;
	while wait(p) do
		if _G.AutoFarmChest and _G.ChestHop then
			if not p5() then
				Hop();
			end;
		end;
	end;
end);
spawn(function()
	local p = .1;
	while wait(p) do
		if _G.AutoFarmChest then
			pcall(function()
				local p = game:GetService("CollectionService");
				local P = game:GetService("Players");
				local l = P.LocalPlayer;
				local C = l.Character or l.CharacterAdded:Wait();
				if not C then
					return;
				end;
				local Y = (C:GetPivot()).Position;
				local r = p:GetTagged("_ChestTagged");
				local U, v = math.huge, nil;
				for p = 1, #r, 1 do
					local P = r[p];
					local l = ((P:GetPivot()).Position - Y).Magnitude;
					if not _G.SelectedIsland or P:IsDescendantOf(_G.SelectedIsland) then
						if not P:GetAttribute("IsDisabled") and l < U then
							U = l;
							v = P;
						end;
					end;
				end;
				if v then
					_tp(v:GetPivot());
				end;
			end);
		end;
	end;
end);
FullRaidLaw = Other:AddLeftGroupbox("Raid Law");
FullRaidLaw:AddToggle("FullRaidLawOk", { Title = "Auto Buy Chip and Attack Law", Default = false, Callback = function(p)
		_G.AutoLawKak = p;
	end });
spawn(function()
	while wait() do
		if _G.AutoLawKak then
			pcall(function()
				FH.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2");
				task.wait(1);
				fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
				task.wait(2);
				local p = GetConnectionEnemies("Order");
				if p and (p.Parent and p:FindFirstChild("Humanoid")) then
					repeat
						task.wait();
						Attack.Kill(p, _G.AutoLawKak);
					until _G.AutoLawKak == false or not p.Parent or p.Humanoid.Health <= 0;
				else
					_tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875));
				end;
			end);
		end;
	end;
end);
ObservationFarm = Other:AddLeftGroupbox("Farm Observation");
ObservationFarm:AddToggle("UpgradeObserV2", { Title = "Auto UP Observation V2", Default = false, Callback = function(p)
		_G.AutoKenVTWO = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoKenVTWO then
			pcall(function()
				local p = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625);
				local P = "Kuy";
				local l = CFrame.new(-10920.125, 624.20275878906, -10266.995117188);
				local C = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625);
				local Y = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875);
				if SH.PlayerGui.Main.Quest.Visible == true and string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
					local p = GetConnectionEnemies("Forest Pirate");
					if p then
						repeat
							wait();
							Attack.Kill(p, _G.AutoKenVTWO);
						until not _G.AutoKenVTWO or p.Humanoid.Health <= 0 or SH.PlayerGui.Main.Quest.Visible == false;
					else
						_tp(C);
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == true then
					local p = GetConnectionEnemies("Captain Elephant");
					if p then
						repeat
							wait();
							Attack.Kill(p, _G.AutoKenVTWO);
						until not _G.AutoKenVTWO or p.Humanoid.Health <= 0 or SH.PlayerGui.Main.Quest.Visible == false;
					else
						_tp(Y);
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == false then
					FH.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
					wait(.1);
					FH.Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
				end;
				if FH.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
					_tp(CFrame.new(-12513.51953125, 340.11373901367188, -9873.048828125));
				end;
				if not SH.Backpack:FindFirstChild("Fruit Bowl") or not SH.Character:FindFirstChild("Fruit Bowl") then
					if not GetBP("Fruit Bowl") then
						if not GetBP("Apple") then
							FH.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
							for p, P in pairs(workspace:GetDescendants()) do
								if P.Name == "Apple" then
									P.Handle.CFrame = SH.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
									wait();
									firetouchinterest(SH.Character.HumanoidRootPart, P.Handle, 0);
									wait();
								end;
							end;
						elseif not GetBP("Banana") then
							_tp(CFrame.new(2286.0078125, 73.133918762207031, -7159.80908203125));
							for p, P in pairs(workspace:GetDescendants()) do
								if P.Name == "Banana" then
									P.Handle.CFrame = SH.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
									wait();
									firetouchinterest(SH.Character.HumanoidRootPart, P.Handle, 0);
									wait();
								end;
							end;
						elseif not GetBP("Pineapple") then
							_tp(CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625));
							for p, P in pairs(workspace:GetDescendants()) do
								if P.Name == "Pineapple" then
									P.Handle.CFrame = SH.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
									wait();
									firetouchinterest(SH.Character.HumanoidRootPart, P.Handle, 0);
									wait();
								end;
							end;
						end;
					end;
					if SH.Backpack:FindFirstChild("Banana") and (SH.Backpack:FindFirstChild("Apple") and SH.Backpack:FindFirstChild("Pineapple")) or SH:FindFirstChild("Banana") and (SH:FindFirstChild("Apple") and SH:FindFirstChild("Pineapple")) then
						repeat
							wait();
							_tp(p);
						until _G.AutoKenVTWO or SH.Character.HumanoidRootPart.CFrame == p;
						FH.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
					end;
					if SH.Backpack:FindFirstChild("Fruit Bowl") or SH.Character:FindFirstChild("Fruit Bowl") then
						if SH.Character.HumanoidRootPart.CFrame ~= l then
							_tp(l);
						elseif SH.Character.HumanoidRootPart.CFrame == l then
							FH.Remotes.CommF_:InvokeServer("KenTalk2", "Start");
							wait(.1);
							FH.Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
						end;
					end;
				end;
			end);
		end;
	end;
end);
ObservationFarm:AddToggle("ObservationNormal", { Title = "Farm Observation", Default = false, Callback = function(p)
		_G.obsFarm = p;
	end });
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.obsFarm then
				FH.Remotes.CommE:FireServer("Ken", true);
				if SH:GetAttribute("KenDodgesLeft") == 0 then
					iP = false;
				elseif SH:GetAttribute("KenDodgesLeft") > 0 then
					FH.Remotes.CommE:FireServer("Ken", true);
					iP = true;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.obsFarm then
				if S then
					if workspace.Enemies:FindFirstChild("Galley Captain") then
						if iP then
							repeat
								wait();
								SH.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
							until _G.obsFarm == false or iP == false;
						else
							repeat
								wait();
								SH.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
							until _G.obsFarm == false or iP;
						end;
					else
						_tp(CFrame.new(5533.29785, 88.1079102, 4852.3916));
					end;
				elseif F then
					if workspace.Enemies:FindFirstChild("Lava Pirate") then
						if iP then
							repeat
								wait();
								SH.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
							until _G.obsFarm == false or iP == false;
						else
							repeat
								wait();
								SH.Character.HumanoidRootPart.CFrame = (workspace.Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
							until _G.obsFarm == false or iP;
						end;
					else
						_tp(CFrame.new(-5478.39209, 15.9775667, -5246.9126));
					end;
				elseif h then
					if workspace.Enemies:FindFirstChild("Venomous Assailant") then
						if iP then
							repeat
								wait();
								_tp((workspace.Enemies:FindFirstChild("Venomous Assailant")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0));
							until _G.obsFarm == false or iP == false;
						else
							repeat
								wait();
								_tp((workspace.Enemies:FindFirstChild("Venomous Assailant")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0));
							until _G.obsFarm == false or iP;
						end;
					else
						_tp(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
					end;
				end;
			end;
		end);
	end;
end);
ObservationFarm:AddToggle("ObservationHop", { Title = "Farm Observation [ Hop Server ]", Default = false, Callback = function(p)
		_G.ObservationFarmHop = p;
		if not _G.obsFarm then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Auto Observation Plz!", Duration = 3 });
		end;
	end });
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.obsFarm and _G.ObservationFarmHop then
				if iP then
					Hop();
				end;
			end;
		end);
	end;
end);
BossAuto = Other:AddLeftGroupbox("Auto Boss");
if S then
	tableBoss = {
			"The Gorilla King",
			"Bobby",
			"Yeti",
			"Mob Leader",
			"Vice Admiral",
			"Warden",
			"Chief Warden",
			"Swan",
			"Magma Admiral",
			"Fishman Lord",
			"Wysper",
			"Thunder God",
			"Cyborg",
			"Saber Expert",
		};
elseif F then
	tableBoss = {
			"Diamond",
			"Jeremy",
			"Fajita",
			"Don Swan",
			"Smoke Admiral",
			"Cursed Captain",
			"Darkbeard",
			"Order",
			"Awakened Ice Admiral",
			"Tide Keeper",
		};
elseif h then
	tableBoss = {
			"Stone",
			"Island Empress",
			"Kilo Admiral",
			"Captain Elephant",
			"Beautiful Pirate",
			"rip_indra True Form",
			"Longma",
			"Soul Reaper",
			"Cake Queen",
			"Cake Prince",
			"Dough King",
		};
end;
BossAuto:AddDropdown("Dropdown", {
	Title = "Select Boss",
	Values = tableBoss,
	Default = nil,
	Callback = function(p)
		(getgenv()).SelectBoss = p;
	end,
});
BossAuto:AddToggle("KillBossSelected", { Title = "Kill Boss", Default = false, Callback = function(p)
		(getgenv()).AutoFarmBoss = p;
	end });
BossAuto:AddToggle("KillBossAll", { Title = "Kill All Boss", Default = false, Callback = function(p)
		(getgenv()).AutoFarmAllBoss = p;
	end });
local function P5()
	if Boud then
		if not SH.Character:FindFirstChild("HasBuso") then
			FH.Remotes.CommF_:InvokeServer("Buso");
		end;
	end;
end;
local function l5(p)
	if not p or not p.Parent or not p:FindFirstChild("Humanoid") or not p:FindFirstChild("HumanoidRootPart") then
		return;
	end;
	if p.Humanoid.Health <= 0 then
		return;
	end;
	P5();
	EquipWeapon(_G.SelectWeapon);
	p.HumanoidRootPart.CanCollide = false;
	p.Humanoid.WalkSpeed = 0;
	p.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
	_tp(p.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
end;
spawn(function()
	while task.wait(.2) do
		if (getgenv()).AutoFarmBoss and (getgenv()).SelectBoss ~= "" then
			pcall(function()
				local p = (getgenv()).SelectBoss;
				local P = workspace.Enemies:FindFirstChild(p);
				if P then
					l5(P);
				else
					local P = FH:FindFirstChild(p);
					if P then
						if (getgenv()).BypassTP then
							BTP(P.HumanoidRootPart.CFrame);
						else
							_tp(P.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
						end;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while task.wait(.5) do
		if (getgenv()).AutoFarmAllBoss then
			pcall(function()
				for p, P in pairs(tableBoss) do
					local l = workspace.Enemies:FindFirstChild(P);
					if l then
						l5(l);
						break;
					else
						local p = FH:FindFirstChild(P);
						if p then
							_tp(p.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
							break;
						end;
					end;
				end;
			end);
		end;
	end;
end);
FRD = Window:AddTab("Fruit and Raid, Dungeon");
DevilFruitOpen = FRD:AddLeftGroupbox("Devil Fruit");
DevilFruitOpen:AddToggle("RamdomFruits", { Title = "Random Devil Fruit", Default = false, Callback = function(p)
		_G.Random_Auto = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Random_Auto then
				FH.Remotes.CommF_:InvokeServer("Cousin", "Buy");
			end;
		end);
	end;
end);
DevilFruitOpen:AddToggle("StoreFruits", { Title = "Auto Store", Default = false, Callback = function(p)
		_G.StoreF = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.StoreF then
			pcall(function()
				UpdStFruit();
			end);
		end;
	end;
end);
FruitsSniper = {
		"Rocket-Rocket",
		"Spin-Spin",
		"Blade-Blade",
		"Spring-Spring",
		"Bomb-Bomb",
		"Smoke-Smoke",
		"Spike-Spike",
		"Flame-Flame",
		"Ice-Ice",
		"Sand-Sand",
		"Dark-Dark",
		"Eagle-Eagle",
		"Diamond-Diamond",
		"Light-Light",
		"Rubber-Rubber",
		"Ghost-Ghost",
		"Magma-Magma",
		"Quake-Quake",
		"Buddha-Buddha",
		"Love-Love",
		"Creation-Creation",
		"Spider-Spider",
		"Sound-Sound",
		"Phoenix-Phoenix",
		"Portal-Portal",
		"Lightning-Lightning",
		"Pain-Pain",
		"Blizzard-Blizzard",
		"Gravity-Gravity",
		"Mammoth-Mammoth",
		"T-Rex-T-Rex",
		"Dough-Dough",
		"Shadow-Shadow",
		"Venom-Venom",
		"Gas-Gas",
		"Spirit-Spirit",
		"Tiger-Tiger",
		"Yeti-Yeti",
		"Kitsune-Kitsune",
		"Control-Control",
		"Dragon-Dragon",
	};
DevilFruitOpen:AddDropdown("SniperSelect", {
	Title = "Blox Fruit Sniper Shop",
	Values = FruitsSniper,
	Default = nil,
	Callback = function(p)
		(getgenv()).SelectFruit = p;
	end,
});
DevilFruitOpen:AddToggle("FruitsSniperShop", { Title = "Buy Blox Fruit Sniper Shop", Default = false, Callback = function(p)
		(getgenv()).AutoBuyFruitSniper = p;
	end });
spawn(function()
	pcall(function()
		while task.wait(1) do
			if (getgenv()).AutoBuyFruitSniper then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("GetFruits");
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("PurchaseRawFruit", (getgenv()).SelectFruit);
			end;
		end;
	end);
end);
RaidOpen = FRD:AddLeftGroupbox("Raids");
RaidOpen:AddDropdown("SelectRaidsChip", {
	Title = "Select Raid",
	Values = {
		"Flame",
		"Ice",
		"Quake",
		"Light",
		"Dark",
		"Spider",
		"Magma",
		"Buddha",
		"Sand",
		"Phoenix",
		"Dough",
	},
	Default = nil,
	Callback = function(p)
		_G.SelectChip = p;
	end,
});
RaidOpen:AddToggle("BuyChipsLowBeliFruits", { Title = "Get Fruit in Inventory Low Beli", Default = false, Callback = function(p)
		(getgenv()).AutoGetFruit = p;
	end });
spawn(function()
	while task.wait(.1) do
		pcall(function()
			if not (getgenv()).AutoGetFruit then
				return;
			end;
			if GetBP("Special Microchip") then
				(getgenv()).AutoGetFruit = false;
				return;
			end;
			local p = {};
			local P = (FH:WaitForChild("Remotes")).CommF_:InvokeServer("GetFruits");
			for P, l in pairs(P) do
				if l.Price <= 490000 then
					table.insert(p, l.Name);
				end;
			end;
			for p, P in pairs(p) do
				if not (getgenv()).AutoGetFruit then
					break;
				end;
				if GetBP("Special Microchip") then
					break;
				end;
				FH.Remotes.CommF_:InvokeServer("LoadFruit", tostring(P));
				if _G.SelectChip then
					FH.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
				end;
				task.wait(.5);
			end;
		end);
	end;
end);
RaidOpen:AddToggle("RaidFarming", { Title = "Auto Raid", Default = false, Callback = function(p)
		_G.Raiding = p;
	end });
spawn(function()
	pcall(function()
		while wait(QH) do
			if _G.Raiding then
				if SH.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
					local p = {
							"Island5",
							"Island 4",
							"Island 3",
							"Island 2",
							"Island 1",
						};
					for p, P in ipairs(p) do
						local l = (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild(P);
						if l then
							for p, P in pairs(workspace.Enemies:GetChildren()) do
								if P:FindFirstChild("Humanoid") or P:FindFirstChild("HumanoidRootPart") then
									if P.Humanoid.Health > 0 then
										repeat
											wait();
											Attack.Kill(P, _G.Raiding);
											NextIs = false;
										until not _G.Raiding or not P.Parent or P.Humanoid.Health <= 0;
										NextIs = true;
									end;
								end;
							end;
						end;
					end;
				else
					NextIs = false;
				end;
			else
				NextIs = false;
			end;
		end;
	end);
end);
RaidOpen:AddToggle("AwakenFruits", { Title = "Auto Awaken Fruit", Default = false, Callback = function(p)
		_G.Auto_Awakener = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Auto_Awakener then
				FH.Remotes.CommF_:InvokeServer("Awakener", "Check");
				FH.Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end;
		end);
	end;
end);
local C5 = FRD:AddLeftGroupbox("Dungeon");
local Y5 = 35;
local r5 = 5000;
local U5 = 30;
local v5 = 250;
local u5 = 4;
local d5 = .15;
local i5 = 73902483975735;
local Z5 = "PropHitboxPlaceholder";
local N5 = 1000000;
local X5 = "Blank Buddy";
local function A5(p)
	local P = SH.Character;
	if not P or not P:FindFirstChild("HumanoidRootPart") then
		return;
	end;
	local l = TweenInfo.new((P.HumanoidRootPart.Position - p.Position).Magnitude / 200, Enum.EasingStyle.Linear);
	local C = (game:GetService("TweenService")):Create(P.HumanoidRootPart, l, { CFrame = p });
	C:Play();
	C.Completed:Wait();
end;
local function s5(p)
	local P = SH.Character;
	if P and P:FindFirstChild("HumanoidRootPart") then
		P.HumanoidRootPart.CFrame = p;
	end;
end;
local function L5()
	if not SH.Character then
		return;
	end;
	if not SH.Character:FindFirstChild("HasBuso") then
		local p = { [1] = "Buso" };
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(p));
	end;
end;
local function e5(p)
	if not p or p == "" then
		return;
	end;
	local P = SH.Character;
	local l = SH.Backpack;
	pcall(function()
		if l:FindFirstChild(p) then
			local P = l[p];
			SH.Character.Humanoid:EquipTool(P);
		elseif P:FindFirstChild(p) then
 
		end;
	end);
end;
local function q5(p)
	if p then
		local p = SH.Character;
		if p and p:FindFirstChild("Humanoid") then
			p.Humanoid:MoveTo(p.HumanoidRootPart.Position);
		end;
	end;
end;
C5:AddDropdown("DungeonWeapon", {
	Title = "Select Weapon in Dungeon",
	Values = { "Melee", "Sword", "Blox Fruit" },
	Default = nil,
	Callback = function(p)
		_G.ChooseWP = p;
		UpdateSelectedWeapon();
	end,
});
local function V5()
	if not _G.ChooseWP or _G.ChooseWP == "" then
		_G.SelectWeapon = "";
		return;
	end;
	pcall(function()
		local p = SH.Backpack;
		if _G.ChooseWP == "Melee" then
			for p, P in pairs(p:GetChildren()) do
				if P:IsA("Tool") and P.ToolTip == "Melee" then
					_G.SelectWeapon = P.Name;
					break;
				end;
			end;
		elseif _G.ChooseWP == "Sword" then
			for p, P in pairs(p:GetChildren()) do
				if P:IsA("Tool") and P.ToolTip == "Sword" then
					_G.SelectWeapon = P.Name;
					break;
				end;
			end;
		elseif _G.ChooseWP == "Blox Fruit" then
			for p, P in pairs(p:GetChildren()) do
				if P:IsA("Tool") and P.ToolTip == "Blox Fruit" then
					_G.SelectWeapon = P.Name;
					break;
				end;
			end;
		end;
	end);
end;
spawn(function()
	while wait(QH) do
		if AutoFarmDungeon then
			V5();
		end;
	end;
end);
C5:AddButton({ Title = "Teleport to Dungeon", Callback = function()
		local p = game:GetService("Players");
		local P = p.LocalPlayer;
		local l = P:WaitForChild("PlayerGui");
		local C = 73902483975735;
		local function Y()
			return game.PlaceId == C;
		end;
		local function r(p)
			if not p or not p.Parent then
				return false;
			end;
			local P = pcall(function()
					p:Activate();
				end);
			if not P then
				pcall(function()
					if fireclickdetector then
						fireclickdetector(p:FindFirstChildOfClass("ClickDetector"));
					end;
				end);
			end;
			return true;
		end;
		if not Y() then
			local p = ((l:WaitForChild("Topbar")):WaitForChild("Frame")):WaitForChild("ServerBrowserButton");
			r(p);
			task.wait(.5);
			local P = l:WaitForChild("ServerBrowser");
			local C = tick();
			while tick() - C < 5 do
				if P.Enabled then
					break;
				end;
				task.wait(.1);
			end;
			local Y = ((P:WaitForChild("Frame")):WaitForChild("TeleportButtons")):WaitForChild("Dungeon");
			for p = 1, 3, 1 do
				r(Y);
				task.wait(.25);
			end;
		else
			warn("You are already in Dungeon!");
		end;
	end });
C5:AddToggle("AutoDungeon", { Title = "Auto Dungeon", Default = false, Callback = function(p)
		AutoFarmDungeon = p;
		if p then
			q5(true);
			GoingToExit = false;
			DeathPause = false;
		end;
	end });
C5:AddToggle("DungeonBringMob", { Title = "Bring Mobs", Default = true, Callback = function(p)
		DungeonBring = p;
	end });
local function k5()
	return game.PlaceId == i5;
end;
local function f5()
	return workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Dungeon");
end;
local function y5()
	return SH.Character;
end;
local function j5()
	local p = y5();
	return p and p:FindFirstChildOfClass("Humanoid");
end;
local function c5()
	local p = SH.Character;
	return p and p:FindFirstChild("HumanoidRootPart");
end;
local function D5(p)
	local P = workspace:FindFirstChild("Map");
	local l = P and P:FindFirstChild("Dungeon");
	return l and l:FindFirstChild(tostring(p));
end;
local function G5(p, P)
	if not p or not P or not p:IsA("Model") then
		return false;
	end;
	local l, C, Y = pcall(function()
			return p:GetBoundingBox();
		end);
	if not l then
		return false;
	end;
	local r = C:PointToObjectSpace(P);
	local U = 25;
	return math.abs(r.X) <= Y.X / 2 + U and (math.abs(r.Y) <= Y.Y / 2 + U and math.abs(r.Z) <= Y.Z / 2 + U);
end;
local function m5()
	if not f5() then
		return nil;
	end;
	local p = c5();
	if not p then
		return nil;
	end;
	local P = workspace.Map.Dungeon;
	for P, l in ipairs(P:GetChildren()) do
		if l:IsA("Model") and G5(l, p.Position) then
			return l;
		end;
	end;
	return nil;
end;
local function o5()
	local p = workspace:FindFirstChild("Enemies");
	if not p then
		return;
	end;
	for p, P in ipairs(p:GetChildren()) do
		if P and P.Name == Z5 then
			P:Destroy();
		end;
	end;
end;
local function E5()
	local p = c5();
	local P = D5(16);
	if P and (p and G5(P, p.Position)) then
		o5();
	end;
end;
local function T5(p, P)
	if not p or not p.Parent then
		return false;
	end;
	if p.Name == X5 then
		return false;
	end;
	local l = p:FindFirstChild("Humanoid");
	local C = p:FindFirstChild("HumanoidRootPart");
	if not l or not C then
		return false;
	end;
	if l.Health <= 0 then
		return false;
	end;
	local Y = (P - C.Position).Magnitude;
	if Y > r5 then
		return false;
	end;
	return true;
end;
local function g5()
	local p = c5();
	if not p then
		return nil;
	end;
	local P = nil;
	local l = math.huge;
	local C = workspace:FindFirstChild("Enemies");
	if not C then
		return nil;
	end;
	for C, Y in ipairs(C:GetChildren()) do
		if T5(Y, p.Position) then
			local C = Y:FindFirstChild("HumanoidRootPart");
			if C then
				local r = (p.Position - C.Position).Magnitude;
				local U = r;
				if Y.Name == Z5 then
					U = U - N5;
				end;
				if U < l then
					l = U;
					P = Y;
				end;
			end;
		end;
	end;
	return P;
end;
local function M5()
	local p = c5();
	if not p then
		return false;
	end;
	local P = workspace:FindFirstChild("Enemies");
	if not P then
		return false;
	end;
	for P, l in ipairs(P:GetChildren()) do
		if T5(l, p.Position) then
			return true;
		end;
	end;
	return false;
end;
local function a5(p)
	if not p or p:FindFirstChild("Frozen") then
		return;
	end;
	pcall(function()
		local P = Instance.new("BoolValue");
		P.Name = "Frozen";
		P.Parent = p;
		if p:FindFirstChild("HumanoidRootPart") then
			p.HumanoidRootPart.CanCollide = false;
		end;
		if p:FindFirstChild("Humanoid") then
			p.Humanoid.WalkSpeed = 0;
			p.Humanoid.JumpPower = 0;
		end;
	end);
end;
local function n5()
	if not AutoFarmDungeon or GoingToExit then
		return;
	end;
	if not k5() or not f5() then
		return;
	end;
	GoingToExit = true;
	q5(true);
	local function p()
		local p = m5();
		if p and p:FindFirstChild("ExitTeleporter") then
			local P = p.ExitTeleporter;
			if P:IsA("Model") and P.PrimaryPart then
				return P.PrimaryPart.CFrame;
			elseif P:IsA("BasePart") then
				return P.CFrame;
			end;
		end;
		local P = workspace.Map.Dungeon;
		local l = c5();
		if not l then
			return nil;
		end;
		local C = nil;
		local Y = math.huge;
		for p, P in pairs(P:GetChildren()) do
			local r = P:FindFirstChild("ExitTeleporter");
			if r then
				local p = r:IsA("Model") and r.PrimaryPart or r;
				if p then
					local P = (l.Position - p.Position).Magnitude;
					if P < Y then
						Y = P;
						C = p.CFrame;
					end;
				end;
			end;
		end;
		return C;
	end;
	for P = 1, 3, 1 do
		local l = p();
		if l then
			s5(l * CFrame.new(0, 5, 0));
			task.wait(.5);
		end;
	end;
	GoingToExit = false;
end;
spawn(function()
	while task.wait(.1) do
		if not AutoFarmDungeon then
			continue;
		end;
		if GoingToExit or DeathPause then
			continue;
		end;
		if not k5() or not f5() then
			continue;
		end;
		pcall(function()
			E5();
			if not M5() then
				n5();
				return;
			end;
			local p = g5();
			if not p then
				n5();
				return;
			end;
			local P = c5();
			if not P then
				return;
			end;
			a5(p);
			L5();
			e5(_G.SelectWeapon);
			local l = p:FindFirstChild("HumanoidRootPart");
			if not l then
				return;
			end;
			local C = l.CFrame * CFrame.new(0, U5, Y5);
			if (P.Position - C.Position).Magnitude > 10 then
				s5(C);
			end;
			local Y = SH.Character:FindFirstChildOfClass("Tool");
			if Y and Y:FindFirstChild("RemoteEvent") then
				Y.RemoteEvent:FireServer("Mouse1", l.Position);
			end;
		end);
	end;
end);
local S5;
local function F5()
	if S5 then
		pcall(function()
			S5:Disconnect();
		end);
	end;
	local p = j5();
	if not p then
		return;
	end;
	S5 = p.Died:Connect(function()
			if not AutoFarmDungeon then
				return;
			end;
			DeathPause = true;
			q5(true);
			task.wait(3);
			if SH.Character then
				SH.Character:WaitForChild("HumanoidRootPart", 5);
				DeathPause = false;
			end;
		end);
end;
SH.CharacterAdded:Connect(function()
	task.wait(1);
	F5();
	DeathPause = false;
end);
task.wait(1);
F5();
J = Window:AddTab("Sea Event");
SettingsSea = J:AddLeftGroupbox("Setting");
SettingsSea:AddDropdown("SelectZone", {
	Title = "Select Zone",
	Values = {
		"Zone 1",
		"Zone 2",
		"Zone 3",
		"Zone 4",
		"Zone 5",
		"Zone 6",
	},
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.DangerSc = p;
	end,
});
SettingsSea:AddDropdown("SelectSeaEvent", {
	Title = "Select Sea Events",
	Values = {
		"Zone 1",
		"Zone 2",
		"Zone 3",
		"Zone 4",
		"Zone 5",
		"Zone 6",
	},
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.SelectSeaEvent = p;
	end,
});
SettingsSea:AddDropdown("SelectBoat", {
	Title = "Select Boat",
	Values = {
		"Guardian",
		"PirateGrandBrigade",
		"MarineGrandBrigade",
		"PirateBrigade",
		"MarineBrigade",
		"PirateSloop",
		"MarineSloop",
		"Beast Hunter",
	},
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.SelectSeaEvent = p;
	end,
});
spawn(function()
	while wait() do
		pcall(function()
			local p = _G.SelectSeaEvent;
			if p == "Shark" then
				local p = { "Shark" };
				if CheckShark() then
					for P, l in pairs(workspace.Enemies:GetChildren()) do
						if table.find(p, l.Name) then
							if Attack.Alive(l) then
								repeat
									task.wait();
									Attack.Kill(l, true);
								until _G.SelectSeaEvent ~= "Shark" or not l.Parent or l.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			elseif p == "Piranha" then
				local p = { "Piranha" };
				if CheckPiranha() then
					for P, l in pairs(workspace.Enemies:GetChildren()) do
						if table.find(p, l.Name) then
							if Attack.Alive(l) then
								repeat
									task.wait();
									Attack.Kill(l, true);
								until _G.SelectSeaEvent ~= "Piranha" or not l.Parent or l.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			elseif p == "Terror Shark" then
				local p = { "Terrorshark" };
				if CheckTerrorShark() then
					for P, l in pairs(workspace.Enemies:GetChildren()) do
						if table.find(p, l.Name) then
							if Attack.Alive(l) then
								repeat
									task.wait();
									Attack.KillSea(l, true);
								until _G.SelectSeaEvent ~= "Terror Shark" or not l.Parent or l.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			elseif p == "Fish Crew Member" then
				local p = { "Fish Crew Member" };
				if CheckFishCrew() then
					for P, l in pairs(workspace.Enemies:GetChildren()) do
						if table.find(p, l.Name) then
							if Attack.Alive(l) then
								repeat
									task.wait();
									Attack.Kill(l, true);
								until _G.SelectSeaEvent ~= "Fish Crew Member" or not l.Parent or l.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			elseif p == "Haunted Crew Member" then
				local p = { "Haunted Crew Member" };
				if CheckHauntedCrew() then
					for P, l in pairs(workspace.Enemies:GetChildren()) do
						if table.find(p, l.Name) then
							if Attack.Alive(l) then
								repeat
									task.wait();
									Attack.Kill(l, true);
								until _G.SelectSeaEvent ~= "Haunted Crew Member" or not l.Parent or l.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			elseif p == "Pirate Grand Brigade" then
				if CheckPirateGrandBrigade() then
					for p, P in pairs(workspace.Enemies:GetChildren()) do
						if P:FindFirstChild("Health") and (P.Health.Value > 0 and P:FindFirstChild("VehicleSeat")) then
							repeat
								task.wait();
								spawn(function()
									if P.Name == "PirateBrigade" then
										_tp(P.Engine.CFrame * CFrame.new(0, -30, -10));
									elseif P.Name == "PirateGrandBrigade" then
										_tp(P.Engine.CFrame * CFrame.new(0, -50, -50));
									end;
								end);
								if SH:DistanceFromCharacter(P.Engine.CFrame.Position) <= 150 then
									AitSeaSkill_Custom = P.Engine.CFrame;
									MousePos = AitSeaSkill_Custom.Position;
									if CheckF() then
										weaponSc("Blox Fruit");
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
									else
										Useskills("Melee", "Z");
										Useskills("Melee", "X");
										Useskills("Melee", "C");
										wait(.1);
										Useskills("Sword", "Z");
										Useskills("Sword", "X");
										wait(.1);
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
										wait(.1);
										Useskills("Gun", "Z");
										Useskills("Gun", "X");
									end;
								end;
							until _G.SelectSeaEvent ~= "Pirate Grand Brigade" or not P:FindFirstChild("VehicleSeat") or P.Health.Value <= 0;
						end;
					end;
				end;
			elseif p == "Fish Boat" then
				if CheckEnemiesBoat() then
					for p, P in pairs(workspace.Enemies:GetChildren()) do
						if P:FindFirstChild("Health") and (P.Health.Value > 0 and P:FindFirstChild("VehicleSeat")) then
							repeat
								task.wait();
								spawn(function()
									if P.Name == "FishBoat" then
										_tp(P.Engine.CFrame * CFrame.new(0, -50, -25));
									end;
								end);
								if SH:DistanceFromCharacter(P.Engine.CFrame.Position) <= 150 then
									AitSeaSkill_Custom = P.Engine.CFrame;
									MousePos = AitSeaSkill_Custom.Position;
									if CheckF() then
										weaponSc("Blox Fruit");
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
									else
										Useskills("Melee", "Z");
										Useskills("Melee", "X");
										Useskills("Melee", "C");
										wait(.1);
										Useskills("Sword", "Z");
										Useskills("Sword", "X");
										wait(.1);
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
										wait(.1);
										Useskills("Gun", "Z");
										Useskills("Gun", "X");
									end;
								end;
							until _G.SelectSeaEvent ~= "Fish Boat" or not P:FindFirstChild("VehicleSeat") or P.Health.Value <= 0;
						end;
					end;
				end;
			elseif p == "Sea Beast" then
				if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
					for p, P in pairs(workspace.SeaBeasts:GetChildren()) do
						if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Health") and P.Health.Value > 0) then
							repeat
								task.wait();
								spawn(function()
									_tp(CFrame.new(P.HumanoidRootPart.Position.X, (game:GetService("Workspace")).Map["WaterBase-Plane"].Position.Y + 200, P.HumanoidRootPart.Position.Z));
								end);
								if SH:DistanceFromCharacter(P.HumanoidRootPart.CFrame.Position) <= 500 then
									AitSeaSkill_Custom = P.HumanoidRootPart.CFrame;
									MousePos = AitSeaSkill_Custom.Position;
									if CheckF() then
										weaponSc("Blox Fruit");
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
									else
										Useskills("Melee", "Z");
										Useskills("Melee", "X");
										Useskills("Melee", "C");
										wait(.1);
										Useskills("Sword", "Z");
										Useskills("Sword", "X");
										wait(.1);
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
										wait(.1);
										Useskills("Gun", "Z");
										Useskills("Gun", "X");
									end;
								end;
							until _G.SelectSeaEvent ~= "Sea Beast" or not P:FindFirstChild("HumanoidRootPart") or not P.Parent or P.Health.Value <= 0;
						end;
					end;
				end;
			elseif p == "Leviathan" then
				if workspace.SeaBeasts:FindFirstChild("Leviathan") then
					for p, P in pairs(workspace.SeaBeasts:GetChildren()) do
						if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Leviathan Segment") and (P:FindFirstChild("Health") and P.Health.Value > 0)) then
							repeat
								task.wait();
								spawn(function()
									_tp(CFrame.new(P.HumanoidRootPart.Position.X, (game:GetService("Workspace")).Map["WaterBase-Plane"].Position.Y + 200, P.HumanoidRootPart.Position.Z));
								end);
								if SH:DistanceFromCharacter(P.HumanoidRootPart.CFrame.Position) <= 500 then
									MousePos = (P:FindFirstChild("Leviathan Segment")).Position;
									if CheckF() then
										weaponSc("Blox Fruit");
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
									else
										Useskills("Melee", "Z");
										Useskills("Melee", "X");
										Useskills("Melee", "C");
										wait(.1);
										Useskills("Sword", "Z");
										Useskills("Sword", "X");
										wait(.1);
										Useskills("Blox Fruit", "Z");
										Useskills("Blox Fruit", "X");
										Useskills("Blox Fruit", "C");
										wait(.1);
										Useskills("Gun", "Z");
										Useskills("Gun", "X");
									end;
								end;
							until _G.SelectSeaEvent ~= "Leviathan" or not P:FindFirstChild("HumanoidRootPart") or not P.Parent or P.Health.Value <= 0;
						end;
					end;
				end;
			end;
		end);
	end;
end);
SettingsSea:AddToggle("NoClipRocks", { Title = "Auto Penetrate Rocks When Boat Runs", Default = true, Callback = function(p)
		(getgenv()).GoThroughRocks = p;
	end });
spawn(function()
	while task.wait(1) do
		if (getgenv()).GoThroughRocks or (getgenv()).SailBoat then
			for p, P in ipairs((game:GetService("Workspace")).Boats:GetChildren()) do
				for p, P in ipairs(P:GetDescendants()) do
					if P:IsA("BasePart") then
						P.CanCollide = false;
					end;
				end;
			end;
		else
			for p, P in ipairs((game:GetService("Workspace")).Boats:GetChildren()) do
				for p, P in ipairs(P:GetDescendants()) do
					if P:IsA("BasePart") then
						P.CanCollide = true;
					end;
				end;
			end;
		end;
	end;
end);
SettingsSea:AddToggle("SeaFarm", { Title = "Auto Sea Event", Default = false, Callback = function(p)
		_G.SailBoats = p;
	end });
spawn(function()
	while wait() do
		if _G.SailBoats then
			pcall(function()
				local p = CheckBoat();
				if not p and (not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha) and (not (CheckEnemiesBoat() and _G.FishBoat) and (not (CheckSeaBeast() and _G.SeaBeast1) and (not (_G.PGB and CheckPirateGrandBrigade()) and (not (_G.HCM and CheckHauntedCrew()) and not (_G.Leviathan1 and CheckLeviathan())))))) then
					local p = CFrame.new(-16927.451, 9.086, 433.864);
					TeleportToTarget(p);
					if (p.Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10 then
						FH.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat);
					end;
				elseif p and (not (CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha) and (not (CheckEnemiesBoat() and _G.FishBoat) and (not (CheckSeaBeast() and _G.SeaBeast1) and (not (_G.PGB and CheckPirateGrandBrigade()) and (not (_G.HCM and CheckHauntedCrew()) and not (_G.Leviathan1 and CheckLeviathan())))))) then
					if SH.Character.Humanoid.Sit == false then
						local P = p.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
						_tp(P);
					else
						if _G.DangerSc == "Lv 1" then
							CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143);
						elseif _G.DangerSc == "Lv 2" then
							CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032);
						elseif _G.DangerSc == "Lv 3" then
							CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774);
						elseif _G.DangerSc == "Lv 4" then
							CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012);
						elseif _G.DangerSc == "Lv 5" then
							CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023);
						elseif _G.DangerSc == "Lv 6" then
							CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584);
						elseif _G.DangerSc == "Lv Infinite" then
							CFrameSelectedZone = CFrame.new(-10000000, 31, 37016.25);
						end;
						repeat
							wait();
							if not _G.FishBoat and CheckEnemiesBoat() or not _G.PGB and CheckPirateGrandBrigade() or not _G.TerrorShark and CheckTerrorShark() then
								_tp(CFrameSelectedZone * CFrame.new(0, 150, 0));
							else
								_tp(CFrameSelectedZone);
							end;
						until _G.SailBoats == false or CheckShark() and _G.Shark or CheckTerrorShark() and _G.TerrorShark or CheckFishCrew() and _G.MobCrew or CheckPiranha() and _G.Piranha or CheckSeaBeast() and _G.SeaBeast1 or CheckEnemiesBoat() and _G.FishBoat or _G.Leviathan1 and CheckLeviathan() or _G.HCM and CheckHauntedCrew() or _G.PGB and CheckPirateGrandBrigade() or (SH.Character:WaitForChild("Humanoid")).Sit == false;
						SH.Character.Humanoid.Sit = false;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(QH) do
		pcall(function()
			for p, P in pairs(workspace.Boats:GetChildren()) do
				for p, P in pairs(workspace.Boats[P.Name]:GetDescendants()) do
					if P:IsA("BasePart") then
						if _G.SailBoats or _G.Prehis_Find or _G.FindMirage or _G.SailBoat_Hydra or _G.AutofindKitIs then
							P.CanCollide = false;
						else
							P.CanCollide = true;
						end;
					end;
				end;
			end;
		end);
	end;
end);
KitsuneSection = J:AddLeftGroupbox("Kitsune Event");
KitsuneSection:AddToggle("KitsuneToggle", { Title = "Teleport To Kitsune Island", Default = false, Callback = function(p)
		_G.tweenKitsune = p;
	end });
KitsuneSection:AddToggle("SummonToggle", { Title = "Auto Summon Soul EmBer", Default = false, Callback = function(p)
		_G.tweenKitShrine = p;
	end });
KitsuneSection:AddToggle("CollectToggle", { Title = "Auto Collect Azure Wisp", Default = false, Callback = function(p)
		_G.Collect_Ember = p;
	end });
KitsuneSection:AddSlider("AzureSlider", {
	Title = "Values Azure Ember",
	Min = 0,
	Max = 25,
	Default = 20,
	Callback = function(p)
		_G.SetAzureEmber = p;
	end,
});
KitsuneSection:AddToggle("TradeToggle", { Title = "Auto Trade Azure Ember", Default = false, Callback = function(p)
		_G.AutofindKitIs = p;
	end });
KitsuneSection:AddButton({ Title = "Trade Azure Wisp", Callback = function()
		local p = FH:FindFirstChild("Modules") and FH.Modules:FindFirstChild("Net");
		local P = p and p:FindFirstChild("RF/KitsuneStatuePray");
		if P then
			P:InvokeServer();
		end;
	end });
LeviathanSection = J:AddLeftGroupbox("Leviathan Event");
LeviathanSection:AddButton({ Title = "Buy Spy", Callback = function()
		FH.Remotes.CommF_:InvokeServer("InfoLeviathan", "2");
	end });
LeviathanSection:AddToggle("FrozenToggle", { Title = "Teleport To Frozen Dimension", Default = false, Callback = function(p)
		_G.FrozenTP = p;
	end });
LeviathanSection:AddToggle("LeviathanToggle", { Title = "Auto Attack Leviathan", Default = false, Callback = function(p)
		_G.Leviathan1 = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.tweenKitsune then
			pcall(function()
				local p = workspace.Map;
				local P = p:FindFirstChild("KitsuneIsland");
				if P then
					local p = P.ShrineActive.NeonShrinePart;
					_tp(p.CFrame * CFrame.new(0, 0, 10));
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(QH) do
		if _G.tweenKitShrine and h then
			pcall(function()
				local p = FH:FindFirstChild("Modules") and FH.Modules:FindFirstChild("Net");
				local P = p and p:FindFirstChild("RF/KitsuneStatuePray");
				if P then
					P:InvokeServer();
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(QH) do
		if _G.Collect_Ember then
			pcall(function()
				local p = workspace:FindFirstChild("AttachedAzureEmber");
				local P = workspace:FindFirstChild("EmberTemplate");
				if p and P then
					local p = P:FindFirstChild("Part");
					if p then
						local P = KH.Position;
						local l = p.Position;
						if (P - l).Magnitude > 10 then
							_tp(p.CFrame);
						end;
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(QH) do
		if _G.AutofindKitIs then
			pcall(function()
				local p = GetM("Azure Ember");
				if p >= _G.SetAzureEmber then
					local p = FH:FindFirstChild("Modules") and FH.Modules:FindFirstChild("Net");
					local P = p and p:FindFirstChild("RF/KitsuneStatuePray");
					if P then
						P:InvokeServer();
					end;
					FH.Remotes.CommF_:InvokeServer("KitsuneStatuePray");
					wait(5);
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(QH) do
		if _G.FrozenTP and h then
			pcall(function()
				local p = workspace.Map:FindFirstChild("FrozenDimension");
				if p then
					local P = p.Center.Position;
					local l = KH.Position;
					if (l - Vector3.new(P.X, 500, P.Z)).Magnitude > 10 then
						_tp(CFrame.new(P.X, 500, P.Z));
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(QH) do
		if _G.Leviathan1 and h then
			pcall(function()
				for p, P in pairs(workspace.SeaBeasts:GetChildren()) do
					if P.Name == "Leviathan" and P:FindFirstChild("HumanoidRootPart") then
						repeat
							wait(.2);
							if (KH.Position - P.HumanoidRootPart.Position).Magnitude > 10 then
								_tp(P.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0));
							end;
							if not _G.SeaBeast1 then
								_G.SeaBeast1 = true;
							end;
							if not SH.Character:FindFirstChild("HasBuso") then
								FH.Remotes.CommF_:InvokeServer("Buso");
							end;
							MousePos = P.HumanoidRootPart.Position;
						until not P:FindFirstChild("HumanoidRootPart") or not _G.Leviathan1;
						_G.SeaBeast1 = false;
					end;
				end;
			end);
		end;
	end;
end);
Race = Window:AddTab("Upgrade Race");
DracoRace = Race:AddLeftGroupbox("Race Draco");
DracoRace:AddToggle("DracoAutoRace", { Title = "Auto Upgrade Race V2-V3 Draco", Default = false, Callback = function(p)
		_G.AutoFireFlowers = p;
		_G.DragoV3 = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.AutoFireFlowers then
			pcall(function()
				local p = workspace:FindFirstChild("FireFlowers");
				local P = GetConnectionEnemies("Forest Pirate");
				if P then
					repeat
						wait();
						Attack.Kill(P, _G.AutoFireFlowers);
					until not _G.AutoFireFlowers or not P.Parent or P.Humanoid.Health <= 0 or p;
				else
					_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
				end;
				if p then
					for p, P in pairs(p:GetChildren()) do
						if P:IsA("Model") and P.PrimaryPart then
							local p = P.PrimaryPart.Position;
							local l = SH.Character and SH.Character:FindFirstChild("HumanoidRootPart");
							if l then
								local P = (p - l.Position).Magnitude;
								if P <= 100 then
									wH:SendKeyEvent(true, "E", false, game);
									wait(1.5);
									wH:SendKeyEvent(false, "E", false, game);
								else
									_tp(CFrame.new(p));
								end;
							end;
						end;
					end;
				end;
			end);
		end;
		if _G.DragoV3 then
			pcall(function()
				_G.DangerLV = "Lv Infinite";
				_G.SailBoats = true;
				_G.TerrorShark = true;
				while _G.DragoV3 do
					wait();
				end;
				_G.DangerLV = "Lv 1";
				_G.SailBoats = false;
				_G.TerrorShark = false;
			end);
		end;
	end;
end);
DracoRace:AddToggle("DracoTrial", { Title = "Auto Trial Draco", Default = false, Callback = function(p)
		_G.Relic123 = p;
	end });
spawn(function()
	while wait(QH) do
		if _G.Relic123 then
			pcall(function()
				if workspace.Map:FindFirstChild("DracoTrial") then
					FH.Remotes.DracoTrial:InvokeServer();
					wait(.5);
					if KH then
						repeat
							wait();
							_tp(CFrame.new(-39934.9765625, 10685.359375, 22999.34375));
						until not _G.Relic123 or (KH.Position - Vector3.new(-39934.9765625, 10685.359375, 22999.34375)).Magnitude <= 10;
						repeat
							wait();
							_tp(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625));
						until not _G.Relic123 or (KH.Position - Vector3.new(-40511.25390625, 9376.4013671875, 23458.37890625)).Magnitude <= 10;
						wait(2.5);
						repeat
							wait();
							_tp(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375));
						until not _G.Relic123 or (KH.Position - Vector3.new(-39914.65625, 10685.384765625, 23000.177734375)).Magnitude <= 10;
						repeat
							wait();
							_tp(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375));
						until not _G.Relic123 or (KH.Position - Vector3.new(-40045.83203125, 9376.3984375, 22791.287109375)).Magnitude <= 10;
						wait(2.5);
						repeat
							wait();
							_tp(CFrame.new(-39908.5, 10685.4052734375, 22990.04296875));
						until not _G.Relic123 or (KH.Position - Vector3.new(-39908.5, 10685.4052734375, 22990.04296875)).Magnitude <= 10;
						repeat
							wait();
							_tp(CFrame.new(-39609.5, 9376.400390625, 23472.94335975));
						until not _G.Relic123 or (KH.Position - Vector3.new(-39609.5, 9376.400390625, 23472.94335975)).Magnitude <= 10;
					end;
				else
					local p = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
					if p and p:IsA("Part") then
						_tp(CFrame.new(p.Position));
					end;
				end;
			end);
		end;
	end;
end);
RaceNormalUpgrade = Race:AddLeftGroupbox("Race Normal");
RaceNormalUpgrade:AddToggle("UpgradeRaceV2Toggle", { Title = "Auto Upgrade Race V2", Default = false, Callback = function(p)
		_G.AutoEvoRace = p;
	end });
spawn(function()
	while wait(.2) do
		if _G.AutoEvoRace and F then
			pcall(function()
				local p = FH.Remotes.CommF_:InvokeServer("Alchemist", "1");
				if p == 0 then
					_tp(CFrame.new(-2779.83521, 72.9661407, -3574.02002));
					wait(1.1);
					FH.Remotes.CommF_:InvokeServer("Alchemist", "2");
				elseif p == 1 then
					if not GetBP("Flower 1") then
						if workspace:FindFirstChild("Flower1") then
							_tp(workspace.Flower1.CFrame);
						end;
					elseif not GetBP("Flower 2") then
						if workspace:FindFirstChild("Flower2") then
							_tp(workspace.Flower2.CFrame);
						end;
					elseif not GetBP("Flower 3") then
						local p = GetConnectionEnemies("Zombie");
						if p then
							repeat
								wait();
								Attack.Kill(p, _G.AutoEvoRace);
							until GetBP("Flower 3") or not p.Parent or p.Humanoid.Health <= 0;
						else
							_tp(CFrame.new(-5685.923, 48.48, -853.237));
						end;
					end;
				elseif p == 2 then
					FH.Remotes.CommF_:InvokeServer("Alchemist", "3");
				end;
			end);
		end;
	end;
end);
RaceNormalUpgrade:AddToggle("GhoulToggle", { Title = "Auto Get Ghoul", Default = false, Callback = function(p)
		_G.GhoulGet = p;
	end });
spawn(function()
	while wait(.1) do
		if _G.GhoulGet then
			pcall(function()
				local p = GetConnectionEnemies("Cursed Captain");
				if p then
					repeat
						wait();
						Attack.Kill(p, _G.GhoulGet);
					until not _G.GhoulGet or not p.Parent or p.Humanoid.Health <= 0;
				else
					local p = FH:FindFirstChild("Cursed Captain");
					if p and p:FindFirstChild("HumanoidRootPart") then
						_tp(p.HumanoidRootPart.CFrame * CFrame.new(5, 10, 2));
					end;
				end;
			end);
		end;
	end;
end);
TrialRace = Race:AddLeftGroupbox("Race V4");
TrialRace:AddToggle("CyborgToggle", { Title = "Auto Get Cyborg", Default = false, Callback = function(p)
		_G.CyborgGet = p;
	end });
spawn(function()
	while wait(.5) do
		if _G.CyborgGet then
			pcall(function()
				if not GetBP("Microchip") then
					FH.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1");
					FH.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2");
				end;
				if not workspace.Enemies:FindFirstChild("Order") and not FH:FindFirstChild("Order") then
					if GetBP("Microchip") then
						local p = workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector;
						if p then
							fireclickdetector(p);
						end;
					end;
				end;
				if FH:FindFirstChild("Order") or workspace.Enemies:FindFirstChild("Order") then
					local p = GetConnectionEnemies("Order");
					if p then
						repeat
							wait();
							Attack.Kill(p, _G.CyborgGet);
						until not p.Parent or p.Humanoid.Health <= 0;
					else
						_tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875));
					end;
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("NoFrogToggle", { Title = "No Frog", Default = false, Callback = function(p)
		_G.NoFrog = p;
	end });
spawn(function()
	while wait(1) do
		if _G.NoFrog then
			pcall(function()
				if i:FindFirstChild("LightingLayers") then
					i.LightingLayers:Destroy();
				end;
				if i:FindFirstChild("Sky") then
					i.Sky:Destroy();
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("AncientClockToggle", { Title = "Teleport Ancient Clock", Default = false, Callback = function(p)
		_G.AcientOne = p;
	end });
spawn(function()
	while wait(.5) do
		if _G.AcientOne then
			_tp(CFrame.new(29549, 15069, -88));
		end;
	end;
end);
TrialRace:AddToggle("BuyGearToggle", { Title = "Auto Buy Gear", Default = false, Callback = function(p)
		_G.AutoBuyGear = p;
	end });
spawn(function()
	while wait(.1) do
		if _G.AutoBuyGear and h then
			pcall(function()
				FH.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
			end);
		end;
	end;
end);
TrialRace:AddToggle("TrainQuestToggle", { Title = "Auto Finish Train Quest", Default = false, Callback = function(p)
		_G.TrainDrago = p;
	end });
local function h5(p, P)
	if P == "Y" then
		wH:SendKeyEvent(true, "Y", false, game);
		wait(.1);
		wH:SendKeyEvent(false, "Y", false, game);
	end;
end;
spawn(function()
	while wait(.5) do
		if _G.TrainDrago then
			pcall(function()
				if SH.Character:FindFirstChild("RaceTransformed") and SH.Character.RaceTransformed.Value then
					_tp(CFrame.new(-9507.03125, 713.654968, 6186.39453));
				else
					local p = {
							"Reborn Skeleton",
							"Living Zombie",
							"Demonic Soul",
							"Posessed Mummy",
						};
					local P = GetConnectionEnemies(p);
					if P then
						repeat
							wait();
							Attack.Kill(P, _G.TrainDrago);
						until not _G.TrainDrago or not P.Parent or P.Humanoid.Health <= 0;
					end;
					_tp(CFrame.new(-9507.03125, 713.654968, 6186.39453));
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(.5) do
		if _G.TrainDrago then
			pcall(function()
				if SH.Character:FindFirstChild("RaceEnergy") and SH.Character.RaceEnergy.Value >= 1 then
					h5("nil", "Y");
				end;
			end);
		end;
	end;
end);
PullLeverLabel = TrialRace:AddLabel("Pull Lever Done Status: ");
spawn(function()
	local p = "";
	while wait(1) do
		local P, l = pcall(function()
				return FH.Remotes.CommF_:InvokeServer("templedoorcheck");
			end);
		if P then
			local P = l and "\226\156\133" or "\226\157\140";
			if P ~= p then
				PullLeverLabel:SetText("Pull Lever Done Status: " .. P);
				p = P;
			end;
		end;
	end;
end);
TrialRace:AddToggle("MigareToggle", { Title = "Teleport To Migare Island", Default = false, Callback = function(p)
		_G.MigareIsland = p;
	end });
spawn(function()
	while wait(.5) do
		if _G.MigareIsland and h then
			pcall(function()
				local p = workspace.Map:FindFirstChild("MysticIsland");
				if p and p:FindFirstChild("Center") then
					local P = p.Center.Position;
					_tp(CFrame.new(P.X, 500, P.Z));
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("HighestPointToggle", { Title = "Teleport To Highest Point", Default = false, Callback = function(p)
		_G.HighestPoint = p;
	end });
spawn(function()
	while wait(.5) do
		if _G.HighestPoint and h then
			pcall(function()
				local p = -math.huge;
				local P = nil;
				for l, C in pairs(workspace:GetDescendants()) do
					if C:IsA("BasePart") and C.Position.Y > p then
						p = C.Position.Y;
						P = C.Position;
					end;
				end;
				if P then
					_tp(CFrame.new(P.X + 10, P.Y + 10, P.Z + 10));
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("FruitDealerToggle", { Title = "Teleport To Advanced Fruit Dealer", Default = false, Callback = function(p)
		_G.TPFruitDealer = p;
	end });
spawn(function()
	while wait(.5) do
		if _G.TPFruitDealer then
			pcall(function()
				local p = workspace.Map:FindFirstChild("MysticIsland");
				if p then
					for p, P in pairs(workspace.NPCs:GetChildren()) do
						if P.Name == "Advanced Fruit Dealer" and P:FindFirstChild("HumanoidRootPart") then
							_tp(P.HumanoidRootPart.CFrame);
							break;
						end;
					end;
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("LockMoonToggle", { Title = "Lock Moon And On Race V3", Default = false, Callback = function(p)
		_G.RaceClickAutov3 = p;
	end });
spawn(function()
	while wait(.5) do
		if _G.RaceClickAutov3 and h then
			pcall(function()
				local p = i:GetMoonDirection();
				if p and p.Magnitude > 0 then
					local P = workspace.CurrentCamera.CFrame.p + p * 100;
					workspace.CurrentCamera.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.p, P);
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("BlueGearToggle", { Title = "Teleport To Blue Gear", Default = false, Callback = function(p)
		_G.TPBlueGear = p;
	end });
spawn(function()
	while wait(.1) do
		if _G.TPBlueGear and h then
			pcall(function()
				local p = workspace.Map:FindFirstChild("MysticIsland");
				if p then
					for p, P in ipairs(p:GetChildren()) do
						if P:IsA("MeshPart") and P.Material == Enum.Material.Neon then
							_tp(P.CFrame);
							break;
						end;
					end;
				end;
			end);
		end;
	end;
end);
TrialRace:AddButton({ Title = "Teleport To Trial Door", Callback = function()
		local p = {
				Human = CFrame.new(29221.822, 14890.975, -205.991),
				Skypiea = CFrame.new(28960.158, 14919.624, 235.039),
				Fishman = CFrame.new(28231.175, 14890.975, -211.641),
				Cyborg = CFrame.new(28502.681, 14895.975, -423.727),
				Ghoul = CFrame.new(28674.244, 14890.676, 445.431),
				Mink = CFrame.new(29012.341, 14890.975, -380.149),
			};
		local P = SH.Data.Race.Value;
		if p[P] then
			_tp(p[P]);
		end;
	end });
TrialRace:AddToggle("TrialRaceToggle", { Title = "Auto Trial Race", Default = false, Callback = function(p)
		_G.Complete_Trials = p;
	end });
local function J5(p)
	_tp(p);
end;
spawn(function()
	while wait(.5) do
		if _G.Complete_Trials then
			pcall(function()
				local p = SH.Data.Race.Value;
				if p == "Human" or p == "Ghoul" then
					for p, P in pairs(workspace.Enemies:GetChildren()) do
						if Attack.Alive(P) then
							repeat
								wait();
								Attack.Kill(P, _G.Complete_Trials);
							until not _G.Complete_Trials or not P.Parent or P.Humanoid.Health <= 0;
						end;
					end;
				elseif p == "Skypiea" then
					local p = workspace.Map.SkyTrial.Model;
					if p then
						for p, P in pairs(p:GetDescendants()) do
							if P.Name == "snowisland_Cylinder.081" then
								J5(P.CFrame);
								break;
							end;
						end;
					end;
				elseif p == "Fishman" then
					local p = workspace.SeaBeasts:FindFirstChild("SeaBeast1");
					if p then
						repeat
							wait();
							Attack.KillSea(p, _G.Complete_Trials);
						until not _G.Complete_Trials or not p.Parent or p.Humanoid.Health <= 0;
					end;
				elseif p == "Cyborg" then
					_tp(CFrame.new(28654, 14898.7832, -30));
				elseif p == "Mink" then
					for p, P in pairs(workspace:GetDescendants()) do
						if P.Name == "StartPoint" then
							_tp(P.CFrame * CFrame.new(0, 10, 0));
							break;
						end;
					end;
				end;
			end);
		end;
	end;
end);
TrialRace:AddToggle("KillPlayerToggle", { Title = "Auto Kill Player After Trial V4", Default = false, Callback = function(p)
		_G.Defeating = p;
	end });
spawn(function()
	while wait(.2) do
		if _G.Defeating and h then
			pcall(function()
				for p, P in ipairs(workspace.Characters:GetChildren()) do
					if P.Name ~= SH.Name and (P:FindFirstChild("Humanoid") and P:FindFirstChild("HumanoidRootPart")) then
						if P.Humanoid.Health > 0 and (KH and (KH.Position - P.HumanoidRootPart.Position).Magnitude <= 230) then
							repeat
								wait();
								Attack.Kill(P, _G.Defeating);
							until not _G.Defeating or not P.Parent or P.Humanoid.Health <= 0;
						end;
					end;
				end;
			end);
		end;
	end;
end);
Items = Window:AddTab("Get and Upgrade Items");
GetItems = Items:AddLeftGroupbox("Get Items");
GetItems:AddToggle("TradeBone", { Title = "Auto Trade Bone", Default = false, Callback = function(p)
		_G.Auto_Random_Bone = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Auto_Random_Bone then
				repeat
					task.wait();
					FH.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
				until not _G.Auto_Random_Bone;
			end;
		end);
	end;
end);
GetItems:AddToggle("LegendarySwordBuy", { Title = "Auto Buy Legendary Sword", Default = false, Callback = function(p)
		_G.Auto_Buy_Legendary_Sword = p;
	end });
spawn(function()
	local p = .1;
	while wait(p) do
		pcall(function()
			if _G.Auto_Buy_Legendary_Sword then
				local p = true;
				if not p then
					FH.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1");
					wait(.5);
					FH.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2");
					wait(.5);
					FH.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3");
					wait(.5);
				else
					_G.Auto_Buy_Legendary_Sword = false;
				end;
			end;
		end);
	end;
end);
GetItems:AddToggle("HakiColor", { Title = "Auto Buy Haki Color", Default = false, Callback = function(p)
		_G.HakiColorBusoBuy = p;
	end });
spawn(function()
	local p = .1;
	while wait(p) do
		pcall(function()
			if _G.HakiColorBusoBuy then
				local p = false;
				if not p then
					FH.Remotes.CommF_:InvokeServer("ColorsDealer", "2");
					wait(.5);
				else
					_G.HakiColorBusoBuy = false;
				end;
			end;
		end);
	end;
end);
GetItems:AddToggle("AutoHopColorAndSword", { Title = "Hop Server [Haki Color or Legendary Sword]", Default = false, Callback = function(p)
		_G.AutoHopColorAndSword = p;
		if not _G.Auto_Buy_Legendary_Sword and not _G.HakiColorBusoBuy then
			Library:Notify({ Title = "Night Slayer Hub", Description = "Open Buy Haki Color or Legendary Sword Plz!", Duration = 3 });
		end;
	end });
local function K5(p)
	local P = workspace:FindFirstChild("NPCs");
	if P then
		return P:FindFirstChild(p) ~= nil;
	end;
	return false;
end;
spawn(function()
	local p = .1;
	while wait(p) do
		pcall(function()
			if _G.Auto_Buy_Legendary_Sword and _G.AutoHopColorAndSword then
				if not K5("LegendarySwordDealer") then
					Hop();
				end;
			end;
		end);
	end;
end);
spawn(function()
	local p = .1;
	while wait(p) do
		pcall(function()
			if _G.HakiColorBusoBuy and _G.AutoHopColorAndSword then
				if not K5("ColorsDealer") then
					Hop();
				end;
			end;
		end);
	end;
end);
GetItems:AddToggle("Auto_Rainbow_Haki", { Title = "Auto Get Rainbow Haki", Default = false, Callback = function(p)
		_G.Auto_Rainbow_Haki = p;
	end });
spawn(function()
	pcall(function()
		while wait(QH) do
			if _G.Auto_Rainbow_Haki then
				if SH.PlayerGui.Main.Quest.Visible == false then
					if _G.GetQFast then
						if SH.PlayerGui.Main.Quest.Visible == false then
							FH.Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					else
						Rainbow1 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875);
						if SH.Character.HumanoidRootPart.CFrame ~= Rainbow1 then
							_tp(Rainbow1);
						elseif SH.Character.HumanoidRootPart.CFrame == Rainbow1 then
							wait(1);
							FH.Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == true and string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
					local p = GetConnectionEnemies("Stone");
					if p then
						repeat
							wait();
							Attack.Kill(p, _G.Auto_Rainbow_Haki);
						until _G.Auto_Rainbow_Haki == false or p.Humanoid.Health <= 0 or not p.Parent or SH.PlayerGui.Main.Quest.Visible == false;
					else
						_tp(CFrame.new(-1086.11621, 38.8425903, 6768.71436, .0231462717, -0.592676699, .805107772, 2.03251839e-005, .805323839, .592835128, -0.999732077, -0.0137055516, .0186523199));
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == true and string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader") then
					local p = GetConnectionEnemies("Hydra Leader");
					if p then
						repeat
							task.wait();
							Attack.Kill(p, _G.Auto_Rainbow_Haki);
						until _G.Auto_Rainbow_Haki == false or p.Humanoid.Health <= 0 or not p.Parent or SH.PlayerGui.Main.Quest.Visible == false;
					else
						FH.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625));
						local p = Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625);
						local P = CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469);
						if SH.Character.HumanoidRootPart.CFrame.Position == p then
							_tp(P);
						end;
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == true and string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					local p = GetConnectionEnemies("Kilo Admiral");
					if p then
						repeat
							task.wait();
							Attack.Kill(p, _G.Auto_Rainbow_Haki);
						until _G.Auto_Rainbow_Haki == false or p.Humanoid.Health <= 0 or not p.Parent or SH.PlayerGui.Main.Quest.Visible == false;
					else
						_tp(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, 0, -0.143904909, 0, 1.00000012, 0, .143904924, 0, -0.989591479));
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == true and string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					local p = GetConnectionEnemies("Captain Elephant");
					if p then
						repeat
							task.wait();
							Attack.Kill(p, _G.Auto_Rainbow_Haki);
						until _G.Auto_Rainbow_Haki == false or p.Humanoid.Health <= 0 or not p.Parent or SH.PlayerGui.Main.Quest.Visible == false;
					else
						local p = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375);
						local P = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125);
						if SH.Character.HumanoidRootPart.CFrame.Position ~= p then
							FH.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
						elseif SH.Character.HumanoidRootPart.CFrame.Position == p then
							_tp(P);
						end;
					end;
				elseif SH.PlayerGui.Main.Quest.Visible == true and string.find(SH.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					local p = GetConnectionEnemies("Captain Elephant");
					if p then
						repeat
							task.wait();
							Attack.Kill(p, _G.Auto_Rainbow_Haki);
						until _G.Auto_Rainbow_Haki == false or p.Humanoid.Health <= 0 or not p.Parent or SH.PlayerGui.Main.Quest.Visible == false;
					else
						FH.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5314.54638671875, 22.562219619750977, -127.06755065917969));
					end;
				end;
			end;
		end;
	end);
end);
GetItems:AddToggle("Auto_Rainbow_Haki", { Title = "Auto Soul Guitar", Default = false, Callback = function(p)
		_G.Auto_Soul_Guitar = p;
	end });
task.spawn(function()
	while wait() do
		if _G.Auto_Soul_Guitar then
			pcall(function()
				local p = GetConnectionEnemies("Living Zombie");
				if p then
					p.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375);
					p.Head.CanCollide = false;
					p.Humanoid.Sit = false;
					p.HumanoidRootPart.CanCollide = false;
					p.Humanoid.JumpPower = 0;
					p.Humanoid.WalkSpeed = 0;
					if p.Humanoid:FindFirstChild("Animator") then
						(p.Humanoid:FindFirstChild("Animator")):Destroy();
					end;
				end;
			end);
		end;
	end;
end);
function getT(p)
	local P;
	if p == 1 then
		P = workspace.Map["Haunted Castle"].Tablet.Segment1.Line.Rotation;
	elseif p == 3 then
		P = workspace.Map["Haunted Castle"].Tablet.Segment3.Line.Rotation;
	elseif p == 4 then
		P = workspace.Map["Haunted Castle"].Tablet.Segment4.Line.Rotation;
	elseif p == 7 then
		P = workspace.Map["Haunted Castle"].Tablet.Segment7.Line.Rotation;
	elseif p == 10 then
		P = workspace.Map["Haunted Castle"].Tablet.Segment10.Line.Rotation;
	end;
	if P then
		return P.Z;
	end;
end;
function getRT(p)
	local P = workspace.Map["Haunted Castle"].Trophies.Quest;
	local l;
	for P, C in pairs(P:GetChildren()) do
		if p == 1 and (C.Name == "Trophy1" and C:FindFirstChild("Handle")) then
			l = C.Handle.Rotation;
		elseif p == 2 and (C.Name == "Trophy2" and C:FindFirstChild("Handle")) then
			l = C.Handle.Rotation;
		elseif p == 3 and (C.Name == "Trophy3" and C:FindFirstChild("Handle")) then
			l = C.Handle.Rotation;
		elseif p == 4 and (C.Name == "Trophy4" and C:FindFirstChild("Handle")) then
			l = C.Handle.Rotation;
		elseif p == 5 and (C.Name == "Trophy5" and C:FindFirstChild("Handle")) then
			l = C.Handle.Rotation;
		end;
		if l then
			return l.Z;
		end;
	end;
end;
GetFirePlacard = function(p, P)
		if tostring(workspace.Map["Haunted Castle"]["Placard" .. p][P].Indicator.BrickColor) ~= "Pearl" then
			fireclickdetector(workspace.Map["Haunted Castle"]["Placard" .. p][P].ClickDetector);
		end;
	end;
spawn(function()
	repeat
		task.wait();
	until _G.Auto_Soul_Guitar;
	while wait(QH) do
		pcall(function()
			if _G.Auto_Soul_Guitar then
				if h then
					FH.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
					FH.Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true);
					if FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
						_tp(CFrame.new(-8655.0166015625, 141.31669616699219, 6160.0224609375));
						FH.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
						FH.Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true);
					elseif (FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")).Swamp == false then
						Quest1 = true;
						Quest2 = false;
						Quest3 = false;
						Quest4 = false;
						local p = GetConnectionEnemies("Living Zombie");
						if p then
							repeat
								task.wait();
								Attack.Kill(p, _G.Auto_Soul_Guitar);
							until not _G.Auto_Soul_Guitar or p.Humanoid.Health <= 0 or not p.Parent or workspace.Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0);
						else
							_tp(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875));
						end;
					elseif (FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")).Gravestones == false then
						Quest1 = false;
						Quest2 = true;
						Quest3 = false;
						Quest4 = false;
						GetFirePlacard("7", "Left");
						GetFirePlacard("6", "Left");
						GetFirePlacard("5", "Left");
						GetFirePlacard("4", "Right");
						GetFirePlacard("3", "Left");
						GetFirePlacard("2", "Right");
						GetFirePlacard("1", "Right");
					elseif (FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")).Ghost == false then
						FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost");
						FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true);
					elseif (FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")).Trophies == false then
						Quest1 = false;
						Quest2 = false;
						Quest3 = true;
						Quest4 = false;
						_tp(CFrame.new(-9532.8232421875, 6.4716677665710449, 6078.068359375));
						repeat
							wait();
							local p = getRT(1);
							local P = getT(1);
							if p and P then
								fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"));
							end;
						until p == P;
						repeat
							wait();
							local p = getRT(2);
							local P = getT(3);
							if p and P then
								fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"));
							end;
						until p == P;
						repeat
							wait();
							local p = getRT(3);
							local P = getT(4);
							if p and P then
								fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"));
							end;
						until p == P;
						repeat
							wait();
							local p = getRT(4);
							local P = getT(7);
							if p and P then
								fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"));
							end;
						until p == P;
						repeat
							wait();
							local p = getRT(5);
							local P = getT(10);
							if p and P then
								fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"));
							end;
						until p == P;
						repeat
							wait();
							fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"));
							fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"));
							fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"));
							fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"));
							fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"));
						until workspace.Map["Haunted Castle"].Tablet.Segment2.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment5.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment6.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment8.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment9.Line.Rotation.Z == 0;
					elseif (FH.Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")).Pipes == false then
						Quest1 = false;
						Quest2 = false;
						Quest3 = false;
						Quest4 = true;
						_tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector);
						_tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
						_tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
						_tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector);
						_tp(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
						fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
					end;
				end;
			end;
		end);
	end;
end);
GetItems:AddDropdown("SelectQuest_CDK", {
	Title = "Select Method Hop CDK",
	Values = { "Quest Yama", "Quest Tushita", "Last Quest" },
	Default = 1,
	Callback = function(p)
		_G.SelectCDKFarm = p;
	end,
});
GetItems:AddToggle("Auto_CDK", { Title = "Auto CDK", Default = false, Callback = function(p)
		_G.AutoCDK = p;
	end });
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoCDK and _G.SelectCDKFarm == "Quest Yama" then
				if tostring(FH.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					FH.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor");
					FH.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true);
				else
					if (FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Finished == nil then
						FH.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
						FH.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif (FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Finished == false then
						if tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == -3 then
							QuestYama_1 = true;
							QuestYama_2 = false;
							QuestYama_3 = false;
							repeat
								task.wait();
								if not workspace.Enemies:FindFirstChild("Forest Pirate") then
									_tp(CFrame.new(-13223.521484375, 428.19381713867188, -7766.06787109375));
								else
									local p = GetConnectionEnemies("Forest Pirate");
									if p then
										_tp((workspace.Enemies:FindFirstChild("Forest Pirate")).HumanoidRootPart.CFrame);
									end;
								end;
							until not _G.AutoCDK or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 1 or _G.SelectCDKFarm ~= "Auto Yama CDK";
						elseif tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == -4 then
							QuestYama_1 = false;
							QuestYama_2 = true;
							QuestYama_3 = false;
							for p, P in pairs((game:GetService("Players")).LocalPlayer.QuestHaze:GetChildren()) do
								for p, l in pairs(PosMsList) do
									if string.find(p, P.Name) and P.Value > 0 then
										if (l.Position - KH.Position).Magnitude <= 1000 and workspace.Enemies:FindFirstChild(p) then
											for p, P in pairs(workspace.Enemies:GetChildren()) do
												if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Humanoid") and ((P:FindFirstChild("Humanoid")).Health > 0 and P:FindFirstChild("HazeESP"))) then
													repeat
														wait();
														Attack.Kill(P, _G.AutoCDK and _G.SelectCDKFarm == "Auto Yama CDK");
													until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 2 or not P:FindFirstChild("HazeESP") or P.Humanoid.Health <= 0;
												end;
											end;
										else
											_tp(l);
										end;
									end;
								end;
							end;
						elseif tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == -5 then
							QuestYama_1 = false;
							QuestYama_2 = false;
							QuestYama_3 = true;
							if workspace.Map:FindFirstChild("HellDimension") then
								if (KH.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
									for p, P in pairs(workspace.Map.HellDimension.Exit:GetChildren()) do
										if tonumber(p) == 2 then
											repeat
												task.wait();
												KH.CFrame = workspace.Map.HellDimension.Exit.CFrame;
											until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
										end;
									end;
									e5(_G.SelectWeapon);
									if tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) ~= 3 then
										repeat
											task.wait();
											repeat
												task.wait();
												_tp(workspace.Map.HellDimension.Torch1.Particles.CFrame);
												for p, P in pairs(workspace.Map.HellDimension:GetDescendants()) do
													if P:IsA("ProximityPrompt") then
														fireproximityprompt(P);
													end;
												end;
											until (workspace.Map.HellDimension.Torch1.Particles.Position - KH.Position).Magnitude < 5;
											wait(2);
											_G.T1Yama = true;
										until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or _G.T1Yama or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
										repeat
											task.wait();
											repeat
												task.wait();
												_tp(workspace.Map.HellDimension.Torch2.Particles.CFrame);
												for p, P in pairs(workspace.Map.HellDimension:GetDescendants()) do
													if P:IsA("ProximityPrompt") then
														fireproximityprompt(P);
													end;
												end;
											until (workspace.Map.HellDimension.Torch2.Particles.Position - KH.Position).Magnitude < 5;
											wait(2);
											_G.T2Yama = true;
										until _G.T2Yama or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
										repeat
											wait();
											repeat
												task.wait();
												_tp(workspace.Map.HellDimension.Torch3.Particles.CFrame);
												for p, P in pairs(workspace.Map.HellDimension:GetDescendants()) do
													if P:IsA("ProximityPrompt") then
														fireproximityprompt(P);
													end;
												end;
											until (workspace.Map.HellDimension.Torch3.Particles.Position - KH.Position).Magnitude < 5;
											wait(2);
											_G.T3Yama = true;
										until _G.T3Yama or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
									end;
									for p, P in pairs(workspace.Enemies:GetChildren()) do
										if ((P:FindFirstChild("HumanoidRootPart")).Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 300 then
											if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Humanoid") and (P:FindFirstChild("Humanoid")).Health > 0) then
												repeat
													task.wait();
													Attack.Kill(P, _G.AutoCDK and _G.SelectCDKFarm == "Auto Yama CDK");
												until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or P.Humanoid.Health <= 0 or not P.Parent or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 3;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoCDK and _G.SelectCDKFarm == "Quest Yama" then
				if tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == -5 then
					if not workspace.Map:FindFirstChild("HellDimension") or (KH.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude > 1000 then
						local p = GetConnectionEnemies("Soul Reaper");
						if p then
							repeat
								task.wait();
								_tp(p.HumanoidRootPart.CFrame);
							until p.Humanoid.Health <= 0 or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or not p.Parent or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Evil) == 3 or workspace.Map:FindFirstChild("HellDimension") and (KH.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000;
						elseif SH.Backpack:FindFirstChild("Hallow Essence") or SH.Character:FindFirstChild("Hallow Essence") then
							repeat
								_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
								task.wait();
							until ((CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)).Position - KH.Position).Magnitude <= 8;
							e5("Hallow Essence");
						elseif FH:FindFirstChild("Soul Reaper") and (FH:FindFirstChild("Soul Reaper")).Humanoid.Health > 0 then
							_tp((FH:FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame);
						else
							if FH.Remotes.CommF_:InvokeServer("Bones", "Check") < 50 and (not workspace.Enemies:FindFirstChild("Soul Reaper") and (not FH:FindFirstChild("Soul Reaper") and not workspace.Map:FindFirstChild("HellDimension"))) then
								if workspace.Enemies:FindFirstChild("Reborn Skeleton") or workspace.Enemies:FindFirstChild("Living Zombie") or workspace.Enemies:FindFirstChild("Domenic Soul") or workspace.Enemies:FindFirstChild("Posessed Mummy") then
									for p, P in pairs(workspace.Enemies:GetChildren()) do
										if P.Name == "Reborn Skeleton" or P.Name == "Living Zombie" or P.Name == "Demonic Soul" or P.Name == "Posessed Mummy" then
											if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Humanoid") and (P:FindFirstChild("Humanoid")).Health > 0) then
												repeat
													task.wait();
													Attack.Kill(P, _G.AutoCDK and _G.SelectCDKFarm == "Auto Yama CDK");
												until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Yama CDK" or P.Humanoid.Health <= 0 or not P.Parent;
											end;
										end;
									end;
								else
									_tp(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125));
								end;
							else
								FH.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoCDK and _G.SelectCDKFarm == "Quest Tushita" then
				if tostring(FH.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					wait(.7);
					FH.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor");
					wait(.3);
					FH.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true);
				else
					if (FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Finished == nil then
						FH.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif (FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Finished == false then
						if tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == -3 then
							QuestTushita_1 = true;
							QuestTushita_2 = false;
							QuestTushita_3 = false;
							repeat
								wait();
								_tp(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875));
							until ((CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == 1;
							if ((CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7);
								FH.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
								wait(.5);
								FH.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"));
							end;
							wait(1);
							repeat
								wait();
								_tp(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125));
							until ((CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == 1;
							if ((CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7);
								FH.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
								wait(.5);
								FH.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"));
							end;
							wait(1);
							repeat
								wait();
								_tp(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625));
							until ((CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == 1;
							if ((CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7);
								FH.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
								wait(.5);
								FH.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"));
							end;
							wait(1);
						elseif tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == -4 then
							QuestTushita_1 = false;
							QuestTushita_2 = true;
							QuestTushita_3 = false;
							repeat
								wait();
								_G.AutoRaidCastle = true;
							until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == 2;
							_G.AutoRaidCastle = false;
						elseif tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == -5 then
							QuestTushita_1 = false;
							QuestTushita_2 = false;
							QuestTushita_3 = true;
							if workspace.Enemies:FindFirstChild("Cake Queen") then
								for p, P in pairs(workspace.Enemies:GetChildren()) do
									if P.Name == "Cake Queen" then
										if P:FindFirstChild("Humanoid") and (P:FindFirstChild("HumanoidRootPart") and P.Humanoid.Health > 0) then
											repeat
												wait();
												Attack.Kill(P, _G.AutoCDK and _G.SelectCDKFarm == "Auto Tushita CDK");
											until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or not P.Parent or P.Humanoid.Health <= 0 or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == 3;
										end;
									end;
								end;
							elseif FH:FindFirstChild("Cake Queen") and (FH:FindFirstChild("Cake Queen")).Humanoid.Health > 0 then
								_tp((FH:FindFirstChild("Cake Queen")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
							else
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
									for p, P in pairs(workspace.Map.HeavenlyDimension.Exit:GetChildren()) do
										Ex = p;
									end;
									if Ex == 2 then
										repeat
											wait();
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.HeavenlyDimension.Exit.CFrame;
										until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or tonumber((FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress")).Good) == 3;
									end;
									repeat
										wait();
										repeat
											wait();
											_tp(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625));
											for p, P in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
												if P:IsA("ProximityPrompt") then
													fireproximityprompt(P);
												end;
											end;
										until ((CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
										wait(2);
										_G.DoneT1 = true;
									until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or _G.DoneT1;
									repeat
										wait();
										repeat
											wait();
											_tp(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875));
											for p, P in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
												if P:IsA("ProximityPrompt") then
													fireproximityprompt(P);
												end;
											end;
										until ((CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
										wait(2);
										_G.DoneT2 = true;
									until _G.DoneT2 or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK";
									repeat
										wait();
										repeat
											task.wait();
											_tp(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375));
											for p, P in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
												if P:IsA("ProximityPrompt") then
													fireproximityprompt(P);
												end;
											end;
										until ((CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
										wait(2);
										_G.DoneT3 = true;
									until _G.DoneT3 or not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK";
									for p, P in pairs(workspace.Enemies:GetChildren()) do
										if ((P:FindFirstChild("HumanoidRootPart")).Position - (CFrame.new(-22695.7012, 5270.93652, 3814.42847, .11794927, 3.32185834e-008, .99301964, -8.73070718e-008, 1, -2.30819008e-008, -0.99301964, -8.3975138e-008, .11794927)).Position).Magnitude <= 300 then
											if P:FindFirstChild("HumanoidRootPart") and (P:FindFirstChild("Humanoid") and (P:FindFirstChild("Humanoid")).Health > 0) then
												repeat
													wait();
													Attack.Kill(P, _G.AutoCDK and _G.SelectCDKFarm == "Auto Tushita CDK");
												until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Tushita CDK" or P.Humanoid.Health <= 0 or not P.Parent;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.AutoCDK and _G.SelectCDKFarm == "Last Quest" then
				FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
				FH.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
				FH.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Boss");
				local p = GetConnectionEnemies("Cursed Skeleton Boss");
				if p then
					repeat
						wait();
						if SH.Character:FindFirstChild("Yama") or SH.Backpack:FindFirstChild("Yama") then
							e5("Yama");
						elseif SH.Character:FindFirstChild("Tushita") or SH.Backpack:FindFirstChild("Tushita") then
							e5("Tushita");
						end;
						_tp(p.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
					until not _G.AutoCDK or _G.SelectCDKFarm ~= "Auto Get CDK [Last Quest]" or not p.Parent or p.Humanoid.Health <= 0;
				else
					_tp(CFrame.new(-12318.193359375, 601.95184326171875, -6538.662109375));
					wait(.5);
					_tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame);
				end;
			end;
		end);
	end;
end);
GetItems:AddToggle("Auto_Yama", { Title = "Auto Yama", Default = false, Callback = function(p)
		_G.Auto_Yama = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Auto_Yama then
				if FH.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
					_G.FarmEliteHunt = true;
				elseif FH.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") > 30 then
					_G.FarmEliteHunt = false;
					if (workspace.Map.Waterfall.SealedKatana.Handle.Position - SH.Character.HumanoidRootPart.Position).Magnitude >= 20 then
						_tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame);
						local p = GetConnectionEnemies("Ghost");
						if p then
							repeat
								wait();
								Attack.Kill(p, _G.Auto_Yama);
							until p.Humanoid.Health <= 0 or not p.Parent or not _G.Auto_Yama;
							fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector);
						end;
					end;
				end;
			end;
		end);
	end;
end);
GetItems:AddToggle("Auto_Tushita", { Title = "Auto Tushita", Default = false, Callback = function(p)
		_G.Auto_Tushita = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Auto_Tushita then
				if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
					if not GetBP("Holy Torch") then
						_tp(CFrame.new(5148.03613, 162.352493, 910.548218));
						wait(.7);
					else
						e5("Holy Torch");
						task.wait(1);
						repeat
							task.wait();
							_tp(CFrame.new(-10752, 417, -9366));
						until not _G.Auto_Tushita or ((CFrame.new(-10752, 417, -9366)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10;
						wait(.7);
						repeat
							task.wait();
							_tp(CFrame.new(-11672, 334, -9474));
						until not _G.Auto_Tushita or ((CFrame.new(-11672, 334, -9474)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10;
						wait(.7);
						repeat
							task.wait();
							_tp(CFrame.new(-12132, 521, -10655));
						until not _G.Auto_Tushita or ((CFrame.new(-12132, 521, -10655)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10;
						wait(.7);
						repeat
							task.wait();
							_tp(CFrame.new(-13336, 486, -6985));
						until not _G.Auto_Tushita or ((CFrame.new(-13336, 486, -6985)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10;
						wait(.7);
						repeat
							task.wait();
							_tp(CFrame.new(-13489, 332, -7925));
						until not _G.Auto_Tushita or ((CFrame.new(-13489, 332, -7925)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10;
					end;
				else
					local p = GetConnectionEnemies("Longma");
					if p then
						repeat
							task.wait();
							Attack.Kill(p, _G.Auto_Tushita);
						until p.Humanoid.Health <= 0 or not _G.Auto_Tushita or not p.Parent;
					else
						if FH:FindFirstChild("Longma") then
							_tp((FH:FindFirstChild("Longma")).HumanoidRootPart.CFrame * CFrame.new(0, 40, 0));
						end;
					end;
				end;
			end;
		end);
	end;
end);
GetItems:AddToggle("Auto_TTK", { Title = "Auto TTK", Default = false, Callback = function(p)
		_G.Auto_Tushita = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Auto_Tushita then
				FH.Remotes.CommF_:InvokeServer("MysteriousMan", "2");
			end;
		end);
	end;
end);
GetItems:AddToggle("Auto_Saber", { Title = "Auto Saber", Default = false, Callback = function(p)
		_G.AutoSaber = p;
	end });
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.AutoSaber and (SH.Data.Level.Value >= 200 and (not SH.Backpack:FindFirstChild("Saber") and not SH.Character:FindFirstChild("Saber"))) then
				if workspace.Map.Jungle.Final.Part.Transparency == 0 then
					if workspace.Map.Jungle.QuestPlates.Door.Transparency == 0 then
						if ((CFrame.new(-1612.55884, 36.9774132, 148.719543, .37091279, 3.0717151e-009, -0.928667724, 3.97099491e-008, 1, 1.91679348e-008, .928667724, -4.39869794e-008, .37091279)).Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							_tp(SH.Character.HumanoidRootPart.CFrame);
							wait(.5);
							SH.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame;
							wait(.5);
							SH.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame;
							wait(.5);
							SH.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame;
							wait(.5);
							SH.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame;
							wait(.5);
							SH.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame;
							wait(.5);
						else
							_tp(CFrame.new(-1612.55884, 36.9774132, 148.719543, .37091279, 3.0717151e-009, -0.928667724, 3.97099491e-008, 1, 1.91679348e-008, .928667724, -4.39869794e-008, .37091279));
						end;
					else
						if workspace.Map.Desert.Burn.Part.Transparency == 0 then
							if SH.Backpack:FindFirstChild("Torch") or SH.Character:FindFirstChild("Torch") then
								e5("Torch");
								firetouchinterest(SH.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 0);
								firetouchinterest(SH.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 1);
								_tp(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-009, .761243105, -5.70652914e-010, 1, 1.20584542e-009, -0.761243105, 3.47544882e-010, -0.648466587));
							else
								_tp(CFrame.new(-1610.00757, 11.5049858, 164.001587, .984807551, -0.167722285, -0.0449818149, .17364943, .951244235, .254912198, 3.42372805e-005, -0.258850515, .965917408));
							end;
						else
							if FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
								FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
								wait(.5);
								e5("Cup");
								wait(.5);
								FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", SH.Character.Cup);
								wait(QH);
								FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
							else
								if FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
									FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
								elseif FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
									if workspace.Enemies:FindFirstChild("Mob Leader") or FH:FindFirstChild("Mob Leader") then
										_tp(CFrame.new(-2967.59521, -4.91089821, 5328.70703, .342208564, -0.0227849055, .939347804, .0251603816, .999569714, .0150796166, -0.939287126, .0184739735, .342634559));
										for p, P in pairs(workspace.Enemies:GetChildren()) do
											if P.Name == "Mob Leader" and Attack.Alive(P) then
												repeat
													task.wait();
													Attack.Kill(P, _G.AutoSaber);
												until P.Humanoid.Health <= 0 or _G.AutoSaber == false;
											end;
										end;
									end;
								elseif FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
									FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
									e5("Relic");
									_tp(CFrame.new(-1404.91504, 29.9773273, 3.80598116, .876514494, 5.66906877e-009, .481375456, 2.53851997e-008, 1, -5.79995607e-008, -0.481375456, 6.30572643e-008, .876514494));
								end;
							end;
						end;
					end;
				else
					if workspace.Enemies:FindFirstChild("Saber Expert") or FH:FindFirstChild("Saber Expert") then
						for p, P in pairs(workspace.Enemies:GetChildren()) do
							if P.Name == "Saber Expert" and Attack.Alive(P) then
								repeat
									task.wait();
									Attack.Kill(P, _G.AutoSaber);
								until P.Humanoid.Health <= 0 or _G.AutoSaber == false;
								if P.Humanoid.Health <= 0 then
									FH.Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
								end;
							end;
						end;
					else
						_tp(CFrame.new(-1401.85046, 29.9773273, 8.81916237, .85820812, 8.76083845e-008, .513301849, -8.55007443e-008, 1, -2.77243419e-008, -0.513301849, -2.00944328e-008, .85820812));
					end;
				end;
			end;
		end);
	end;
end);
MasteryWeaponMS = Items:AddLeftGroupbox("Mastery Weapon");
MasteryWeaponMS:AddToggle("MeleeFarmMas", { Title = "Auto Farm Mastery 600 Melees", Default = false, Callback = function(p)
		_G.MeleeMastery = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.MeleeMastery then
				for p, P in next, FH.Remotes.CommF_:InvokeServer("getInventory") do
					if type(P) == "table" then
						if P.Type == "Melee" then
							local p = P.Name;
							if tonumber(P.Mastery) >= 1 and tonumber(P.Mastery) <= 599 then
								if GetBP(p) then
									local p = GetConnectionEnemies(xH);
									if p then
										repeat
											wait();
											Attack.Sword(p, _G.MeleeMastery);
										until _G.MeleeMastery == false or not p.Parent or p.Humanoid.Health <= 0;
									else
										_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125));
									end;
								else
									FH.Remotes.CommF_:InvokeServer("LoadItem", p);
								end;
							elseif tonumber(P.Mastery) >= 600 then
								if not GetBP(p) then
									FH.Remotes.CommF_:InvokeServer("LoadItem", p);
								end;
							end;
							break;
						end;
					end;
				end;
			end;
		end);
	end;
end);
MasteryWeaponMS:AddToggle("SwordFarmMas", { Title = "Auto Farm Mastery 600 Swords", Default = false, Callback = function(p)
		_G.SwordMastery = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.SwordMastery then
				for p, P in next, FH.Remotes.CommF_:InvokeServer("getInventory") do
					if type(P) == "table" then
						if P.Type == "Sword" then
							local p = P.Name;
							if tonumber(P.Mastery) >= 1 and tonumber(P.Mastery) <= 599 then
								if GetBP(p) then
									local p = GetConnectionEnemies(xH);
									if p then
										repeat
											wait();
											Attack.Sword(p, _G.SwordMastery);
										until _G.SwordMastery == false or not p.Parent or p.Humanoid.Health <= 0;
									else
										_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125));
									end;
								else
									FH.Remotes.CommF_:InvokeServer("LoadItem", p);
								end;
							elseif tonumber(P.Mastery) >= 600 then
								if not GetBP(p) then
									FH.Remotes.CommF_:InvokeServer("LoadItem", p);
								end;
							end;
							break;
						end;
					end;
				end;
			end;
		end);
	end;
end);
Volcano = Window:AddTab("Volcano Event");
VolcanoFarm = Volcano:AddLeftGroupbox("Farming Volcano");
VolcanoFarm:AddToggle("CraftVolcanicMagnet", { Title = "Auto Crafting Volcanic Magnet", Default = false, Callback = function(p)
		_G.CraftVolcanicMagnet = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.CraftVolcanicMagnet then
				FH.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet");
			end;
		end);
	end;
end);
VolcanoFarm:AddToggle("PrehistoricIslandFind", { Title = "Auto Find Prehistoric Island", Default = false, Callback = function(p)
		_G.Prehis_Find = p;
	end });
local B5 = nil;
spawn(function()
	while wait() do
		if _G.Prehis_Find then
			pcall(function()
				if not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
					local p = CheckBoat();
					if not p then
						local p = CFrame.new(-16927.451, 9.086, 433.864);
						TeleportToTarget(p);
						if (p.Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							FH.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat);
						end;
					else
						if SH.Character.Humanoid.Sit == false then
							local P = p.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
							_tp(P);
						else
							repeat
								wait();
								local p = CFrame.new(-10000000, 31, 37016.25);
								if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
									_tp(CFrame.new(-10000000, 150, 37016.25));
								else
									_tp(CFrame.new(-10000000, 31, 37016.25));
								end;
							until not _G.Prehis_Find or (p.Position - SH.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") or SH.Character.Humanoid.Sit == false;
							SH.Character.Humanoid.Sit = false;
						end;
					end;
				else
					if ((workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
						_tp((workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame);
					end;
					if workspace.Map:FindFirstChild("PrehistoricIsland", true) or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
						if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
							if SH:DistanceFromCharacter(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame.Position) <= 150 then
								fireproximityprompt(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.ProximityPrompt, math.huge);
								wH:SendKeyEvent(true, "E", false, game);
								wait(1.5);
								wH:SendKeyEvent(false, "E", false, game);
							end;
							_tp(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame);
						end;
					end;
				end;
			end);
		end;
	end;
end);
VolcanoFarm:AddToggle("EventVolcanoStart", {
	Title = "Auto Event Prehistoric Island",
	Description = "auto Start Event and Auto kill golem, Auto Fix Volcano",
	Default = false,
	Callback = function(p)
		_G.Prehis_Skills = p;
	end,
});
spawn(function()
	while wait() do
		if _G.Prehis_Skills then
			local p = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
			if p then
				for p, P in pairs(p:GetDescendants()) do
					if P:IsA("Part") and (P.Name:lower()):find("lava") then
						P:Destroy();
					end;
					if P:IsA("MeshPart") and (P.Name:lower()):find("lava") then
						P:Destroy();
					end;
				end;
				local P = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
				if P and P:IsA("Model") then
					P:Destroy();
				end;
				local l = workspace.Map:FindFirstChild("PrehistoricIsland");
				if l then
					local p = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
					for P, l in pairs(l:GetDescendants()) do
						if l.Name == "TouchInterest" then
							if not (p and l:IsDescendantOf(p)) then
								l.Parent:Destroy();
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Prehis_Skills then
				if workspace.Enemies:FindFirstChild("Lava Golem") then
					local p = GetConnectionEnemies("Lava Golem");
					if p then
						repeat
							wait();
							Attack.Kill(p, _G.Prehis_Skills);
							p.Humanoid:ChangeState(15);
						until not _G.Prehis_Skills or not p.Parent or p.Humanoid.Health <= 0;
					end;
				end;
				for p, P in pairs(game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks:GetChildren()) do
					if P:FindFirstChild("VFXLayer") then
						if (P:FindFirstChild("VFXLayer")).At0.Glow.Enabled == true or P.VFXLayer.At0.Glow.Enabled == true then
							repeat
								wait();
								_tp(P.VFXLayer.CFrame);
								if P.VFXLayer.At0.Glow.Enabled == true and SH:DistanceFromCharacter(P.VFXLayer.CFrame.Position) <= 150 then
									MousePos = P.VFXLayer.CFrame.Position;
									Useskills("Melee", "Z");
									wait(.5);
									Useskills("Melee", "X");
									wait(.5);
									Useskills("Melee", "C");
									wait(.5);
									Useskills("Blox Fruit", "Z");
									wait(.5);
									Useskills("Blox Fruit", "X");
									wait(.5);
									Useskills("Blox Fruit", "C");
								end;
							until not _G.Prehis_Skills or (P:FindFirstChild("VFXLayer")).At0.Glow.Enabled == false or P.VFXLayer.At0.Glow.Enabled == false;
						end;
					end;
				end;
			end;
		end);
	end;
end);
VolcanoFarm:AddToggle("CollectBoneVolcano", { Title = "Auto Collect Bone", Default = false, Callback = function(p)
		_G.Prehis_DB = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Prehis_DB then
				if workspace:FindFirstChild("DinoBone") then
					for p, P in pairs(workspace:GetChildren()) do
						if P.Name == "DinoBone" then
							_tp(P.CFrame);
						end;
					end;
				end;
			end;
		end);
	end;
end);
VolcanoFarm:AddToggle("CollectEggVolcano", { Title = "Auto Collect Egg", Default = false, Callback = function(p)
		_G.Prehis_DE = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.Prehis_DE then
				if workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg") then
					_tp((workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg")).Molten.CFrame);
					fireproximityprompt(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs.DragonEgg.Molten.ProximityPrompt, 30);
				end;
			end;
		end);
	end;
end);
FullyVolcano = Volcano:AddLeftGroupbox("Fully Volcano");
FullyVolcano:AddToggle("IgnoreCraftVolcanicMagnet", { Title = "Ignore Craft Volcanic Magnet [ Fully ]", Default = false, Callback = function(p)
		_G.CraftVM = p;
	end });
spawn(function()
	while wait(QH) do
		pcall(function()
			if _G.CraftVM then
				if GetM("Volcanic Magnet") < 1 then
					if GetM("Scrap Metal") >= 10 and GetM("Blaze Ember") >= 15 then
						FH.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet");
					elseif GetM("Scrap Metal") < 10 then
						local p = GetConnectionEnemies("Forest Pirate");
						if p then
							repeat
								wait();
								Attack.Kill(p, _G.CraftVM);
							until not _G.CraftVM or not p.Parent or p.Humanoid.Health <= 0 or GetM("Scrap Metal") >= 10;
						else
							_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
						end;
					elseif GetM("Blaze Ember") < 15 then
						repeat
							wait();
							_G.FarmBlazeEM = true;
						until not _G.CraftVM or GetM("Blaze Ember") >= 15;
						_G.FarmBlazeEM = false;
					end;
				end;
			end;
		end);
	end;
end);
HasESP = Window:AddTab("ESP");
ESP = HasESP:AddLeftGroupbox("ESP");
local t5 = game:GetService("Players");
local w5 = game:GetService("Workspace");
local Q5 = game:GetService("RunService");
local x5 = t5.LocalPlayer;
local O5 = false;
local H5;
function UpdateIslandESP()
	if not x5 or not x5.Character or not x5.Character:FindFirstChild("Head") then
		return;
	end;
	local p = x5.Character.Head.Position;
	local P = w5._WorldOrigin.Locations:GetChildren();
	for P, l in ipairs(P) do
		if l.Name ~= "Sea" then
			if O5 then
				local P = l:FindFirstChild("NameEsp");
				if not P then
					P = Instance.new("BillboardGui");
					P.Name = "NameEsp";
					P.ExtentsOffset = Vector3.new(0, 1, 0);
					P.Size = UDim2.new(1, 200, 1, 30);
					P.Adornee = l;
					P.AlwaysOnTop = true;
					P.Parent = l;
					local p = Instance.new("TextLabel", P);
					p.Font = Enum.Font.GothamBold;
					p.TextSize = 14;
					p.TextWrapped = true;
					p.Size = UDim2.new(1, 0, 1, 0);
					p.TextYAlignment = Enum.TextYAlignment.Top;
					p.BackgroundTransparency = 1;
					p.TextStrokeTransparency = .5;
					p.TextColor3 = Color3.fromRGB(255, 255, 255);
					p.Parent = P;
				end;
				local C = P:FindFirstChildOfClass("TextLabel");
				if C then
					local P = (p - l.Position).Magnitude / 3;
					C.Text = string.format("%s\n%d Distance", l.Name, math.floor(P + .5));
				end;
			else
				local p = l:FindFirstChild("NameEsp");
				if p then
					p:Destroy();
				end;
			end;
		end;
	end;
end;
local I5 = false;
local W5;
local R5 = math.random(1, 1000000);
function UpdateDevilChams()
	if not x5 or not x5.Character or not x5.Character:FindFirstChild("Head") then
		return;
	end;
	local p = x5.Character.Head.Position;
	for P, l in ipairs(w5:GetChildren()) do
		pcall(function()
			if l:IsA("Model") and (string.find(l.Name, "Fruit") and l:FindFirstChild("Handle")) then
				local P = l.Handle;
				if I5 then
					local C = P:FindFirstChild("NameEsp" .. R5);
					if not C then
						C = Instance.new("BillboardGui");
						C.Name = "NameEsp" .. R5;
						C.ExtentsOffset = Vector3.new(0, 1, 0);
						C.Size = UDim2.new(1, 200, 1, 30);
						C.Adornee = P;
						C.AlwaysOnTop = true;
						C.Parent = P;
						local p = Instance.new("TextLabel", C);
						p.Font = Enum.Font.GothamSemibold;
						p.TextSize = 14;
						p.TextWrapped = true;
						p.Size = UDim2.new(1, 0, 1, 0);
						p.TextYAlignment = Enum.TextYAlignment.Top;
						p.BackgroundTransparency = 1;
						p.TextStrokeTransparency = .5;
						p.TextColor3 = Color3.fromRGB(255, 255, 255);
						p.Parent = C;
					end;
					local Y = C:FindFirstChildOfClass("TextLabel");
					if Y then
						local C = (p - P.Position).Magnitude / 3;
						Y.Text = string.format("%s\n%d Distance", l.Name, math.floor(C + .5));
					end;
				else
					local p = P:FindFirstChild("NameEsp" .. R5);
					if p then
						p:Destroy();
					end;
				end;
			end;
		end);
	end;
end;
local z5 = false;
local b5;
local pr = math.random(1, 1000000);
function UpdatePlayerChams()
	if not x5 or not x5.Character or not x5.Character:FindFirstChild("Head") then
		return;
	end;
	local p = x5.Character.Head.Position;
	for P, l in ipairs(t5:GetPlayers()) do
		pcall(function()
			if l ~= x5 and (l.Character and (l.Character:FindFirstChild("Head") and l.Character:FindFirstChild("Humanoid"))) then
				local P = l.Character.Head;
				local C = l.Character.Humanoid;
				local Y = P:FindFirstChild("NameEsp" .. pr);
				if z5 then
					if not Y then
						Y = Instance.new("BillboardGui");
						Y.Name = "NameEsp" .. pr;
						Y.ExtentsOffset = Vector3.new(0, 1, 0);
						Y.Size = UDim2.new(1, 200, 1, 30);
						Y.Adornee = P;
						Y.AlwaysOnTop = true;
						Y.Parent = P;
						local p = Instance.new("TextLabel", Y);
						p.Font = Enum.Font.GothamSemibold;
						p.TextSize = 14;
						p.TextWrapped = true;
						p.Size = UDim2.new(1, 0, 1, 0);
						p.TextYAlignment = Enum.TextYAlignment.Top;
						p.BackgroundTransparency = 1;
						p.TextStrokeTransparency = .5;
						p.Parent = Y;
					end;
					local r = Y:FindFirstChildOfClass("TextLabel");
					if r then
						local Y = math.floor((p - P.Position).Magnitude / 3 + .5);
						local U = math.floor((C.Health / C.MaxHealth) * 100 + .5);
						r.Text = string.format("%s\n%d Distance\nHealth: %d%%", l.Name, Y, U);
						if l.Team == x5.Team then
							r.TextColor3 = Color3.fromRGB(0, 255, 0);
						else
							r.TextColor3 = Color3.fromRGB(255, 0, 0);
						end;
					end;
				else
					if Y then
						Y:Destroy();
					end;
				end;
			end;
		end);
	end;
end;
local Pr = false;
local lr = nil;
local function Cr()
	if Pr then
		local p = game:GetService("CollectionService");
		local P = p:GetTagged("BerryBush");
		for p, P in ipairs(P) do
			local l = (P.Parent:GetPivot()).Position;
			for p, P in pairs(P:GetAttributes()) do
				if P and (not lr or table.find(lr, P)) then
					local p = "BerryEspPart_" .. (P .. ("_" .. tostring(l)));
					local C = workspace:FindFirstChild(p);
					if not C then
						C = Instance.new("Part");
						C.Name = p;
						C.Transparency = 1;
						C.Size = Vector3.new(1, 1, 1);
						C.Anchored = true;
						C.CanCollide = false;
						C.Parent = workspace;
						C.CFrame = CFrame.new(l);
					end;
					if not C:FindFirstChild("NameEsp") then
						local p = Instance.new("BillboardGui", C);
						p.Name = "NameEsp";
						p.ExtentsOffset = Vector3.new(0, 1, 0);
						p.Size = UDim2.new(0, 200, 0, 30);
						p.Adornee = C;
						p.AlwaysOnTop = true;
						local P = Instance.new("TextLabel", p);
						P.Font = Enum.Font.Code;
						P.TextSize = 14;
						P.TextWrapped = true;
						P.Size = UDim2.new(1, 0, 1, 0);
						P.TextYAlignment = Enum.TextYAlignment.Top;
						P.BackgroundTransparency = 1;
						P.TextStrokeTransparency = .5;
						P.TextColor3 = Color3.fromRGB(80, 245, 245);
						P.Parent = p;
					end;
					local Y = C:FindFirstChild("NameEsp");
					if Y and Y.TextLabel then
						local p = (x5.Character.Head.Position - l).Magnitude / 3;
						Y.TextLabel.Text = "[" .. (P .. ("]" .. (" " .. (math.round(p) .. " M"))));
						if _G.AutoBerry and math.round(p) <= 20 then
							C:Destroy();
						end;
					end;
				end;
			end;
		end;
	else
		for p, P in ipairs(workspace:GetChildren()) do
			if P:IsA("Part") and P.Name:match("BerryEspPart_.*") then
				P:Destroy();
			end;
		end;
	end;
end;
ESP:AddToggle("ESPBerry", { Title = "ESP Berry", Default = false, Callback = function(p)
		Pr = p;
		while Pr do
			wait();
			Cr();
		end;
	end });
ESP:AddToggle("ESPIsland", { Title = "ESP Island", Default = false, Callback = function(p)
		O5 = p;
		if O5 then
			if not H5 then
				H5 = Q5.Heartbeat:Connect(UpdateIslandESP);
			end;
		else
			if H5 then
				H5:Disconnect();
				H5 = nil;
			end;
			for p, P in ipairs(w5._WorldOrigin.Locations:GetChildren()) do
				local l = P:FindFirstChild("NameEsp");
				if l then
					l:Destroy();
				end;
			end;
		end;
	end });
ESP:AddToggle("ESPFruit", { Title = "ESP Fruit", Default = false, Callback = function(p)
		I5 = p;
		if I5 then
			if not W5 then
				W5 = Q5.Heartbeat:Connect(UpdateDevilChams);
			end;
		else
			if W5 then
				W5:Disconnect();
				W5 = nil;
			end;
			for p, P in ipairs(w5:GetChildren()) do
				if P:IsA("Model") and (string.find(P.Name, "Fruit") and P:FindFirstChild("Handle")) then
					local p = P.Handle;
					local l = p:FindFirstChild("NameEsp" .. R5);
					if l then
						l:Destroy();
					end;
				end;
			end;
		end;
	end });
ESP:AddToggle("ESPPlayer", { Title = "ESP Player", Default = false, Callback = function(p)
		z5 = p;
		if z5 then
			if not b5 then
				b5 = Q5.Heartbeat:Connect(UpdatePlayerChams);
			end;
		else
			if b5 then
				b5:Disconnect();
				b5 = nil;
			end;
			for p, P in ipairs(t5:GetPlayers()) do
				if P ~= x5 and (P.Character and P.Character:FindFirstChild("Head")) then
					local p = P.Character.Head;
					local l = p:FindFirstChild("NameEsp" .. pr);
					if l then
						l:Destroy();
					end;
				end;
			end;
		end;
	end });
PlayerPVP = Window:AddTab("PVP");
PVP = PlayerPVP:AddLeftGroupbox("PVP");
Playerslist = {};
for p, P in ipairs(t5:GetPlayers()) do
	Playerslist[p] = P.Name;
end;
PVP:AddDropdown("SelectPlayer", {
	Title = "Select Player PVP",
	Values = Playerslist,
	Default = nil,
	Multi = true,
	Callback = function(p)
		_G.BfSkills = p;
	end,
});
AimbotMethod = { "AimBots Skill", "Auto Aimbots" };
PVP:AddDropdown("SelectAimbot", {
	Title = "Select Method Aimbot",
	Values = AimbotMethod,
	Default = nil,
	Multi = true,
	Callback = function(p)
		ABmethod = p;
	end,
});
PVP:AddToggle("TeleportPlayer", { Title = "Teleport Player", Default = false, Callback = function(p)
		_G.TpPly = p;
		pcall(function()
			if _G.TpPly then
				repeat
					wait();
					_tp((game:GetService("Players"))[_G.PlayersList].Character.HumanoidRootPart.CFrame);
				until not _G.TpPly;
			end;
		end);
	end });
PVP:AddToggle("AimbotAuto", { Title = "Auto Aimbot", Default = false, Callback = function(p)
		_G.AimMethod = p;
	end });
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AimMethod and ABmethod == "AimBots Skill" then
				for p, P in pairs((game:GetService("Players")):GetPlayers()) do
					if P.Name == _G.PlayersList and P.Team ~= game.Players.LocalPlayer.Team then
						MousePos = (P.Character:FindFirstChild("HumanoidRootPart")).Position;
					end;
				end;
			end;
		end);
	end;
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AimMethod and ABmethod == "Auto Aimbots" then
				local p = math.huge;
				for P, l in pairs((game:GetService("Players")):GetPlayers()) do
					if l.Name ~= SH.Name and l.Team ~= game.Players.LocalPlayer.Team then
						local P = l:DistanceFromCharacter(SH.Character.HumanoidRootPart.Position);
						if P < p then
							p = P;
							MousePos = (l.Character:FindFirstChild("HumanoidRootPart")).Position;
						end;
					end;
				end;
			end;
		end);
	end;
end);
PVP:AddToggle("AimbotAuto", { Title = "Auto Aimbot Gun", Default = false, Callback = function(p)
		(getgenv()).AimbotGun = p;
	end });
task.spawn(function()
	while task.wait(.1) do
		if (getgenv()).AimbotGun and SelectWeaponGun then
			local p = x5 and x5.Character;
			local P = p and p:FindFirstChild(SelectWeaponGun);
			local l = t5:FindFirstChild((getgenv()).SelectPlayer);
			local C = l and l.Character;
			local Y = C and C:FindFirstChild("HumanoidRootPart");
			if P and Y then
				pcall(function()
					P.Cooldown.Value = 0;
					local p = { [1] = Y.Position, [2] = Y };
					P.RemoteFunctionShoot:InvokeServer(unpack(p));
					d:Button1Down(Vector2.new(1280, 672));
				end);
			end;
		end;
	end;
end);
MiscPVP = PlayerPVP:AddLeftGroupbox("MISC PVP");
SpeedSlider = MiscPVP:AddSlider({
		Title = "Imput WalkSpeed",
		Description = "",
		Min = 0,
		Max = 500,
		Default = 200,
		Rounding = 1,
		Callback = function(p)
			(getgenv()).WalkSpeedValue = p;
		end,
	});
JumpSlider = MiscPVP:AddSlider({
		Title = "Imput JumpPower",
		Description = "",
		Min = 0,
		Max = 500,
		Default = 200,
		Rounding = 1,
		Callback = function(p)
			(getgenv()).JumpValue = p;
		end,
	});
MiscPVP:AddToggle("EnableJumpPower", { Title = "Change JumpPower", Default = false, Callback = function(p)
		(getgenv()).JumpPowerEnabled = p;
		if p then
			local p = (game:GetService("Players")).LocalPlayer;
			if p.Character and p.Character:FindFirstChild("Humanoid") then
				p.Character.Humanoid.JumpPower = (getgenv()).JumpValue;
			end;
		else
			local p = (game:GetService("Players")).LocalPlayer;
			if p.Character and p.Character:FindFirstChild("Humanoid") then
				p.Character.Humanoid.JumpPower = 50;
			end;
		end;
	end });
MiscPVP:AddToggle("EnableWalkSpeed", { Title = "Change WalkSpeed", Default = false, Callback = function(p)
		(getgenv()).WalkSpeedEnabled = p;
		if p then
			local p = (game:GetService("Players")).LocalPlayer;
			if p.Character and p.Character:FindFirstChild("Humanoid") then
				p.Character.Humanoid.WalkSpeed = (getgenv()).WalkSpeedValue;
			end;
		else
			local p = (game:GetService("Players")).LocalPlayer;
			if p.Character and p.Character:FindFirstChild("Humanoid") then
				p.Character.Humanoid.WalkSpeed = 16;
			end;
		end;
	end });
(game:GetService("Players")).LocalPlayer.CharacterAdded:Connect(function(p)
	p:WaitForChild("Humanoid");
	if (getgenv()).WalkSpeedEnabled then
		p.Humanoid.WalkSpeed = (getgenv()).WalkSpeedValue;
	end;
	if (getgenv()).JumpPowerEnabled then
		p.Humanoid.JumpPower = (getgenv()).JumpValue;
	end;
end);
MiscPVP:AddToggle("WalkOnWater", { Title = "Walk On Water", Default = false, Callback = function(p)
		_G.WalkWater_Part = p;
		if _G.WalkWater_Part then
			(game:GetService("Workspace")).Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
		else
			(game:GetService("Workspace")).Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
		end;
	end });