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
    browser = {
        expansion = "tbc",
        instance = "hellfire_ramparts",
        npcID = 17306,
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

function addon:GetExpansion(expansionKey)
    return self.db and self.db.expansions and self.db.expansions[expansionKey] or nil
end

function addon:GetInstance(instanceKey)
    return self.db and self.db.instances and self.db.instances[instanceKey] or nil
end

function addon:GetNpc(npcID)
    return self.db and self.db.npcs and self.db.npcs[tostring(npcID)] or nil
end

function addon:GetNpcTips(instanceKey, npcID)
    local instanceNpcTips = self.db and self.db.tips and self.db.tips[instanceKey]
    if not instanceNpcTips then
        return nil
    end
    return instanceNpcTips[tostring(npcID)] or nil
end

function addon:GetInstanceTips(instanceKey)
    return self.db and self.db.instanceTips and self.db.instanceTips[instanceKey] or nil
end

function addon:GetInstanceDetails(instanceKey)
    return self.db and self.db.instanceDetails and self.db.instanceDetails[instanceKey] or nil
end

function addon:GetOrderedInstanceKeys(expansionKey)
    local keys = {}
    if not self.db or not self.db.instances then
        return keys
    end

    for instanceKey, instance in pairs(self.db.instances) do
        if not expansionKey or instance.expansion == expansionKey then
            keys[#keys + 1] = instanceKey
        end
    end

    table.sort(keys, function(a, b)
        local left = self.db.instances[a]
        local right = self.db.instances[b]
        if (left.order or 9999) ~= (right.order or 9999) then
            return (left.order or 9999) < (right.order or 9999)
        end
        return a < b
    end)

    return keys
end

function addon:GetInstanceNpcIDs(instanceKey)
    local relation = self.db and self.db.instanceNpcs and self.db.instanceNpcs[instanceKey]
    if not relation then
        return {}
    end

    local npcIDs = {}
    for _, npcID in ipairs(relation.bosses or {}) do
        npcIDs[#npcIDs + 1] = npcID
    end
    for _, npcID in ipairs(relation.others or {}) do
        npcIDs[#npcIDs + 1] = npcID
    end
    return npcIDs
end

function addon:GetOrderedNpcTips(instanceKey, npcID)
    local tipMap = self:GetNpcTips(instanceKey, npcID)
    if not tipMap then
        return {}
    end

    local tips = {}
    for _, tip in pairs(tipMap) do
        tips[#tips + 1] = tip
    end

    table.sort(tips, function(a, b)
        return tostring(a.id or "") < tostring(b.id or "")
    end)

    return tips
end

function addon:GetOrderedInstanceTips(instanceKey)
    local tipMap = self:GetInstanceTips(instanceKey)
    if not tipMap then
        return {}
    end

    local tips = {}
    for _, tip in pairs(tipMap) do
        tips[#tips + 1] = tip
    end

    table.sort(tips, function(a, b)
        return tostring(a.id or "") < tostring(b.id or "")
    end)

    return tips
end

function addon:GetFirstNpcTip(instanceKey, npcID)
    local tips = self:GetOrderedNpcTips(instanceKey, npcID)
    if #tips > 0 then
        return tips[1]
    end
    return nil
end

function addon:GetCurrentExpansionKey()
    local keys = self:GetOrderedInstanceKeys(TDT2Config.browser.expansion)
    if #keys > 0 then
        return TDT2Config.browser.expansion
    end

    for expansionKey in pairs(self.db.expansions or {}) do
        local instanceKeys = self:GetOrderedInstanceKeys(expansionKey)
        if #instanceKeys > 0 then
            TDT2Config.browser.expansion = expansionKey
            return expansionKey
        end
    end
    return nil
end

function addon:GetCurrentInstanceKey()
    local expansionKey = self:GetCurrentExpansionKey()
    local keys = self:GetOrderedInstanceKeys(expansionKey)
    if #keys == 0 then
        return nil
    end

    for _, instanceKey in ipairs(keys) do
        if instanceKey == TDT2Config.browser.instance then
            return instanceKey
        end
    end

    TDT2Config.browser.instance = keys[1]
    return keys[1]
end

function addon:GetCurrentNpcID()
    local instanceKey = self:GetCurrentInstanceKey()
    local npcIDs = self:GetInstanceNpcIDs(instanceKey)
    if #npcIDs == 0 then
        return nil
    end

    for _, npcID in ipairs(npcIDs) do
        if npcID == TDT2Config.browser.npcID then
            return npcID
        end
    end

    TDT2Config.browser.npcID = npcIDs[1]
    return npcIDs[1]
end

function addon:GetCurrentContext()
    local expansionKey = self:GetCurrentExpansionKey()
    local instanceKey = self:GetCurrentInstanceKey()
    local npcID = self:GetCurrentNpcID()

    return {
        expansionKey = expansionKey,
        expansion = expansionKey and self:GetExpansion(expansionKey) or nil,
        instanceKey = instanceKey,
        instance = instanceKey and self:GetInstance(instanceKey) or nil,
        npcID = npcID,
        npc = npcID and self:GetNpc(npcID) or nil,
        instanceTips = instanceKey and self:GetOrderedInstanceTips(instanceKey) or {},
        instanceDetails = instanceKey and (self:GetInstanceDetails(instanceKey) or {}) or {},
        npcTips = (instanceKey and npcID) and self:GetOrderedNpcTips(instanceKey, npcID) or {},
    }
end

function addon:StepInstance(delta)
    local expansionKey = self:GetCurrentExpansionKey()
    local keys = self:GetOrderedInstanceKeys(expansionKey)
    if #keys == 0 then
        return
    end

    local current = self:GetCurrentInstanceKey()
    local index = 1
    for i, key in ipairs(keys) do
        if key == current then
            index = i
            break
        end
    end

    index = index + delta
    if index < 1 then
        index = #keys
    elseif index > #keys then
        index = 1
    end

    TDT2Config.browser.instance = keys[index]
    local npcIDs = self:GetInstanceNpcIDs(keys[index])
    TDT2Config.browser.npcID = npcIDs[1]
end

function addon:StepNpc(delta)
    local instanceKey = self:GetCurrentInstanceKey()
    local npcIDs = self:GetInstanceNpcIDs(instanceKey)
    if #npcIDs == 0 then
        return
    end

    local current = self:GetCurrentNpcID()
    local index = 1
    for i, npcID in ipairs(npcIDs) do
        if npcID == current then
            index = i
            break
        end
    end

    index = index + delta
    if index < 1 then
        index = #npcIDs
    elseif index > #npcIDs then
        index = 1
    end

    TDT2Config.browser.npcID = npcIDs[index]
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
