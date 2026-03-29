local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

_G.AutoFarm_Ativo = false
_G.ESP_Ativo = false

local MOVE_SPEED = 250
local HOVER_HEIGHT = 110
local movementToken = 0

local TargetMaps = {
    workspace.Map:FindFirstChild("Colosseum"),
    workspace.Map:FindFirstChild("Desert"),
    workspace.Map:FindFirstChild("Fountain"),
    workspace.Map:FindFirstChild("Ice"),
    workspace.Map:FindFirstChild("Jungle"),
    workspace.Map:FindFirstChild("MarineBase"),
    workspace.Map:FindFirstChild("Magma"),
    workspace.Map:FindFirstChild("MarineStart"),
    workspace.Map:FindFirstChild("MobBoss"),
    workspace.Map:FindFirstChild("Pirate"),
    workspace.Map:FindFirstChild("Prison"),
    workspace.Map:FindFirstChild("Sky"),
    workspace.Map:FindFirstChild("SkyArea1"),
    workspace.Map:FindFirstChild("SkyArea2"),
    workspace.Map:FindFirstChild("TeleportSpawn"),
    workspace.Map:FindFirstChild("Town"),
    workspace.Map:FindFirstChild("Windmill")
}

local function CreateESPMarker(targetPart)
    if not _G.ESP_Ativo or targetPart:FindFirstChild("EggMarker") then
        return
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "EggMarker"
    billboard.Size = UDim2.new(4, 0, 1.5, 0)
    billboard.AlwaysOnTop = true
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.Parent = targetPart

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = "EGG DETECTED "
    label.TextColor3 = Color3.fromRGB(0, 255, 120)
    label.Font = Enum.Font.GothamBold
    label.TextSize = 16
    label.TextStrokeTransparency = 0.5
    label.Parent = billboard
end

local function ClearESPMarkers()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == "EggMarker" then
            obj:Destroy()
        end
    end
end

local function MoveToCFrame(targetCFrame, speed)
    local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not rootPart or not targetCFrame then
        return
    end

    movementToken = movementToken + 1
    local currentToken = movementToken

    while _G.AutoFarm_Ativo and movementToken == currentToken do
        local currentPosition = rootPart.Position
        local targetPosition = targetCFrame.Position
        local distance = (targetPosition - currentPosition).Magnitude

        if distance < 5 then
            rootPart.CFrame = targetCFrame
            break
        end

        local direction = (targetPosition - currentPosition).Unit
        local deltaTime = task.wait()
        local stepDistance = speed * deltaTime

        if stepDistance >= distance then
            rootPart.CFrame = targetCFrame
            break
        else
            rootPart.CFrame = CFrame.new(currentPosition + (direction * stepDistance))
        end
    end
end

local function FindEggAndMove()
    for _, obj in pairs(workspace:GetChildren()) do
        if obj.Name == "" and (obj:IsA("BasePart") or obj:IsA("Model")) then
            local targetPart = (obj:IsA("Model") and (obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart"))) or obj

            if targetPart and targetPart:IsA("BasePart") then
                movementToken = movementToken + 1

                if _G.ESP_Ativo then
                    CreateESPMarker(targetPart)
                end

                MoveToCFrame(targetPart.CFrame, MOVE_SPEED)
                task.wait(0.2)
                return true
            end
        end
    end

    return false
end

local function MoveAboveTarget(targetCFrame)
    local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not rootPart or not _G.AutoFarm_Ativo then
        return
    end

    LocalPlayer.Character.Humanoid.PlatformStand = true

    local hoverPosition = targetCFrame.Position + Vector3.new(0, HOVER_HEIGHT, 0)

    movementToken = movementToken + 1
    local currentToken = movementToken

    while _G.AutoFarm_Ativo and movementToken == currentToken do
        local currentPosition = rootPart.Position
        local distance = (hoverPosition - currentPosition).Magnitude

        if distance < 5 then
            rootPart.CFrame = CFrame.new(hoverPosition)
            break
        end

        local direction = (hoverPosition - currentPosition).Unit
        local deltaTime = task.wait()
        local stepDistance = MOVE_SPEED * deltaTime

        if stepDistance >= distance then
            rootPart.CFrame = CFrame.new(hoverPosition)
            break
        else
            rootPart.CFrame = CFrame.new(currentPosition + (direction * stepDistance))
        end

        if FindEggAndMove() then
            break
        end
    end

    if movementToken == currentToken then
        LocalPlayer.Character.Humanoid.PlatformStand = false
    end
end

local function CircleAroundTarget(targetCFrame)
    local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not rootPart or not _G.AutoFarm_Ativo then
        return
    end

    local startTime = tick()

    while (tick() - startTime) < 5 do
        if not _G.AutoFarm_Ativo or FindEggAndMove() then
            break
        end

        local angle = tick() * 2.5
        local offset = Vector3.new(
            math.cos(angle) * 180,
            HOVER_HEIGHT,
            math.sin(angle) * 180
        )

        rootPart.CFrame = CFrame.new(targetCFrame.Position + offset)
        task.wait()
    end
end

task.spawn(function()
    while true do
        if _G.AutoFarm_Ativo then
            for _, mapObject in pairs(TargetMaps) do
                if not _G.AutoFarm_Ativo then
                    break
                end

                if mapObject then
                    local targetPart = (mapObject:IsA("Model") and (mapObject.PrimaryPart or mapObject:FindFirstChildWhichIsA("BasePart"))) or mapObject

                    if targetPart then
                        MoveAboveTarget(targetPart.CFrame)
                        CircleAroundTarget(targetPart.CFrame)
                    end
                end
            end
        end

        task.wait(1)
    end
end)

task.spawn(function()
    while true do
        if _G.AutoFarm_Ativo then
            FindEggAndMove()
        end
        task.wait(0.5)
    end
end)

if CoreGui:FindFirstChild("GuguNitroV21") then
    CoreGui.GuguNitroV21:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GuguNitroV21"
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 200, 0, 190)
MainFrame.Position = UDim2.new(0.5, -100, 0.1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Parent = ScreenGui

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 35)
TitleLabel.Text = "BY gugu_pro390"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextSize = 12
TitleLabel.Parent = MainFrame

local function CreateButton(text, yPosition, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 35)
    button.Position = UDim2.new(0.05, 0, 0, yPosition)
    button.Text = text
    button.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 11
    button.Parent = MainFrame

    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 6)

    button.MouseButton1Click:Connect(function()
        callback(button)
    end)

    return button
end

CreateButton("ESP: OFF", 45, function(button)
    _G.ESP_Ativo = not _G.ESP_Ativo
    button.Text = _G.ESP_Ativo and "ESP: ON " or "ESP: OFF"
    button.BackgroundColor3 = _G.ESP_Ativo
        and Color3.fromRGB(0, 120, 200)
        or Color3.fromRGB(30, 30, 35)

    if not _G.ESP_Ativo then
        ClearESPMarkers()
    end
end)

CreateButton("AUTO FARM: OFF", 90, function(button)
    _G.AutoFarm_Ativo = not _G.AutoFarm_Ativo
    button.Text = _G.AutoFarm_Ativo and "AUTO FARM: ON" or "AUTO FARM: OFF"
    button.BackgroundColor3 = _G.AutoFarm_Ativo
        and Color3.fromRGB(0, 180, 100)
        or Color3.fromRGB(30, 30, 35)
end)

CreateButton("LIMPAR ESP", 135, function(button)
    ClearESPMarkers()
    button.Text = "LIMPO ✨"
    task.wait(1)
    button.Text = "LIMPAR ESP"
end)
