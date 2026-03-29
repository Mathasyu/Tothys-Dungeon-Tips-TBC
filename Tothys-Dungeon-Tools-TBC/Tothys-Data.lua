--[[
Tothys Dungeon Tools TBC
Normalized data entrypoint

Version: 0.1.0
]]

local _, addon = ...

-- This starts as a tiny static seed so the rewrite can boot before the
-- generated normalized data model is wired in as the main runtime source.
addon.db = {
    expansions = {
        tbc = {
            key = "tbc",
            order = 1,
            name = {
                enUS = "The Burning Crusade",
                deDE = "The Burning Crusade",
            },
            instances = {
                "hellfire_ramparts",
            },
        },
    },
    instances = {
        hellfire_ramparts = {
            key = "hellfire_ramparts",
            expansion = "tbc",
            order = 1,
            type = "Dungeon",
            mapIDs = { 347 },
            name = {
                enUS = "Hellfire Ramparts",
                deDE = "Hoellenfeuerbollwerk",
            },
            npcIDs = { 17306 },
        },
    },
    npcs = {
        ["17306"] = {
            id = 17306,
            name = {
                enUS = "Watchkeeper Gargolmar",
                deDE = "Wachhabender Gargolmar",
            },
            instances = { "hellfire_ramparts" },
            groups = {
                hellfire_ramparts = "boss",
            },
        },
    },
    tips = {
        hellfire_ramparts = {
            ["17306"] = {
                {
                    id = "01",
                    legacy_id = "ramparts_17306_01",
                    type = "Important",
                    weight = 20,
                    text = {
                        enUS = "Focus on killing adds FIRST as they will heal boss!",
                        deDE = "Killt ZUERST die Adds, da sie den Boss heilen.",
                    },
                },
            },
        },
    },
    instanceTips = {},
    instanceDetails = {},
}

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
    local instanceTips = self.db and self.db.tips and self.db.tips[instanceKey]
    if not instanceTips then
        return {}
    end
    return instanceTips[tostring(npcID)] or {}
end
