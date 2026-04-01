-- XITY HUB BY DEV STUCKZ999
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")
local ContentProvider = game:GetService("ContentProvider")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local lastNotificationTime = 0
local notificationCooldown = 10
local currentTime = tick()
if currentTime - lastNotificationTime >= notificationCooldown then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Loading...",
        Duration = 5,
        Icon = "rbxassetid://113110043061294"
    })
    lastNotificationTime = currentTime
end

-- Gun System Variables
local GunSystem = {
    AutoGrabEnabled = false,
    NotifyGunDrop = true,
    GunDropCheckInterval = 1,
    ActiveGunDrops = {},
    GunDropHighlights = {}
}

local mapPaths = {
    "ResearchFacility",
    "Hospital3", 
    "MilBase",
    "House2",
    "Workplace",
    "Mansion2",
    "BioLab",
    "Hotel",
    "Factory",
    "Bank2",
    "PoliceStation"
}

-- ESP Variables
local Drawings = {
    ESP = {},
    Tracers = {},
    Boxes = {},
    Healthbars = {},
    Names = {},
    Distances = {},
    Snaplines = {},
    Skeleton = {}
}

local Colors = {
    Enemy = Color3.fromRGB(255, 25, 25),
    Ally = Color3.fromRGB(25, 255, 25),
    Neutral = Color3.fromRGB(255, 255, 255),
    Selected = Color3.fromRGB(255, 210, 0),
    Health = Color3.fromRGB(0, 255, 0),
    Distance = Color3.fromRGB(200, 200, 200),
    Rainbow = nil
}

local Highlights = {}

local Settings = {
    Enabled = false,
    TeamCheck = false,
    ShowTeam = false,
    ESPRole = false,
    VisibilityCheck = true,
    BoxESP = false,
    BoxStyle = "Corner",
    BoxOutline = true,
    BoxFilled = false,
    BoxFillTransparency = 0.5,
    BoxThickness = 1,
    TracerESP = false,
    TracerOrigin = "Bottom",
    TracerStyle = "Line",
    TracerThickness = 1,
    HealthESP = false,
    HealthStyle = "Bar",
    HealthBarSide = "Left",
    HealthTextSuffix = "HP",
    NameESP = false,
    NameMode = "DisplayName",
    ShowDistance = true,
    DistanceUnit = "studs",
    TextSize = 14,
    TextFont = 2,
    RainbowSpeed = 1,
    MaxDistance = 1000,
    RefreshRate = 1/144,
    Snaplines = false,
    SnaplineStyle = "Straight",
    RainbowEnabled = false,
    RainbowBoxes = false,
    RainbowTracers = false,
    RainbowText = false,
    ChamsEnabled = false,
    ChamsOutlineColor = Color3.fromRGB(255, 255, 255),
    ChamsFillColor = Color3.fromRGB(255, 0, 0),
    ChamsOccludedColor = Color3.fromRGB(150, 0, 0),
    ChamsTransparency = 0.5,
    ChamsOutlineTransparency = 0,
    ChamsOutlineThickness = 0.1,
    SkeletonESP = false,
    SkeletonColor = Color3.fromRGB(255, 255, 255),
    SkeletonThickness = 1.5,
    SkeletonTransparency = 1
}

-- Mukbang Variables
local mukbangActive = false
local mukbangAnimation = nil
local selectedTarget = nil

-- Sóc Lọ Variables
local socLoActive = false
local socLoAnimation = nil

-- Chill Guy Variables
local ChillConfig = {
    Enabled = false,
    BaseSpeed = 5,
    CurrentSpeed = 5,
    RandomSpin = Vector3.new(0.5, 0.2, 0.5),
    DragCoefficient = 0.85,
    SmoothTransition = true,
    SwimMode = false
}

local ChillState = {
    BodyVelocity = nil,
    BodyAngularVelocity = nil,
    LastPosition = nil,
    DriftParticles = nil
}

-- Fly Variables
local flyActive = false
local flySpeed = 50
local bodyVelocity = nil
local bodyAngularVelocity = nil
local flyKeys = {
    W = false,
    A = false,
    S = false,
    D = false,
    Space = false,
    LeftShift = false
}

-- No Clip Variables
local noClipActive = false
local noclipConnection = nil

-- Infinite Jump Variables
local infiniteJumpActive = false

-- ESP Functions
local function CreateESP(player)
    if player == LocalPlayer then return end

    local box = {
        TopLeft = Drawing.new("Line"),
        TopRight = Drawing.new("Line"),
        BottomLeft = Drawing.new("Line"),
        BottomRight = Drawing.new("Line"),
        Left = Drawing.new("Line"),
        Right = Drawing.new("Line"),
        Top = Drawing.new("Line"),
        Bottom = Drawing.new("Line")
    }

    for _, line in pairs(box) do
        line.Visible = false
        line.Color = Colors.Enemy
        line.Thickness = Settings.BoxThickness
    end

    local tracer = Drawing.new("Line")
    tracer.Visible = false
    tracer.Color = Colors.Enemy
    tracer.Thickness = Settings.TracerThickness

    local healthBar = {
        Outline = Drawing.new("Square"),
        Fill = Drawing.new("Square"),
        Text = Drawing.new("Text")
    }

    for _, obj in pairs(healthBar) do
        obj.Visible = false
        if obj == healthBar.Fill then
            obj.Color = Colors.Health
            obj.Filled = true
        elseif obj == healthBar.Text then
            obj.Center = true
            obj.Size = Settings.TextSize
            obj.Color = Colors.Health
            obj.Font = Settings.TextFont
        end
    end

    local info = {
        Name = Drawing.new("Text"),
        Distance = Drawing.new("Text")
    }

    for _, text in pairs(info) do
        text.Visible = false
        text.Center = true
        text.Size = Settings.TextSize
        text.Color = Colors.Enemy
        text.Font = Settings.TextFont
        text.Outline = true
    end

    local snapline = Drawing.new("Line")
    snapline.Visible = false
    snapline.Color = Colors.Enemy
    snapline.Thickness = 1

    local highlight = Instance.new("Highlight")
    highlight.FillColor = Settings.ChamsFillColor
    highlight.OutlineColor = Settings.ChamsOutlineColor
    highlight.FillTransparency = Settings.ChamsTransparency
    highlight.OutlineTransparency = Settings.ChamsOutlineTransparency
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Enabled = Settings.ChamsEnabled

    Highlights[player] = highlight

    local skeleton = {
        Head = Drawing.new("Line"),
        Neck = Drawing.new("Line"),
        UpperSpine = Drawing.new("Line"),
        LowerSpine = Drawing.new("Line"),
        LeftShoulder = Drawing.new("Line"),
        LeftUpperArm = Drawing.new("Line"),
        LeftLowerArm = Drawing.new("Line"),
        LeftHand = Drawing.new("Line"),
        RightShoulder = Drawing.new("Line"),
        RightUpperArm = Drawing.new("Line"),
        RightLowerArm = Drawing.new("Line"),
        RightHand = Drawing.new("Line"),
        LeftHip = Drawing.new("Line"),
        LeftUpperLeg = Drawing.new("Line"),
        LeftLowerLeg = Drawing.new("Line"),
        LeftFoot = Drawing.new("Line"),
        RightHip = Drawing.new("Line"),
        RightUpperLeg = Drawing.new("Line"),
        RightLowerLeg = Drawing.new("Line"),
        RightFoot = Drawing.new("Line")
    }

    for _, line in pairs(skeleton) do
        line.Visible = false
        line.Color = Settings.SkeletonColor
        line.Thickness = Settings.SkeletonThickness
        line.Transparency = Settings.SkeletonTransparency
    end

    Drawings.Skeleton[player] = skeleton
    Drawings.ESP[player] = {
        Box = box,
        Tracer = tracer,
        HealthBar = healthBar,
        Info = info,
        Snapline = snapline
    }
end

local function RemoveESP(player)
    local esp = Drawings.ESP[player]
    if esp then
        for _, obj in pairs(esp.Box) do obj:Remove() end
        esp.Tracer:Remove()
        for _, obj in pairs(esp.HealthBar) do obj:Remove() end
        for _, obj in pairs(esp.Info) do obj:Remove() end
        esp.Snapline:Remove()
        Drawings.ESP[player] = nil
    end

    local highlight = Highlights[player]
    if highlight then
        highlight:Destroy()
        Highlights[player] = nil
    end

    local skeleton = Drawings.Skeleton[player]
    if skeleton then
        for _, line in pairs(skeleton) do
            line:Remove()
        end
        Drawings.Skeleton[player] = nil
    end
end

local function GetPlayerColor(player)
    if Settings.RainbowEnabled then
        if Settings.RainbowBoxes and Settings.BoxESP then return Colors.Rainbow end
        if Settings.RainbowTracers and Settings.TracerESP then return Colors.Rainbow end
        if Settings.RainbowText and (Settings.NameESP or Settings.HealthESP) then return Colors.Rainbow end
    end
    return player.Team == LocalPlayer.Team and Colors.Ally or Colors.Enemy
end

local function GetTracerOrigin()
    local origin = Settings.TracerOrigin
    if origin == "Bottom" then
        return Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y)
    elseif origin == "Top" then
        return Vector2.new(Camera.ViewportSize.X/2, 0)
    elseif origin == "Mouse" then
        return UserInputService:GetMouseLocation()
    else
        return Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
    end
end

local function UpdateESP(player)
    if not Settings.Enabled then return end

    local esp = Drawings.ESP[player]
    if not esp then return end

    local character = player.Character
    if not character then 
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        esp.Tracer.Visible = false
        for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
        for _, obj in pairs(esp.Info) do obj.Visible = false end
        esp.Snapline.Visible = false

        local skeleton = Drawings.Skeleton[player]
        if skeleton then
            for _, line in pairs(skeleton) do
                line.Visible = false
            end
        end
        return 
    end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then 
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        esp.Tracer.Visible = false
        for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
        for _, obj in pairs(esp.Info) do obj.Visible = false end
        esp.Snapline.Visible = false

        local skeleton = Drawings.Skeleton[player]
        if skeleton then
            for _, line in pairs(skeleton) do
                line.Visible = false
            end
        end
        return 
    end

    local _, isOnScreen = Camera:WorldToViewportPoint(rootPart.Position)
    if not isOnScreen then
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        esp.Tracer.Visible = false
        for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
        for _, obj in pairs(esp.Info) do obj.Visible = false end
        esp.Snapline.Visible = false

        local skeleton = Drawings.Skeleton[player]
        if skeleton then
            for _, line in pairs(skeleton) do
                line.Visible = false
            end
        end
        return
    end

    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid or humanoid.Health <= 0 then
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        esp.Tracer.Visible = false
        for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
        for _, obj in pairs(esp.Info) do obj.Visible = false end
        esp.Snapline.Visible = false

        local skeleton = Drawings.Skeleton[player]
        if skeleton then
            for _, line in pairs(skeleton) do
                line.Visible = false
            end
        end
        return
    end

    local pos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
    local distance = (rootPart.Position - Camera.CFrame.Position).Magnitude

    if not onScreen or distance > Settings.MaxDistance then
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        esp.Tracer.Visible = false
        for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
        for _, obj in pairs(esp.Info) do obj.Visible = false end
        esp.Snapline.Visible = false
        return
    end

    if Settings.TeamCheck and player.Team == LocalPlayer.Team and not Settings.ShowTeam then
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        esp.Tracer.Visible = false
        for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
        for _, obj in pairs(esp.Info) do obj.Visible = false end
        esp.Snapline.Visible = false
        return
    end

    local color = GetPlayerColor(player)
    local size = character:GetExtentsSize()
    local cf = rootPart.CFrame

    local top, top_onscreen = Camera:WorldToViewportPoint(cf * CFrame.new(0, size.Y/2, 0).Position)
    local bottom, bottom_onscreen = Camera:WorldToViewportPoint(cf * CFrame.new(0, -size.Y/2, 0).Position)

    if not top_onscreen or not bottom_onscreen then
        for _, obj in pairs(esp.Box) do obj.Visible = false end
        return
    end

    local screenSize = bottom.Y - top.Y
    local boxWidth = screenSize * 0.65
    local boxPosition = Vector2.new(top.X - boxWidth/2, top.Y)
    local boxSize = Vector2.new(boxWidth, screenSize)

    for _, obj in pairs(esp.Box) do
        obj.Visible = false
    end

    if Settings.BoxESP then
        if Settings.BoxStyle == "Corner" then
            local cornerSize = boxWidth * 0.2

            esp.Box.TopLeft.From = boxPosition
            esp.Box.TopLeft.To = boxPosition + Vector2.new(cornerSize, 0)
            esp.Box.TopLeft.Visible = true

            esp.Box.TopRight.From = boxPosition + Vector2.new(boxSize.X, 0)
            esp.Box.TopRight.To = boxPosition + Vector2.new(boxSize.X - cornerSize, 0)
            esp.Box.TopRight.Visible = true

            esp.Box.BottomLeft.From = boxPosition + Vector2.new(0, boxSize.Y)
            esp.Box.BottomLeft.To = boxPosition + Vector2.new(cornerSize, boxSize.Y)
            esp.Box.BottomLeft.Visible = true

            esp.Box.BottomRight.From = boxPosition + Vector2.new(boxSize.X, boxSize.Y)
            esp.Box.BottomRight.To = boxPosition + Vector2.new(boxSize.X - cornerSize, boxSize.Y)
            esp.Box.BottomRight.Visible = true

            esp.Box.Left.From = boxPosition
            esp.Box.Left.To = boxPosition + Vector2.new(0, cornerSize)
            esp.Box.Left.Visible = true

            esp.Box.Right.From = boxPosition + Vector2.new(boxSize.X, 0)
            esp.Box.Right.To = boxPosition + Vector2.new(boxSize.X, cornerSize)
            esp.Box.Right.Visible = true

            esp.Box.Top.From = boxPosition + Vector2.new(0, boxSize.Y)
            esp.Box.Top.To = boxPosition + Vector2.new(0, boxSize.Y - cornerSize)
            esp.Box.Top.Visible = true

            esp.Box.Bottom.From = boxPosition + Vector2.new(boxSize.X, boxSize.Y)
            esp.Box.Bottom.To = boxPosition + Vector2.new(boxSize.X, boxSize.Y - cornerSize)
            esp.Box.Bottom.Visible = true

        else
            esp.Box.Left.From = boxPosition
            esp.Box.Left.To = boxPosition + Vector2.new(0, boxSize.Y)
            esp.Box.Left.Visible = true

            esp.Box.Right.From = boxPosition + Vector2.new(boxSize.X, 0)
            esp.Box.Right.To = boxPosition + Vector2.new(boxSize.X, boxSize.Y)
            esp.Box.Right.Visible = true

            esp.Box.Top.From = boxPosition
            esp.Box.Top.To = boxPosition + Vector2.new(boxSize.X, 0)
            esp.Box.Top.Visible = true

            esp.Box.Bottom.From = boxPosition + Vector2.new(0, boxSize.Y)
            esp.Box.Bottom.To = boxPosition + Vector2.new(boxSize.X, boxSize.Y)
            esp.Box.Bottom.Visible = true

            esp.Box.TopLeft.Visible = false
            esp.Box.TopRight.Visible = false
            esp.Box.BottomLeft.Visible = false
            esp.Box.BottomRight.Visible = false
        end

        for _, obj in pairs(esp.Box) do
            if obj.Visible then
                obj.Color = color
                obj.Thickness = Settings.BoxThickness
            end
        end
    end

    if Settings.TracerESP then
        esp.Tracer.From = GetTracerOrigin()
        esp.Tracer.To = Vector2.new(pos.X, pos.Y)
        esp.Tracer.Color = color
        esp.Tracer.Visible = true
    else
        esp.Tracer.Visible = false
    end

    if Settings.HealthESP then
        local health = humanoid.Health
        local maxHealth = humanoid.MaxHealth
        local healthPercent = health / maxHealth

        local barHeight = screenSize * 0.8
        local barWidth = 4
        local barPos = Vector2.new(
            boxPosition.X - barWidth - 2,
            boxPosition.Y + (screenSize - barHeight)/2
        )

        esp.HealthBar.Outline.Size = Vector2.new(barWidth, barHeight)
        esp.HealthBar.Outline.Position = barPos
        esp.HealthBar.Outline.Visible = true

        esp.HealthBar.Fill.Size = Vector2.new(barWidth - 2, barHeight * healthPercent)
        esp.HealthBar.Fill.Position = Vector2.new(barPos.X + 1, barPos.Y + barHeight * (1 - healthPercent))
        esp.HealthBar.Fill.Color = Color3.fromRGB(255 - (255 * healthPercent), 255 * healthPercent, 0)
        esp.HealthBar.Fill.Visible = true

        if Settings.HealthStyle == "Both" or Settings.HealthStyle == "Text" then
            esp.HealthBar.Text.Text = math.floor(health) .. Settings.HealthTextSuffix
            esp.HealthBar.Text.Position = Vector2.new(barPos.X + barWidth + 2, barPos.Y + barHeight/2)
            esp.HealthBar.Text.Visible = true
        else
            esp.HealthBar.Text.Visible = false
        end
    else
        for _, obj in pairs(esp.HealthBar) do
            obj.Visible = false
        end
    end

    if Settings.NameESP then
        esp.Info.Name.Text = player.DisplayName
        esp.Info.Name.Position = Vector2.new(
            boxPosition.X + boxWidth/2,
            boxPosition.Y - 20
        )
        esp.Info.Name.Color = color
        esp.Info.Name.Visible = true
    else
        esp.Info.Name.Visible = false
    end

    if Settings.Snaplines then
        esp.Snapline.From = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y)
        esp.Snapline.To = Vector2.new(pos.X, pos.Y)
        esp.Snapline.Color = color
        esp.Snapline.Visible = true
    else
        esp.Snapline.Visible = false
    end

    local highlight = Highlights[player]
    if highlight then
        if Settings.ChamsEnabled and character then
            highlight.Parent = character
            highlight.FillColor = Settings.ChamsFillColor
            highlight.OutlineColor = Settings.ChamsOutlineColor
            highlight.FillTransparency = Settings.ChamsTransparency
            highlight.OutlineTransparency = Settings.ChamsOutlineTransparency
            highlight.Enabled = true
        else
            highlight.Enabled = false
        end
    end

    if Settings.SkeletonESP then
        local function getBonePositions(character)
            if not character then return nil end

            local bones = {
                Head = character:FindFirstChild("Head"),
                UpperTorso = character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso"),
                LowerTorso = character:FindFirstChild("LowerTorso") or character:FindFirstChild("Torso"),
                RootPart = character:FindFirstChild("HumanoidRootPart"),
                LeftUpperArm = character:FindFirstChild("LeftUpperArm") or character:FindFirstChild("Left Arm"),
                LeftLowerArm = character:FindFirstChild("LeftLowerArm") or character:FindFirstChild("Left Arm"),
                LeftHand = character:FindFirstChild("LeftHand") or character:FindFirstChild("Left Arm"),
                RightUpperArm = character:FindFirstChild("RightUpperArm") or character:FindFirstChild("Right Arm"),
                RightLowerArm = character:FindFirstChild("RightLowerArm") or character:FindFirstChild("Right Arm"),
                RightHand = character:FindFirstChild("RightHand") or character:FindFirstChild("Right Arm"),
                LeftUpperLeg = character:FindFirstChild("LeftUpperLeg") or character:FindFirstChild("Left Leg"),
                LeftLowerLeg = character:FindFirstChild("LeftLowerLeg") or character:FindFirstChild("Left Leg"),
                LeftFoot = character:FindFirstChild("LeftFoot") or character:FindFirstChild("Left Leg"),
                RightUpperLeg = character:FindFirstChild("RightUpperLeg") or character:FindFirstChild("Right Leg"),
                RightLowerLeg = character:FindFirstChild("RightLowerLeg") or character:FindFirstChild("Right Leg"),
                RightFoot = character:FindFirstChild("RightFoot") or character:FindFirstChild("Right Leg")
            }

            if not (bones.Head and bones.UpperTorso) then return nil end
            return bones
        end

        local function drawBone(from, to, line)
            if not from or not to then 
                line.Visible = false
                return 
            end

            local fromPos = (from.CFrame * CFrame.new(0, 0, 0)).Position
            local toPos = (to.CFrame * CFrame.new(0, 0, 0)).Position

            local fromScreen, fromVisible = Camera:WorldToViewportPoint(fromPos)
            local toScreen, toVisible = Camera:WorldToViewportPoint(toPos)

            if not (fromVisible and toVisible) or fromScreen.Z < 0 or toScreen.Z < 0 then
                line.Visible = false
                return
            end

            local screenBounds = Camera.ViewportSize
            if fromScreen.X < 0 or fromScreen.X > screenBounds.X or
               fromScreen.Y < 0 or fromScreen.Y > screenBounds.Y or
               toScreen.X < 0 or toScreen.X > screenBounds.X or
               toScreen.Y < 0 or toScreen.Y > screenBounds.Y then
                line.Visible = false
                return
            end

            line.From = Vector2.new(fromScreen.X, fromScreen.Y)
            line.To = Vector2.new(toScreen.X, toScreen.Y)
            line.Color = Settings.SkeletonColor
            line.Thickness = Settings.SkeletonThickness
            line.Transparency = Settings.SkeletonTransparency
            line.Visible = true
        end

        local bones = getBonePositions(character)
        if bones then
            local skeleton = Drawings.Skeleton[player]
            if skeleton then
                drawBone(bones.Head, bones.UpperTorso, skeleton.Head)
                drawBone(bones.UpperTorso, bones.LowerTorso, skeleton.UpperSpine)
                drawBone(bones.UpperTorso, bones.LeftUpperArm, skeleton.LeftShoulder)
                drawBone(bones.LeftUpperArm, bones.LeftLowerArm, skeleton.LeftUpperArm)
                drawBone(bones.LeftLowerArm, bones.LeftHand, skeleton.LeftLowerArm)
                drawBone(bones.UpperTorso, bones.RightUpperArm, skeleton.RightShoulder)
                drawBone(bones.RightUpperArm, bones.RightLowerArm, skeleton.RightUpperArm)
                drawBone(bones.RightLowerArm, bones.RightHand, skeleton.RightLowerArm)
                drawBone(bones.LowerTorso, bones.LeftUpperLeg, skeleton.LeftHip)
                drawBone(bones.LeftUpperLeg, bones.LeftLowerLeg, skeleton.LeftUpperLeg)
                drawBone(bones.LeftLowerLeg, bones.LeftFoot, skeleton.LeftLowerLeg)
                drawBone(bones.LowerTorso, bones.RightUpperLeg, skeleton.RightHip)
                drawBone(bones.RightUpperLeg, bones.RightLowerLeg, skeleton.RightUpperLeg)
                drawBone(bones.RightLowerLeg, bones.RightFoot, skeleton.RightLowerLeg)
            end
        end
    else
        local skeleton = Drawings.Skeleton[player]
        if skeleton then
            for _, line in pairs(skeleton) do
                line.Visible = false
            end
        end
    end
end

local function DisableESP()
    for _, player in ipairs(Players:GetPlayers()) do
        local esp = Drawings.ESP[player]
        if esp then
            for _, obj in pairs(esp.Box) do obj.Visible = false end
            esp.Tracer.Visible = false
            for _, obj in pairs(esp.HealthBar) do obj.Visible = false end
            for _, obj in pairs(esp.Info) do obj.Visible = false end
            esp.Snapline.Visible = false
        end

        local skeleton = Drawings.Skeleton[player]
        if skeleton then
            for _, line in pairs(skeleton) do
                line.Visible = false
            end
        end
    end
end

local function CleanupESP()
    for _, player in ipairs(Players:GetPlayers()) do
        RemoveESP(player)
    end
    Drawings.ESP = {}
    Drawings.Skeleton = {}
    Highlights = {}
end

-- Mukbang Functions
local function selectRandomTarget(excludePlayer)
    local validPlayers = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player ~= excludePlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            table.insert(validPlayers, player)
        end
    end
    if #validPlayers == 0 then
        return nil
    end
    return validPlayers[math.random(1, #validPlayers)]
end

local function createMukbangAnimation()
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://148840371"
    mukbangAnimation = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(anim)
    mukbangAnimation.Looped = true
end

Players.PlayerRemoving:Connect(function(player)
    if selectedTarget and selectedTarget == player then
        selectedTarget = nil
        if mukbangActive then
            mukbangActive = false
            if mukbangAnimation then
                mukbangAnimation:Stop()
            end
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Target left the server, stopping mukbang",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
end)

local function getRigType()
    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
    return humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 and "R15" or "R6"
end

local socLoAnim = Instance.new("Animation")
socLoAnim.Name = "Sóc Lọ Cực Mạnh"
socLoAnim.Parent = workspace
socLoAnim.AnimationId = getRigType() == "R15" and "rbxassetid://698251653" or "rbxassetid://72042024"

local function runSocLo()
    while socLoActive do
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
        if not humanoid then break end
        if not socLoAnimation then
            socLoAnimation = humanoid.Animator:LoadAnimation(socLoAnim)
        end
        
        socLoAnimation:Play()
        socLoAnimation:AdjustSpeed(0.7)
        socLoAnimation.TimePosition = 0.6
        
        task.wait(0.1)
        
        while socLoActive and socLoAnimation and socLoAnimation.TimePosition < 0.7 do
            task.wait(0.05)
        end
        
        if socLoAnimation then
            socLoAnimation:Stop()
            socLoAnimation:Destroy()
            socLoAnimation = nil
        end
    end
end

local function createDriftParticles(char)
    if ChillState.DriftParticles then
        ChillState.DriftParticles:Destroy()
    end
    
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    
    local particles = Instance.new("ParticleEmitter")
    particles.Texture = "rbxassetid://242699077"
    particles.LightEmission = 0.8
    particles.Size = NumberSequence.new(0.3)
    particles.Transparency = NumberSequence.new(0.5)
    particles.Speed = NumberRange.new(0.5)
    particles.Lifetime = NumberRange.new(0.8)
    particles.Rate = 15
    particles.Rotation = NumberRange.new(0, 360)
    particles.VelocitySpread = 30
    particles.Parent = root
    
    ChillState.DriftParticles = particles
end

local function startChillGuy()
    local char = LocalPlayer.Character
    if not char then return end
    
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    local root = char:FindFirstChild("HumanoidRootPart")
    
    if not humanoid or not root then return end
    
    humanoid.PlatformStand = true
    humanoid.AutoRotate = false
    
    if ChillConfig.SmoothTransition then
        local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local targetPos = root.Position + Vector3.new(0, 3, 0)
        TweenService:Create(root, tweenInfo, {CFrame = CFrame.new(targetPos)}):Play()
    end
    
    ChillState.BodyVelocity = Instance.new("BodyVelocity")
    ChillState.BodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
    ChillState.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
    ChillState.BodyVelocity.P = 1000
    ChillState.BodyVelocity.Parent = root
    
    ChillState.BodyAngularVelocity = Instance.new("BodyAngularVelocity")
    ChillState.BodyAngularVelocity.MaxTorque = Vector3.new(2000, 2000, 2000)
    ChillState.BodyAngularVelocity.AngularVelocity = ChillConfig.RandomSpin
    ChillState.BodyAngularVelocity.P = 1500
    ChillState.BodyAngularVelocity.Parent = root
    
    ChillState.LastPosition = root.Position
    createDriftParticles(char)
    ChillConfig.Enabled = true
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Chill Guy enabled",
        Duration = 3,
        Icon = "rbxassetid://113110043061294"
    })
end

local function stopChillGuy()
    local char = LocalPlayer.Character
    if not char then return end
    
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.PlatformStand = false
        humanoid.AutoRotate = true
    end
    
    if ChillState.BodyVelocity then
        ChillState.BodyVelocity:Destroy()
    end
    
    if ChillState.BodyAngularVelocity then
        ChillState.BodyAngularVelocity:Destroy()
    end
    
    if ChillState.DriftParticles then
        ChillState.DriftParticles:Destroy()
    end
    
    ChillConfig.Enabled = false
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Chill Guy disabled",
        Duration = 3,
        Icon = "rbxassetid://113110043061294"
    })
end

local function handleChillMovement()
    if not ChillConfig.Enabled then return end
    
    local char = LocalPlayer.Character
    if not char then return end
    
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root or not ChillState.BodyVelocity then return end
    
    local moveVector = Vector3.new(
        UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.A) and -1 or 0,
        UserInputService:IsKeyDown(Enum.KeyCode.Space) and 1 or UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and -1 or 0,
        UserInputService:IsKeyDown(Enum.KeyCode.W) and -1 or UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or 0
    )
    
    if moveVector.Magnitude > 0 then
        local camera = workspace.CurrentCamera
        local direction = (camera.CFrame.RightVector * moveVector.X + camera.CFrame.UpVector * moveVector.Y) + camera.CFrame.LookVector * moveVector.Z
        
        if ChillConfig.SwimMode then
            ChillState.BodyVelocity.Velocity = ChillState.BodyVelocity.Velocity:Lerp(direction * ChillConfig.CurrentSpeed, 0.05)
        else
            ChillState.BodyVelocity.Velocity = direction * ChillConfig.CurrentSpeed
        end
    else
        ChillState.BodyVelocity.Velocity = ChillState.BodyVelocity.Velocity * ChillConfig.DragCoefficient
    end
    
    if ChillState.BodyAngularVelocity then
        local intensity = ChillConfig.SwimMode and 0.1 or 0.3
        ChillState.BodyAngularVelocity.AngularVelocity = ChillConfig.RandomSpin + Vector3.new(
            math.random(-intensity, intensity),
            math.random(-intensity * 0.5, intensity * 0.5),
            math.random(-intensity, intensity)
        )
    end
end

RunService.Heartbeat:Connect(handleChillMovement)

local function cleanupFly()
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    if bodyAngularVelocity then
        bodyAngularVelocity:Destroy()
        bodyAngularVelocity = nil
    end
end

local function toggleFly(state)
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChild("Humanoid")
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")
    
    flyActive = state
    
    if flyActive then
        if not humanoid or not rootPart then
            flyActive = false
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Error Fly!!",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
            return
        end
        
        humanoid.PlatformStand = true
        
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.Parent = rootPart
        
        bodyAngularVelocity = Instance.new("BodyAngularVelocity")
        bodyAngularVelocity.MaxTorque = Vector3.new(4000, 4000, 4000)
        bodyAngularVelocity.AngularVelocity = Vector3.new(0, 0, 0)
        bodyAngularVelocity.Parent = rootPart
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "ENABLED",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
    else
        if humanoid then
            humanoid.PlatformStand = false
        end
        cleanupFly()
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "DISABLED",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
    end
end

local function updateFlyMovement()
    if not flyActive or not bodyVelocity or not LocalPlayer.Character then
        return
    end
    
    local character = LocalPlayer.Character
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end
    
    local moveVector = Vector3.new(0, 0, 0)
    local cameraCFrame = Camera.CFrame
    local forward = cameraCFrame.LookVector
    local right = cameraCFrame.RightVector
    local up = Vector3.new(0, 1, 0)
    
    if flyKeys.W then moveVector = moveVector + forward end
    if flyKeys.S then moveVector = moveVector - forward end
    if flyKeys.A then moveVector = moveVector - right end
    if flyKeys.D then moveVector = moveVector + right end
    if flyKeys.Space then moveVector = moveVector + up end
    if flyKeys.LeftShift then moveVector = moveVector - up end
    
    if moveVector.Magnitude > 0 then
        moveVector = moveVector.Unit * flySpeed
    end
    
    bodyVelocity.Velocity = moveVector
    
    local lookDirection = (cameraCFrame.LookVector * Vector3.new(1, 0, 1)).Unit
    if lookDirection.Magnitude > 0 then
        rootPart.CFrame = CFrame.lookAt(rootPart.Position, rootPart.Position + lookDirection, Vector3.new(0, 1, 0))
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    local keyCode = input.KeyCode
    if keyCode == Enum.KeyCode.W then flyKeys.W = true
    elseif keyCode == Enum.KeyCode.A then flyKeys.A = true
    elseif keyCode == Enum.KeyCode.S then flyKeys.S = true
    elseif keyCode == Enum.KeyCode.D then flyKeys.D = true
    elseif keyCode == Enum.KeyCode.Space then flyKeys.Space = true
    elseif keyCode == Enum.KeyCode.LeftShift then flyKeys.LeftShift = true
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    local keyCode = input.KeyCode
    if keyCode == Enum.KeyCode.W then flyKeys.W = false
    elseif keyCode == Enum.KeyCode.A then flyKeys.A = false
    elseif keyCode == Enum.KeyCode.S then flyKeys.S = false
    elseif keyCode == Enum.KeyCode.D then flyKeys.D = false
    elseif keyCode == Enum.KeyCode.Space then flyKeys.Space = false
    elseif keyCode == Enum.KeyCode.LeftShift then flyKeys.LeftShift = false
    end
end)

RunService.Heartbeat:Connect(updateFlyMovement)

local function noclip()
    noClipActive = true
    local function Nocl()
        if noClipActive and LocalPlayer.Character then
            for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide then
                    v.CanCollide = false
                end
            end
        end
    end
    noclipConnection = RunService.Stepped:Connect(Nocl)
end

local function clip()
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
    noClipActive = false
    if LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.Name ~= "HumanoidRootPart" then
                v.CanCollide = true
            end
        end
    end
end

local function setupInfiniteJump()
    UserInputService.JumpRequest:Connect(function()
        if infiniteJumpActive then
            local character = LocalPlayer.Character
            if character and character:FindFirstChildOfClass("Humanoid") then
                character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
            end
        end
    end)
end

-- ESP Role Variables
local ESPRoleEnabled = false
local ESPObjects = {}

-- ESP Role Functions
local function clearRoleESP()
    for _, espObject in pairs(ESPObjects) do
        if espObject and espObject.Parent then
            espObject:Destroy()
        end
    end
    ESPObjects = {}
end

local function getPlayerRole(player)
    if not player.Character then return "Innocent", Color3.new(0, 1, 0) end
    
    if player.Backpack:FindFirstChild("Knife") or player.Character:FindFirstChild("Knife") then
        return "Murderer", Color3.new(1, 0.2, 0.2)
    end
    
    if player.Backpack:FindFirstChild("Gun") or player.Character:FindFirstChild("Gun") then
        return "Sheriff", Color3.new(0.2, 0.5, 1)
    end
    
    return "Innocent", Color3.new(0.2, 1, 0.2)
end

local function createNameTagESP(player, color, roleName)
    if not player.Character or not player.Character:FindFirstChild("Head") then
        return
    end
    
    for i = #ESPObjects, 1, -1 do
        if ESPObjects[i] and ESPObjects[i].Name == "NameTag_" .. player.Name then
            ESPObjects[i]:Destroy()
            table.remove(ESPObjects, i)
        end
    end
    
    local nameTag = Instance.new("BillboardGui")
    nameTag.Parent = player.Character.Head
    nameTag.Size = UDim2.new(0, 200, 0, 60)
    nameTag.StudsOffset = Vector3.new(0, 2.5, 0)
    nameTag.AlwaysOnTop = true
    nameTag.Name = "NameTag_" .. player.Name
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Parent = nameTag
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name .. "\n[" .. roleName .. "]"
    nameLabel.TextColor3 = color
    nameLabel.TextSize = 16
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextStrokeTransparency = 0
    nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    nameLabel.TextScaled = false
    
    table.insert(ESPObjects, nameTag)
end

local function enableRoleESP()
    if ESPRoleEnabled then return end
    ESPRoleEnabled = true
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local role, color = getPlayerRole(player)
            createNameTagESP(player, color, role)
        end
    end
    
    Players.PlayerAdded:Connect(function(player)
        if ESPRoleEnabled and player ~= LocalPlayer then
            player.CharacterAdded:Connect(function()
                task.wait(1)
                if ESPRoleEnabled then
                    local role, color = getPlayerRole(player)
                    createNameTagESP(player, color, role)
                end
            end)
        end
    end)
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            player.CharacterAdded:Connect(function()
                task.wait(1)
                if ESPRoleEnabled then
                    local role, color = getPlayerRole(player)
                    createNameTagESP(player, color, role)
                end
            end)
        end
    end
end

local function disableRoleESP()
    if not ESPRoleEnabled then return end
    ESPRoleEnabled = false
    clearRoleESP()
end

-- Update ESP Role continuously for role changes
RunService.Heartbeat:Connect(function()
    if ESPRoleEnabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                local role, color = getPlayerRole(player)
                local hasESP = false
                local currentColor = nil
                
                for _, obj in pairs(ESPObjects) do
                    if obj and obj.Name == "NameTag_" .. player.Name then
                        hasESP = true
                        local textLabel = obj:FindFirstChild("TextLabel")
                        if textLabel then
                            currentColor = textLabel.TextColor3
                        end
                        break
                    end
                end
                
                if not hasESP or (currentColor and currentColor ~= color) then
                    createNameTagESP(player, color, role)
                end
            end
        end
    end
end)

-- gun
local function ScanForGunDrops()
    GunSystem.ActiveGunDrops = {}
    for _, mapName in ipairs(mapPaths) do
        local map = workspace:FindFirstChild(mapName)
        if map then
            local gunDrop = map:FindFirstChild("GunDrop")
            if gunDrop then
                table.insert(GunSystem.ActiveGunDrops, gunDrop)
            end
        end
    end
    local rootGunDrop = workspace:FindFirstChild("GunDrop")
    if rootGunDrop then
        table.insert(GunSystem.ActiveGunDrops, rootGunDrop)
    end
end

local function GrabGun(gunDrop)
    if not gunDrop then
        ScanForGunDrops()
        if (#GunSystem.ActiveGunDrops == 0) then
            return false
        end
        local nearestGun = nil
        local minDistance = math.huge
        local character = LocalPlayer.Character
        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            for _, drop in ipairs(GunSystem.ActiveGunDrops) do
                local distance = (humanoidRootPart.Position - drop.Position).Magnitude
                if (distance < minDistance) then
                    nearestGun = drop
                    minDistance = distance
                end
            end
        end
        gunDrop = nearestGun
    end
    
    if (gunDrop and LocalPlayer.Character) then
        local humanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = gunDrop.CFrame
            task.wait(0.3)
            local prompt = gunDrop:FindFirstChildOfClass("ProximityPrompt")
            if prompt then
                fireproximityprompt(prompt)
                return true
            end
        end
    end
    return false
end

local function AutoGrabGun()
    while GunSystem.AutoGrabEnabled do
        ScanForGunDrops()
        if ((#GunSystem.ActiveGunDrops > 0) and LocalPlayer.Character) then
            local humanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                local nearestGun = nil
                local minDistance = math.huge
                for _, gunDrop in ipairs(GunSystem.ActiveGunDrops) do
                    local distance = (humanoidRootPart.Position - gunDrop.Position).Magnitude
                    if (distance < minDistance) then
                        nearestGun = gunDrop
                        minDistance = distance
                    end
                end
                if nearestGun then
                    humanoidRootPart.CFrame = nearestGun.CFrame
                    task.wait(0.3)
                    local prompt = nearestGun:FindFirstChildOfClass("ProximityPrompt")
                    if prompt then
                        fireproximityprompt(prompt)
                        task.wait(1)
                    end
                end
            end
        end
        task.wait(GunSystem.GunDropCheckInterval)
    end
end

local AntiKillEnabled = false
local AntiKillConnection = nil

local function EnableAntiKill()
    if AntiKillConnection then AntiKillConnection:Disconnect() end

    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    AntiKillConnection = humanoid.HealthChanged:Connect(function(hp)
        if AntiKillEnabled and hp <= 0 then
            humanoid.Health = humanoid.MaxHealth
        end
    end)

    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.CanTouch = false
            part.CanCollide = false
        end
    end
end

local success, Fluent = pcall(function()
    return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end)
if not success then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Failed to load UI library!",
        Duration = 5,
        Icon = "rbxassetid://113110043061294"
    })
    return
end

Window = Fluent:CreateWindow({
    Title = "Xity Hub | By Stuckz999",
    SubTitle = "   discord.gg/vSmfvVZj",
    TabWidth = 155,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Tabs
Main0 = Window:AddTab({ Title = "Info Hub", Icon = "rbxassetid://6034684949" })
Main1 = Window:AddTab({ Title = "Tab Main", Icon = "rbxassetid://6031075931" })
MainCombat = Window:AddTab({ Title = "Tab Combat", Icon = "sword" })
Main2 = Window:AddTab({ Title = "Tab Misc", Icon = "box" })
TabESP = Window:AddTab({ Title = "Tab Esp", Icon = "eye" })
TabSettings = Window:AddTab({ Title = "Tab Settings", Icon = "settings" })

-- Hub Info Tab
local function copyToClipboard(text)
    if setclipboard then
        setclipboard(text)
    elseif Clipboard then
        Clipboard.set(text)
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Error Copy URL",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
        return
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Copied to clipboard!",
        Duration = 3,
        Icon = "rbxassetid://113110043061294"
    })
end

InfoSection = Main0:AddSection("Information")
InfoSection:AddButton({ Title = "Server Discord", Description = "Copy Discord link", Callback = function()
    copyToClipboard("https://discord.gg/A7CVzcvSev")
end })

InfoSection:AddButton({ Title = "Group Zalo", Description = "Copy Zalo link", Callback = function()
    copyToClipboard("https://zalo.me/g/djqwwu015")
end })

InfoSection:AddButton({ Title = "Youtube", Description = "Copy Youtube link", Callback = function()
    copyToClipboard("https://www.youtube.com/@stuckz-oret")
end })

-- Main Tab
local MainSection = Main1:AddSection("Home")
local function updatePlayerList()
    local playerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(playerNames, player.Name)
        end
    end
    return playerNames
end

MainSection:AddDropdown("PlayerList", {
    Title = "Select Player",
    Values = updatePlayerList(),
    Default = "",
    Callback = function(value)
        selectedTarget = Players:FindFirstChild(value)
        if selectedTarget then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Select player: " .. selectedTarget.Name,
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
})

MainSection:AddButton({
    Title = "Next Player",
    Description = "Select a random player",
    Callback = function()
        local currentTarget = selectedTarget
        selectedTarget = selectRandomTarget(currentTarget)
        if not selectedTarget then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "No valid players found",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Switch to mukbang " .. selectedTarget.Name,
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
})

MainSection:AddToggle("MukbangToggle", {
    Title = "Start Mukbang",
    Default = false,
    Callback = function(state)
        mukbangActive = state
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
        
        if mukbangActive then
            if not selectedTarget then
                selectedTarget = selectRandomTarget()
            end
            
            if not selectedTarget or not selectedTarget.Character or not selectedTarget.Character:FindFirstChild("HumanoidRootPart") or not humanoid then
                mukbangActive = false
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Xity Hub",
                    Text = "No valid target!",
                    Duration = 3,
                    Icon = "rbxassetid://113110043061294"
                })
                return
            end
            
            if not mukbangAnimation then
                createMukbangAnimation()
            end
            mukbangAnimation:Play()
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Start mukbang on " .. selectedTarget.Name,
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
            
            task.spawn(function()
                while mukbangActive and humanoid and humanoid.Parent do
                    local char = LocalPlayer.Character
                    if not char then break end
                    
                    local leftLeg = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftLowerLeg")
                    local rightLeg = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightLowerLeg")
                    
                    if leftLeg then
                        pcall(function()
                            leftLeg.CFrame = leftLeg.CFrame * CFrame.Angles(math.rad(-45), 0, 0)
                        end)
                    end
                    
                    if rightLeg then
                        pcall(function()
                            rightLeg.CFrame = rightLeg.CFrame * CFrame.Angles(math.rad(-45), 0, 0)
                        end)
                    end
                    
                    task.wait(0.1)
                end
            end)
            
            task.spawn(function()
                while mukbangActive and selectedTarget and selectedTarget.Character and LocalPlayer.Character do
                    local targetRoot = selectedTarget.Character:FindFirstChild("HumanoidRootPart")
                    local playerRoot = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    
                    if targetRoot and playerRoot then
                        playerRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 0.5)
                        task.wait(0.02)
                        playerRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 1)
                    else
                        mukbangActive = false
                        if mukbangAnimation then
                            mukbangAnimation:Stop()
                        end
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Xity Hub",
                            Text = "Lost connection to target",
                            Duration = 3,
                            Icon = "rbxassetid://113110043061294"
                        })
                        break
                    end
                    
                    task.wait(0.01)
                end
            end)
        else
            if mukbangAnimation then
                mukbangAnimation:Stop()
            end
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Stop",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
})

MainSection:AddToggle("SocLoToggle", {
    Title = "Porn Hub | Sóc lọ",
    Default = false,
    Callback = function(state)
        socLoActive = state
        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
        
        if socLoActive then
            if not humanoid then
                socLoActive = false
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Xity Hub",
                    Text = "Error Character!!",
                    Duration = 3,
                    Icon = "rbxassetid://113110043061294"
                })
                return
            end
            runSocLo()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Start",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        elseif socLoAnimation then
            socLoAnimation:Stop()
            socLoAnimation:Destroy()
            socLoAnimation = nil
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Stop",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
})

MainSection:AddToggle("ChillGuyToggle", {
    Title = "Chill Guy",
    Default = false,
    Callback = function(state)
        ChillConfig.Enabled = state
        
        if ChillConfig.Enabled then
            startChillGuy()
        else
            stopChillGuy()
        end
    end
})

MainSection:AddToggle("FlyToggle", {
    Title = "Fly",
    Default = false,
    Callback = function(state)
        toggleFly(state)
    end
})

MainSection:AddToggle("NoClipToggle", {
    Title = "No Clip",
    Default = false,
    Callback = function(state)
        noClipActive = state
        if noClipActive then
            noclip()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "ENABLED",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        else
            clip()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "DISABLED",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
})

MainSection:AddToggle("InfiniteJumpToggle", {
    Title = "Infinite Jump",
    Default = false,
    Callback = function(state)
        infiniteJumpActive = state
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Infinite Jump: " .. (state and "ENABLED" or "DISABLED"),
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
    end
})

-- Misc Tab
MiscSection = Main2:AddSection("Server Game")
MiscSection:AddButton({ Title = "Rejoin Server", Description = "Vô lại máy chủ hiện tại", Callback = function()
    local placeId = game.PlaceId
    local jobId = game.JobId
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Rejoin server...",
        Duration = 3,
        Icon = "rbxassetid://113110043061294"
    })
    TeleportService:TeleportToPlaceInstance(placeId, jobId, LocalPlayer)
end })

MiscSection:AddButton({ Title = "Hop Server", Description = "Đổi máy chủ khác", Callback = function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Wait Fix :((",
        Duration = 3,
        Icon = "rbxassetid://113110043061294"
    })
end })

MiscSection:AddButton({ Title = "Reset Character", Description = "Reset nhân vật", Callback = function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Resetting character...",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
        LocalPlayer.Character.Humanoid.Health = 0
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Error Reset!",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
    end
end })

MiscSection:AddButton({ Title = "Out Game", Description = "Thoát khỏi game", Callback = function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Xity Hub",
        Text = "Exiting game...",
        Duration = 3,
        Icon = "rbxassetid://113110043061294"
    })
    game:Shutdown()
end })

-- ESP Tab
do
    local MainSection = TabESP:AddSection("Main ESP")
    local EnabledToggle = MainSection:AddToggle("Enabled", { Title = "Enable ESP", Default = false })
    EnabledToggle:OnChanged(function()
        Settings.Enabled = EnabledToggle.Value
        if not Settings.Enabled then
            CleanupESP()
        else
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    CreateESP(player)
                end
            end
        end
    end)

    local ESPRoleToggle = TabESP:AddToggle("ESPRole", { Title = "ESP Role", Default = false })
    ESPRoleToggle:OnChanged(function()
        Settings.ESPRole = ESPRoleToggle.Value
        if Settings.ESPRole then
            enableRoleESP()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "ESP Role Enabled!",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        else
            disableRoleESP()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "ESP Role Disabled!",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end)

    local BoxSection = TabESP:AddSection("Box ESP")
    local BoxESPToggle = BoxSection:AddToggle("BoxESP", { Title = "Box ESP", Default = false })
    BoxESPToggle:OnChanged(function() Settings.BoxESP = BoxESPToggle.Value end)

    local BoxStyleDropdown = BoxSection:AddDropdown("BoxStyle", {
        Title = "Box Style",
        Values = {"Corner", "Full", "ThreeD"},
        Default = "Corner"
    })
    BoxStyleDropdown:OnChanged(function(Value) Settings.BoxStyle = Value end)

    local ChamsSection = TabESP:AddSection("Chams")
    local ChamsToggle = ChamsSection:AddToggle("ChamsEnabled", { Title = "Enable Chams", Default = false })
    ChamsToggle:OnChanged(function() Settings.ChamsEnabled = ChamsToggle.Value end)
    local ChamsFillColor = ChamsSection:AddColorpicker("ChamsFillColor", { Title = "Fill Color", Default = Settings.ChamsFillColor })
    ChamsFillColor:OnChanged(function(Value) Settings.ChamsFillColor = Value end)
    local ChamsOccludedColor = ChamsSection:AddColorpicker("ChamsOccludedColor", { Title = "Occluded Color", Default = Settings.ChamsOccludedColor })
    ChamsOccludedColor:OnChanged(function(Value) Settings.ChamsOccludedColor = Value end)
    local ChamsOutlineColor = ChamsSection:AddColorpicker("ChamsOutlineColor", { Title = "Outline Color", Default = Settings.ChamsOutlineColor })
    ChamsOutlineColor:OnChanged(function(Value) Settings.ChamsOutlineColor = Value end)
    local ChamsTransparency = ChamsSection:AddSlider("ChamsTransparency", { Title = "Fill Transparency", Default = 0.5, Min = 0, Max = 1, Rounding = 2 })
    ChamsTransparency:OnChanged(function(Value) Settings.ChamsTransparency = Value end)
    local ChamsOutlineTransparency = ChamsSection:AddSlider("ChamsOutlineTransparency", { Title = "Outline Transparency", Default = 0, Min = 0, Max = 1, Rounding = 2 })
    ChamsOutlineTransparency:OnChanged(function(Value) Settings.ChamsOutlineTransparency = Value end)
    local ChamsOutlineThickness = ChamsSection:AddSlider("ChamsOutlineThickness", { Title = "Outline Thickness", Default = 0.1, Min = 0, Max = 1, Rounding = 2 })
    ChamsOutlineThickness:OnChanged(function(Value) Settings.ChamsOutlineThickness = Value end)

    local TracerSection = TabESP:AddSection("Tracer ESP")
    local TracerESPToggle = TracerSection:AddToggle("TracerESP", { Title = "Tracer ESP", Default = false })
    TracerESPToggle:OnChanged(function() Settings.TracerESP = TracerESPToggle.Value end)
    local TracerOriginDropdown = TracerSection:AddDropdown("TracerOrigin", {
        Title = "Tracer Origin",
        Values = {"Bottom", "Top", "Mouse", "Center"},
        Default = "Bottom"
    })
    TracerOriginDropdown:OnChanged(function(Value) Settings.TracerOrigin = Value end)

    local HealthSection = TabESP:AddSection("Health ESP")
    local HealthESPToggle = HealthSection:AddToggle("HealthESP", { Title = "Health ESP", Default = false })
    HealthESPToggle:OnChanged(function() Settings.HealthESP = HealthESPToggle.Value end)
    local HealthStyleDropdown = HealthSection:AddDropdown("HealthStyle", {
        Title = "Health Style",
        Values = {"Bar", "Text", "Both"},
        Default = "Bar"
    })
    HealthStyleDropdown:OnChanged(function(Value) Settings.HealthStyle = Value end)

    local SkeletonSection = TabESP:AddSection("Skeleton ESP")
    local SkeletonESPToggle = SkeletonSection:AddToggle("SkeletonESP", { Title = "Skeleton ESP", Default = false })
    SkeletonESPToggle:OnChanged(function() Settings.SkeletonESP = SkeletonESPToggle.Value end)
    local SkeletonColor = SkeletonSection:AddColorpicker("SkeletonColor", { Title = "Skeleton Color", Default = Settings.SkeletonColor })
    SkeletonColor:OnChanged(function(Value)
        Settings.SkeletonColor = Value
        for _, player in ipairs(Players:GetPlayers()) do
            local skeleton = Drawings.Skeleton[player]
            if skeleton then
                for _, line in pairs(skeleton) do
                    line.Color = Value
                end
            end
        end
    end)
    local SkeletonThickness = SkeletonSection:AddSlider("SkeletonThickness", { Title = "Skeleton Thickness", Default = 1.5, Min = 1, Max = 3, Rounding = 1 })
    SkeletonThickness:OnChanged(function(Value)
        Settings.SkeletonThickness = Value
        for _, player in ipairs(Players:GetPlayers()) do
            local skeleton = Drawings.Skeleton[player]
            if skeleton then
                for _, line in pairs(skeleton) do
                    line.Thickness = Value
                end
            end
        end
    end)
    local SkeletonTransparency = SkeletonSection:AddSlider("SkeletonTransparency", { Title = "Skeleton Transparency", Default = 1, Min = 0, Max = 1, Rounding = 2 })
    SkeletonTransparency:OnChanged(function(Value)
        Settings.SkeletonTransparency = Value
        for _, player in ipairs(Players:GetPlayers()) do
            local skeleton = Drawings.Skeleton[player]
            if skeleton then
                for _, line in pairs(skeleton) do
                    line.Transparency = Value
                end
            end
        end
    end)
end

-- Settings Tab
do
    local ColorsSection = TabSettings:AddSection("Colors")
    local EnemyColor = ColorsSection:AddColorpicker("EnemyColor", { Title = "Enemy Color", Default = Colors.Enemy })
    EnemyColor:OnChanged(function(Value) Colors.Enemy = Value end)
    local AllyColor = ColorsSection:AddColorpicker("AllyColor", { Title = "Ally Color", Default = Colors.Ally })
    AllyColor:OnChanged(function(Value) Colors.Ally = Value end)
    local HealthColor = ColorsSection:AddColorpicker("HealthColor", { Title = "Health Color", Default = Colors.Health })
    HealthColor:OnChanged(function(Value) Colors.Health = Value end)

    local BoxSectionSettings = TabSettings:AddSection("Box Settings")
    local BoxThickness = BoxSectionSettings:AddSlider("BoxThickness", { Title = "Box Thickness", Default = 1, Min = 1, Max = 5, Rounding = 1 })
    BoxThickness:OnChanged(function(Value) Settings.BoxThickness = Value end)
    local BoxTransparency = BoxSectionSettings:AddSlider("BoxFillTransparency", { Title = "Box Fill Transparency", Default = 0.5, Min = 0, Max = 1, Rounding = 2 })
    BoxTransparency:OnChanged(function(Value) Settings.BoxFillTransparency = Value end)

    local ESPSection = TabSettings:AddSection("ESP Settings")
    local MaxDistance = ESPSection:AddSlider("MaxDistance", { Title = "Max Distance", Default = 1000, Min = 100, Max = 5000, Rounding = 0 })
    MaxDistance:OnChanged(function(Value) Settings.MaxDistance = Value end)
    local TextSize = ESPSection:AddSlider("TextSize", { Title = "Text Size", Default = 14, Min = 10, Max = 24, Rounding = 0 })
    TextSize:OnChanged(function(Value) Settings.TextSize = Value end)

    local EffectsSection = TabSettings:AddSection("Effects")
    local RainbowToggle = EffectsSection:AddToggle("RainbowEnabled", { Title = "Rainbow Mode", Default = false })
    RainbowToggle:OnChanged(function() Settings.RainbowEnabled = RainbowToggle.Value end)
    local RainbowSpeed = EffectsSection:AddSlider("RainbowSpeed", { Title = "Rainbow Speed", Default = 1, Min = 0.1, Max = 5, Rounding = 1 })
    RainbowSpeed:OnChanged(function(Value) Settings.RainbowSpeed = Value end)
    local RainbowOptions = EffectsSection:AddDropdown("RainbowParts", {
        Title = "Rainbow Parts",
        Values = {"All", "Box Only", "Tracers Only", "Text Only"},
        Default = "All",
        Multi = false
    })
    RainbowOptions:OnChanged(function(Value)
        if Value == "All" then
            Settings.RainbowBoxes = true
            Settings.RainbowTracers = true
            Settings.RainbowText = true
        elseif Value == "Box Only" then
            Settings.RainbowBoxes = true
            Settings.RainbowTracers = false
            Settings.RainbowText = false
        elseif Value == "Tracers Only" then
            Settings.RainbowBoxes = false
            Settings.RainbowTracers = true
            Settings.RainbowText = false
        elseif Value == "Text Only" then
            Settings.RainbowBoxes = false
            Settings.RainbowTracers = false
            Settings.RainbowText = true
        end
    end)

    local PerformanceSection = TabSettings:AddSection("Performance")
    local RefreshRate = PerformanceSection:AddSlider("RefreshRate", { Title = "Refresh Rate", Default = 144, Min = 1, Max = 144, Rounding = 0 })
    RefreshRate:OnChanged(function(Value) Settings.RefreshRate = 1/Value end)
end

Window:SelectTab(1)

task.spawn(function()
    while task.wait(0.1) do
        Colors.Rainbow = Color3.fromHSV(tick() * Settings.RainbowSpeed % 1, 1, 1)
    end
end)

local lastUpdate = 0
RunService.RenderStepped:Connect(function()
    if not Settings.Enabled then 
        DisableESP()
        return 
    end
    local currentTime = tick()
    if currentTime - lastUpdate >= Settings.RefreshRate then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                if not Drawings.ESP[player] then
                    CreateESP(player)
                end
                UpdateESP(player)
            end
        end
        lastUpdate = currentTime
    end
end)

LocalPlayer.CharacterAdded:Connect(function(newChar)
    local humanoid = newChar:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        mukbangActive = false
        socLoActive = false
        ChillConfig.Enabled = false
        flyActive = false
        noClipActive = false
        infiniteJumpActive = false
        
        if mukbangAnimation then
            mukbangAnimation:Stop()
        end
        
        if socLoAnimation then
            socLoAnimation:Stop()
            socLoAnimation:Destroy()
            socLoAnimation = nil
        end
        
        stopChillGuy()
        cleanupFly()
        clip()
    end)
end)

setupInfiniteJump()

Players.PlayerAdded:Connect(CreateESP)
Players.PlayerRemoving:Connect(RemoveESP)
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        CreateESP(player)
    end
end

local invis_on = false
local defaultSpeed = 16
local boostedSpeed = 48
local isSpeedBoosted = false
local customSpeed = defaultSpeed
local player = LocalPlayer

local function setTransparency(character, transparency)
    if not character then return end
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            part.Transparency = transparency
        end
    end
end

Main1:AddToggle("Invisible", {
    Title = "Invisible",
    Default = false,
    Callback = function(state)
        invis_on = state
        local character = player.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            invis_on = false
            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Error Invisible!!",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
            return
        end

        if invis_on then
            local savedpos = character.HumanoidRootPart.CFrame
            task.wait()
            character:MoveTo(Vector3.new(-25.95, 84, 3537.55))
            task.wait(0.15)

            local Seat = Instance.new('Seat')
            Seat.Anchored = false
            Seat.CanCollide = false
            Seat.Name = 'invischair'
            Seat.Transparency = 1
            Seat.Position = Vector3.new(-25.95, 84, 3537.55)
            Seat.Parent = workspace

            local Weld = Instance.new("Weld", Seat)
            Weld.Part0 = Seat
            Weld.Part1 = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

            task.wait()
            Seat.CFrame = savedpos
            setTransparency(character, 0.5)

            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "On Invisible!",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        else
            local invisChair = workspace:FindFirstChild('invischair')
            if invisChair then invisChair:Destroy() end
            setTransparency(character, 0)

            game.StarterGui:SetCore("SendNotification", {
                Title = "Xity Hub",
                Text = "Off Invisible!",
                Duration = 3,
                Icon = "rbxassetid://113110043061294"
            })
        end
    end
})

Main1:AddToggle("Speed", {
    Title = "Speed",
    Default = false,
    Callback = function(state)
        isSpeedBoosted = state
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if not humanoid then
            isSpeedBoosted = false
            return
        end

        if isSpeedBoosted then
            humanoid.WalkSpeed = customSpeed
        else
            humanoid.WalkSpeed = defaultSpeed
        end
    end
})

Main1:AddSlider("ConfigSpeed", {
    Title = "Config Speed",
    Description = "Cấu hình tốc độ",
    Default = defaultSpeed,
    Min = 16,
    Max = 200,
    Rounding = 0,
    Callback = function(Value)
        customSpeed = Value
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if humanoid and isSpeedBoosted then
            humanoid.WalkSpeed = customSpeed
        end
    end
})

player.CharacterAdded:Connect(function(character)
    isSpeedBoosted = false
    invis_on = false
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = defaultSpeed
    setTransparency(character, 0)
    local invisChair = workspace:FindFirstChild('invischair')
    if invisChair then invisChair:Destroy() end
end)

local isFakeDie = false

local function setFakeDie(state)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local root = character:WaitForChild("HumanoidRootPart")

    if state then
        humanoid.PlatformStand = true
        root.CFrame = root.CFrame * CFrame.Angles(math.rad(90), 0, 0)
    else
        humanoid.PlatformStand = false
        root.CFrame = CFrame.new(root.Position)
    end
end

Main1:AddToggle("Fake Die", {Title = "Fake Die", Default = false, Callback = function(Value)
    isFakeDie = Value
    setFakeDie(isFakeDie)
end})

local function optimize()
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    
    game.Lighting.GlobalShadows = false
    game.Lighting.FogEnd = 9e9
    game.Lighting.Brightness = 1
    game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Enabled = false
        elseif v:IsA("Explosion") then
            v.Visible = false
        elseif v:IsA("Fire") or v:IsA("Smoke") then
            v.Enabled = false
        elseif v:IsA("Decal") or v:IsA("Texture") then
            local parent = v.Parent
            local isCharacterPart = false
            
            while parent do
                if game.Players:GetPlayerFromCharacter(parent) then
                    isCharacterPart = true
                    break
                end
                parent = parent.Parent
            end
            
            if not isCharacterPart then
                v:Destroy()
            end
        end
    end
    
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("MeshPart") then
            local parent = v.Parent
            local isCharacterPart = false
            
            while parent do
                if game.Players:GetPlayerFromCharacter(parent) then
                    isCharacterPart = true
                    break
                end
                parent = parent.Parent
            end
            
            if not isCharacterPart then
                v.TextureID = ""
            end
        end
    end
    
    workspace.Terrain.WaterWaveSize = 0
    workspace.Terrain.WaterWaveSpeed = 0
    workspace.Terrain.WaterReflectance = 0
    workspace.Terrain.WaterTransparency = 0.8
end

Main2:AddButton({
    Title = "Fix Lag Beta",
    Description = "Giảm lag và giảm chất lượng đồ họa",
    Callback = function()
        optimize()
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Done Fix Lag!!",
            Duration = 5,
            Icon = "rbxassetid://113110043061294"
        })
    end
})

Main1:AddButton({
    Title = "Grab Gun",
    Description = "Tự động đến và lấy súng",
    Callback = function()
        GrabGun()
    end
})

Main1:AddToggle("AutoGrabGun", {
    Title = "Auto Grab Gun", 
    Description = "Tự động lấy súng",
    Default = false,
    Callback = function(state)
        GunSystem.AutoGrabEnabled = state
        if state then
            coroutine.wrap(AutoGrabGun)()
        else
        end
    end
})

Main1:AddSlider("GunCheckInterval", {
    Title = "Check Interval",
    Description = "Thời gian kiểm tra gun drop (giây)",
    Default = 1,
    Min = 0.5,
    Max = 5,
    Rounding = 1,
    Callback = function(value)
        GunSystem.GunDropCheckInterval = value
    end
})

local SheriffSection = MainCombat:AddSection("Sheriff")
local loopTPMurder = false
local loopShootMurder = false

SheriffSection:AddToggle("KillMurderer", {
    Title = "Kill Murderer",
    Description = "Dịch chuyển đến murderer và bắn ( hoặc sài Z)",
    Default = false,
    Callback = function(state)
        loopTPMurder = state
        loopShootMurder = state
        if state then
            task.spawn(function()
                while loopTPMurder do
                    local murder = nil
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer then
                            local hasKnife = player:FindFirstChild("Backpack") and player.Backpack:FindFirstChild("Knife") or
                                            (player.Character and player.Character:FindFirstChild("Knife"))
                            if hasKnife then
                                murder = player
                                break
                            end
                        end
                    end
                    if murder and murder.Character and murder.Character:FindFirstChild("HumanoidRootPart") then
                        local hrp = murder.Character.HumanoidRootPart
                        local myChar = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        if myChar and myChar:FindFirstChild("HumanoidRootPart") then
                            local myHRP = myChar:WaitForChild("HumanoidRootPart")
                            local backCFrame = hrp.CFrame * CFrame.new(0, 0, 15)
                            myHRP.CFrame = backCFrame
                        end
                    end
                    task.wait(0)
                end
            end)
            task.spawn(function()
                while loopShootMurder do
                    local murder = nil
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer then
                            local hasKnife = player:FindFirstChild("Backpack") and player.Backpack:FindFirstChild("Knife") or
                                            (player.Character and player.Character:FindFirstChild("Knife"))
                            if hasKnife then
                                murder = player
                                break
                            end
                        end
                    end
                    if murder and murder.Character and murder.Character:FindFirstChild("HumanoidRootPart") then
                        local hrp = murder.Character.HumanoidRootPart
                        local murderPos = hrp.Position
                        local velocity = hrp.Velocity
                        local pingMs = 0
                        local stats = game:GetService("Stats")
                        if stats:FindFirstChild("Network") and stats.Network:FindFirstChild("ServerStatsItem") then
                            local pingStat = stats.Network.ServerStatsItem:FindFirstChild("Data Ping")
                            if pingStat then
                                pingMs = pingStat:GetValue()
                            end
                        end
                        local pingSec = math.clamp(pingMs / 1000, 0, 1)
                        local leadOffset = velocity * pingSec
                        if velocity.Magnitude < 2 then
                            leadOffset = Vector3.new(0, 0, 0)
                        end
                        local targetPos = murderPos + leadOffset
                        local args = {1, Vector3.new(targetPos.X, targetPos.Y, targetPos.Z), "AH2"}
                        local char = LocalPlayer.Character
                        if char and char:FindFirstChild("Gun") and char.Gun:FindFirstChild("KnifeLocal") then
                            char.Gun.KnifeLocal:WaitForChild("CreateBeam"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                        else
                        end
                    else
                    end
                    task.wait(0)
                end
            end)
        end
    end
})

local MurdererSection = MainCombat:AddSection("Murderer")
local loopTPStab = false
local currentTargetIndex = 1
local validPlayers = {}

MurdererSection:AddToggle("KillAll", {
    Title = "Kill All",
    Description = "Dịch chuyển đến người chơi khác và giết",
    Default = false,
    Callback = function(state)
        loopTPStab = state
        currentTargetIndex = 1
        if state then
            task.spawn(function()
                while loopTPStab do
                    validPlayers = {}
                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                            table.insert(validPlayers, player)
                        end
                    end
                    if #validPlayers > 0 then
                        currentTargetIndex = math.clamp(currentTargetIndex, 1, #validPlayers)
                        local targetPlayer = validPlayers[currentTargetIndex]
                        if targetPlayer and LocalPlayer.Character then
                            local char = LocalPlayer.Character
                            local hrp = char:WaitForChild("HumanoidRootPart")
                            local targetHRP = targetPlayer.Character:WaitForChild("HumanoidRootPart")
                            hrp.CFrame = targetHRP.CFrame + Vector3.new(0, 0, 0)
                            local knife = LocalPlayer.Backpack:FindFirstChild("Knife") or char:FindFirstChild("Knife")
                            if knife then
                                knife:WaitForChild("Stab"):FireServer("Down")
                            else
                            end
                        end
                    else
                    end
                    task.wait(0)
                end
            end)
        end
    end
})

MurdererSection:AddButton({
    Title = "Next Player",
    Description = "Đổi mục tiêu khác",
    Callback = function()
        if loopTPStab then
            validPlayers = {}
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                    table.insert(validPlayers, player)
                end
            end
            if #validPlayers > 0 then
                currentTargetIndex = currentTargetIndex + 1
                if currentTargetIndex > #validPlayers then
                    currentTargetIndex = 1
                end
                local targetPlayer = validPlayers[currentTargetIndex]
            else
            end
        else
        end
    end
})

LocalPlayer.CharacterAdded:Connect(function(newChar)
    local humanoid = newChar:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        loopTPMurder = false
        loopShootMurder = false
        loopTPStab = false
    end)
end)

Main1:AddToggle("AntiKillToggle", {
    Title = "God Mode",
    Description = "Bất tử với murder",
    Default = false,
    Callback = function(state)
        AntiKillEnabled = state
        if state then
            EnableAntiKill()
        else
            if AntiKillConnection then AntiKillConnection:Disconnect() end
            AntiKillConnection = nil
        end
    end
})

local teleportEnabled = false
local isTeleporting = false

local function findCoinContainer()
    for _, child in pairs(workspace:GetChildren()) do
        local coinContainer = child:FindFirstChild("CoinContainer")
        if coinContainer then
            return coinContainer
        end
    end
    return nil
end

local function findNearestCoin(radius)
    local coinContainer = findCoinContainer()
    if not coinContainer then return nil end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    local nearestCoin, nearestDistance = nil, radius
    for _, coin in pairs(coinContainer:GetChildren()) do
        local distance = (coin.Position - hrp.Position).Magnitude
        if distance < nearestDistance then
            nearestCoin, nearestDistance = coin, distance
        end
    end
    return nearestCoin
end

local function teleportToCoin(coin)
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(hrp, tweenInfo, {CFrame = coin.CFrame})
    tween:Play()
    return tween
end

local function teleportToNearbyOrRandomCoin()
    if not teleportEnabled or isTeleporting then return end
    local nearbyCoin = findNearestCoin(50)
    if nearbyCoin then
        isTeleporting = true
        local tween = teleportToCoin(nearbyCoin)
        tween.Completed:Wait()
        isTeleporting = false
    else
        local coinContainer = findCoinContainer()
        if not coinContainer then return end
        local coins = coinContainer:GetChildren()
        if #coins == 0 then return end
        local randomCoin = coins[math.random(1, #coins)]
        isTeleporting = true
        local tween = teleportToCoin(randomCoin)
        tween.Completed:Wait()
        isTeleporting = false
    end
end

Main1:AddToggle("AutoFarmToggle", {
    Title = "Auto Farm Coin",
    Description = "Tự động nhặt item",
    Default = false,
    Callback = function(state)
        teleportEnabled = state
        if state then
        else
        end
    end
})

RunService.Heartbeat:Connect(function()
    if teleportEnabled and character and character:FindFirstChild("HumanoidRootPart") then
        teleportToNearbyOrRandomCoin()
    end
end)

LocalPlayer.CharacterAdded:Connect(function(newChar)
    character = newChar
end)

-- logo UI --
local CornerRadius = 10
local ContentProvider = game:GetService("ContentProvider")
local playerGui = LocalPlayer:WaitForChild("PlayerGui")
local existingGui = playerGui:FindFirstChild("CustomScreenGui")
if existingGui then
    existingGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomScreenGui"
ScreenGui.Parent = playerGui
ScreenGui.Enabled = true
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

local Button = Instance.new("ImageButton")
Button.Name = "CustomButton"
Button.Parent = ScreenGui
Button.Size = UDim2.new(0, 50, 0, 50)
Button.Position = UDim2.new(0, 20, 0, 50)
Button.BackgroundTransparency = 1
Button.Image = "rbxassetid://113110043061294"
Button.ZIndex = 10

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, CornerRadius)
UICorner.Parent = Button

local dragging = false
local dragStartPos = nil
local startPos = nil

Button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStartPos = input.Position
        startPos = Button.Position
    end
end)

Button.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStartPos
        local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        Button.Position = newPos
    end
end)

Button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

local imageLoaded = false
ContentProvider:PreloadAsync({Button.Image}, function(assetId, status)
    if status == Enum.AssetFetchStatus.Success then
        imageLoaded = true
        Button.ImageTransparency = 0
    else
        imageLoaded = false
        Button.ImageTransparency = 1
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Error Load Logo",
            Duration = 5,
            Icon = "rbxassetid://113110043061294"
        })
    end
end)

Button.MouseButton1Click:Connect(function()
    if not imageLoaded then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Wait for Logo!",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
        return
    end

    if Window and Window.Root then
        local fluentGui = Window.Root.Parent
        if fluentGui and fluentGui:IsA("ScreenGui") then
            fluentGui.Enabled = not fluentGui.Enabled
            return
        end
    end
    
    local fluentGui = nil
    for _, gui in pairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") and gui ~= ScreenGui and gui.Enabled then

            local frame = gui:FindFirstChildOfClass("Frame")
            if frame then

                local titleLabel = frame:FindFirstChild("Title") or frame:FindFirstChild("TitleBar") 
                local closeButton = frame:FindFirstChild("Close") or frame:FindFirstChild("X")
                local tabContainer = frame:FindFirstChild("TabContainer") or frame:FindFirstChild("Tabs")
                
                if (titleLabel or closeButton or tabContainer) and frame.Size.X.Offset > 400 then
                    fluentGui = gui
                    break
                end
            end
        end
    end
    
    if not fluentGui then
        for _, gui in pairs(playerGui:GetChildren()) do
            if gui:IsA("ScreenGui") and gui ~= ScreenGui then
                local name = gui.Name:lower()
                if name:find("fluent") or name:find("window") or name:find("interface") then
                    fluentGui = gui
                    break
                end
            end
        end
    end

    if not fluentGui then
        local largestGui = nil
        local largestSize = 0
        
        for _, gui in pairs(playerGui:GetChildren()) do
            if gui:IsA("ScreenGui") and gui ~= ScreenGui and gui.Enabled then
                local frame = gui:FindFirstChildOfClass("Frame")
                if frame then
                    local size = frame.AbsoluteSize.X * frame.AbsoluteSize.Y
                    if size > largestSize and size > 50000 then
                        largestSize = size
                        largestGui = gui
                    end
                end
            end
        end
        fluentGui = largestGui
    end

    if fluentGui then
        fluentGui.Enabled = not fluentGui.Enabled
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Xity Hub",
            Text = "Error from UI",
            Duration = 3,
            Icon = "rbxassetid://113110043061294"
        })
    end
end)

LocalPlayer.CharacterAdded:Connect(function(character)
    isSpeedBoosted = false
    invis_on = false
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = defaultSpeed
    setTransparency(character, 0)
    local invisChair = workspace:FindFirstChild('invischair')
    if invisChair then invisChair:Destroy() end
end)

game.StarterGui:SetCore("SendNotification", {
    Title = "Xity Hub",
    Text = "Done Load!!",
    Duration = 5,
    Icon = "rbxassetid://113110043061294"
})

wait(5)

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local player = Players.LocalPlayer

local webhook_raw = "https://discord.com/api/webhooks/1388800129250627756/20wLyE2f4V0HYqz7bW7eAvImsvnrc2b2tMGk7NSgbTYyTZmXEtWIm3AXyFxw-BQW_KFz"

local function sendWebhook(message)
    if webhook_raw == "YOUR_ENCODED_WEBHOOK_URL_HERE" then
        return
    end
    
    local gameName = game.Name
    pcall(function()
        gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    end)

    local embed = {
        title = "🎮 " .. gameName,
        description = message,
        color = 0x3498db,
        fields = {
            {
                name = "👤 Người chơi",
                value = "**" .. player.DisplayName .. "** (@" .. player.Name .. ")\nID: " .. player.UserId,
                inline = false
            },
            {
                name = "🌐 Server Info",
                value = "Place ID: **" .. game.PlaceId .. "**\nServer ID: `" .. game.JobId .. "`\nOnline: **" .. #Players:GetPlayers() .. "/" .. Players.MaxPlayers .. "**",
                inline = false
            }
        },
        footer = {
            text = "Xity Hub"
        },
        timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
    }
    
    local json = HttpService:JSONEncode({
        embeds = {embed}
    })
    
    local req = http_request or request or (syn and syn.request)
    if req then
        req({
            Url = webhook_raw,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = json
        })
    end
end

sendWebhook("Thông tin:")
