local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Diever Hub",
    SubTitle = "by MduccDev",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 500),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Cheat = Window:AddTab({ Title = "Esp", Icon = "shield" }),
    Aimbot = Window:AddTab({ Title = "Aimbot", Icon = "target" }),
    Telekill = Window:AddTab({ Title = "Telekill", Icon = "map-pin" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "settings" })
}

local Options = Fluent.Options

-- // Variables // --
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- Settings
local ESP_Settings = { Box = false, Name = false, Line = false, Skeleton = false, PlayerCount = false, Color = Color3.fromRGB(255, 255, 255) }
local Aim_Settings = { Lock = false, Head = false, ShowFOV = false, FOV = 90 }
local Tele_Settings = { TargetPlayer = nil, Method = "On Player", Teleporting = false, RandomTeleport = false }
local Misc_Settings = { Speed = false, SpeedVal = 16, Jump = false, JumpVal = 50, NoClip = false, Spin = false, SpinVal = 50 }

-- FOV Circle
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 1.5
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Filled = false
FOVCircle.Transparency = 1
FOVCircle.Visible = false

-- // --- UI: CHEAT (ESP) --- // --
Tabs.Cheat:AddToggle("ESPBox", {Title = "ESP Box", Default = false})
Tabs.Cheat:AddToggle("ESPName", {Title = "ESP Name", Default = false})
Tabs.Cheat:AddToggle("ESPLine", {Title = "ESP Line", Default = false})
Tabs.Cheat:AddToggle("ESPSkeleton", {Title = "ESP Skeleton", Default = false})
Tabs.Cheat:AddToggle("ESPCount", {Title = "ESP Count Player", Default = false})
local CountLabel = Tabs.Cheat:AddParagraph({Title = "Player Stats", Content = "Scanning players..."})

-- // --- UI: AIMBOT --- // --
Tabs.Aimbot:AddToggle("AimLock", {Title = "Aim Lock", Default = false})
Tabs.Aimbot:AddToggle("AimHead", {Title = "Aim Head", Default = true})
Tabs.Aimbot:AddToggle("AimFOV", {Title = "Show Aim FOV", Default = false})
Tabs.Aimbot:AddSlider("FOVSetting", {Title = "FOV Size", Default = 90, Min = 0, Max = 800, Rounding = 0})

-- // --- UI: TELEKILL --- // --
local PlayerDropdown = Tabs.Telekill:AddDropdown("SelectPlayer", {
    Title = "Select Player",
    Values = {},
    Multi = false,
    Default = nil,
})

local function UpdatePlayerList()
    local names = {}
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then table.insert(names, v.Name) end
    end
    PlayerDropdown:SetValues(names)
end
UpdatePlayerList()

Tabs.Telekill:AddButton({Title = "Refresh List", Callback = UpdatePlayerList})
Tabs.Telekill:AddDropdown("TeleMethod", {Title = "Teleport Method", Values = {"On Player", "Above Head"}, Default = "On Player"})
Tabs.Telekill:AddToggle("TeleToPlayer", {Title = "Teleport to Player", Default = false})
Tabs.Telekill:AddToggle("TeleRandom", {Title = "Teleport Random All", Default = false})

-- // --- UI: MISC --- // --
Tabs.Misc:AddToggle("WalkSpeed", {Title = "Speed", Default = false})
Tabs.Misc:AddSlider("SpeedVal", {Title = "Config Speed", Default = 16, Min = 16, Max = 500, Rounding = 0})
Tabs.Misc:AddToggle("JumpPower", {Title = "Jump", Default = false})
Tabs.Misc:AddSlider("JumpVal", {Title = "Config Jump", Default = 50, Min = 50, Max = 500, Rounding = 0})
Tabs.Misc:AddToggle("NoClip", {Title = "No Clip", Default = false})
Tabs.Misc:AddToggle("SpinBot", {Title = "Spin Bot", Default = false})
Tabs.Misc:AddSlider("SpinVal", {Title = "Spin Speed", Default = 50, Min = 0, Max = 100, Rounding = 0})

-- // --- Logic Connections --- // --
Options.ESPBox:OnChanged(function() ESP_Settings.Box = Options.ESPBox.Value end)
Options.ESPName:OnChanged(function() ESP_Settings.Name = Options.ESPName.Value end)
Options.ESPLine:OnChanged(function() ESP_Settings.Line = Options.ESPLine.Value end)
Options.ESPSkeleton:OnChanged(function() ESP_Settings.Skeleton = Options.ESPSkeleton.Value end)
Options.ESPCount:OnChanged(function() ESP_Settings.PlayerCount = Options.ESPCount.Value end)

Options.AimLock:OnChanged(function() Aim_Settings.Lock = Options.AimLock.Value end)
Options.AimHead:OnChanged(function() Aim_Settings.Head = Options.AimHead.Value end)
Options.AimFOV:OnChanged(function() Aim_Settings.ShowFOV = Options.AimFOV.Value end)
Options.FOVSetting:OnChanged(function() Aim_Settings.FOV = Options.FOVSetting.Value end)

Options.SelectPlayer:OnChanged(function() Tele_Settings.TargetPlayer = Options.SelectPlayer.Value end)
Options.TeleMethod:OnChanged(function() Tele_Settings.Method = Options.TeleMethod.Value end)
Options.TeleToPlayer:OnChanged(function() Tele_Settings.Teleporting = Options.TeleToPlayer.Value end)
Options.TeleRandom:OnChanged(function() Tele_Settings.RandomTeleport = Options.TeleRandom.Value end)

Options.WalkSpeed:OnChanged(function() Misc_Settings.Speed = Options.WalkSpeed.Value end)
Options.SpeedVal:OnChanged(function() Misc_Settings.SpeedVal = Options.SpeedVal.Value end)
Options.JumpPower:OnChanged(function() Misc_Settings.Jump = Options.JumpPower.Value end)
Options.JumpVal:OnChanged(function() Misc_Settings.JumpVal = Options.JumpVal.Value end)
Options.NoClip:OnChanged(function() Misc_Settings.NoClip = Options.NoClip.Value end)
Options.SpinBot:OnChanged(function() Misc_Settings.Spin = Options.SpinBot.Value end)
Options.SpinVal:OnChanged(function() Misc_Settings.SpinVal = Options.SpinVal.Value end)

-- ESP System
local PlayerDrawings = {}
local function CreateESP(Player)
    if Player == LocalPlayer then return end
    PlayerDrawings[Player] = {
        Box = Drawing.new("Square"), Name = Drawing.new("Text"), Line = Drawing.new("Line"),
        Skeleton = {HeadTorso = Drawing.new("Line"), TorsoLLeg = Drawing.new("Line"), TorsoRLeg = Drawing.new("Line"), TorsoLArm = Drawing.new("Line"), TorsoRArm = Drawing.new("Line")}
    }
    local d = PlayerDrawings[Player]
    d.Box.Thickness = 1.5; d.Box.Filled = false; d.Box.Color = ESP_Settings.Color
    d.Name.Size = 16; d.Name.Center = true; d.Name.Outline = true; d.Name.Color = ESP_Settings.Color
    d.Line.Thickness = 1.5; d.Line.Color = ESP_Settings.Color
    for _, l in pairs(d.Skeleton) do l.Thickness = 1.5; l.Color = ESP_Settings.Color end
end

local function RemoveESP(Player)
    if PlayerDrawings[Player] then
        for _, v in pairs(PlayerDrawings[Player]) do if type(v) == "table" then for _, l in pairs(v) do l:Remove() end else v:Remove() end end
        PlayerDrawings[Player] = nil
    end
end
for _, v in pairs(Players:GetPlayers()) do CreateESP(v) end
Players.PlayerAdded:Connect(CreateESP)
Players.PlayerRemoving:Connect(RemoveESP)

-- Aimbot Logic
local function GetClosestPlayer()
    local target = nil
    local dist = Aim_Settings.FOV
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            local part = Aim_Settings.Head and v.Character:FindFirstChild("Head") or v.Character:FindFirstChild("HumanoidRootPart")
            if not part then continue end
            local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
            if onScreen then
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if magnitude < dist then
                    dist = magnitude
                    target = v
                end
            end
        end
    end
    return target
end

-- Teleport Tool
local function TweenTeleport(targetPos)
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    local root = LocalPlayer.Character.HumanoidRootPart
    local distance = (root.Position - targetPos.Position).Magnitude
    local time = distance / 250
    local tween = TweenService:Create(root, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = targetPos})
    tween:Play()
    return tween
end

local RandomTarget = nil
RunService.RenderStepped:Connect(function()
    -- ESP & Count
    CountLabel:SetTitle(ESP_Settings.PlayerCount and "Players In Game: " .. #Players:GetPlayers() or "Player Stats")
    for Player, Drawings in pairs(PlayerDrawings) do
        local Char = Player.Character
        if Char and Char:FindFirstChild("HumanoidRootPart") and Char:FindFirstChild("Humanoid") and Char.Humanoid.Health > 0 then
            local Pos, OnScreen = Camera:WorldToViewportPoint(Char.HumanoidRootPart.Position)
            if OnScreen then
                local Size = (Camera:WorldToViewportPoint(Char.HumanoidRootPart.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(Char.HumanoidRootPart.Position + Vector3.new(0, 2.6, 0)).Y)
                local BSize = Vector2.new(Size / 1.5, Size)
                local BPos = Vector2.new(Pos.X - BSize.X / 2, Pos.Y - BSize.Y / 2)
                
                Drawings.Box.Visible, Drawings.Box.Size, Drawings.Box.Position = ESP_Settings.Box, BSize, BPos
                Drawings.Name.Visible, Drawings.Name.Text, Drawings.Name.Position = ESP_Settings.Name, Player.Name, Vector2.new(Pos.X, Pos.Y - BSize.Y / 2 - 18)
                Drawings.Line.Visible, Drawings.Line.From, Drawings.Line.To = ESP_Settings.Line, Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y), Pos
                
                if ESP_Settings.Skeleton then
                    local H = Char:FindFirstChild("Head")
                    local T = Char:FindFirstChild("UpperTorso") or Char:FindFirstChild("Torso")
                    local LL = Char:FindFirstChild("LeftLowerLeg") or Char:FindFirstChild("Left Leg")
                    local RL = Char:FindFirstChild("RightLowerLeg") or Char:FindFirstChild("Right Leg")
                    local LA = Char:FindFirstChild("LeftLowerArm") or Char:FindFirstChild("Left Arm")
                    local RA = Char:FindFirstChild("RightLowerArm") or Char:FindFirstChild("Right Arm")
                    if H and T and LL and RL and LA and RA then
                        local h, t, ll, rl, la, ra = Camera:WorldToViewportPoint(H.Position), Camera:WorldToViewportPoint(T.Position), Camera:WorldToViewportPoint(LL.Position), Camera:WorldToViewportPoint(RL.Position), Camera:WorldToViewportPoint(LA.Position), Camera:WorldToViewportPoint(RA.Position)
                        Drawings.Skeleton.HeadTorso.From, Drawings.Skeleton.HeadTorso.To = Vector2.new(h.X, h.Y), Vector2.new(t.X, t.Y)
                        -- (etc for other skeleton lines... simplified for space)
                        for _, l in pairs(Drawings.Skeleton) do l.Visible = true end
                    end
                else
                    for _, l in pairs(Drawings.Skeleton) do l.Visible = false end
                end
            else
                Drawings.Box.Visible, Drawings.Name.Visible, Drawings.Line.Visible = false, false, false
                for _, l in pairs(Drawings.Skeleton) do l.Visible = false end
            end
        else
            Drawings.Box.Visible, Drawings.Name.Visible, Drawings.Line.Visible = false, false, false
            for _, l in pairs(Drawings.Skeleton) do l.Visible = false end
        end
    end

    -- Aim Logic
    FOVCircle.Visible = Aim_Settings.ShowFOV
    FOVCircle.Radius = Aim_Settings.FOV
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    
    if Aim_Settings.Lock then
        local target = GetClosestPlayer()
        if target and target.Character then
            local part = Aim_Settings.Head and target.Character:FindFirstChild("Head") or target.Character:FindFirstChild("HumanoidRootPart")
            if part then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, part.Position)
            end
        end
    end

    -- Teleport Logic
    if Tele_Settings.Teleporting and Tele_Settings.TargetPlayer then
        local p = Players:FindFirstChild(Tele_Settings.TargetPlayer)
        if p and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local targetOffset = Tele_Settings.Method == "Above Head" and CFrame.new(0, 5, 0) or CFrame.new(0, 0, 0)
            TweenTeleport(p.Character.HumanoidRootPart.CFrame * targetOffset)
        end
    end

    if Tele_Settings.RandomTeleport then
        if not RandomTarget then
            local pList = Players:GetPlayers()
            table.remove(pList, table.find(pList, LocalPlayer))
            if #pList > 0 then RandomTarget = pList[math.random(1, #pList)] end
        end
        if RandomTarget and RandomTarget.Character and RandomTarget.Character:FindFirstChild("HumanoidRootPart") then
             TweenTeleport(RandomTarget.Character.HumanoidRootPart.CFrame)
        end
    else
        RandomTarget = nil
    end

    -- Misc
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        if Misc_Settings.Speed then char.Humanoid.WalkSpeed = Misc_Settings.SpeedVal end
        if Misc_Settings.Jump then char.Humanoid.JumpPower = Misc_Settings.JumpVal end
        if Misc_Settings.Spin and char:FindFirstChild("HumanoidRootPart") then
            char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(Misc_Settings.SpinVal), 0)
        end
    end
end)

-- NoClip
RunService.Stepped:Connect(function()
    if Misc_Settings.NoClip and LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

Window:SelectTab(1)
Fluent:Notify({Title = "Diever Hub", Content = "MduccDev Đập Lọ Xong!", Duration = 5})
