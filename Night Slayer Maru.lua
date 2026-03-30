local LibSource = game:HttpGet("https://raw.githubusercontent.com/Myvkhuy/One-Ui/refs/heads/Bearlib/raw.txt")
local Library = loadstring(LibSource)()

local Window = Library:CreateWindow({
    Title = "Bear Hub Example",
    Subtitle = "| UI Example Revamp",
    Image = "rbxassetid://76571437829227"
})

-- Tabs
local TabHome   = Window:AddTab("Home")
local TabGames  = Window:AddTab("Games")
local TabUtility= Window:AddTab("Utility")
local TabMusic  = Window:AddTab("Music")
local TabInfo   = Window:AddTab("Info")

-- HOME
local HomeLeft = TabHome:AddLeftGroupbox("Welcome")
HomeLeft:AddLabel("UI example mới")
HomeLeft:AddLabel("• Giao diện gọn hơn")
HomeLeft:AddLabel("• Chia nhóm rõ hơn")
HomeLeft:AddLabel("• Dễ thay nút / dễ sửa màu")

HomeLeft:AddButton({
    Title = "Copy Discord",
    Callback = function()
        setclipboard("https://discord.gg/example")
        Library:Notify({
            Title = "Đã copy",
            Description = "Link Discord đã được copy",
            Duration = 3
        })
    end
})

local HomeRight = TabHome:AddRightGroupbox("Quick Actions")
HomeRight:AddButton({
    Title = "Open Example Notice",
    Callback = function()
        Library:Notify({
            Title = "Example UI",
            Description = "Đây là bản giao diện mẫu mới.",
            Duration = 4
        })
    end
})

HomeRight:AddToggle("ExampleToggle", {
    Title = "Bật thử toggle",
    Default = false,
    Callback = function(Value)
        print("Toggle:", Value)
    end
})

HomeRight:AddSlider("UIScale", {
    Title = "UI Scale",
    Default = 100,
    Min = 70,
    Max = 130,
    Rounding = 0,
    Callback = function(Value)
        print("Scale:", Value)
    end
})

-- GAMES
local GameFarm = TabGames:AddLeftGroupbox("Farm Example")
GameFarm:AddButton({
    Title = "Farm Slot 1",
    Callback = function()
        Library:Notify({
            Title = "Farm Example",
            Description = "Chỗ này để gắn chức năng farm của bạn.",
            Duration = 3
        })
    end
})

GameFarm:AddButton({
    Title = "Farm Slot 2",
    Callback = function()
        print("Farm Slot 2")
    end
})

local GamePvp = TabGames:AddRightGroupbox("PvP Example")
GamePvp:AddButton({
    Title = "PvP Slot 1",
    Callback = function()
        print("PvP Slot 1")
    end
})

GamePvp:AddButton({
    Title = "PvP Slot 2",
    Callback = function()
        print("PvP Slot 2")
    end
})

-- UTILITY
local UtilityLeft = TabUtility:AddLeftGroupbox("Performance")
UtilityLeft:AddButton({
    Title = "Low Graphics",
    Callback = function()
        local Lighting = game:GetService("Lighting")
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9e9
        Lighting.Brightness = 1
    end
})

UtilityLeft:AddButton({
    Title = "Remove Fog",
    Callback = function()
        local Lighting = game:GetService("Lighting")
        Lighting.FogStart = 0
        Lighting.FogEnd = 9e9
    end
})

local UtilityRight = TabUtility:AddRightGroupbox("Overlay")
UtilityRight:AddToggle("ShowFPS", {
    Title = "Hiện FPS",
    Default = false,
    Callback = function(Value)
        print("FPS Overlay:", Value)
    end
})

UtilityRight:AddToggle("Watermark", {
    Title = "Hiện Watermark",
    Default = true,
    Callback = function(Value)
        print("Watermark:", Value)
    end
})

-- MUSIC
local MusicBox = TabMusic:AddLeftGroupbox("Music Example")
MusicBox:AddInput("MusicID", {
    Title = "Nhập Music ID",
    Default = "",
    Placeholder = "Ví dụ: 123456789",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        print("Music ID:", Value)
    end
})

MusicBox:AddButton({
    Title = "Play Music",
    Callback = function()
        Library:Notify({
            Title = "Music Example",
            Description = "Nút phát nhạc mẫu.",
            Duration = 3
        })
    end
})

MusicBox:AddButton({
    Title = "Stop Music",
    Callback = function()
        print("Stop Music")
    end
})

-- INFO
local InfoBox = TabInfo:AddLeftGroupbox("Thông tin")
InfoBox:AddLabel("Bear Hub Example UI")
InfoBox:AddLabel("Version: 2.0 Example")
InfoBox:AddLabel("Style: Clean / Compact / Modern")

InfoBox:AddButton({
    Title = "Test Notify",
    Callback = function()
        Library:Notify({
            Title = "Thông báo",
            Description = "UI đang hoạt động bình thường.",
            Duration = 3
        })
    end
})

task.wait(1)
Library:Notify({
    Title = "Bear Hub Example",
    Description = "UI mới đã load xong.",
    Duration = 4
})

print("Bear Hub Example UI Loaded")
