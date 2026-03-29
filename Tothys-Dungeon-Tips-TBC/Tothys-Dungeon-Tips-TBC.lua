--[[
Tothys Dungeon Tips TBC (former QE Dungeon Tips)
Version: 0.9.3

Recent changes:
 - Split browsing into Dungeon-Browser and NPC-Browser
 - Added minimap access and >>> quick jump into NPC-Browser
 - Expanded multilingual tooling and review exports
 - Prepared normalized content-model export for the upcoming rewrite
Developed by: Voulk
Forked by: Mathasyu 2026-03-09
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
	
	
Special Thanks:
 - CoV (testing & support)
 - Everyone who helped test the addon and support the site
	

--Shorthand--

Defensives {Defensive: SpellName}
Interrupts {Interrupt: SpellName (SpellEffect)}, {Stun Interrupt: SpellName (SpellEffect)}
Dispels {Dispel: SpellName (SpellEffect)}, {Purge: SpellName (SpellEffect)}
Positioning: {Spread: When}, {Stack: When}, {Dodge: SpellName (Area / description)}
Other: {Frontal Cleave (opt: tank dodgeable)}, {Healing CD: SpellName}, {ClassName: Specific Cheese}, {Priority DPS target}

--Examples--
Interrupt: Stone Bolt (heavy ST nuke)
Defensive: Arcing / Expel Light overlap
Healing CD: Slicing Maelstrom (every 25s)
Dispel: Brittle Bones (inc dmg taken)
Frontal Cleave: Razor Shards (tank dodgeable)
Druid: Shapeshift the Arcane Lockdown debuff

]]--

local _, addon = ...;
TDTUserData = TDTUserData or {}

local addFrameLine
local buildFrameTextFromTips



-- Color code information for the different types of tips:
-- Important:	Green
-- Interrupt:	Orange
-- Healer Note: Light Blue
-- Blank:		Default Blizzard color
local tipsColors = {
	["Legion"] = {0.8, 0.8, 0.8},
	["Important"] = {1,0.59,0.14},
	["Defensives"] = {1,0.57,0.12},
	["Interrupts"] = {0.37,0.92,1},
	["Dodge"] = {0.54,0.81,0.94},
	["PriorityTargets"] = {1, 1, 0},
	["Fluff"] = {1, 1, 1},
	["Advanced"] = {0.75, 0.55, 0.35},
	["Personal"] = {1, 0.84, 0},
	
	["HEALER"] = {0.2, 0.98, 0.25},
	["TANK"] = {0.8, 0.6, 0},	
	["DAMAGE"] = {1, 0.72, 0.68},
	
	
	["DRUID"] = {1, 0.49, 0.04},
	["HUNTER"] = {0.67, 0.83, 0.45},
	["MAGE"] = {0.41, 0.8, 0.94},
	["MONK"] = {0, 1, 0.59},
	["PALADIN"] = {0.96, 0.55, 0.73},
	["PRIEST"] = {1, 1, 1},
	["ROGUE"] = {1, 0.96, 0.41},
	["SHAMAN"] = {0, 0.44, 0.87},
	["WARRIOR"] = {0.78, 0.61, 0.43},
	["WARLOCK"] = {0.58, 0.51, 0.79}

}

local classList =  {
	DRUID = true,
	HUNTER = true,
	MAGE = true,
	MONK = true,
	PALADIN = true,
	PRIEST = true,
	ROGUE = true,
	SHAMAN = true,
	WARRIOR = true,
	WARLOCK = true
}

local roleTipList = {
	HEALER = true,
	TANK = true,
	DAMAGE = true,
}

local iconList = {
	PriorityTargets = "ability_hunter_snipershot",
	Interrupts = "ability_kick",
	Defensives = "inv_shield_05",
	Important = "ability_dualwield",
	Legion = "ability_dualwield",
	Dodge = "ability_dualwield",
	Personal = "inv_misc_note_01",
	
	DRUID = "classicon_druid",		
	HUNTER = "classicon_hunter",
	MAGE = "classicon_mage",
	MONK = "classicon_monk",
	PALADIN = "classicon_paladin",
	PRIEST = "classicon_priest",
	ROGUE = "classicon_rogue",
	SHAMAN = "classicon_shaman",
	WARRIOR = "classicon_warrior",
	WARLOCK = "classicon_warlock",
	
	HEALER = "spell_nature_healingtouch",
	TANK = "inv_shield_06",
	DAMAGE = "inv_sword_01"

}

addon.acceptedDungeons = {
	-- Dungeon Content --
	[246] = true, -- Shattered Halls
	[256] = true, -- Auch
	[257] = true, -- Auch
	[258] = true, -- Seth Halls
	[259] = true, -- Seth Halls
	[260] = true, -- Shadow Labs
	[261] = true, -- Blood Furnace
	[262] = true, -- Underbog
	[263] = true, -- Steamvault I
	[264] = true, -- Steamvault II
	[265] = true, -- Slave Pens
	[266] = true, -- Botanica
	[267] = true, -- Mechanar I
	[268] = true, -- Mechanar II
	[269] = true, -- Arcatraz
	[270] = true, -- Arcatraz
	[271] = true, -- Arcatraz
	[272] = true, -- Mana-Tombs
	[173] = true, -- Black Morass
	[733] = true, -- Black Morass
	[274] = true, -- Old Hillsbrad
	
	[347] = true, -- Hellfire Ramparts
	
	-- Raid Content --
	[350] = true, -- Karazhan (Servants Quarters)
	[351] = true, -- Karazhan
	[352] = true, -- Karazhan (Ballroom)
	[353] = true, -- Karazhan (Guests Chambers)
	[354] = true, -- Opera Hall Balcony
	[355] = true, -- Master's Terrace
	[356] = true, -- Lower Broken Stair
	[357] = true, -- Upper Broken Stair
	[358] = true, -- The Menagerie
	[359] = true, -- The Guardians Library
	[360] = true, -- The Repository
	[361] = true, -- Upper Library
	[362] = true, -- The Celestial Watch
	[363] = true, -- Gamesman's Hall
	[364] = true, -- Medivh's Quarters
	[365] = true, -- The Power Station
	[366] = true, -- Netherspace
	-- Coming Soon --

	
	[1] = true -- Bookstop
	
}

local function getSelectedLocale()
	if not TDTConfig then
		return "enUS"
	end

	local preferredLocale = TDTConfig.LocaleChoice or "Auto"
	if preferredLocale == "Auto" then
		preferredLocale = GetLocale() or "enUS"
	end

	if preferredLocale ~= "deDE" then
		preferredLocale = "enUS"
	end

	return preferredLocale
end

local function getLocalizedTextValue(value)
	if type(value) ~= "table" then
		return value
	end

	local selectedLocale = getSelectedLocale()
	return value[selectedLocale] or value.enUS or value.deDE or ""
end

local function getLocalizedInstanceInfoFromContent(instanceKey)
	local instanceData = addon.instanceContent and addon.instanceContent[instanceKey]
	if not instanceData or type(instanceData.info) ~= "table" then
		return nil
	end

	local entries = {}
	for _, entry in ipairs(instanceData.info) do
		entries[#entries + 1] = {
			entry.id,
			entry.type,
			getLocalizedTextValue(entry.text),
			tonumber(entry.weight) or 0,
		}
	end

	return entries
end

local function getLocalizedInstanceDetailsFromContent(instanceKey)
	local instanceData = addon.instanceContent and addon.instanceContent[instanceKey]
	if not instanceData or type(instanceData.details) ~= "table" then
		return nil
	end

	local details = {}
	for _, key in ipairs({"travel", "attunement", "notes", "lore"}) do
		details[key] = getLocalizedTextValue(instanceData.details[key]) or ""
	end

	return details
end

function addon:getInstanceCatalogEntry(instanceKey)
	if not instanceKey then
		return nil
	end

	for _, expansion in pairs(addon.contentCatalog or {}) do
		if expansion.instances and expansion.instances[instanceKey] then
			return expansion.instances[instanceKey]
		end
	end

	return nil
end

function addon:getLocalizedInstanceName(instanceKey)
	local instanceData = addon:getInstanceCatalogEntry(instanceKey)
	if not instanceData or not instanceData.name then
		return instanceKey
	end

	local selectedLocale = getSelectedLocale()
	return instanceData.name[selectedLocale] or instanceData.name.enUS or instanceKey
end

function addon:getExpansionKeyForInstance(instanceKey)
	if not addon.contentCatalog or not instanceKey then
		return nil
	end

	for expansionKey, expansionData in pairs(addon.contentCatalog) do
		if expansionData.instances and expansionData.instances[instanceKey] then
			return expansionKey
		end
	end

	return nil
end

function addon:getShippedInstanceTipEntries(instanceKey)
	local rawTips = getLocalizedInstanceInfoFromContent(instanceKey)
	if rawTips then
		return rawTips
	end

	local localeMaps = {
		enUS = instanceInfo_enUS,
		deDE = instanceInfo_deDE,
	}
	local selectedLocale = getSelectedLocale()
	local localizedMap = localeMaps[selectedLocale] or instanceInfo_enUS

	if localizedMap and localizedMap[instanceKey] then
		return localizedMap[instanceKey]
	end

	if instanceInfo_enUS then
		return instanceInfo_enUS[instanceKey]
	end

	return nil
end

function addon:getShippedInstanceDetails(instanceKey)
	local rawDetails = getLocalizedInstanceDetailsFromContent(instanceKey)
	if rawDetails then
		return rawDetails
	end

	local localeMaps = {
		enUS = instanceDetails_enUS,
		deDE = instanceDetails_deDE,
	}
	local selectedLocale = getSelectedLocale()
	local localizedMap = localeMaps[selectedLocale] or instanceDetails_enUS

	if localizedMap and localizedMap[instanceKey] then
		return localizedMap[instanceKey]
	end

	if instanceDetails_enUS then
		return instanceDetails_enUS[instanceKey]
	end

	return nil
end

local function shouldShowNpcIDs()
    return not TDTConfig or TDTConfig.ShowNpcIDs ~= false
end

local function copyTableDeep(source)
    if type(source) ~= "table" then
        return source
    end

    local result = {}
    for key, value in pairs(source) do
        result[key] = copyTableDeep(value)
    end
    return result
end

local function ensureUserDataRoot()
    TDTUserData = TDTUserData or {}
    TDTUserData.locales = TDTUserData.locales or {}

    -- Migrate pre-locale user data into the currently active addon locale once.
    if (TDTUserData.npcs or TDTUserData.instances) and not TDTUserData._localeMigrationDone then
        local selectedLocale = getSelectedLocale()
        TDTUserData.locales[selectedLocale] = TDTUserData.locales[selectedLocale] or {
            npcs = {},
            instances = {},
        }

        local localeBucket = TDTUserData.locales[selectedLocale]
        if TDTUserData.npcs then
            localeBucket.npcs = copyTableDeep(TDTUserData.npcs)
        end
        if TDTUserData.instances then
            localeBucket.instances = copyTableDeep(TDTUserData.instances)
        end

        TDTUserData.npcs = nil
        TDTUserData.instances = nil
        TDTUserData._localeMigrationDone = true
    end

    return TDTUserData
end

local function getCurrentUserLocaleBucket(createIfMissing)
    ensureUserDataRoot()

    local selectedLocale = getSelectedLocale()
    local localeBucket = TDTUserData.locales[selectedLocale]

    if not localeBucket and createIfMissing then
        localeBucket = {
            npcs = {},
            instances = {},
        }
        TDTUserData.locales[selectedLocale] = localeBucket
    end

    if localeBucket then
        localeBucket.npcs = localeBucket.npcs or {}
        localeBucket.instances = localeBucket.instances or {}
    end

    return localeBucket
end

local function normalizeTipsForDisplay(rawTips)
	if not rawTips then
		return nil
	end

	local normalizedTips = {}
	local legacyTipCount = #rawTips

	for index, tip in ipairs(rawTips) do
		local tipID
		local tipType
		local tipText
		local tipWeight

		if #tip >= 4 and type(tip[1]) == "string" and type(tip[2]) == "string" and type(tip[3]) == "string" then
			tipID = tip[1]
			tipType = tip[2]
			tipText = tip[3]
			tipWeight = tonumber(tip[4]) or 0
		else
			tipID = nil
			tipType = tip[1]
			tipText = tip[2]
			tipWeight = (legacyTipCount - index + 1) * 10
		end

		normalizedTips[#normalizedTips + 1] = {
			id = tipID,
			type = tipType,
			text = tipText,
			weight = tipWeight,
			order = index,
		}
	end

	table.sort(normalizedTips, function(left, right)
		if left.weight == right.weight then
			return left.order < right.order
		end

		return left.weight > right.weight
	end)

	local displayTips = {}
	for _, tip in ipairs(normalizedTips) do
		displayTips[#displayTips + 1] = {tip.type, tip.text}
	end

	return displayTips
end

local function normalizeTipsToEntries(rawTips)
	if not rawTips then
		return {}
	end

	local normalizedTips = {}
	local legacyTipCount = #rawTips

	for index, tip in ipairs(rawTips) do
		local tipID
		local tipType
		local tipText
		local tipWeight

		if #tip >= 4 and type(tip[1]) == "string" and type(tip[2]) == "string" and type(tip[3]) == "string" then
			tipID = tip[1]
			tipType = tip[2]
			tipText = tip[3]
			tipWeight = tonumber(tip[4]) or 0
		else
			tipID = nil
			tipType = tip[1]
			tipText = tip[2]
			tipWeight = (legacyTipCount - index + 1) * 10
		end

		normalizedTips[#normalizedTips + 1] = {
			id = tipID,
			type = tipType,
			text = tipText,
			weight = tipWeight,
			order = index,
		}
	end

	return normalizedTips
end

local function cloneTipEntry(entry)
	return {
		id = entry.id,
		type = entry.type,
		text = entry.text,
		weight = entry.weight,
		order = entry.order,
	}
end

local function sortTipEntries(entries)
	table.sort(entries, function(left, right)
		if left.weight == right.weight then
			return left.order < right.order
		end

		return left.weight > right.weight
	end)
end

local function getUserContainer(scope, key)
	local localeBucket = getCurrentUserLocaleBucket(false)
	if not localeBucket then
		return nil
	end

	local bucket = localeBucket[scope]
	if not bucket then
		return nil
	end

	return bucket[key]
end

local function getLocalizedRawNpcTips(id)
	local localeMaps = {
		enUS = tipsMap_enUS,
		deDE = tipsMap_deDE,
	}
	local selectedLocale = getSelectedLocale()
	local localizedMap = localeMaps[selectedLocale] or tipsMap_enUS

	if localizedMap and localizedMap[id] then
		return localizedMap[id]
	end

	if tipsMap_enUS then
		return tipsMap_enUS[id]
	end
end

-- Keep shipped NPC lookup centralized so UI code does not need to rebuild locale fallback rules.
function addon:getShippedNpcTipEntries(npcID)
	return getLocalizedRawNpcTips(npcID)
end

function addon:getCatalogNpcName(expansionKey, instanceKey, npcID)
	local expansionData = addon.contentCatalog and addon.contentCatalog[expansionKey]
	local instanceData = expansionData and expansionData.instances and expansionData.instances[instanceKey]
	local npcNames = instanceData and instanceData.npcNames
	local localizedName = npcNames and npcNames[npcID]

	if type(localizedName) == "table" then
		local selectedLocale = getSelectedLocale()
		return localizedName[selectedLocale] or localizedName.enUS
	end

	return localizedName
end

local function ensureUserContainer(scope, key)
	local localeBucket = getCurrentUserLocaleBucket(true)
	localeBucket[scope] = localeBucket[scope] or {}
	localeBucket[scope][key] = localeBucket[scope][key] or {}

	local container = localeBucket[scope][key]
	container.overrides = container.overrides or {}
	container.disabled = container.disabled or {}
	container.additions = container.additions or {}

	return container
end

local function createUserTipID(prefix, key)
	local timestamp = date and date("%Y%m%d%H%M%S") or tostring(time and time() or 0)
	return string.format("%s_%s_%s", prefix, tostring(key), tostring(timestamp))
end

local function mergeTipsWithUserData(rawTips, userContainer)
	local entries = normalizeTipsToEntries(rawTips)
	if not userContainer then
		sortTipEntries(entries)
		return entries
	end

	local mergedEntries = {}
	local disabled = userContainer.disabled or {}
	local overrides = userContainer.overrides or {}
	local additions = userContainer.additions or {}
	local nextOrder = #entries

	for _, entry in ipairs(entries) do
		if not (entry.id and disabled[entry.id]) then
			local mergedEntry = cloneTipEntry(entry)
			local override = entry.id and overrides[entry.id] or nil
			if override then
				if override.type then
					mergedEntry.type = override.type
				end
				if override.text then
					mergedEntry.text = override.text
				end
				if override.weight ~= nil then
					mergedEntry.weight = tonumber(override.weight) or mergedEntry.weight
				end
			end
			mergedEntries[#mergedEntries + 1] = mergedEntry
		end
	end

	for additionID, addition in pairs(additions) do
		if type(addition) == "table" and addition.type and addition.text and addition.hidden ~= true then
			nextOrder = nextOrder + 1
			mergedEntries[#mergedEntries + 1] = {
				id = addition.id or additionID,
				type = addition.type,
				text = addition.text,
				weight = tonumber(addition.weight) or 0,
				order = nextOrder,
			}
		end
	end

	sortTipEntries(mergedEntries)
	return mergedEntries
end

local function mergeInstanceDetailsWithUserData(rawDetails, userContainer)
    local mergedDetails = {}

    if type(rawDetails) == "table" then
        for key, value in pairs(rawDetails) do
            mergedDetails[key] = value
        end
    end

    local overrides = userContainer and userContainer.detailsOverrides or nil
    if overrides then
        for _, key in ipairs({"travel", "attunement", "notes", "lore"}) do
            if overrides[key] ~= nil then
                mergedDetails[key] = overrides[key]
            end
        end
    end

    return mergedDetails
end

local function entriesToDisplayTips(entries)
	if not entries or #entries == 0 then
		return nil
	end

	local displayTips = {}
	for _, tip in ipairs(entries) do
		displayTips[#displayTips + 1] = {tip.type, tip.text}
	end

	return displayTips
end

function addon:getMergedNpcTipEntries(id)
	local rawTips = addon:getShippedNpcTipEntries(id)

	if not rawTips and not getUserContainer("npcs", id) then
		return nil
	end

	return mergeTipsWithUserData(rawTips, getUserContainer("npcs", id))
end

function addon:getMergedInstanceTipEntries(instanceKey)
	local rawTips = addon:getShippedInstanceTipEntries(instanceKey)

	if not rawTips and not getUserContainer("instances", instanceKey) then
		return nil
	end

	return mergeTipsWithUserData(rawTips, getUserContainer("instances", instanceKey))
end

function addon:getMergedInstanceDetails(instanceKey)
	local rawDetails = addon:getShippedInstanceDetails(instanceKey)

	local container = getUserContainer("instances", instanceKey)
	if not rawDetails and not container then
		return nil
	end

	return mergeInstanceDetailsWithUserData(rawDetails, container)
end

function addon:addNpcUserTip(npcID, tipType, text, weight, tipID)
	if not npcID or not tipType or not text or text == "" then
		return nil
	end

	local container = ensureUserContainer("npcs", npcID)
	local additionID = tipID or createUserTipID("user_npc", npcID)
	container.additions[additionID] = {
		id = additionID,
		type = tipType,
		text = text,
		weight = tonumber(weight) or 5,
		hidden = false,
	}

	return additionID
end

function addon:addInstanceUserTip(instanceKey, tipType, text, weight, tipID)
	if not instanceKey or not tipType or not text or text == "" then
		return nil
	end

	local container = ensureUserContainer("instances", instanceKey)
	local additionID = tipID or createUserTipID("user_instance", instanceKey)
	container.additions[additionID] = {
		id = additionID,
		type = tipType,
		text = text,
		weight = tonumber(weight) or 5,
		hidden = false,
	}

	return additionID
end

function addon:getInstanceUserAdditions(instanceKey)
	local container = getUserContainer("instances", instanceKey)
	local additions = {}

	if not container or not container.additions then
		return additions
	end

	for additionID, addition in pairs(container.additions) do
		if type(addition) == "table" then
			additions[#additions + 1] = {
				id = addition.id or additionID,
				type = addition.type,
				text = addition.text,
				weight = tonumber(addition.weight) or 0,
				hidden = addition.hidden == true,
			}
		end
	end

	table.sort(additions, function(left, right)
		if left.weight == right.weight then
			return tostring(left.id) < tostring(right.id)
		end

		return left.weight > right.weight
	end)

	return additions
end

function addon:getInstanceBaseTipsForEditor(instanceKey)
	local rawTips = addon:getShippedInstanceTipEntries(instanceKey)

	local entries = normalizeTipsToEntries(rawTips)
	local container = getUserContainer("instances", instanceKey)
	local disabled = container and container.disabled or {}
	local overrides = container and container.overrides or {}

	for _, entry in ipairs(entries) do
		local override = entry.id and overrides[entry.id] or nil
		entry.hidden = entry.id and disabled[entry.id] == true or false
		entry.overridden = override ~= nil
		entry.canModify = entry.id ~= nil
		if override then
			entry.overrideText = override.text
			entry.overrideWeight = override.weight
		end
	end

	return entries
end

function addon:getInstanceDetailsForEditor(instanceKey)
	local rawDetails = addon:getShippedInstanceDetails(instanceKey)

	local container = getUserContainer("instances", instanceKey)
	local overrides = container and container.detailsOverrides or {}
	local result = {}

	for _, key in ipairs({"travel", "attunement", "notes", "lore"}) do
		local baseValue = rawDetails and rawDetails[key] or ""
		local overrideValue = overrides and overrides[key]
		result[key] = {
			base = baseValue or "",
			current = overrideValue ~= nil and overrideValue or (baseValue or ""),
			overridden = overrideValue ~= nil,
		}
	end

	return result
end

function addon:resetNpcUserData(npcID)
	local localeBucket = getCurrentUserLocaleBucket(false)
	if not localeBucket or not localeBucket.npcs then
		return
	end

	localeBucket.npcs[npcID] = nil
end

function addon:resetInstanceUserData(instanceKey)
	local localeBucket = getCurrentUserLocaleBucket(false)
	if not localeBucket or not localeBucket.instances then
		return
	end

	localeBucket.instances[instanceKey] = nil
end

function addon:resetAllUserData()
	TDTUserData = {
		locales = {},
		_localeMigrationDone = true,
	}
end

function addon:getNpcUserAdditions(npcID)
	local container = getUserContainer("npcs", npcID)
	local additions = {}

	if not container or not container.additions then
		return additions
	end

	for additionID, addition in pairs(container.additions) do
		if type(addition) == "table" then
			additions[#additions + 1] = {
				id = addition.id or additionID,
				type = addition.type,
				text = addition.text,
				weight = tonumber(addition.weight) or 0,
				hidden = addition.hidden == true,
			}
		end
	end

	table.sort(additions, function(left, right)
		if left.weight == right.weight then
			return tostring(left.id) < tostring(right.id)
		end

		return left.weight > right.weight
	end)

	return additions
end

function addon:getNpcBaseTipsForEditor(npcID)
	local rawTips = addon:getShippedNpcTipEntries(npcID)
	local entries = normalizeTipsToEntries(rawTips)
	local container = getUserContainer("npcs", npcID)
	local disabled = container and container.disabled or {}
	local overrides = container and container.overrides or {}

	for _, entry in ipairs(entries) do
		local override = entry.id and overrides[entry.id] or nil
		entry.hidden = entry.id and disabled[entry.id] == true or false
		entry.overridden = override ~= nil
		entry.canModify = entry.id ~= nil
		if override then
			entry.overrideText = override.text
			entry.overrideWeight = override.weight
		end
	end

	return entries
end

function addon:setNpcUserTipHidden(npcID, tipID, hidden)
	local container = getUserContainer("npcs", npcID)
	if not container or not container.additions or not container.additions[tipID] then
		return false
	end

	container.additions[tipID].hidden = hidden == true
	return true
end

function addon:setNpcBaseTipHidden(npcID, tipID, hidden)
	if not tipID then
		return false
	end

	local container = ensureUserContainer("npcs", npcID)
	if hidden then
		container.disabled[tipID] = true
	else
		container.disabled[tipID] = nil
	end

	return true
end

function addon:resetNpcBaseTip(npcID, tipID)
	if not tipID then
		return false
	end

	local container = getUserContainer("npcs", npcID)
	if not container then
		return false
	end

	if container.disabled then
		container.disabled[tipID] = nil
	end
	if container.overrides then
		container.overrides[tipID] = nil
	end

	return true
end

function addon:updateNpcBaseTipOverride(npcID, tipID, text, weight)
	if not npcID or not tipID then
		return false
	end

	local rawTips = addon:getShippedNpcTipEntries(npcID)
	local entries = normalizeTipsToEntries(rawTips)
	local baseEntry
	for _, entry in ipairs(entries) do
		if entry.id == tipID then
			baseEntry = entry
			break
		end
	end

	if not baseEntry then
		return false
	end

	local container = ensureUserContainer("npcs", npcID)
	container.overrides[tipID] = container.overrides[tipID] or {}

	if text and text ~= "" then
		container.overrides[tipID].text = text
	else
		container.overrides[tipID].text = baseEntry.text
	end

	if weight ~= nil then
		container.overrides[tipID].weight = tonumber(weight) or baseEntry.weight or 0
	end

	return true
end

function addon:deleteNpcUserTip(npcID, tipID)
	local container = getUserContainer("npcs", npcID)
	if not container or not container.additions or not container.additions[tipID] then
		return false
	end

	container.additions[tipID] = nil
	return true
end

function addon:updateNpcUserTip(npcID, tipID, tipType, text, weight)
	local container = getUserContainer("npcs", npcID)
	if not container or not container.additions or not container.additions[tipID] then
		return false
	end

	local tip = container.additions[tipID]
	if tipType and tipType ~= "" then
		tip.type = tipType
	end
	if text and text ~= "" then
		tip.text = text
	end
	if weight ~= nil then
		tip.weight = tonumber(weight) or tip.weight or 0
	end

	return true
end

function addon:setInstanceUserTipHidden(instanceKey, tipID, hidden)
	local container = getUserContainer("instances", instanceKey)
	if not container or not container.additions or not container.additions[tipID] then
		return false
	end

	container.additions[tipID].hidden = hidden == true
	return true
end

function addon:deleteInstanceUserTip(instanceKey, tipID)
	local container = getUserContainer("instances", instanceKey)
	if not container or not container.additions or not container.additions[tipID] then
		return false
	end

	container.additions[tipID] = nil
	return true
end

function addon:updateInstanceUserTip(instanceKey, tipID, tipType, text, weight)
	local container = getUserContainer("instances", instanceKey)
	if not container or not container.additions or not container.additions[tipID] then
		return false
	end

	local tip = container.additions[tipID]
	if tipType and tipType ~= "" then
		tip.type = tipType
	end
	if text and text ~= "" then
		tip.text = text
	end
	if weight ~= nil then
		tip.weight = tonumber(weight) or tip.weight or 0
	end

	return true
end

function addon:setInstanceBaseTipHidden(instanceKey, tipID, hidden)
	if not tipID then
		return false
	end

	local container = ensureUserContainer("instances", instanceKey)
	if hidden then
		container.disabled[tipID] = true
	else
		container.disabled[tipID] = nil
	end

	return true
end

function addon:resetInstanceBaseTip(instanceKey, tipID)
	if not tipID then
		return false
	end

	local container = getUserContainer("instances", instanceKey)
	if not container then
		return false
	end

	if container.disabled then
		container.disabled[tipID] = nil
	end
	if container.overrides then
		container.overrides[tipID] = nil
	end

	return true
end

function addon:updateInstanceBaseTipOverride(instanceKey, tipID, text, weight)
	if not instanceKey or not tipID then
		return false
	end

	local rawTips = addon:getShippedInstanceTipEntries(instanceKey)

	local entries = normalizeTipsToEntries(rawTips)
	local baseEntry
	for _, entry in ipairs(entries) do
		if entry.id == tipID then
			baseEntry = entry
			break
		end
	end

	if not baseEntry then
		return false
	end

	local container = ensureUserContainer("instances", instanceKey)
	container.overrides[tipID] = container.overrides[tipID] or {}

	if text and text ~= "" then
		container.overrides[tipID].text = text
	else
		container.overrides[tipID].text = baseEntry.text
	end

	if weight ~= nil then
		container.overrides[tipID].weight = tonumber(weight) or baseEntry.weight or 0
	end

	return true
end

function addon:updateInstanceDetailsOverrides(instanceKey, details)
	if not instanceKey or type(details) ~= "table" then
		return false
	end

	local container = ensureUserContainer("instances", instanceKey)
	container.detailsOverrides = container.detailsOverrides or {}

	for _, key in ipairs({"travel", "attunement", "notes", "lore"}) do
		if details[key] ~= nil then
			container.detailsOverrides[key] = details[key]
		end
	end

	return true
end

function addon:resetInstanceDetailsOverrides(instanceKey, detailKey)
	local container = getUserContainer("instances", instanceKey)
	if not container then
		return false
	end

	if detailKey then
		if not container.detailsOverrides then
			return false
		end
		container.detailsOverrides[detailKey] = nil
		if not next(container.detailsOverrides) then
			container.detailsOverrides = nil
		end
		return true
	end

	container.detailsOverrides = nil
	return true
end

function addon:getCurrentInstanceKey()
	local mapID = C_Map.GetBestMapForUnit("player")
	if mapID and addon.instanceKeyByMapID then
		return addon.instanceKeyByMapID[mapID]
	end
end

function addon:getInstanceInfo()
	local instanceKey = addon:getCurrentInstanceKey()
	if not instanceKey then
		return nil, nil
	end

	return entriesToDisplayTips(addon:getMergedInstanceTipEntries(instanceKey)), instanceKey
end

function addon:showCurrentInstanceInfo()
	if not TDT_MobName or not TDT_TipText then
		return
	end

	if not addon:checkInstance() then
		return
	end

	local instanceTips, instanceKey = addon:getInstanceInfo()
	if not instanceTips or not instanceKey then
		return
	end

	local _, class = UnitClass("player")
	local instanceName = addon:getLocalizedInstanceName(instanceKey)

	addon:clearFrameTipLines()
	TDT_MobName:SetText(string.format("%s (Instance)", instanceName))
	addon.currentFrameSelection = {
		expansionKey = addon:getExpansionKeyForInstance(instanceKey),
		instanceKey = instanceKey,
		npcID = nil,
		npcName = nil,
		instanceName = instanceName,
	}
	if addon.updateFrameNpcBrowserButton then addon:updateFrameNpcBrowserButton() end
	addFrameLine(TDT_TipPanel, instanceTips, "INSTANCE INFO:", class)
end

function addon:showBrowserSelectionInFrame(instanceName, npcName, npcID, instanceTips, npcTips, instanceKey, expansionKey)
	if not TDT_MobName or not TDT_TipText or not TDT_TipPanel then
		return
	end

	if not TDTConfig or TDTConfig.ShowFrame ~= "Show in separate frame" then
		return
	end

	if TDT_ParentFrame then
		TDT_ParentFrame:Show()
	end

	local _, class = UnitClass("player")

	local displayTitle = npcName or instanceName or "Preview"
	if npcID and shouldShowNpcIDs() then
		displayTitle = string.format("%s (NPC ID: %d)", displayTitle, npcID)
	elseif instanceName then
		displayTitle = string.format("%s (Instance)", instanceName)
	end

	addon:clearFrameTipLines()
	TDT_MobName:SetText(displayTitle)
	addon.currentFrameSelection = {
		expansionKey = expansionKey or addon:getExpansionKeyForInstance(instanceKey),
		instanceKey = instanceKey,
		npcID = npcID,
		npcName = npcName,
		instanceName = instanceName,
	}
	if addon.updateFrameNpcBrowserButton then addon:updateFrameNpcBrowserButton() end

	if instanceTips and #instanceTips > 0 then
		addFrameLine(TDT_TipPanel, instanceTips, "INSTANCE INFO:", class, false)
	end

	if npcTips and #npcTips > 0 then
		addFrameLine(TDT_TipPanel, npcTips, shouldShowNpcIDs() and "NPC ID:" or "NPC:", class, false)
	end
end

function addon:getTipsForNpc(id)
	return entriesToDisplayTips(addon:getMergedNpcTipEntries(id))
end
local function RGBToHex(r, g, b)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	return string.format("%02x%02x%02x", r*255, g*255, b*255)
end

local function insertTipIntoActiveChat(text)
	if not text or text == "" then
		return false
	end

	local editBox = ChatEdit_GetActiveWindow and ChatEdit_GetActiveWindow() or nil
	if not editBox and ChatEdit_GetLastActiveWindow then
		editBox = ChatEdit_GetLastActiveWindow()
	end
	if not editBox and LAST_ACTIVE_CHAT_EDIT_BOX then
		editBox = LAST_ACTIVE_CHAT_EDIT_BOX
	end
	if not editBox then
		return false
	end

	if editBox.Show then
		editBox:Show()
	end
	if editBox.SetFocus then
		editBox:SetFocus()
	end

	if editBox.Insert then
		editBox:Insert(text)
		return true
	end

	if editBox.GetText and editBox.SetText then
		local currentText = editBox:GetText() or ""
		if currentText ~= "" and not currentText:match("%s$") then
			currentText = currentText .. " "
		end
		editBox:SetText(currentText .. text)
		if editBox.HighlightText then
			editBox:HighlightText(0, 0)
		end
		if editBox.SetCursorPosition then
			editBox:SetCursorPosition(string.len(editBox:GetText() or ""))
		end
		return true
	end

	if ChatFrame_OpenChat then
		ChatFrame_OpenChat(text)
		return true
	end

	return false
end

function addon:clearFrameTipLines()
	addon.frameTipLineButtons = addon.frameTipLineButtons or {}
	for _, row in ipairs(addon.frameTipLineButtons) do
		row:Hide()
	end
	addon.frameTipLineCount = 0
	addon.frameTipContentHeight = 0
	if TDT_TipText then
		TDT_TipText:SetText("")
		TDT_TipText:Hide()
	end
	if addon.refreshTipScroll then addon:refreshTipScroll() end
end

function addon:appendFrameTipLine(tipType, text)
	if not TDT_TipLineContainer or not text or text == "" then
		return
	end

	addon.frameTipLineButtons = addon.frameTipLineButtons or {}
	addon.frameTipLineCount = (addon.frameTipLineCount or 0) + 1
	local index = addon.frameTipLineCount
	local row = addon.frameTipLineButtons[index]

	if not row then
		row = CreateFrame("Frame", nil, TDT_TipLineContainer)
		row:SetFrameStrata("DIALOG")
		row:SetFrameLevel(TDT_TipLineContainer:GetFrameLevel() + 5)
		row.iconButton = CreateFrame("Button", nil, row)
		row.iconButton:SetSize(16, 16)
		row.iconButton:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 1)
		row.iconButton:EnableMouse(true)
		row.iconButton:RegisterForClicks("LeftButtonUp")
		row.iconButton:SetFrameStrata("DIALOG")
		row.iconButton:SetFrameLevel(row:GetFrameLevel() + 10)
		row.iconButton:SetHitRectInsets(0, 0, 0, 0)
		row.iconButton:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
		row.iconButton.icon = row.iconButton:CreateTexture(nil, "ARTWORK")
		row.iconButton.icon:SetAllPoints()
		row.text = row:CreateFontString(nil, "OVERLAY")
		row.text:SetFontObject(GameFontWhite)
		row.text:SetPoint("TOPLEFT", row.iconButton, "TOPRIGHT", 6, 0)
		row.text:SetPoint("TOPRIGHT", row, "TOPRIGHT", -2, 0)
		row.text:SetJustifyH("LEFT")
		row.text:SetJustifyV("TOP")
		row.text:SetWordWrap(true)
		row.iconButton:SetScript("OnClick", function(self)
			insertTipIntoActiveChat(self:GetParent().rawText)
		end)
		addon.frameTipLineButtons[index] = row
	end

	row:ClearAllPoints()
	if index == 1 then
		row:SetPoint("TOPLEFT", TDT_TipLineContainer, "TOPLEFT", 0, 0)
		row:SetPoint("TOPRIGHT", TDT_TipLineContainer, "TOPRIGHT", -2, 0)
	else
		row:SetPoint("TOPLEFT", addon.frameTipLineButtons[index - 1], "BOTTOMLEFT", 0, -4)
		row:SetPoint("TOPRIGHT", addon.frameTipLineButtons[index - 1], "BOTTOMRIGHT", 0, -4)
	end
	local color = tipsColors[tipType]
	local lineHex = color and RGBToHex(color[1], color[2], color[3]) or nil
	local iconTexture = iconList[tipType] and ("Interface\\Icons\\" .. iconList[tipType]) or "Interface\\Buttons\\UI-GuildButton-PublicNote-Up"
	row.iconButton.icon:SetTexture(iconTexture)
	if lineHex then
		row.text:SetText(string.format("|cff%s%s|r", lineHex, text))
	else
		row.text:SetText(text)
	end
	row.rawText = text
	row:Show()

	local rowHeight = math.max(row.text:GetStringHeight(), 16)
	row:SetHeight(rowHeight)
	addon.frameTipContentHeight = (addon.frameTipContentHeight or 0) + rowHeight + (index > 1 and 4 or 0)
	if addon.refreshTipScroll then addon:refreshTipScroll() end
end

function addon:refreshFrameTipLineLayout()
	if not addon.frameTipLineButtons then
		return
	end

	local previousRow
	addon.frameTipContentHeight = 0

	for _, row in ipairs(addon.frameTipLineButtons) do
		if row:IsShown() then
			row:ClearAllPoints()
			if not previousRow then
				row:SetPoint("TOPLEFT", TDT_TipLineContainer, "TOPLEFT", 0, 0)
				row:SetPoint("TOPRIGHT", TDT_TipLineContainer, "TOPRIGHT", -2, 0)
			else
				row:SetPoint("TOPLEFT", previousRow, "BOTTOMLEFT", 0, -4)
				row:SetPoint("TOPRIGHT", previousRow, "BOTTOMRIGHT", 0, -4)
			end

			local rowHeight = math.max(row.text:GetStringHeight(), 16)
			row:SetHeight(rowHeight)
			addon.frameTipContentHeight = addon.frameTipContentHeight + rowHeight + (previousRow and 4 or 0)
			previousRow = row
		end
	end

	if addon.refreshTipScroll then addon:refreshTipScroll() end
end

local function getPlayerRoleTipKey()
	local role = UnitGroupRolesAssigned and UnitGroupRolesAssigned("player") or "NONE"

	if role == "HEALER" or role == "TANK" or role == "DAMAGER" then
		if role == "DAMAGER" then
			return "DAMAGE"
		end

		return role
	end

	-- Fallback for Classic/TBC cases where role assignment may be unavailable.
	if UnitPowerType and UnitPowerType("player") == 0 then
		local _, class = UnitClass("player")
		if class == "PRIEST" or class == "SHAMAN" or class == "PALADIN" or class == "DRUID" then
			return "HEALER"
		end
	end

	return "DAMAGE"
end

local function shouldShowTipForDisplay(tipType, class, forceAll)
	if forceAll then
		return true
	end

	local roleFilters = TDTConfig.RoleFilters or {}
	local classFilters = TDTConfig.ClassFilters or {}

	if TDTConfig[tipType] or tipType == "Legion" or tipType == "Dodge" then
		return true
	end

	if roleTipList[tipType] then
		if roleFilters.MYROLEONLY then
			return tipType == getPlayerRoleTipKey()
		end

		return roleFilters[tipType] == true
	end

	if classList[tipType] then
		if classFilters.MYCLASSONLY then
			return tipType == class
		end

		return classFilters[tipType] == true
	end

	return false
end

buildFrameTextFromTips = function(tips, class, forceAll)
	local lines = {}

	for _, tip in ipairs(tips or {}) do
		if shouldShowTipForDisplay(tip[1], class, forceAll) then
			local color = tipsColors[tip[1]]
			local lineHex
			if color then
				lineHex = string.format("%02x%02x%02x", color[1] * 255, color[2] * 255, color[3] * 255)
			end
			local iconMarkup = iconList[tip[1]] and (("|T%s:0|t"):format("Interface\\Icons\\" .. iconList[tip[1]])) or ""
			local lineText = tip[2] or ""

			if lineHex then
				lines[#lines + 1] = string.format("%s|cff%s %s|r", iconMarkup, lineHex, lineText)
			else
				lines[#lines + 1] = string.format("%s %s", iconMarkup, lineText)
			end
		end
	end

	return table.concat(lines, "\n")
end


-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
local function addLine(tooltip, tips, type, class)
	local found = false
	-- Check if we already added to this tooltip. This prevents writing the same thing to the tooltip multiple times.
	for i = 1,15 do	
		local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
		local text
		if frame then text = frame:GetText() end
		if text and text == type then found = true break end
	end
	

	-- If we haven't added to the NPC tooltip yet, proceed.
	if not found then
		-- Remember we are passing in an array {"HEALER", "HealersOnly"}} in our example so we'll iterate through each pair here.
		for i, tip in ipairs(tips) do
			-- tip[1] is the category indicator and we'll use that to decide whether we should show this tooltip or not.
			
			if shouldShowTipForDisplay(tip[1], class, false) then
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					
					if iconList[tip[1]] then -- Check if Icon exists
						tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
					elseif tipsColors[tip[1]] then -- Check if color exists
						tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						tooltip:AddLine(tip[2])
					end
			end
		end
		
		tooltip:Show() -- This is necessary to actually update the tooltip whenever we add anything to it.
	end
end

-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
addFrameLine = function(tooltip, tips, type, class, forceAll)
	local found = false
	-- Check if we already added to this tooltip. This prevents writing the same thing to the tooltip multiple times.
	if not TDT_HeaderPanel:IsVisible() then addon:setEnabled() end
	
	for i = 1,15 do	
		local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
		local text
		if frame then text = frame:GetText() end
		if text and text == type then found = true break end
	end
	

	-- If we haven't added to the NPC tooltip yet, proceed.
	if not found then
		-- Remember we are passing in an array {"HEALER", "HealersOnly"}} in our example so we'll iterate through each pair here.
		for i, tip in ipairs(tips) do
			-- tip[1] is the category indicator and we'll use that to decide whether we should show this tooltip or not.

			if shouldShowTipForDisplay(tip[1], class, forceAll) then
				if tooltip == TDT_TipPanel and addon.appendFrameTipLine then
					addon:appendFrameTipLine(tip[1], tip[2] or "")
				else
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					local lineHex = RGBToHex(r, g, b)
					local tipBase = TDT_TipText:GetText() or ""
					
					if iconList[tip[1]] then -- Check if Icon exists
						--tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
						
						TDT_TipText:SetText(tipBase .. ((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]]).. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")))
						if addon.refreshTipScroll then addon:refreshTipScroll() end
						
					elseif tipsColors[tip[1]] then -- Check if color exists
						TDT_TipText:SetText(tipBase .. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")
						if addon.refreshTipScroll then addon:refreshTipScroll() end
						--tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						TDT_TipText:SetText(tipBase .. " " .. tip[2] .. "\n")
						if addon.refreshTipScroll then addon:refreshTipScroll() end
						--tooltip:AddLine(tip[2])
					end
				end
			end
		end
		
		--tooltip:Show() -- This is necessary to actually update the tooltip whenever we add anything to it.
	end
end




-- This starts the ball rolling. This function is called whenever an NPC tooltip is moused over.
GameTooltip:HookScript("OnTooltipSetUnit", function(self)
  if TDTConfig.ShowFrame == "Show in separate frame" and TDTConfig.TargetTrigger == "Show targeted mob" then return end -- Tiny Snippet to disable the tooltip hook if targeting is selected instead.
  if TDTConfig.ShowFrame == "Show in separate frame" and TDTConfig.TargetTrigger == "Show mouseover" and TDT_onBoss then return end -- Disable tooltip hook if player is using frame + Mouseover but is on boss
  if not addon:checkInstance() then return end -- We won't be adding anything to tooltips if the addon is disabled in the current instance.
  
  local unit = select(2, self:GetUnit()) -- This grabs information about the unit we have targeted.
  --local role = UnitGroupRolesAssigned("player")
  local _, class, _ = UnitClass("player")
  
	if unit then
		
		local guid = UnitGUID(unit) or ""
		local id = tonumber(guid:match("-(%d+)-%x+$"), 10) -- This is the mobs ID. Don't worry about the regex.
		local name = UnitName(unit) or ""
		
		-- Check our dictionary to see if we actually have any tips for the mob targeted.
		local npcTips = addon:getTipsForNpc(id)
		if npcTips then
			-- Don't remove active tip if you accidentally mouse over ally.
			addon:clearFrameTipLines()
			if shouldShowNpcIDs() then
				TDT_MobName:SetText(string.format("%s (NPC ID: %d)", name, id))
			else
				TDT_MobName:SetText(name)
			end
			addon.currentFrameSelection = {
				expansionKey = addon:getExpansionKeyForInstance(addon:getCurrentInstanceKey()),
				instanceKey = addon:getCurrentInstanceKey(),
				npcID = id,
				npcName = name,
				instanceName = addon:getLocalizedInstanceName(addon:getCurrentInstanceKey()),
			}
			if addon.updateFrameNpcBrowserButton then addon:updateFrameNpcBrowserButton() end
		
			if TDTConfig.ShowFrame == "Show in separate frame" then addFrameLine(TDT_TipPanel, npcTips, shouldShowNpcIDs() and "NPC ID:" or "NPC:", class)
			else addLine(GameTooltip, npcTips, shouldShowNpcIDs() and "NPC ID:" or "NPC:", class)
			end
		
		elseif UnitIsEnemy(unit, "player") then
			addon:clearFrameTipLines()
			TDT_MobName:SetText(name)
			addon.currentFrameSelection = nil
			if addon.updateFrameNpcBrowserButton then addon:updateFrameNpcBrowserButton() end
		elseif TDTConfig.ShowFrame == "Show in separate frame" then
			addon:showCurrentInstanceInfo()
		end
		
	
  end 
end)

-- This starts the ball rolling on a mob target.
function addon:getTarget(mobType)
  
  local guid = UnitGUID(mobType) -- This grabs information about the unit we have targeted.
  
  --local role = UnitGroupRolesAssigned("player") -- Not available in Classic.
  local _, class, _ = UnitClass("player")
  
  --print("GUID: " .. UnitGUID("boss1"))
  
  if guid then
    --local guid = UnitGUID(unit) or ""
    local id = tonumber(guid:match("-(%d+)-%x+$"), 10) -- This is the mobs ID. Don't worry about the regex.
	local name = UnitName(mobType) or ""
	-- Check our dictionary to see if we actually have any tips for the mob targeted.
	local npcTips = addon:getTipsForNpc(id)
		if npcTips then
		-- Don't remove active tip if you accidentally mouse over ally.
		
		addon:clearFrameTipLines()
		if shouldShowNpcIDs() then
			TDT_MobName:SetText(string.format("%s (NPC ID: %d)", name, id))
		else
			TDT_MobName:SetText(name)
		end
		addon.currentFrameSelection = {
			expansionKey = addon:getExpansionKeyForInstance(addon:getCurrentInstanceKey()),
			instanceKey = addon:getCurrentInstanceKey(),
			npcID = id,
			npcName = name,
			instanceName = addon:getLocalizedInstanceName(addon:getCurrentInstanceKey()),
		}
		if addon.updateFrameNpcBrowserButton then addon:updateFrameNpcBrowserButton() end
		addFrameLine(TDT_TipPanel, npcTips, shouldShowNpcIDs() and "NPC ID:" or "NPC:", class)
		--addLine(GameTooltip, tipsMap[id], "NPC ID:", role, class)		

	elseif 	UnitIsEnemy(mobType, "player") then
		addon:clearFrameTipLines()
		TDT_MobName:SetText(name)
		addon.currentFrameSelection = nil
		if addon.updateFrameNpcBrowserButton then addon:updateFrameNpcBrowserButton() end
	else
		addon:showCurrentInstanceInfo()
	end
	

	
  end
end



local function tdtPrint(message)
	if DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99KDT:|r " .. message)
	end
end

local function setAddonLocaleFromSlash(arg)
	local value = string.lower((arg or ""):match("^%s*(.-)%s*$") or "")
	local localeChoice

	if value == "auto" then
		localeChoice = "Auto"
	elseif value == "en" or value == "enus" or value == "english" then
		localeChoice = "enUS"
	elseif value == "de" or value == "dede" or value == "deutsch" or value == "german" then
		localeChoice = "deDE"
	else
		tdtPrint("Use /kdt lang auto, /kdt lang en, or /kdt lang de")
		return
	end

	TDTConfig = TDTConfig or {}
	TDTConfig.LocaleChoice = localeChoice
	tdtPrint("Language updated. Reloading UI...")
	ReloadUI()
end

function addon:openConfig()
    if addon.registerConfigPanel then
        addon:registerConfigPanel()
    end
    addon:openSettingsPanel(addon.configCategory, addon.configPanel)
end

function addon:openSettingsPanel(category, panel)
    if Settings and Settings.OpenToCategory and category then
        if category.GetID then
            Settings.OpenToCategory(category:GetID())
        elseif category.ID then
            Settings.OpenToCategory(category.ID)
        elseif panel and panel.name then
            Settings.OpenToCategory(panel.name)
        end
    elseif panel and InterfaceOptionsFrame_OpenToCategory then
        InterfaceOptionsFrame_OpenToCategory(panel)
        InterfaceOptionsFrame_OpenToCategory(panel)
    else
        tdtPrint("Config panel is not available in this client.")
    end
end

function addon:openContentBrowser()
	if addon.registerConfigPanel then
		addon:registerConfigPanel()
	end
	addon:openSettingsPanel(addon.contentBrowserCategory, addon.contentBrowserPanel)
end

function addon:openNpcBrowser()
	if addon.registerConfigPanel then
		addon:registerConfigPanel()
	end
	addon:openSettingsPanel(addon.npcBrowserCategory, addon.npcBrowserPanel)
end

function addon:openCurrentNpcInBrowser()
	local selection = addon.currentFrameSelection
	if not selection or not selection.npcID or not selection.instanceKey then
		return
	end

	TDTConfig = TDTConfig or {}
	TDTConfig.NpcBrowserExpansionKey = selection.expansionKey or addon:getExpansionKeyForInstance(selection.instanceKey) or TDTConfig.NpcBrowserExpansionKey or TDTConfig.BrowserExpansionKey or "tbc"
	TDTConfig.NpcBrowserInstanceKey = selection.instanceKey
	TDTConfig.NpcBrowserNpcID = selection.npcID
	addon:openNpcBrowser()
end

function addon:toggleMainFrame()
	if not TDT_ParentFrame then
		return
	end

	if TDT_ParentFrame:IsShown() then
		TDT_ParentFrame:Hide()
	else
		TDT_ParentFrame:Show()
	end
end

function addon:showTestFrame()
	if not TDT_ParentFrame then
		tdtPrint("Main frame is not ready yet.")
		return
	end

	TDT_ParentFrame:Show()
	if TDT_TipPanel then
		TDT_TipPanel:SetHeight(TDTConfig.FrameHeight or 175)
		TDT_TipPanel:Show()
		TDT_TipText:Show()
	end
	if TDT_MobName then
		TDT_MobName:SetText("TDT Test Target")
	end
	if TDT_TipText then
		TDT_TipText:SetText(" |cff33ff99Kiesel Dungeon Tool loaded successfully.|r\n |cffffd166Use /kdt show, /kdt hide, /kdt toggle, or target a dungeon mob.|r")
		if addon.refreshTipScroll then addon:refreshTipScroll() end
	end
end

SLASH_KDTCOMMAND1 = "/kdt"
SlashCmdList["KDTCOMMAND"] = function(msg)
	msg = string.lower(msg or "")
	local command, rest = msg:match("^(%S+)%s*(.-)$")
	command = command or ""

	if msg == "config" then
		addon:openConfig()
	elseif msg == "show" then
		if TDT_ParentFrame then
			TDT_ParentFrame:Show()
			tdtPrint("Frame shown.")
		end
	elseif msg == "hide" then
		if TDT_ParentFrame then
			TDT_ParentFrame:Hide()
			tdtPrint("Frame hidden.")
		end
	elseif msg == "toggle" then
		if TDT_ParentFrame then
			local wasShown = TDT_ParentFrame:IsShown()
			addon:toggleMainFrame()
			tdtPrint(wasShown and "Frame hidden." or "Frame shown.")
		end
	elseif msg == "test" then
		addon:showTestFrame()
	elseif command == "lang" or command == "language" or command == "locale" then
		setAddonLocaleFromSlash(rest)
	else
        tdtPrint("Commands: /kdt config, /kdt show, /kdt hide, /kdt toggle, /kdt test, /kdt lang <auto|en|de>")
	end
end





