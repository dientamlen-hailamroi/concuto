local executor = (getexecutorname and getexecutorname()) or (identifyexecutor and identifyexecutor())
if executor then
    if
        string.find(executor, "Bunni") or
        string.find(executor, "FluxusZ") or
        string.find(executor, "Delta") or
        string.find(executor, "Arceus") or
        string.find(executor, "Xeno") or
        string.find(executor, "Swift") or
        string.find(executor, "Awp") or
        string.find(executor, "Volcano") or
        string.find(executor, "Argon") or
        string.find(executor, "Macsploit") or
        string.find(executor, "Potassium") or
        string.find(executor, "CodeX") or
        string.find(executor, "Velocity") or
        string.find(executor, "Romix") or
        string.find(executor, "Neutron")
    then
    else
        game.Players.LocalPlayer:Kick("Please use Delta Exploit or PC use volcano or Exploit paid!")
    end
end

Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/Aihoicailoncacchobuoiwisibchcj/refs/heads/main/Ditmemayluccailoncacymafluc"))()

Window = Library:CreateWindow({
    Title = "Diever Hub",
    Desc = "- Template",
    Image = "rbxassetid://87779947644519"
})

local function makeProxy(obj, callbackHolder)
    local proxy = {}
    setmetatable(proxy, {
        __index = function(_, k)
            if k == "OnChanged" then
                return function(_, fn)
                    callbackHolder.extra = fn
                    return proxy
                end
            end
            if k == "SetStage" and obj.SetStage then
                return function(_, v) pcall(obj.SetStage, v) end
            end
            if k == "SetValue" then
                return function(_, v)
                    if obj.SetValue then
                        local ok = pcall(obj.SetValue, v)
                        if not ok then pcall(function() obj:SetValue(v) end) end
                    end
                end
            end
            if k == "GetValue" then
                return function(_)
                    if obj.GetValue then
                        local ok, val = pcall(obj.GetValue)
                        if ok then return val end
                        local ok2, val2 = pcall(function() return obj:GetValue() end)
                        return val2
                    end
                end
            end
            if k == "SetText" or k == "SetDesc" then
                return function(_, t)
                    if obj.SetText then pcall(obj.SetText, obj, t)
                    elseif obj.SetDesc then pcall(obj.SetDesc, obj, t) end
                end
            end
            if k == "GetNewList" then
                return function(_, list)
                    if obj.GetNewList then pcall(obj.GetNewList, obj, list) end
                end
            end
            if k == "ClearText" then
                return function(_, v)
                    if obj.ClearText then pcall(obj.ClearText, obj, v) end
                end
            end
            local v = rawget(obj, k) or (type(obj) == "table" and obj[k])
            if type(v) == "function" then
                return function(_, ...) return pcall(v, obj, ...) end
            end
            return v
        end
    })
    return proxy
end

local function wrapTab(rawTab)
    local _currentSection = nil
    local _nextIsRight = false

    local function ensureSection()
        if not _currentSection then
            _currentSection = rawTab:AddLeftGroupbox(" ")
        end
    end

    local wrapped = {}

    function wrapped:AddSection(name)
        if _nextIsRight then
            _currentSection = rawTab:AddRightGroupbox(name or " ")
            _nextIsRight = false
        else
            _currentSection = rawTab:AddLeftGroupbox(name or " ")
            _nextIsRight = true
        end
        return _currentSection
    end

    function wrapped:AddToggle(id, setting)
        ensureSection()
        local holder = { extra = nil }
        local origCb = setting.Callback or setting["Callback"]
        setting.Callback = function(v)
            if origCb then pcall(origCb, v) end
            if holder.extra then pcall(holder.extra, v) end
        end
        setting["Callback"] = setting.Callback
        setting["Description"] = nil
        setting.Description = nil
        local obj = _currentSection:AddToggle(id, setting)
        return makeProxy(obj, holder)
    end

    function wrapped:AddButton(setting, cb)
        ensureSection()
        if type(setting) == "table" then
            setting["Description"] = nil
            setting.Description = nil
        end
        local proxy = _currentSection:AddButton(setting, cb)
        if proxy then
            local holder = {}
            return makeProxy(proxy, holder)
        end
    end

    function wrapped:AddDropdown(id, setting)
        ensureSection()
        local holder = { extra = nil }
        local origCb = setting.Callback or setting["Callback"]
        setting.Callback = function(v)
            if origCb then pcall(origCb, v) end
            if holder.extra then pcall(holder.extra, v) end
        end
        setting["Callback"] = setting.Callback
        setting["Description"] = nil
        setting.Description = nil
        local obj = _currentSection:AddDropdown(id, setting)
        return makeProxy(obj, holder)
    end

    function wrapped:AddSlider(id, setting)
        ensureSection()
        local holder = { extra = nil }
        local origCb = setting.Callback or setting["Callback"]
        setting.Callback = function(v)
            if origCb then pcall(origCb, v) end
            if holder.extra then pcall(holder.extra, v) end
        end
        setting["Callback"] = setting.Callback
        setting["Description"] = nil
        setting.Description = nil
        local obj = _currentSection:AddSlider(setting)
        return makeProxy(obj, holder)
    end

    function wrapped:AddInput(id, setting)
        ensureSection()
        local holder = { extra = nil }
        local origCb = setting.Callback or setting["Callback"]
        setting.Callback = function(v)
            if origCb then pcall(origCb, v) end
            if holder.extra then pcall(holder.extra, v) end
        end
        setting["Callback"] = setting.Callback
        local obj = _currentSection:AddInput(id, setting)
        return makeProxy(obj, holder)
    end

    function wrapped:AddParagraph(setting)
        ensureSection()
        local title = setting.Title or setting["Title"] or ""
        local desc  = setting.Description or setting["Description"] or setting.Desc or ""
        local txt   = desc ~= "" and (title .. "\n" .. desc) or title
        local obj = _currentSection:AddLabel(txt)
        local holder = {}
        return makeProxy(obj, holder)
    end

    function wrapped:AddLabel(text)
        ensureSection()
        local obj = _currentSection:AddLabel(text)
        local holder = {}
        return makeProxy(obj, holder)
    end

    return wrapped
end

Tabs = {
    ["Main"] = wrapTab(Window:AddTab("Main")),
    ["Settings"] = wrapTab(Window:AddTab("Cài Đặt")),
}

Tabs["Main"]:AddSection("Toggle & Button")

Tabs["Main"]:AddToggle("AutoFarmToggle", {
    Title = "Auto Farm",
    Default = false,
    Callback = function(state)
        print("Auto Farm is now:", state)
    end
})

Tabs["Main"]:AddButton({
    Title = "Click Me",
    Callback = function()
        print("Button Clicked")
    end
})

Tabs["Main"]:AddSection("Dropdown & Slider")

Tabs["Main"]:AddDropdown("SelectWeapon", {
    Title = "Select Weapon",
    List = {"Melee", "Sword", "Fruit"},
    Default = "Melee",
    Callback = function(value)
        print("Selected:", value)
    end
})

Tabs["Main"]:AddSlider("SliderSpeed", {
    Title = "Speed",
    Min = 16,
    Max = 100,
    Default = 16,
    Callback = function(value)
        print("Speed set to:", value)
    end
})

Tabs["Main"]:AddSection("Others")

Tabs["Main"]:AddInput("InputName", {
    Title = "Enter Name",
    Default = "Player",
    Callback = function(text)
        print("Name entered:", text)
    end
})

Tabs["Main"]:AddLabel("This is a simple label for information.")

Tabs["Settings"]:AddSection("UI Settings")

Tabs["Settings"]:AddLabel("Cài đặt UI ở đây")

Library:Notify({
    Title = "Red 🇻🇳 Hub",
    Description = "Welcome to the new template UI!",
    Duration = 3
})

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait()
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
