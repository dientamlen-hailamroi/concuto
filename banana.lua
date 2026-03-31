local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Diever Hub",
    SubTitle = "by MduccDev",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Cheat = Window:AddTab({ Title = "Cheat", Icon = "shield" })
}

local Options = Fluent.Options

-- // Variables // --
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local ESP_Settings = {
    Box = false,
    Name = false,
    Line = false,
    Skeleton = false,
    PlayerCount = false,
    Color = Color3.fromRGB(255, 255, 255)
}

-- // UI Elements // --
Tabs.Cheat:AddToggle("ESPBox", {Title = "ESP Box", Default = false})
Tabs.Cheat:AddToggle("ESPName", {Title = "ESP Name", Default = false})
Tabs.Cheat:AddToggle("ESPLine", {Title = "ESP Line", Default = false})
Tabs.Cheat:AddToggle("ESPSkeleton", {Title = "ESP Skeleton", Default = false})
Tabs.Cheat:AddToggle("ESPCount", {Title = "ESP Count Player", Default = false})

local CountLabel = Tabs.Cheat:AddParagraph({
    Title = "Player Stats",
    Content = "Counting players..."
})

-- // Logic // --
Options.ESPBox:OnChanged(function() ESP_Settings.Box = Options.ESPBox.Value end)
Options.ESPName:OnChanged(function() ESP_Settings.Name = Options.ESPName.Value end)
Options.ESPLine:OnChanged(function() ESP_Settings.Line = Options.ESPLine.Value end)
Options.ESPSkeleton:OnChanged(function() ESP_Settings.Skeleton = Options.ESPSkeleton.Value end)
Options.ESPCount:OnChanged(function() ESP_Settings.PlayerCount = Options.ESPCount.Value end)

local function NewDrawing(Type, Table)
    local obj = Drawing.new(Type)
    for i, v in pairs(Table) do
        obj[i] = v
    end
    return obj
end

local PlayerDrawings = {}

local function CreateESP(Player)
    if Player == LocalPlayer then return end
    
    local Drawings = {
        Box = NewDrawing("Square", {Thickness = 1.5, Filled = false, Transparency = 1, Color = ESP_Settings.Color, Visible = false}),
        Name = NewDrawing("Text", {Size = 16, Center = true, Outline = true, Color = ESP_Settings.Color, Visible = false}),
        Line = NewDrawing("Line", {Thickness = 1.5, Transparency = 1, Color = ESP_Settings.Color, Visible = false}),
        Skeleton = {
            HeadTorso = NewDrawing("Line", {Thickness = 1.5, Color = ESP_Settings.Color, Visible = false}),
            TorsoLLeg = NewDrawing("Line", {Thickness = 1.5, Color = ESP_Settings.Color, Visible = false}),
            TorsoRLeg = NewDrawing("Line", {Thickness = 1.5, Color = ESP_Settings.Color, Visible = false}),
            TorsoLArm = NewDrawing("Line", {Thickness = 1.5, Color = ESP_Settings.Color, Visible = false}),
            TorsoRArm = NewDrawing("Line", {Thickness = 1.5, Color = ESP_Settings.Color, Visible = false}),
        }
    }
    
    PlayerDrawings[Player] = Drawings
end

local function RemoveESP(Player)
    if PlayerDrawings[Player] then
        for _, v in pairs(PlayerDrawings[Player]) do
            if type(v) == "table" then
                for _, line in pairs(v) do line:Remove() end
            else
                v:Remove()
            end
        end
        PlayerDrawings[Player] = nil
    end
end

for _, v in pairs(Players:GetPlayers()) do CreateESP(v) end
Players.PlayerAdded:Connect(CreateESP)
Players.PlayerRemoving:Connect(RemoveESP)

RunService.RenderStepped:Connect(function()
    local playerCount = #Players:GetPlayers()
    if ESP_Settings.PlayerCount then
        CountLabel:SetTitle("Players In Game: " .. tostring(playerCount))
        CountLabel:SetDesc("Scanning active players...")
    else
        CountLabel:SetTitle("Player Stats")
        CountLabel:SetDesc("ESP Count is OFF")
    end

    for Player, Drawings in pairs(PlayerDrawings) do
        local Character = Player.Character
        if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Humanoid") and Character.Humanoid.Health > 0 then
            local RootPart = Character.HumanoidRootPart
            local Head = Character:FindFirstChild("Head")
            if not Head then continue end

            local Pos, OnScreen = Camera:WorldToViewportPoint(RootPart.Position)
            
            if OnScreen then
                -- Box & Name Logic
                local Size = (Camera:WorldToViewportPoint(RootPart.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPart.Position + Vector3.new(0, 2.6, 0)).Y)
                local BoxSize = Vector2.new(Size / 1.5, Size)
                local BoxPos = Vector2.new(Pos.X - BoxSize.X / 2, Pos.Y - BoxSize.Y / 2)

                if ESP_Settings.Box then
                    Drawings.Box.Size = BoxSize
                    Drawings.Box.Position = BoxPos
                    Drawings.Box.Visible = true
                else
                    Drawings.Box.Visible = false
                end

                if ESP_Settings.Name then
                    Drawings.Name.Text = Player.Name
                    Drawings.Name.Position = Vector2.new(Pos.X, Pos.Y - BoxSize.Y / 2 - 18)
                    Drawings.Name.Visible = true
                else
                    Drawings.Name.Visible = false
                end

                if ESP_Settings.Line then
                    Drawings.Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                    Drawings.Line.To = Vector2.new(Pos.X, Pos.Y + BoxSize.Y / 2)
                    Drawings.Line.Visible = true
                else
                    Drawings.Line.Visible = false
                end

                -- Skeleton Logic
                if ESP_Settings.Skeleton then
                    local Torso = Character:FindFirstChild("UpperTorso") or Character:FindFirstChild("Torso")
                    local LLeg = Character:FindFirstChild("LeftLowerLeg") or Character:FindFirstChild("Left Leg")
                    local RLeg = Character:FindFirstChild("RightLowerLeg") or Character:FindFirstChild("Right Leg")
                    local LArm = Character:FindFirstChild("LeftLowerArm") or Character:FindFirstChild("Left Arm")
                    local RArm = Character:FindFirstChild("RightLowerArm") or Character:FindFirstChild("Right Arm")

                    if Torso and Head and LLeg and RLeg and LArm and RArm then
                        local H = Camera:WorldToViewportPoint(Head.Position)
                        local T = Camera:WorldToViewportPoint(Torso.Position)
                        local LL = Camera:WorldToViewportPoint(LLeg.Position)
                        local RL = Camera:WorldToViewportPoint(RLeg.Position)
                        local LA = Camera:WorldToViewportPoint(LArm.Position)
                        local RA = Camera:WorldToViewportPoint(RArm.Position)

                        Drawings.Skeleton.HeadTorso.From = Vector2.new(H.X, H.Y)
                        Drawings.Skeleton.HeadTorso.To = Vector2.new(T.X, T.Y)
                        Drawings.Skeleton.HeadTorso.Visible = true

                        Drawings.Skeleton.TorsoLLeg.From = Vector2.new(T.X, T.Y)
                        Drawings.Skeleton.TorsoLLeg.To = Vector2.new(LL.X, LL.Y)
                        Drawings.Skeleton.TorsoLLeg.Visible = true

                        Drawings.Skeleton.TorsoRLeg.From = Vector2.new(T.X, T.Y)
                        Drawings.Skeleton.TorsoRLeg.To = Vector2.new(RL.X, RL.Y)
                        Drawings.Skeleton.TorsoRLeg.Visible = true

                        Drawings.Skeleton.TorsoLArm.From = Vector2.new(T.X, T.Y)
                        Drawings.Skeleton.TorsoLArm.To = Vector2.new(LA.X, LA.Y)
                        Drawings.Skeleton.TorsoLArm.Visible = true

                        Drawings.Skeleton.TorsoRArm.From = Vector2.new(T.X, T.Y)
                        Drawings.Skeleton.TorsoRArm.To = Vector2.new(RA.X, RA.Y)
                        Drawings.Skeleton.TorsoRArm.Visible = true
                    end
                else
                    for _, line in pairs(Drawings.Skeleton) do line.Visible = false end
                end
            else
                Drawings.Box.Visible = false
                Drawings.Name.Visible = false
                Drawings.Line.Visible = false
                for _, line in pairs(Drawings.Skeleton) do line.Visible = false end
            end
        else
            Drawings.Box.Visible = false
            Drawings.Name.Visible = false
            Drawings.Line.Visible = false
            for _, line in pairs(Drawings.Skeleton) do line.Visible = false end
        end
    end
end)

Window:SelectTab(1)
Fluent:Notify({
    Title = "Diever Hub",
    Content = "Script loaded successfully!",
    Duration = 5
})
