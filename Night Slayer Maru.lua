local CollectionService = game:GetService("CollectionService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

_G.GodMode = true
local Cache = {}

-- [[ 1. LÕI QUÉT "VƯỢT GIỚI HẠN" (STREAMING AWARE) ]] --
local function IsEggRealTime(v)
    -- Admin 2026 hay giấu Tag trong Attributes hoặc ProximityPrompt ngầm
    if v:IsA("ProximityPrompt") or v:IsA("TouchTransmitter") then
        local p = v.Parent
        if p and p:IsA("BasePart") and p.Size.Magnitude < 15 then
            -- Check Attribute bị mã hóa nhẹ (thường là 'T', 'Type', 'E')
            if p:GetAttribute("Event") or p:GetAttribute("E") or p.Name:lower():find("egg") then
                return p
            end
        end
    end
    return nil
end

-- [[ 2. HÀM HIỆN HÌNH (MAX VISIBILITY) ]] --
local function ShineEgg(obj)
    if not obj or Cache[obj] then return end
    Cache[obj] = true
    
    -- Highlight đỏ rực xuyên thấu toàn cõi
    local hl = Instance.new("Highlight", obj)
    hl.Name = "G-GOD"
    hl.FillColor = Color3.fromRGB(255, 0, 0)
    hl.AlwaysOnTop = true
    
    -- Billboard hiển thị thông tin cực xa
    local bg = Instance.new("BillboardGui", obj)
    bg.Size = UDim2.new(0, 180, 0, 45)
    bg.AlwaysOnTop = true
    bg.StudsOffset = Vector3.new(0, 5, 0)
    
    local tl = Instance.new("TextLabel", bg)
    tl.Size = UDim2.new(1, 0, 1, 0)
    tl.BackgroundTransparency = 1
    tl.Text = "🚨 " .. obj.Name:upper() .. " 🚨"
    tl.TextColor3 = Color3.fromRGB(255, 255, 0)
    tl.TextScaled = true
    tl.Font = Enum.Font.FredokaOne

    task.spawn(function()
        while obj and obj.Parent and _G.GodMode do
            task.wait(1)
        end
        Cache[obj] = nil
    end)
end

-- [[ 3. 🛡️ CƠ CHẾ "ÉP" LOAD DATA (STREAMING ENABLED BYPASS) ]] --
-- Thay vì đợi, ta hook vào việc di chuyển để quét vùng mới load
workspace.DescendantAdded:Connect(function(v)
    if _G.GodMode then
        local target = IsEggRealTime(v)
        if target then ShineEgg(target) end
    end
end)

-- [[ 4. SERVER HOP "TRÙM" (LỌC SERVER CŨ + VẮNG) ]] --
function UltimateHop()
    local url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
    local raw = game:HttpGet(url)
    local servers = HttpService:JSONDecode(raw)
    
    for _, s in pairs(servers.data) do
        -- Lọc server từ 1-4 người (Best Meta như bạn nói)
        if s.playing >= 1 and s.playing <= 4 and s.id ~= game.JobId then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, s.id)
            break
        end
    end
end
