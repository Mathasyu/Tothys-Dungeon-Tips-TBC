--[[
Tothys Dungeon Tools TBC
Core bootstrap

Version: 0.1.0
]]

local addonName, addon = ...

addon.name = addonName
addon.version = "0.1.0"

TDT2Config = TDT2Config or {}
TDT2UserData = TDT2UserData or {}

local DEFAULTS = {
    locale = "Auto",
    frame = {
        point = "CENTER",
        x = 0,
        y = 0,
        width = 520,
        height = 420,
    },
}

local function copyMissingDefaults(target, defaults)
    for key, value in pairs(defaults) do
        if type(value) == "table" then
            target[key] = target[key] or {}
            copyMissingDefaults(target[key], value)
        elseif target[key] == nil then
            target[key] = value
        end
    end
end

function addon:GetClientLocale()
    local locale = GetLocale and GetLocale() or "enUS"
    if locale == "deDE" then
        return "deDE"
    end
    return "enUS"
end

function addon:GetActiveLocale()
    if TDT2Config.locale and TDT2Config.locale ~= "Auto" then
        return TDT2Config.locale
    end
    return self:GetClientLocale()
end

function addon:GetLocalizedText(localizedValue)
    if type(localizedValue) ~= "table" then
        return localizedValue
    end

    local locale = self:GetActiveLocale()
    return localizedValue[locale] or localizedValue.enUS or ""
end

local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:SetScript("OnEvent", function(_, event, loadedAddonName)
    if event ~= "ADDON_LOADED" or loadedAddonName ~= addonName then
        return
    end

    copyMissingDefaults(TDT2Config, DEFAULTS)

    if addon.InitializeUI then
        addon:InitializeUI()
    end

    SLASH_TDT21 = "/tdt2"
    SlashCmdList.TDT2 = function(message)
        local command = string.lower((message or ""):match("^%s*(.-)%s*$"))
        if command == "show" then
            addon:ShowMainFrame()
        elseif command == "hide" then
            addon:HideMainFrame()
        else
            addon:ToggleMainFrame()
        end
    end

    DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99KDT|r rewrite loaded. Use /tdt2 to toggle Kiesel Dungeon Tool.")
end)
