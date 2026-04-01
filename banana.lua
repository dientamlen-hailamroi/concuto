local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Camera = Workspace.CurrentCamera

--// CONFIG
local Config = {
    Aimlock = {
        Enabled = false,
        LockMode = true,
        Smooth = 0.2,
        Prediction = 0,
        AimPart = "Head",
        WallCheck = true,
        TeamCheck = true,
        AutoAim = true,
        UsePrediction = false
    },
    ESP = {
        Enabled = false,
        Boxes = true,
        Names = true,
        Distance = true,
        Health = true,
        Tracers = false,
        TeamCheck = true,
        MaxDistance = 2000
    },
    Highlight = {
        Enabled = false,
        TeamCheck = true,
        ShowTeam = false
    },
    Walkspeed = { Enabled = false, Speed = 50 },
    Noclip = { Enabled = false },
    OutlineTarget = true
}

--// STATE
local CurrentTarget = nil
local CurrentOutline = nil
local Connections = {}
local ESPObjects = {}

--// UTILITIES
local function isAlive(plr)
    if not plr or not plr.Character then return false end
    local hum = plr.Character:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return false end
    local be = plr.Character:FindFirstChild("BodyEffects")
    if be then
        local ko = be:FindFirstChild("K.O")
        local grabbed = be:FindFirstChild("GRABBING_CONSTRAINT")
        if (ko and ko.Value) or (grabbed and grabbed.Value) then return false end
    end
    return true
end

local function isTeammate(player)
    if not LocalPlayer.Team or not player.Team then return false end
    return player.Team == LocalPlayer.Team
end

local function isVisible(targetPart, player)
    if not Config.Aimlock.WallCheck then return true end
    if not targetPart or not player or not player.Character then return false end
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {LocalPlayer.Character, Camera}
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.IgnoreWater = true
    local origin = Camera.CFrame.Position
    local direction = targetPart.Position - origin
    local result = Workspace:Raycast(origin, direction, params)
    if not result then return true end
    if result.Instance:IsDescendantOf(player.Character) then return true end
    return false
end

local function getTargetPart(char)
    local partName = Config.Aimlock.AimPart
    if partName == "Random" then
        local parts = {"Head", "UpperTorso", "LowerTorso"}
        partName = parts[math.random(1, #parts)]
    elseif partName == "Body" then
        partName = "UpperTorso"
    end
    return char:FindFirstChild(partName) or char:FindFirstChild("HumanoidRootPart")
end

local function GetClosestPlayerToCursor()
    local closestPlayer = nil
    local shortestDistance = math.huge
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and isAlive(player) and player.Character then
            if Config.Aimlock.TeamCheck and isTeammate(player) then continue end
            local head = player.Character:FindFirstChild("Head")
            if head then
                local screenPos, onScreen = Camera:WorldToViewportPoint(head.Position)
                if onScreen and isVisible(head, player) then
                    local mousePos = Vector2.new(Mouse.X, Mouse.Y)
                    local distance = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
    end
    return closestPlayer
end

--// OUTLINE
local function CreateOutline(char)
    if CurrentOutline then CurrentOutline:Destroy() CurrentOutline = nil end
    if not Config.OutlineTarget then return end
    local h = Instance.new("Highlight")
    h.Name = "DieverOutline"
    h.Adornee = char
    h.FillColor = Color3.fromRGB(255, 214, 90)
    h.FillTransparency = 0.5
    h.OutlineColor = Color3.fromRGB(255, 245, 210)
    h.OutlineTransparency = 0
    h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    h.Parent = char
    CurrentOutline = h
end

--// AIMLOCK
local AimlockConnection = nil
local function StartAimlock()
    if AimlockConnection then AimlockConnection:Disconnect() end
    AimlockConnection = RunService.RenderStepped:Connect(function()
        if not Config.Aimlock.Enabled then return end
        if Config.Aimlock.AutoAim then
            CurrentTarget = GetClosestPlayerToCursor()
            if CurrentTarget and CurrentTarget.Character then
                if not CurrentOutline or CurrentOutline.Adornee ~= CurrentTarget.Character then
                    CreateOutline(CurrentTarget.Character)
                end
            elseif CurrentOutline then CurrentOutline:Destroy() CurrentOutline = nil end
        end
        if not CurrentTarget or not isAlive(CurrentTarget) then return end
        local targetPart = getTargetPart(CurrentTarget.Character)
        if not targetPart then return end
        if not isVisible(targetPart, CurrentTarget) then return end
        local targetPos = targetPart.Position
        if Config.Aimlock.UsePrediction then
            local root = CurrentTarget.Character:FindFirstChild("HumanoidRootPart")
            if root then
                local velocity = root.AssemblyLinearVelocity or root.Velocity or Vector3.zero
                local velocityMag = velocity.Magnitude
                if velocityMag > 10 then
                    targetPos = targetPos + (velocity * Config.Aimlock.Prediction)
                end
            end
        end
        if Config.Aimlock.LockMode then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPos)
        else
            Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, targetPos), Config.Aimlock.Smooth)
        end
    end)
end

--// ESP SYSTEM
local function createESP(player)
    if player == LocalPlayer then return end
    ESPObjects[player] = {
        Box = Drawing.new("Square"),
        Name = Drawing.new("Text"),
        Distance = Drawing.new("Text"),
        HealthBarBG = Drawing.new("Square"),
        HealthBar = Drawing.new("Square"),
        Tracer = Drawing.new("Line")
    }
    local o = ESPObjects[player]
    o.Box.Thickness = 2
    o.Box.Filled = false
    o.Name.Size = 14
    o.Name.Center = true
    o.Name.Outline = true
    o.Name.OutlineColor = Color3.fromRGB(0, 0, 0)
    o.Distance.Size = 12
    o.Distance.Center = true
    o.Distance.Outline = true
    o.Distance.OutlineColor = Color3.fromRGB(0, 0, 0)
    o.HealthBar.Filled = true
    o.HealthBarBG.Filled = true
    o.HealthBarBG.Color = Color3.fromRGB(20, 20, 20)
end

local function removeESP(player)
    if ESPObjects[player] then
        for _, obj in pairs(ESPObjects[player]) do pcall(function() obj:Remove() end) end
        ESPObjects[player] = nil
    end
end

local function updateESP()
    if not Config.ESP.Enabled then
        for _, esp in pairs(ESPObjects) do for _, obj in pairs(esp) do obj.Visible = false end end
        return
    end
    for player, esp in pairs(ESPObjects) do
        if not player or not player.Parent then removeESP(player) continue end
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        if char and hrp and hum and hum.Health > 0 then
            if Config.ESP.TeamCheck and isTeammate(player) then
                for _, obj in pairs(esp) do obj.Visible = false end
                continue
            end
            local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
            local dist = (Camera.CFrame.Position - hrp.Position).Magnitude
            if onScreen and dist <= Config.ESP.MaxDistance then
                local color = isTeammate(player) and Color3.fromRGB(80, 255, 120) or Color3.fromRGB(255, 50, 80)
                local size = Vector2.new(2000/dist, 2500/dist)
                esp.Box.Visible = Config.ESP.Boxes
                esp.Box.Size = size
                esp.Box.Position = Vector2.new(screenPos.X - size.X/2, screenPos.Y - size.Y/2)
                esp.Box.Color = color
                esp.Name.Visible = Config.ESP.Names
                esp.Name.Text = player.Name
                esp.Name.Position = Vector2.new(screenPos.X, screenPos.Y - size.Y/2 - 15)
                esp.Name.Color = color
                esp.Distance.Visible = Config.ESP.Distance
                esp.Distance.Text = math.floor(dist).."m"
                esp.Distance.Position = Vector2.new(screenPos.X, screenPos.Y + size.Y/2 + 5)
                esp.Distance.Color = Color3.fromRGB(200, 200, 200)
                if Config.ESP.Health then
                    local hp = math.clamp(hum.Health / hum.MaxHealth, 0, 1)
                    esp.HealthBarBG.Visible = true
                    esp.HealthBarBG.Size = Vector2.new(4, size.Y)
                    esp.HealthBarBG.Position = Vector2.new(screenPos.X - size.X/2 - 6, screenPos.Y - size.Y/2)
                    esp.HealthBar.Visible = true
                    esp.HealthBar.Size = Vector2.new(4, size.Y * hp)
                    esp.HealthBar.Position = Vector2.new(screenPos.X - size.X/2 - 6, screenPos.Y + size.Y/2 - esp.HealthBar.Size.Y)
                    esp.HealthBar.Color = Color3.fromRGB(math.floor(255 * (1 - hp)), math.floor(255 * hp), 0)
                else
                    esp.HealthBarBG.Visible = false
                    esp.HealthBar.Visible = false
                end
                esp.Tracer.Visible = Config.ESP.Tracers
                esp.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                esp.Tracer.To = Vector2.new(screenPos.X, screenPos.Y + size.Y/2)
                esp.Tracer.Color = color
            else
                for _, obj in pairs(esp) do obj.Visible = false end
            end
        else
            for _, obj in pairs(esp) do obj.Visible = false end
        end
    end
end

--// HIGHLIGHT
local function updateHighlights()
    for _, player in pairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        local char = player.Character
        if char and Config.Highlight.Enabled then
            if Config.Highlight.TeamCheck and isTeammate(player) and not Config.Highlight.ShowTeam then
                local hl = char:FindFirstChildOfClass("Highlight")
                if hl and hl.Name == "DieverHL" then hl:Destroy() end
                continue
            end
            local hl = char:FindFirstChildOfClass("Highlight")
            if not hl or hl.Name ~= "DieverHL" then
                hl = Instance.new("Highlight")
                hl.Name = "DieverHL"
                hl.Parent = char
            end
            hl.FillColor = isTeammate(player) and Color3.fromRGB(80, 255, 120) or Color3.fromRGB(255, 50, 80)
            hl.OutlineColor = Color3.fromRGB(255, 255, 255)
            hl.FillTransparency = 0.5
            hl.OutlineTransparency = 0
        elseif char then
            local hl = char:FindFirstChildOfClass("Highlight")
            if hl and hl.Name == "DieverHL" then hl:Destroy() end
        end
    end
end

--// LOOPS
table.insert(Connections, RunService.RenderStepped:Connect(function()
    updateESP()
    updateHighlights()
end))

table.insert(Connections, RunService.Heartbeat:Connect(function()
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChild("Humanoid")
        if hum and Config.Walkspeed.Enabled then hum.WalkSpeed = Config.Walkspeed.Speed end
    end
end))

table.insert(Connections, RunService.Stepped:Connect(function()
    local char = LocalPlayer.Character
    if char and Config.Noclip.Enabled then
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end))

--// CATLIB UI
local CatLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/realcath/lab/refs/heads/main/libary/catlibyz"))()

local window = CatLib:CreateWindow({
    Title = "Diever Hub",
    Subtitle = "By MduccDev",
    Icon = "rbxassetid://87779947644519",
    Size = UDim2.new(0, 500, 0, 300),
    Theme = "SpecialCat",
    ColorfulLetters = true,
    ThemeBackground = false,
    ThemeTab = false,
    FloatingButton = {
        Enabled = true,
        Icon = "rbxassetid://87779947644519",
        Size = UDim2.new(0, 60, 0, 60),
        Position = UDim2.new(0, 20, 0, 100),
        Shape = "square",
    }
})

local tabAimbot = window:CreateTab({
    Name = "Aimbot",
    Title = "Aimbot",
    Subtitle = "Aimbot features",
    Icon = "rbxassetid://87779947644519"
})

local tabESP = window:CreateTab({
    Name = "ESP",
    Title = "ESP",
    Subtitle = "ESP features",
    Icon = "rbxassetid://87779947644519"
})

local tabMisc = window:CreateTab({
    Name = "Misc",
    Title = "Misc",
    Subtitle = "Misc features",
    Icon = "rbxassetid://87779947644519"
})

window:Notify({
    Title = "Diever Hub",
    Text = "Loaded successfully",
    Duration = 5
})

--// AIMBOT TAB
tabAimbot:AddSection("Aimbot Settings")

tabAimbot:AddToggle({
    Name = "Enable Aimbot",
    Default = false,
    Callback = function(value)
        Config.Aimlock.Enabled = value
        if value then
            StartAimlock()
            window:Notify({Title = "Aimbot", Text = "Aimbot Enabled", Duration = 2})
        else
            if AimlockConnection then AimlockConnection:Disconnect() end
            CurrentTarget = nil
            if CurrentOutline then CurrentOutline:Destroy() CurrentOutline = nil end
            window:Notify({Title = "Aimbot", Text = "Aimbot Disabled", Duration = 2})
        end
    end
})

tabAimbot:AddToggle({
    Name = "Lock Mode (Instant)",
    Default = true,
    Callback = function(value)
        Config.Aimlock.LockMode = value
    end
})

tabAimbot:AddToggle({
    Name = "Auto Target",
    Default = true,
    Callback = function(value)
        Config.Aimlock.AutoAim = value
    end
})

tabAimbot:AddDropdown({
    Name = "Aim Part",
    Options = {"Head", "Body", "Random"},
    Default = "Head",
    Callback = function(option)
        Config.Aimlock.AimPart = option
    end
})

tabAimbot:AddToggle({
    Name = "Use Prediction",
    Default = false,
    Callback = function(value)
        Config.Aimlock.UsePrediction = value
    end
})

tabAimbot:AddSlider({
    Name = "Smoothness",
    Min = 0.05,
    Max = 0.5,
    Default = 0.2,
    Callback = function(value)
        Config.Aimlock.Smooth = value
    end
})

tabAimbot:AddSlider({
    Name = "Prediction Value",
    Min = 0,
    Max = 0.3,
    Default = 0,
    Callback = function(value)
        Config.Aimlock.Prediction = value
    end
})

tabAimbot:AddToggle({
    Name = "Wall Check",
    Default = true,
    Callback = function(value)
        Config.Aimlock.WallCheck = value
    end
})

tabAimbot:AddToggle({
    Name = "Team Check",
    Default = true,
    Callback = function(value)
        Config.Aimlock.TeamCheck = value
    end
})

tabAimbot:AddToggle({
    Name = "Target Outline",
    Default = true,
    Callback = function(value)
        Config.OutlineTarget = value
    end
})

--// ESP TAB
tabESP:AddSection("ESP Settings")

tabESP:AddToggle({
    Name = "Enable ESP",
    Default = false,
    Callback = function(value)
        Config.ESP.Enabled = value
        if value then
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer then createESP(p) end
            end
        end
    end
})

tabESP:AddToggle({
    Name = "Boxes",
    Default = true,
    Callback = function(value)
        Config.ESP.Boxes = value
    end
})

tabESP:AddToggle({
    Name = "Names",
    Default = true,
    Callback = function(value)
        Config.ESP.Names = value
    end
})

tabESP:AddToggle({
    Name = "Distance",
    Default = true,
    Callback = function(value)
        Config.ESP.Distance = value
    end
})

tabESP:AddToggle({
    Name = "Health Bar",
    Default = true,
    Callback = function(value)
        Config.ESP.Health = value
    end
})

tabESP:AddToggle({
    Name = "Tracers",
    Default = false,
    Callback = function(value)
        Config.ESP.Tracers = value
    end
})

tabESP:AddToggle({
    Name = "Team Check",
    Default = true,
    Callback = function(value)
        Config.ESP.TeamCheck = value
    end
})

tabESP:AddSlider({
    Name = "Max Distance",
    Min = 500,
    Max = 5000,
    Default = 2000,
    Callback = function(value)
        Config.ESP.MaxDistance = value
    end
})

tabESP:AddSection("Highlight ESP")

tabESP:AddToggle({
    Name = "Enable Highlight",
    Default = false,
    Callback = function(value)
        Config.Highlight.Enabled = value
    end
})

tabESP:AddToggle({
    Name = "Highlight Team Check",
    Default = true,
    Callback = function(value)
        Config.Highlight.TeamCheck = value
    end
})

tabESP:AddToggle({
    Name = "Show Team Highlight",
    Default = false,
    Callback = function(value)
        Config.Highlight.ShowTeam = value
    end
})

--// MISC TAB
tabMisc:AddSection("Movement")

tabMisc:AddToggle({
    Name = "Walkspeed",
    Default = false,
    Callback = function(value)
        Config.Walkspeed.Enabled = value
    end
})

tabMisc:AddSlider({
    Name = "Speed",
    Min = 16,
    Max = 300,
    Default = 50,
    Callback = function(value)
        Config.Walkspeed.Speed = value
    end
})

tabMisc:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(value)
        Config.Noclip.Enabled = value
    end
})

--// KEYBINDS
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    
    if input.KeyCode == Enum.KeyCode.H then
        Config.Aimlock.Enabled = not Config.Aimlock.Enabled
        if Config.Aimlock.Enabled then
            StartAimlock()
            window:Notify({Title = "Aimbot", Text = "Aimbot ON [H]", Duration = 2})
        else
            if AimlockConnection then AimlockConnection:Disconnect() end
            CurrentTarget = nil
            if CurrentOutline then CurrentOutline:Destroy() CurrentOutline = nil end
            window:Notify({Title = "Aimbot", Text = "Aimbot OFF [H]", Duration = 2})
        end
    end
end)

--// EVENTS
Players.PlayerAdded:Connect(createESP)
Players.PlayerRemoving:Connect(function(player)
    removeESP(player)
    if CurrentTarget == player then CurrentTarget = nil end
end)

for _, p in pairs(Players:GetPlayers()) do
    if p ~= LocalPlayer then createESP(p) end
end
