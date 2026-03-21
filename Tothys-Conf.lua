local localeDisplayNames = {
    Auto = "Auto",
    enUS = "English",
    deDE = "Deutsch",
}

local browserLocaleStrings = {
	enUS = {
		additional_details = "Additional Details",
		add_npc_tip = "Add Personal NPC Tip",
		editor_page = "Tip Editor",
		editor_title = "Kiesel Dungeon Tool - Tip Editor",
		editor_subtitle = "Add or manage NPC tips without changing the shipped addon data.",
		dungeon_editor_page = "Dungeon Editor",
		dungeon_editor_title = "Kiesel Dungeon Tool - Dungeon Editor",
		dungeon_editor_subtitle = "Add or manage instance notes without changing the shipped addon data.",
		add_instance_tip = "Add Personal Instance Note",
		instance_tips_preview = "Instance Tips Preview",
		instance_summary_prefix = "Selected",
		user_instance_tips = "User Instance Notes",
		no_user_instance_tips = "No personal instance notes for this dungeon or raid yet.",
		saved_instance_tip = "Personal instance note saved.",
		updated_instance_tip = "Personal instance note updated.",
		instance_edit_loaded = "Personal instance note loaded into editor.",
		tip_type = "Tip Type",
		tip_weight = "Weight",
		tip_text = "Tip Text",
		save_tip = "Save Tip",
		edit = "Edit",
		edit_base = "Override",
		update_tip = "Update Tip",
		update_base_tip = "Save Override",
		cancel_edit = "Cancel Edit",
		edit_loaded = "Personal tip loaded into editor.",
		base_edit_loaded = "Base tip loaded into editor override mode.",
		updated_tip = "Personal tip updated.",
		updated_base_tip = "Base tip override updated.",
		personal_tips = "User Tips",
		base_tips = "Addon Tips",
		no_base_tips = "No addon tips found for this NPC.",
		reset = "Reset",
		overridden_tip = "overridden",
		legacy_tip = "legacy read-only",
		hidden_tip = "hidden",
		hide = "Hide",
		unhide = "Unhide",
		delete = "Delete",
		no_personal_tips = "No personal tips for this NPC yet.",
		default_tip_text = "Write a personal NPC tip here...",
		saved_tip = "Personal NPC tip saved.",
		missing_tip = "Please choose a tip type and enter text first.",
		travel = "Travel",
		attunement = "Attunement",
		extra_notes = "Extra Notes",
		lore = "Lore / RP",
		no_details = "No additional details yet.",
		info_page = "Info",
	},
	deDE = {
		additional_details = "Zusatzinfos",
		add_npc_tip = "Persoenlichen NPC-Tipp hinzufuegen",
		editor_page = "Tip Editor",
		editor_title = "Kiesel Dungeon Tool - Tip Editor",
		editor_subtitle = "NPC-Tipps hinzufuegen oder verwalten, ohne die mitgelieferten Addon-Daten zu veraendern.",
		dungeon_editor_page = "Dungeon Editor",
		dungeon_editor_title = "Kiesel Dungeon Tool - Dungeon Editor",
		dungeon_editor_subtitle = "Instanz-Notizen hinzufuegen oder verwalten, ohne die mitgelieferten Addon-Daten zu veraendern.",
		add_instance_tip = "Persoenliche Instanz-Notiz hinzufuegen",
		instance_tips_preview = "Instanz-Tipps Vorschau",
		instance_summary_prefix = "Ausgewaehlt",
		user_instance_tips = "Persoenliche Instanz-Notizen",
		no_user_instance_tips = "Fuer diesen Dungeon oder Raid gibt es noch keine persoenlichen Instanz-Notizen.",
		saved_instance_tip = "Persoenliche Instanz-Notiz gespeichert.",
		updated_instance_tip = "Persoenliche Instanz-Notiz aktualisiert.",
		instance_edit_loaded = "Persoenliche Instanz-Notiz in den Editor geladen.",
		tip_type = "Tipp-Typ",
		tip_weight = "Gewichtung",
		tip_text = "Tipp-Text",
		save_tip = "Tipp speichern",
		edit = "Bearbeiten",
		edit_base = "Override",
		update_tip = "Tipp aktualisieren",
		update_base_tip = "Override speichern",
		cancel_edit = "Bearbeiten abbrechen",
		edit_loaded = "Persoenlicher Tipp in den Editor geladen.",
		base_edit_loaded = "Basis-Tipp in den Override-Editor geladen.",
		updated_tip = "Persoenlicher Tipp aktualisiert.",
		updated_base_tip = "Basis-Tipp-Override aktualisiert.",
		personal_tips = "Nutzer-Tipps",
		base_tips = "Addon-Tipps",
		no_base_tips = "Fuer diesen NPC wurden keine Addon-Tipps gefunden.",
		reset = "Zuruecksetzen",
		overridden_tip = "ueberschrieben",
		legacy_tip = "legacy schreibgeschuetzt",
		hidden_tip = "ausgeblendet",
		hide = "Ausblenden",
		unhide = "Einblenden",
		delete = "Loeschen",
		no_personal_tips = "Fuer diesen NPC gibt es noch keine persoenlichen Tipps.",
		default_tip_text = "Hier persoenlichen NPC-Tipp eingeben...",
		saved_tip = "Persoenlicher NPC-Tipp gespeichert.",
		missing_tip = "Bitte zuerst Typ waehlen und Text eingeben.",
		travel = "Anfahrt",
		attunement = "Attunement",
		extra_notes = "Zusatzinfos",
		lore = "RP/Lore",
		no_details = "Noch keine Zusatzinfos vorhanden.",
		info_page = "Info",
	},
}

local browserIconList = {
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
    DAMAGE = "inv_sword_01",
}

local authorTipTypes = {
	"Important",
	"PriorityTargets",
	"Defensives",
	"Interrupts",
	"Dodge",
	"Advanced",
	"Personal",
	"HEALER",
	"TANK",
	"DAMAGE",
	"DRUID",
	"HUNTER",
	"MAGE",
	"PALADIN",
	"PRIEST",
	"ROGUE",
	"SHAMAN",
	"WARRIOR",
	"WARLOCK",
}

local function createCycleButton(frame, name, values, onChange)
    local button = CreateFrame("Button", "TDTButton" .. name, frame, "UIPanelButtonTemplate")
    button:SetWidth(140)
    button:SetHeight(24)
    button.values = values
    button.currentIndex = 1

    function button:SetValues(values)
        self.values = values or {}
        if self.currentIndex > #self.values then
            self.currentIndex = 1
        end
    end

    function button:SetCurrentValue(value)
        if not self.values or #self.values == 0 then
            self.currentIndex = 1
            self:SetText("-")
            return
        end

        for index, candidate in ipairs(self.values) do
            if candidate == value then
                self.currentIndex = index
                break
            end
        end

        local currentValue = self.values[self.currentIndex]
        local displayText
        if self.labelForValue then
            displayText = self.labelForValue(currentValue)
        end
        self:SetText(displayText or localeDisplayNames[currentValue] or currentValue)
    end

    button:SetScript("OnClick", function(self)
        if not self.values or #self.values == 0 then
            return
        end

        self.currentIndex = self.currentIndex + 1
        if self.currentIndex > #self.values then
            self.currentIndex = 1
        end

        local value = self.values[self.currentIndex]
        local displayText
        if self.labelForValue then
            displayText = self.labelForValue(value)
        end
        self:SetText(displayText or localeDisplayNames[value] or value)
        onChange(value)
    end)

    return button
end

local function createValueDropdown(frame, name, width, onChange)
    local dropdown = CreateFrame("Frame", "TDTDropdown" .. name, frame, "UIDropDownMenuTemplate")
    dropdown:SetWidth(width or 180)
    dropdown.values = {}
    dropdown.currentValue = nil

    function dropdown:SetValues(values)
        self.values = values or {}
    end

    function dropdown:SetCurrentValue(value)
        self.currentValue = value

        local label = "-"
        if value and self.labelForValue then
            label = self.labelForValue(value) or "-"
        elseif value then
            label = tostring(value)
        end

        UIDropDownMenu_SetText(self, label)
    end

    UIDropDownMenu_SetWidth(dropdown, width or 180)
    UIDropDownMenu_Initialize(dropdown, function(self, level)
        local info

        for _, value in ipairs(dropdown.values or {}) do
            info = UIDropDownMenu_CreateInfo()
            info.text = dropdown.labelForValue and dropdown.labelForValue(value) or tostring(value)
            info.value = value
            info.checked = value == dropdown.currentValue
            info.func = function()
                dropdown:SetCurrentValue(value)
                onChange(value)
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)

    return dropdown
end

local function createSingleLineInput(frame, width, height)
	local editBox = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
	editBox:SetAutoFocus(false)
	editBox:SetWidth(width or 180)
	editBox:SetHeight(height or 24)
	editBox:SetFontObject(ChatFontNormal)
	editBox:SetTextInsets(6, 6, 0, 0)
	return editBox
end

local function createMultiLineInput(frame, width, height)
	local container = CreateFrame("Frame", nil, frame, "BackdropTemplate")
	container:SetSize(width or 620, height or 72)
	container:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 },
	})
	container:SetBackdropColor(0, 0, 0, 0.7)

	local editBox = CreateFrame("EditBox", nil, container)
	editBox:SetAutoFocus(false)
	editBox:SetMultiLine(true)
	editBox:SetFontObject(ChatFontNormal)
	editBox:SetWidth((width or 620) - 16)
	editBox:SetHeight((height or 72) - 16)
	editBox:SetPoint("TOPLEFT", container, "TOPLEFT", 8, -8)
	editBox:SetJustifyH("LEFT")
	editBox:SetJustifyV("TOP")
	editBox:SetTextInsets(0, 0, 0, 0)
	editBox:EnableMouse(true)
	editBox:SetScript("OnEscapePressed", function(self)
		self:ClearFocus()
	end)

	container.editBox = editBox
	return container, editBox
end

--[[
Tothys Dungeon Tips TBC (former QE Dungeon Tips)
Configuration Page

Version: 0.9
Developed by: Voulk
Forked by: Mathasyu 2026-03-09
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
Changelog:
    0.9 - 2026-03
        - The Addon works now in the TBC Anniversary Client
        - New Slash Commands: /tdt config, /tdt show, /tdt hide, /tdt test
]]--

local _, addon = ...;

-- UI
TothysConf = {}
--local ACD = LibStub("MSA-AceConfigDialog-3.0")


-- Saved Variables
local defaultConfig = {
    ["Important"] = true,
    ["PriorityTargets"] = true,
    ["Defensives"] = true,
    ["Interrupts"] = true,
    ["Fluff"] = false,
    ["Advanced"] = true,
    ["Dodge"] = true,
    ["Personal"] = true,
    ["ShowFrame"] = "Show in separate frame",
    ["TargetTrigger"] = "Show targeted mob",
    ["RaidToggle"] = true,
    ["MythicPlusToggle"] = true,
    ["FrameWidth"] = 450,
    ["FrameHeight"] = 175,
    ["FontSize"] = 12,
    ["FrameOpacity"] = 0.55,
    ["LocaleChoice"] = "Auto",
    ["BrowserExpansionKey"] = "tbc",
    ["BrowserInstanceKey"] = "auchenai_crypts",
    ["BrowserNpcID"] = 18371,
    ["RoleFilters"] = {
        MYROLEONLY = true,
        TANK = false,
        HEALER = false,
        DAMAGE = false,
    },
    ["ClassFilters"] = {
        MYCLASSONLY = true,
        DRUID = false,
        HUNTER = false,
        MAGE = false,
        PALADIN = false,
        PRIEST = false,
        ROGUE = false,
        SHAMAN = false,
        WARRIOR = false,
        WARLOCK = false,
    },
}

local roleFilterKeys = {"MYROLEONLY", "TANK", "HEALER", "DAMAGE"}
local classFilterKeys = {"MYCLASSONLY", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARRIOR", "WARLOCK"}

local function copyTable(source)
    local result = {}
    for key, value in pairs(source or {}) do
        if type(value) == "table" then
            result[key] = copyTable(value)
        else
            result[key] = value
        end
    end

    return result
end

local function applyConfigDefaults(config)
    for key, value in pairs(defaultConfig) do
        if config[key] == nil then
            if type(value) == "table" then
                config[key] = copyTable(value)
            else
                config[key] = value
            end
        end
    end

    if type(config.RoleFilters) ~= "table" then
        config.RoleFilters = copyTable(defaultConfig.RoleFilters)
    end
    if type(config.ClassFilters) ~= "table" then
        config.ClassFilters = copyTable(defaultConfig.ClassFilters)
    end

    for _, key in ipairs(roleFilterKeys) do
        if config.RoleFilters[key] == nil then
            config.RoleFilters[key] = defaultConfig.RoleFilters[key]
        end
    end

    for _, key in ipairs(classFilterKeys) do
        if config.ClassFilters[key] == nil then
            config.ClassFilters[key] = defaultConfig.ClassFilters[key]
        end
    end

    if config.RoleChoice then
        if config.RoleChoice == "Show all roles" then
            config.RoleFilters.MYROLEONLY = false
            config.RoleFilters.TANK = true
            config.RoleFilters.HEALER = true
            config.RoleFilters.DAMAGE = true
        else
            config.RoleFilters.MYROLEONLY = true
            config.RoleFilters.TANK = false
            config.RoleFilters.HEALER = false
            config.RoleFilters.DAMAGE = false
        end
        config.RoleChoice = nil
    end

    if config.ClassChoice then
        if config.ClassChoice == "Show all classes" then
            config.ClassFilters.MYCLASSONLY = false
            for _, key in ipairs(classFilterKeys) do
                if key ~= "MYCLASSONLY" then
                    config.ClassFilters[key] = true
                end
            end
        else
            config.ClassFilters.MYCLASSONLY = true
            for _, key in ipairs(classFilterKeys) do
                if key ~= "MYCLASSONLY" then
                    config.ClassFilters[key] = false
                end
            end
        end
        config.ClassChoice = nil
    end

    return config
end
function addon:registerConfigPanel()
	if addon.configPanelRegistered or not addon.configPanel then
		return
	end

	if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
		local category = Settings.RegisterCanvasLayoutCategory(addon.configPanel, addon.configPanel.name, addon.configPanel.name)
		if category then
			category.ID = category.ID or addon.configPanel.name
			Settings.RegisterAddOnCategory(category)
			addon.configCategory = category
			if addon.contentBrowserPanel and Settings.RegisterCanvasLayoutSubcategory then
				local subcategory = Settings.RegisterCanvasLayoutSubcategory(category, addon.contentBrowserPanel, addon.contentBrowserPanel.name, addon.contentBrowserPanel.name)
				if subcategory then
					subcategory.ID = subcategory.ID or addon.contentBrowserPanel.name
					Settings.RegisterAddOnCategory(subcategory)
					addon.contentBrowserCategory = subcategory
				end
			end
			if addon.dungeonEditorPanel and Settings.RegisterCanvasLayoutSubcategory then
				local subcategory = Settings.RegisterCanvasLayoutSubcategory(category, addon.dungeonEditorPanel, addon.dungeonEditorPanel.name, addon.dungeonEditorPanel.name)
				if subcategory then
					subcategory.ID = subcategory.ID or addon.dungeonEditorPanel.name
					Settings.RegisterAddOnCategory(subcategory)
					addon.dungeonEditorCategory = subcategory
				end
			end
			if addon.editorPanel and Settings.RegisterCanvasLayoutSubcategory then
				local subcategory = Settings.RegisterCanvasLayoutSubcategory(category, addon.editorPanel, addon.editorPanel.name, addon.editorPanel.name)
				if subcategory then
					subcategory.ID = subcategory.ID or addon.editorPanel.name
					Settings.RegisterAddOnCategory(subcategory)
					addon.editorCategory = subcategory
				end
			end
			if addon.infoPanel and Settings.RegisterCanvasLayoutSubcategory then
				local subcategory = Settings.RegisterCanvasLayoutSubcategory(category, addon.infoPanel, addon.infoPanel.name, addon.infoPanel.name)
				if subcategory then
					subcategory.ID = subcategory.ID or addon.infoPanel.name
					Settings.RegisterAddOnCategory(subcategory)
					addon.infoCategory = subcategory
				end
			end
			addon.configPanelRegistered = true
			return
		end
	end

	if InterfaceOptions_AddCategory then
		InterfaceOptions_AddCategory(addon.configPanel)
		if addon.contentBrowserPanel then
			addon.contentBrowserPanel.parent = addon.configPanel.name
			InterfaceOptions_AddCategory(addon.contentBrowserPanel)
		end
		if addon.dungeonEditorPanel then
			addon.dungeonEditorPanel.parent = addon.configPanel.name
			InterfaceOptions_AddCategory(addon.dungeonEditorPanel)
		end
		if addon.editorPanel then
			addon.editorPanel.parent = addon.configPanel.name
			InterfaceOptions_AddCategory(addon.editorPanel)
		end
		if addon.infoPanel then
			addon.infoPanel.parent = addon.configPanel.name
			InterfaceOptions_AddCategory(addon.infoPanel)
		end
		addon.configPanelRegistered = true
	elseif InterfaceOptionsFrame_AddCategory then
		InterfaceOptionsFrame_AddCategory(addon.configPanel)
		if addon.contentBrowserPanel then
			addon.contentBrowserPanel.parent = addon.configPanel.name
			InterfaceOptionsFrame_AddCategory(addon.contentBrowserPanel)
		end
		if addon.dungeonEditorPanel then
			addon.dungeonEditorPanel.parent = addon.configPanel.name
			InterfaceOptionsFrame_AddCategory(addon.dungeonEditorPanel)
		end
		if addon.editorPanel then
			addon.editorPanel.parent = addon.configPanel.name
			InterfaceOptionsFrame_AddCategory(addon.editorPanel)
		end
		if addon.infoPanel then
			addon.infoPanel.parent = addon.configPanel.name
			InterfaceOptionsFrame_AddCategory(addon.infoPanel)
		end
		addon.configPanelRegistered = true
	end
end

local function getBrowserLocaleString(key)
	local locale = "enUS"
	if TDTConfig and TDTConfig.LocaleChoice == "deDE" then
		locale = "deDE"
	elseif TDTConfig and TDTConfig.LocaleChoice == "Auto" and GetLocale and GetLocale() == "deDE" then
		locale = "deDE"
	end
	local localeStrings = browserLocaleStrings[locale] or browserLocaleStrings.enUS
	return localeStrings[key] or browserLocaleStrings.enUS[key] or key
end

TDTConfig = applyConfigDefaults(TDTConfig or QEConfig or {})
if type(TDTConfig.FontSize) ~= "number" then
    TDTConfig.FontSize = tonumber(TDTConfig.FontSize) or defaultConfig.FontSize
end
if TDTConfig.LocaleChoice ~= "Auto" and TDTConfig.LocaleChoice ~= "enUS" and TDTConfig.LocaleChoice ~= "deDE" then
    TDTConfig.LocaleChoice = defaultConfig.LocaleChoice
end

-- Create Checkboxes
local function createCheck(label, description, frame, onClick)
	local check = CreateFrame("CheckButton", "TDTCheck" .. label, frame, "InterfaceOptionsCheckButtonTemplate")
	check:SetScript("OnClick", function(self)
		onClick(self)
	end)
	
	getglobal(check:GetName() .. 'Text'):SetText(description)
	
	return check
	
end


local function createString(frame, text, font, size)
	local fontString = frame:CreateFontString()
	fontString:SetFont(font, size)
	fontString:SetText(text)
	fontString:SetWidth(215)
	fontString:SetJustifyH("LEFT")
	fontString:SetJustifyV("TOP")
	
	return fontString
end

local function updateTextSize(size)
	local p,_,_ = TDT_TipText:GetFont();
	--print("Resetting Font Size" .. TDTConfig.FontSize)
	TDT_TipText:SetFont(p, TDTConfig.FontSize, nil)
	if addon.refreshTipScroll then addon:refreshTipScroll() end

end

local function getConfigLocale()
    local preferredLocale = TDTConfig and TDTConfig.LocaleChoice or "Auto"
    if preferredLocale == "Auto" then
        preferredLocale = GetLocale() or "enUS"
    end

    if preferredLocale ~= "deDE" then
        preferredLocale = "enUS"
    end

    return preferredLocale
end

local function getOrderedKeys(entries)
    local keys = {}
    for key in pairs(entries or {}) do
        keys[#keys + 1] = key
    end

    table.sort(keys, function(left, right)
        local leftEntry = entries[left] or {}
        local rightEntry = entries[right] or {}
        local leftOrder = leftEntry.order or 9999
        local rightOrder = rightEntry.order or 9999

        if leftOrder == rightOrder then
            return tostring(left) < tostring(right)
        end

        return leftOrder < rightOrder
    end)

    return keys
end

local function getLocalizedLabel(labelData, fallback)
    if type(labelData) == "table" then
        local locale = getConfigLocale()
        return labelData[locale] or labelData.enUS or fallback
    end

    return labelData or fallback
end

local function getRawNpcTips(npcID)
    local locale = getConfigLocale()
    local localizedMap = locale == "deDE" and tipsMap_deDE or tipsMap_enUS

    if localizedMap and localizedMap[npcID] then
        return localizedMap[npcID]
    end

    if tipsMap_enUS then
        return tipsMap_enUS[npcID]
    end
end

local function getRawInstanceTips(instanceKey)
    local locale = getConfigLocale()
    local localizedMap = locale == "deDE" and instanceInfo_deDE or instanceInfo_enUS

    if localizedMap and localizedMap[instanceKey] then
        return localizedMap[instanceKey]
    end

    if instanceInfo_enUS then
        return instanceInfo_enUS[instanceKey]
    end
end

local function getInstanceDetails(instanceKey)
    local locale = getConfigLocale()
    local localizedMap = locale == "deDE" and instanceDetails_deDE or instanceDetails_enUS

    if localizedMap and localizedMap[instanceKey] then
        return localizedMap[instanceKey]
    end

    if instanceDetails_enUS then
        return instanceDetails_enUS[instanceKey]
    end
end

local function formatInstanceDetails(details)
    if not details then
        return getBrowserLocaleString("no_details")
    end

    local sections = {}

    if details.travel and details.travel ~= "" then
        sections[#sections + 1] = string.format("%s: %s", getBrowserLocaleString("travel"), details.travel)
    end
    if details.attunement and details.attunement ~= "" then
        sections[#sections + 1] = string.format("%s: %s", getBrowserLocaleString("attunement"), details.attunement)
    end
    if details.notes and details.notes ~= "" then
        sections[#sections + 1] = string.format("%s: %s", getBrowserLocaleString("extra_notes"), details.notes)
    end
    if details.lore and details.lore ~= "" then
        sections[#sections + 1] = string.format("%s: %s", getBrowserLocaleString("lore"), details.lore)
    end

    if #sections == 0 then
        return getBrowserLocaleString("no_details")
    end

    return table.concat(sections, "\n")
end

local function normalizeRawTips(rawTips)
    local normalizedTips = {}
    if not rawTips then
        return normalizedTips
    end

    local legacyTipCount = #rawTips
    for index, tip in ipairs(rawTips) do
        local tipType
        local tipText
        local tipWeight

        if #tip >= 4 and type(tip[2]) == "string" and type(tip[3]) == "string" then
            tipType = tip[2]
            tipText = tip[3]
            tipWeight = tonumber(tip[4]) or 0
        else
            tipType = tip[1]
            tipText = tip[2]
            tipWeight = (legacyTipCount - index + 1) * 10
        end

        normalizedTips[#normalizedTips + 1] = {
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

    return normalizedTips
end

local function formatTipEntriesPreview(entries, maxLines)
    local previewLines = {}
    local allEntries = entries or {}
    local lineCount = maxLines and math.min(#allEntries, maxLines) or #allEntries

    for index = 1, lineCount do
        local tip = allEntries[index]
        local iconMarkup = ""
        local iconName = browserIconList[tip.type or ""]
        if iconName then
            iconMarkup = string.format("|TInterface\\Icons\\%s:0|t ", iconName)
        end

        previewLines[#previewLines + 1] = string.format("%s[%s] %s", iconMarkup, tip.type or "?", tip.text or "")
    end

    if maxLines and #allEntries > lineCount then
        previewLines[#previewLines + 1] = string.format("... %d more", #allEntries - lineCount)
    end

    if #previewLines == 0 then
        previewLines[#previewLines + 1] = "No entries found."
    end

    return table.concat(previewLines, "\n")
end

local function formatTipsPreview(rawTips, maxLines)
    return formatTipEntriesPreview(normalizeRawTips(rawTips), maxLines)
end

local function toDisplayTips(rawTips)
    local displayTips = {}
    local normalizedTips = normalizeRawTips(rawTips)

    for _, tip in ipairs(normalizedTips) do
        displayTips[#displayTips + 1] = {tip.type, tip.text}
    end

    return displayTips
end

local function mergedEntriesToDisplayTips(entries)
    local displayTips = {}
    for _, tip in ipairs(entries or {}) do
        displayTips[#displayTips + 1] = {tip.type, tip.text}
    end

    return displayTips
end

local function getExpansionKeys()
    return getOrderedKeys(addon.contentCatalog or {})
end

local function getExpansionData(expansionKey)
    if not addon.contentCatalog then
        return nil
    end

    return addon.contentCatalog[expansionKey]
end

local function getInstanceKeys(expansionKey)
    local expansionData = getExpansionData(expansionKey)
    if not expansionData then
        return {}
    end

    return getOrderedKeys(expansionData.instances or {})
end

local function getInstanceData(expansionKey, instanceKey)
    local expansionData = getExpansionData(expansionKey)
    if not expansionData or not expansionData.instances then
        return nil
    end

    return expansionData.instances[instanceKey]
end

local function getNpcIDs(expansionKey, instanceKey)
    local instanceData = getInstanceData(expansionKey, instanceKey)
    if not instanceData or not instanceData.npcIDs then
        return {}
    end

    local npcIDs = {}
    for _, npcID in ipairs(instanceData.npcIDs) do
        npcIDs[#npcIDs + 1] = npcID
    end

    table.sort(npcIDs, function(left, right)
        return tonumber(left) < tonumber(right)
    end)

    return npcIDs
end

local function getNpcCommentName(rawTips)
    return nil
end

local function getNpcBrowserLabel(expansionKey, instanceKey, npcID)
    local instanceData = getInstanceData(expansionKey, instanceKey)
    local localizedName

    if instanceData and instanceData.npcNames and instanceData.npcNames[npcID] then
        localizedName = getLocalizedLabel(instanceData.npcNames[npcID], nil)
    end

    if localizedName then
        return string.format("%s (%d)", localizedName, npcID)
    end

    local rawTips = getRawNpcTips(npcID)
    local commentName = getNpcCommentName(rawTips)
    if commentName then
        return string.format("%s (%d)", commentName, npcID)
    end

    return tostring(npcID)
end

local function getNpcDisplayName(expansionKey, instanceKey, npcID)
    local browserLabel = getNpcBrowserLabel(expansionKey, instanceKey, npcID)
    return browserLabel:gsub("%s*%(%d+%)$", "")
end

local function createFilterCheck(name, description, frame, onClick)
    return createCheck(name, description, frame, onClick)
end

local function setupScrollablePanel(panel, prefix, contentHeight)
    local scrollFrame = CreateFrame("ScrollFrame", prefix .. "ScrollFrame", panel)
    scrollFrame:SetPoint("TOPLEFT", panel, "TOPLEFT", 0, -8)
    scrollFrame:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -28, -8)
    scrollFrame:SetPoint("BOTTOMLEFT", panel, "BOTTOMLEFT", 0, 8)
    scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -28, 8)
    scrollFrame:EnableMouseWheel(true)

    local content = CreateFrame("Frame", prefix .. "ScrollChild", scrollFrame)
    content:SetWidth(700)
    content:SetHeight(contentHeight or 1200)
    scrollFrame:SetScrollChild(content)

    local scrollBar = CreateFrame("Slider", prefix .. "ScrollBar", panel, "UIPanelScrollBarTemplate")
    scrollBar:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -4, -24)
    scrollBar:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -4, 24)
    scrollBar:SetMinMaxValues(0, 0)
    scrollBar:SetValueStep(24)
    scrollBar:SetValue(0)
    scrollBar:SetScript("OnValueChanged", function(self, value)
        scrollFrame:SetVerticalScroll(value)
    end)

    scrollFrame:SetScript("OnMouseWheel", function(self, delta)
        local currentValue = scrollBar:GetValue()
        local minValue, maxValue = scrollBar:GetMinMaxValues()
        local nextValue = currentValue - (delta * 36)
        if nextValue < minValue then nextValue = minValue end
        if nextValue > maxValue then nextValue = maxValue end
        scrollBar:SetValue(nextValue)
    end)

    panel.refreshScroll = function()
        local maxScroll = math.max((contentHeight or 1200) - scrollFrame:GetHeight(), 0)
        scrollBar:SetMinMaxValues(0, maxScroll)
        if maxScroll == 0 then
            scrollBar:SetValue(0)
            scrollBar:Hide()
        else
            if scrollBar:GetValue() > maxScroll then
                scrollBar:SetValue(maxScroll)
            end
            scrollBar:Show()
        end
    end

    panel:SetScript("OnShow", function(self)
        if self.refreshScroll then
            self:refreshScroll()
        end
    end)

    panel:HookScript("OnSizeChanged", function(self)
        if self.refreshScroll then
            self:refreshScroll()
        end
    end)

    return content
end


--[[
function createDropdown(frame, label, option1, option2, changingVar)

	local dd = CreateFrame("Frame", label, frame, "UIDropDownMenuTemplate")
	
	local function dd_OnClick(self, arg1, arg2, checked)
		UIDropDownMenu_SetText(dd, arg1)
		TDTConfig[changingVar] = arg1
		setEnabled() -- This just clears the addons frame.
		setDropdownEnabled() -- This shows / hides a second dropdown based on the current selection.
	end
	
	function ddMenu(frame, level, menuList)
		local info = UIDropDownMenu_CreateInfo()
		info.func = dd_OnClick
		info.text, info.arg1, info.checked = option1, option1, TDTConfig[changingVar] == option1
		UIDropDownMenu_AddButton(info)
		info.text, info.arg1, info.checked = option2, option2, TDTConfig[changingVar] == option2
		UIDropDownMenu_AddButton(info)
	
	end
		
	UIDropDownMenu_Initialize(dd, ddMenu)
	UIDropDownMenu_SetWidth(dd, 180, 0);
	
	return dd
end
]]--

-- Create Panels
local function createContentBrowserMenu()
    addon.contentBrowserPanel = CreateFrame("Frame", "TothysDungeonTipsContentBrowser", UIParent)
    addon.contentBrowserPanel.name = "Content Browser"
    addon.contentBrowserPanel.okay = function(self) return end
    addon.contentBrowserPanel.cancel = function(self) return end
    local browserContent = setupScrollablePanel(addon.contentBrowserPanel, "TDTContentBrowser", 1400)

    local headerFont = "Fonts\\MORPHEUS.ttf"
    local headerSize = 16

    local title = browserContent:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText("Kiesel Dungeon Tool - Content Browser")

    local subtitle = createString(browserContent, "Browse the hardcoded expansion, instance and NPC structure before we add editing.", "Fonts\\FRIZQT__.TTF", 11)
    subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    subtitle:SetWidth(540)

    local expansionFS = createString(browserContent, "Expansion", headerFont, headerSize)
    expansionFS:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -20)

    local instanceFS = createString(browserContent, "Dungeon / Raid", headerFont, headerSize)
    instanceFS:SetPoint("TOPLEFT", expansionButton or subtitle, "BOTTOMLEFT", 0, -24)

    local npcFS = createString(browserContent, "NPC", headerFont, headerSize)
    npcFS:SetPoint("TOPLEFT", instanceFS, "BOTTOMLEFT", 0, -26)

    local browserState = {
        expansionKey = TDTConfig.BrowserExpansionKey,
        instanceKey = TDTConfig.BrowserInstanceKey,
        npcID = TDTConfig.BrowserNpcID,
    }

    local expansionButton
    local instanceDropdown
    local npcDropdown
    local selectionSummary
    local npcSelectionLabel
    local instancePreview
    local instanceDetailsPreview
    local npcPreview
    local function ensureBrowserSelection()
        local expansionKeys = getExpansionKeys()
        if #expansionKeys == 0 then
            browserState.expansionKey = nil
            browserState.instanceKey = nil
            browserState.npcID = nil
            return
        end

        local hasExpansion = false
        for _, key in ipairs(expansionKeys) do
            if key == browserState.expansionKey then
                hasExpansion = true
                break
            end
        end
        if not hasExpansion then
            browserState.expansionKey = expansionKeys[1]
        end

        local instanceKeys = getInstanceKeys(browserState.expansionKey)
        local hasInstance = false
        for _, key in ipairs(instanceKeys) do
            if key == browserState.instanceKey then
                hasInstance = true
                break
            end
        end
        if not hasInstance then
            browserState.instanceKey = instanceKeys[1]
        end

        local npcIDs = getNpcIDs(browserState.expansionKey, browserState.instanceKey)
        local hasNpc = false
        for _, npcID in ipairs(npcIDs) do
            if npcID == browserState.npcID then
                hasNpc = true
                break
            end
        end
        if not hasNpc then
            browserState.npcID = npcIDs[1]
        end

        TDTConfig.BrowserExpansionKey = browserState.expansionKey
        TDTConfig.BrowserInstanceKey = browserState.instanceKey
        TDTConfig.BrowserNpcID = browserState.npcID
    end

    local function updateBrowserUI()
        ensureBrowserSelection()

        local expansionKeys = getExpansionKeys()
        expansionButton:SetValues(expansionKeys)
        expansionButton:SetCurrentValue(browserState.expansionKey)

        local instanceKeys = getInstanceKeys(browserState.expansionKey)
        instanceDropdown:SetValues(instanceKeys)
        instanceDropdown:SetCurrentValue(browserState.instanceKey)

        local npcIDs = getNpcIDs(browserState.expansionKey, browserState.instanceKey)
        npcDropdown:SetValues(npcIDs)
        npcDropdown:SetCurrentValue(browserState.npcID)

        local expansionData = getExpansionData(browserState.expansionKey)
        local instanceData = getInstanceData(browserState.expansionKey, browserState.instanceKey)
        local expansionLabel = getLocalizedLabel(expansionData and expansionData.name, browserState.expansionKey or "-")
        local instanceLabel = getLocalizedLabel(instanceData and instanceData.name, browserState.instanceKey or "-")
        local instanceType = instanceData and instanceData.type or "Unknown"
        local npcLabel = browserState.npcID and getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, browserState.npcID) or "-"
        local npcDisplayName = browserState.npcID and getNpcDisplayName(browserState.expansionKey, browserState.instanceKey, browserState.npcID) or nil

        selectionSummary:SetText(string.format("Selected: %s -> %s (%s) -> %s", expansionLabel, instanceLabel, instanceType, npcLabel))
        npcSelectionLabel:SetText(string.format("NPC: %s", npcLabel))
        local mergedInstanceEntries = addon.getMergedInstanceTipEntries and addon:getMergedInstanceTipEntries(browserState.instanceKey) or normalizeRawTips(getRawInstanceTips(browserState.instanceKey))
        local mergedNpcEntries = addon.getMergedNpcTipEntries and addon:getMergedNpcTipEntries(browserState.npcID) or normalizeRawTips(getRawNpcTips(browserState.npcID))

        instancePreview:SetText(formatTipEntriesPreview(mergedInstanceEntries))
        instanceDetailsPreview:SetText(formatInstanceDetails(getInstanceDetails(browserState.instanceKey)))
        npcPreview:SetText(formatTipEntriesPreview(mergedNpcEntries))

        if addon.showBrowserSelectionInFrame then
            addon:showBrowserSelectionInFrame(
                instanceLabel,
                npcDisplayName,
                browserState.npcID,
                mergedEntriesToDisplayTips(mergedInstanceEntries),
                mergedEntriesToDisplayTips(mergedNpcEntries)
            )
        end
    end

    expansionButton = createCycleButton(browserContent, "BrowserExpansion", getExpansionKeys(), function(value)
        browserState.expansionKey = value
        browserState.instanceKey = nil
        browserState.npcID = nil
        updateBrowserUI()
    end)
    expansionButton:SetPoint("TOPLEFT", expansionFS, "BOTTOMLEFT", 0, -8)
    expansionButton.labelForValue = function(value)
        local expansionData = getExpansionData(value)
        return getLocalizedLabel(expansionData and expansionData.name, value)
    end

    instanceFS:ClearAllPoints()
    instanceFS:SetPoint("TOPLEFT", expansionButton, "BOTTOMLEFT", 0, -24)

    instanceDropdown = createValueDropdown(browserContent, "BrowserInstance", 220, function(value)
        browserState.instanceKey = value
        browserState.npcID = nil
        updateBrowserUI()
    end)
    instanceDropdown:SetPoint("TOPLEFT", instanceFS, "BOTTOMLEFT", -16, -2)
    instanceDropdown.labelForValue = function(value)
        local instanceData = getInstanceData(browserState.expansionKey, value)
        if not instanceData then
            return value or "-"
        end

        return string.format("%s (%s)", getLocalizedLabel(instanceData.name, value), instanceData.type or "Unknown")
    end

    npcFS:ClearAllPoints()
    npcFS:SetPoint("TOPLEFT", instanceDropdown, "BOTTOMLEFT", 16, -18)

    npcDropdown = createValueDropdown(browserContent, "BrowserNpc", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    npcDropdown:SetPoint("TOPLEFT", npcFS, "BOTTOMLEFT", -16, -2)
    npcDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    selectionSummary = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    selectionSummary:SetPoint("TOPLEFT", npcDropdown, "BOTTOMLEFT", 16, -18)
    selectionSummary:SetWidth(620)

    npcSelectionLabel = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    npcSelectionLabel:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -8)
    npcSelectionLabel:SetWidth(620)

    local instancePreviewFS = createString(browserContent, "Instance Info Preview", headerFont, headerSize)
    instancePreviewFS:SetPoint("TOPLEFT", npcSelectionLabel, "BOTTOMLEFT", 0, -18)

    instancePreview = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instancePreview:SetPoint("TOPLEFT", instancePreviewFS, "BOTTOMLEFT", 0, -6)
    instancePreview:SetWidth(620)

    local instanceDetailsFS = createString(browserContent, getBrowserLocaleString("additional_details"), headerFont, headerSize)
    instanceDetailsFS:SetPoint("TOPLEFT", instancePreview, "BOTTOMLEFT", 0, -18)

    instanceDetailsPreview = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instanceDetailsPreview:SetPoint("TOPLEFT", instanceDetailsFS, "BOTTOMLEFT", 0, -6)
    instanceDetailsPreview:SetWidth(620)

    local npcPreviewFS = createString(browserContent, "NPC Tips Preview", headerFont, headerSize)
    npcPreviewFS:SetPoint("TOPLEFT", instanceDetailsPreview, "BOTTOMLEFT", 0, -18)

    npcPreview = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    npcPreview:SetPoint("TOPLEFT", npcPreviewFS, "BOTTOMLEFT", 0, -6)
    npcPreview:SetWidth(620)

    addon.contentBrowserPanel:RegisterEvent("ADDON_LOADED")
    addon.contentBrowserPanel:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" and arg1 == "Tothys-Dungeon-Tips-TBC" then
            TDTConfig = applyConfigDefaults(TDTConfig)
            browserState.expansionKey = TDTConfig.BrowserExpansionKey
            browserState.instanceKey = TDTConfig.BrowserInstanceKey
            browserState.npcID = TDTConfig.BrowserNpcID
            updateBrowserUI()
            if self.refreshScroll then self:refreshScroll() end
        end
    end)

    updateBrowserUI()
end

local function createEditorMenu()
    addon.editorPanel = CreateFrame("Frame", "TothysDungeonTipsEditor", UIParent)
    addon.editorPanel.name = getBrowserLocaleString("editor_page")
    addon.editorPanel.okay = function(self) return end
    addon.editorPanel.cancel = function(self) return end
    local editorContent = setupScrollablePanel(addon.editorPanel, "TDTEditor", 2100)

    local headerFont = "Fonts\\MORPHEUS.ttf"
    local headerSize = 16

    local title = editorContent:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText(getBrowserLocaleString("editor_title"))

    local subtitle = createString(editorContent, getBrowserLocaleString("editor_subtitle"), "Fonts\\FRIZQT__.TTF", 11)
    subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    subtitle:SetWidth(620)

    local expansionFS = createString(editorContent, "Expansion", headerFont, headerSize)
    expansionFS:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -20)

    local editorState = {
        expansionKey = TDTConfig.BrowserExpansionKey,
        instanceKey = TDTConfig.BrowserInstanceKey,
        npcID = TDTConfig.BrowserNpcID,
    }

    local expansionButton
    local instanceDropdown
    local npcDropdown
    local selectionSummary
    local npcPreview
    local addTipTypeDropdown
    local addTipWeightEdit
    local addTipTextBox
    local addTipStatus
    local personalTipsHeader
    local personalTipRows = {}
    local baseTipsHeader
    local baseTipRows = {}
    local editingTipID = nil
    local editingBaseTipID = nil

    local function setTipTypeDropdownInteractive(enabled)
        local alpha = enabled and 1 or 0.5
        addTipTypeDropdown:SetAlpha(alpha)
        local button = _G[addTipTypeDropdown:GetName() .. "Button"]
        if button then
            button:SetEnabled(enabled)
            button:SetAlpha(alpha)
        end
    end

    local function anchorBaseTipsHeader()
        local anchor = addTipStatus
        local offset = -22

        for index = #personalTipRows, 1, -1 do
            if personalTipRows[index]:IsShown() then
                anchor = personalTipRows[index]
                offset = -14
                break
            end
        end

        baseTipsHeader:ClearAllPoints()
        baseTipsHeader:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, offset)
    end

    local function ensureEditorSelection()
        local expansionKeys = getExpansionKeys()
        if #expansionKeys == 0 then
            editorState.expansionKey = nil
            editorState.instanceKey = nil
            editorState.npcID = nil
            return
        end

        local hasExpansion = false
        for _, key in ipairs(expansionKeys) do
            if key == editorState.expansionKey then
                hasExpansion = true
                break
            end
        end
        if not hasExpansion then
            editorState.expansionKey = expansionKeys[1]
        end

        local instanceKeys = getInstanceKeys(editorState.expansionKey)
        local hasInstance = false
        for _, key in ipairs(instanceKeys) do
            if key == editorState.instanceKey then
                hasInstance = true
                break
            end
        end
        if not hasInstance then
            editorState.instanceKey = instanceKeys[1]
        end

        local npcIDs = getNpcIDs(editorState.expansionKey, editorState.instanceKey)
        local hasNpc = false
        for _, npcID in ipairs(npcIDs) do
            if npcID == editorState.npcID then
                hasNpc = true
                break
            end
        end
        if not hasNpc then
            editorState.npcID = npcIDs[1]
        end
    end

    local function updateEditorUI()
        ensureEditorSelection()

        expansionButton:SetValues(getExpansionKeys())
        expansionButton:SetCurrentValue(editorState.expansionKey)
        instanceDropdown:SetValues(getInstanceKeys(editorState.expansionKey))
        instanceDropdown:SetCurrentValue(editorState.instanceKey)
        npcDropdown:SetValues(getNpcIDs(editorState.expansionKey, editorState.instanceKey))
        npcDropdown:SetCurrentValue(editorState.npcID)

        local expansionData = getExpansionData(editorState.expansionKey)
        local instanceData = getInstanceData(editorState.expansionKey, editorState.instanceKey)
        local expansionLabel = getLocalizedLabel(expansionData and expansionData.name, editorState.expansionKey or "-")
        local instanceLabel = getLocalizedLabel(instanceData and instanceData.name, editorState.instanceKey or "-")
        local npcLabel = editorState.npcID and getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, editorState.npcID) or "-"
        local mergedNpcEntries = addon.getMergedNpcTipEntries and addon:getMergedNpcTipEntries(editorState.npcID) or normalizeRawTips(getRawNpcTips(editorState.npcID))
        local personalTips = addon.getNpcUserAdditions and addon:getNpcUserAdditions(editorState.npcID) or {}
        local baseTips = addon.getNpcBaseTipsForEditor and addon:getNpcBaseTipsForEditor(editorState.npcID) or {}

        selectionSummary:SetText(string.format("Selected: %s -> %s -> %s", expansionLabel, instanceLabel, npcLabel))
        npcPreview:SetText(formatTipEntriesPreview(mergedNpcEntries))

        for _, row in ipairs(personalTipRows) do
            row:Hide()
        end
        for _, row in ipairs(baseTipRows) do
            row:Hide()
        end

        if #personalTips == 0 then
            if personalTipRows[1] then
                personalTipRows[1].text:SetText(getBrowserLocaleString("no_personal_tips"))
                personalTipRows[1].toggle:Hide()
                personalTipRows[1].edit:Hide()
                personalTipRows[1].delete:Hide()
                personalTipRows[1]:Show()
            end
        else
            for index, tip in ipairs(personalTips) do
                local row = personalTipRows[index]
                if row then
                    local hiddenLabel = tip.hidden and (" (" .. getBrowserLocaleString("hidden_tip") .. ")") or ""
                    row.text:SetText(string.format("[%s] %s (%d)%s\n%s", tip.type or "?", tip.id or "?", tip.weight or 0, hiddenLabel, tip.text or ""))
                    row.edit.tipID = tip.id
                    row.toggle:SetText(tip.hidden and getBrowserLocaleString("unhide") or getBrowserLocaleString("hide"))
                    row.toggle.tipID = tip.id
                    row.delete.tipID = tip.id
                    row.edit:Show()
                    row.toggle:Show()
                    row.delete:Show()
                    row:Show()
                end
            end
        end

        anchorBaseTipsHeader()

        if #baseTips == 0 then
            if baseTipRows[1] then
                baseTipRows[1].text:SetText(getBrowserLocaleString("no_base_tips"))
                baseTipRows[1].edit:Hide()
                baseTipRows[1].toggle:Hide()
                baseTipRows[1].reset:Hide()
                baseTipRows[1]:Show()
            end
        else
            for index, tip in ipairs(baseTips) do
                local row = baseTipRows[index]
                if row then
                    local statusBits = {}
                    if tip.hidden then
                        statusBits[#statusBits + 1] = getBrowserLocaleString("hidden_tip")
                    end
                    if tip.overridden then
                        statusBits[#statusBits + 1] = getBrowserLocaleString("overridden_tip")
                    end
                    if not tip.canModify then
                        statusBits[#statusBits + 1] = getBrowserLocaleString("legacy_tip")
                    end
                    local statusLabel = #statusBits > 0 and (" (" .. table.concat(statusBits, ", ") .. ")") or ""
                    local displayText
                    if tip.overridden and tip.overrideText then
                        local overrideWeight = tip.overrideWeight ~= nil and tip.overrideWeight or tip.weight or 0
                        displayText = string.format(
                            "[%s] %s (%d)%s\nOverride: %s\nOriginal (%d): %s",
                            tip.type or "?",
                            tip.id or "-",
                            overrideWeight,
                            statusLabel,
                            tip.overrideText or "",
                            tip.weight or 0,
                            tip.text or ""
                        )
                    else
                        displayText = string.format("[%s] %s (%d)%s\n%s", tip.type or "?", tip.id or "-", tip.weight or 0, statusLabel, tip.text or "")
                    end
                    row.text:SetText(displayText)
                    row.edit.tipID = tip.id
                    row.toggle.tipID = tip.id
                    row.reset.tipID = tip.id
                    if tip.canModify then
                        row.edit:Show()
                        row.toggle:SetText(tip.hidden and getBrowserLocaleString("unhide") or getBrowserLocaleString("hide"))
                        row.toggle:Show()
                        row.reset:Show()
                    else
                        row.edit:Hide()
                        row.toggle:Hide()
                        row.reset:Hide()
                    end
                    row:Show()
                end
            end
        end
    end

    expansionButton = createCycleButton(editorContent, "EditorExpansion", getExpansionKeys(), function(value)
        editorState.expansionKey = value
        editorState.instanceKey = nil
        editorState.npcID = nil
        updateEditorUI()
    end)
    expansionButton:SetPoint("TOPLEFT", expansionFS, "BOTTOMLEFT", 0, -8)
    expansionButton.labelForValue = function(value)
        local expansionData = getExpansionData(value)
        return getLocalizedLabel(expansionData and expansionData.name, value)
    end

    local instanceFS = createString(editorContent, "Dungeon / Raid", headerFont, headerSize)
    instanceFS:SetPoint("TOPLEFT", expansionButton, "BOTTOMLEFT", 0, -24)

    instanceDropdown = createValueDropdown(editorContent, "EditorInstance", 220, function(value)
        editorState.instanceKey = value
        editorState.npcID = nil
        updateEditorUI()
    end)
    instanceDropdown:SetPoint("TOPLEFT", instanceFS, "BOTTOMLEFT", -16, -2)
    instanceDropdown.labelForValue = function(value)
        local instanceData = getInstanceData(editorState.expansionKey, value)
        if not instanceData then
            return value or "-"
        end

        return string.format("%s (%s)", getLocalizedLabel(instanceData.name, value), instanceData.type or "Unknown")
    end

    local npcFS = createString(editorContent, "NPC", headerFont, headerSize)
    npcFS:SetPoint("TOPLEFT", instanceDropdown, "BOTTOMLEFT", 16, -18)

    npcDropdown = createValueDropdown(editorContent, "EditorNpc", 240, function(value)
        editorState.npcID = value
        updateEditorUI()
    end)
    npcDropdown:SetPoint("TOPLEFT", npcFS, "BOTTOMLEFT", -16, -2)
    npcDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, value)
    end

    selectionSummary = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    selectionSummary:SetPoint("TOPLEFT", npcDropdown, "BOTTOMLEFT", 16, -18)
    selectionSummary:SetWidth(620)

    local npcPreviewFS = createString(editorContent, "NPC Tips Preview", headerFont, headerSize)
    npcPreviewFS:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -18)

    npcPreview = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    npcPreview:SetPoint("TOPLEFT", npcPreviewFS, "BOTTOMLEFT", 0, -6)
    npcPreview:SetWidth(620)

    local addTipHeader = createString(editorContent, getBrowserLocaleString("add_npc_tip"), headerFont, headerSize)
    addTipHeader:SetPoint("TOPLEFT", npcPreview, "BOTTOMLEFT", 0, -22)

    local addTipTypeLabel = createString(editorContent, getBrowserLocaleString("tip_type"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTypeLabel:SetPoint("TOPLEFT", addTipHeader, "BOTTOMLEFT", 0, -8)

    addTipTypeDropdown = createValueDropdown(editorContent, "EditorAddTipType", 220, function(value) end)
    addTipTypeDropdown:SetPoint("TOPLEFT", addTipTypeLabel, "BOTTOMLEFT", -16, -2)
    addTipTypeDropdown:SetValues(authorTipTypes)
    addTipTypeDropdown.labelForValue = function(value)
        return tostring(value or "-")
    end
    addTipTypeDropdown:SetCurrentValue("Personal")

    local addTipWeightLabel = createString(editorContent, getBrowserLocaleString("tip_weight"), "Fonts\\FRIZQT__.TTF", 11)
    addTipWeightLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "TOPRIGHT", 40, 2)

    addTipWeightEdit = createSingleLineInput(editorContent, 70, 24)
    addTipWeightEdit:SetPoint("TOPLEFT", addTipWeightLabel, "BOTTOMLEFT", 0, -6)
    addTipWeightEdit:SetText("15")

    local addTipTextLabel = createString(editorContent, getBrowserLocaleString("tip_text"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTextLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "BOTTOMLEFT", 16, -18)

    local addTipTextContainer
    addTipTextContainer, addTipTextBox = createMultiLineInput(editorContent, 620, 96)
    addTipTextContainer:SetPoint("TOPLEFT", addTipTextLabel, "BOTTOMLEFT", 0, -8)
    addTipTextBox:SetText(getBrowserLocaleString("default_tip_text"))

    local saveTipButton = CreateFrame("Button", "TDTEditorSaveNpcTip", editorContent, "UIPanelButtonTemplate")
    saveTipButton:SetSize(140, 24)
    saveTipButton:SetPoint("TOPLEFT", addTipTextContainer, "BOTTOMLEFT", 0, -12)
    saveTipButton:SetText(getBrowserLocaleString("save_tip"))

    local cancelEditButton = CreateFrame("Button", "TDTEditorCancelNpcTipEdit", editorContent, "UIPanelButtonTemplate")
    cancelEditButton:SetSize(140, 24)
    cancelEditButton:SetPoint("LEFT", saveTipButton, "RIGHT", 12, 0)
    cancelEditButton:SetText(getBrowserLocaleString("cancel_edit"))
    cancelEditButton:Hide()

    addTipStatus = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    addTipStatus:SetPoint("TOPLEFT", saveTipButton, "BOTTOMLEFT", 0, -8)
    addTipStatus:SetWidth(620)

    personalTipsHeader = createString(editorContent, getBrowserLocaleString("personal_tips"), headerFont, headerSize)
    personalTipsHeader:SetPoint("TOPLEFT", addTipStatus, "BOTTOMLEFT", 0, -22)

    for index = 1, 10 do
        local row = CreateFrame("Frame", nil, editorContent)
        row:SetSize(620, 58)
        if index == 1 then
            row:SetPoint("TOPLEFT", personalTipsHeader, "BOTTOMLEFT", 0, -8)
        else
            row:SetPoint("TOPLEFT", personalTipRows[index - 1], "BOTTOMLEFT", 0, -10)
        end

        row.text = createString(row, "", "Fonts\\FRIZQT__.TTF", 11)
        row.text:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 0)
        row.text:SetWidth(340)

        row.edit = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.edit:SetSize(80, 22)
        row.edit:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, 0)
        row.edit:SetText(getBrowserLocaleString("edit"))
        row.edit:SetScript("OnClick", function(self)
            local additions = addon:getNpcUserAdditions(editorState.npcID)
            for _, addition in ipairs(additions) do
                if addition.id == self.tipID then
                    editingBaseTipID = nil
                    editingTipID = addition.id
                    setTipTypeDropdownInteractive(true)
                    addTipTypeDropdown:SetCurrentValue(addition.type or "Personal")
                    addTipWeightEdit:SetText(tostring(addition.weight or 15))
                    addTipTextBox:SetText(addition.text or "")
                    saveTipButton:SetText(getBrowserLocaleString("update_tip"))
                    cancelEditButton:Show()
                    addTipStatus:SetText(getBrowserLocaleString("edit_loaded"))
                    break
                end
            end
        end)

        row.toggle = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.toggle:SetSize(80, 22)
        row.toggle:SetPoint("TOPRIGHT", row.edit, "BOTTOMRIGHT", 0, -6)
        row.toggle:SetScript("OnClick", function(self)
            if addon.setNpcUserTipHidden and editorState.npcID and self.tipID then
                local additions = addon:getNpcUserAdditions(editorState.npcID)
                for _, addition in ipairs(additions) do
                    if addition.id == self.tipID then
                        addon:setNpcUserTipHidden(editorState.npcID, self.tipID, not addition.hidden)
                        updateEditorUI()
                        break
                    end
                end
            end
        end)

        row.delete = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.delete:SetSize(80, 22)
        row.delete:SetPoint("TOPRIGHT", row.toggle, "BOTTOMRIGHT", 0, -6)
        row.delete:SetText(getBrowserLocaleString("delete"))
        row.delete:SetScript("OnClick", function(self)
            if addon.deleteNpcUserTip and editorState.npcID and self.tipID then
                if editingTipID == self.tipID then
                    editingTipID = nil
                    addTipTextBox:SetText("")
                    addTipWeightEdit:SetText("15")
                    addTipTypeDropdown:SetCurrentValue("Personal")
                    saveTipButton:SetText(getBrowserLocaleString("save_tip"))
                    cancelEditButton:Hide()
                end
                addon:deleteNpcUserTip(editorState.npcID, self.tipID)
                updateEditorUI()
            end
        end)

        row:Hide()
        personalTipRows[index] = row
    end

    baseTipsHeader = createString(editorContent, getBrowserLocaleString("base_tips"), headerFont, headerSize)
    baseTipsHeader:SetPoint("TOPLEFT", addTipStatus, "BOTTOMLEFT", 0, -22)

    for index = 1, 14 do
        local row = CreateFrame("Frame", nil, editorContent)
        row:SetSize(620, 78)
        if index == 1 then
            row:SetPoint("TOPLEFT", baseTipsHeader, "BOTTOMLEFT", 0, -8)
        else
            row:SetPoint("TOPLEFT", baseTipRows[index - 1], "BOTTOMLEFT", 0, -10)
        end

        row.text = createString(row, "", "Fonts\\FRIZQT__.TTF", 11)
        row.text:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 0)
        row.text:SetWidth(430)

        row.toggle = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.toggle:SetSize(80, 22)
        row.toggle:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, 0)
        row.toggle:SetScript("OnClick", function(self)
            if addon.setNpcBaseTipHidden and editorState.npcID and self.tipID then
                local baseTips = addon:getNpcBaseTipsForEditor(editorState.npcID)
                for _, baseTip in ipairs(baseTips) do
                    if baseTip.id == self.tipID then
                        addon:setNpcBaseTipHidden(editorState.npcID, self.tipID, not baseTip.hidden)
                        updateEditorUI()
                        break
                    end
                end
            end
        end)

        row.reset = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.reset:SetSize(80, 22)
        row.reset:SetPoint("TOPRIGHT", row.toggle, "BOTTOMRIGHT", 0, -6)
        row.reset:SetText(getBrowserLocaleString("reset"))
        row.reset:SetScript("OnClick", function(self)
            if addon.resetNpcBaseTip and editorState.npcID and self.tipID then
                if editingBaseTipID == self.tipID then
                    editingBaseTipID = nil
                    addTipTextBox:SetText("")
                    addTipWeightEdit:SetText("15")
                    addTipTypeDropdown:SetCurrentValue("Personal")
                    setTipTypeDropdownInteractive(true)
                    saveTipButton:SetText(getBrowserLocaleString("save_tip"))
                    cancelEditButton:Hide()
                end
                addon:resetNpcBaseTip(editorState.npcID, self.tipID)
                updateEditorUI()
            end
        end)

        row.edit = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.edit:SetSize(80, 22)
        row.edit:SetPoint("TOPRIGHT", row.reset, "BOTTOMRIGHT", 0, -6)
        row.edit:SetText(getBrowserLocaleString("edit_base"))
        row.edit:SetScript("OnClick", function(self)
            local baseTips = addon:getNpcBaseTipsForEditor(editorState.npcID)
            for _, baseTip in ipairs(baseTips) do
                if baseTip.id == self.tipID and baseTip.canModify then
                    editingTipID = nil
                    editingBaseTipID = baseTip.id
                    addTipTypeDropdown:SetCurrentValue(baseTip.type or "Important")
                    setTipTypeDropdownInteractive(false)
                    addTipWeightEdit:SetText(tostring(baseTip.overrideWeight or baseTip.weight or 0))
                    addTipTextBox:SetText(baseTip.overrideText or baseTip.text or "")
                    saveTipButton:SetText(getBrowserLocaleString("update_base_tip"))
                    cancelEditButton:Show()
                    addTipStatus:SetText(getBrowserLocaleString("base_edit_loaded"))
                    break
                end
            end
        end)

        row:Hide()
        baseTipRows[index] = row
    end

    cancelEditButton:SetScript("OnClick", function()
        editingTipID = nil
        editingBaseTipID = nil
        addTipTextBox:SetText("")
        addTipWeightEdit:SetText("15")
        addTipTypeDropdown:SetCurrentValue("Personal")
        setTipTypeDropdownInteractive(true)
        saveTipButton:SetText(getBrowserLocaleString("save_tip"))
        cancelEditButton:Hide()
        addTipStatus:SetText("")
    end)

    saveTipButton:SetScript("OnClick", function()
        local selectedType = addTipTypeDropdown.currentValue or "Personal"
        local tipText = addTipTextBox:GetText() or ""
        tipText = tipText:gsub("^%s+", ""):gsub("%s+$", "")
        local weight = tonumber(addTipWeightEdit:GetText()) or 15

        if tipText == "" or tipText == getBrowserLocaleString("default_tip_text") then
            addTipStatus:SetText(getBrowserLocaleString("missing_tip"))
            return
        end

        if editorState.npcID then
            if editingTipID and addon.updateNpcUserTip then
                addon:updateNpcUserTip(editorState.npcID, editingTipID, selectedType, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("updated_tip"))
            elseif editingBaseTipID and addon.updateNpcBaseTipOverride then
                addon:updateNpcBaseTipOverride(editorState.npcID, editingBaseTipID, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("updated_base_tip"))
            elseif addon.addNpcUserTip then
                addon:addNpcUserTip(editorState.npcID, selectedType, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("saved_tip"))
            end

            editingTipID = nil
            editingBaseTipID = nil
            addTipTextBox:SetText("")
            addTipWeightEdit:SetText("15")
            addTipTypeDropdown:SetCurrentValue("Personal")
            setTipTypeDropdownInteractive(true)
            saveTipButton:SetText(getBrowserLocaleString("save_tip"))
            cancelEditButton:Hide()
            updateEditorUI()
            if addon.editorPanel.refreshScroll then
                addon.editorPanel:refreshScroll()
            end
        end
    end)

    addon.editorPanel:RegisterEvent("ADDON_LOADED")
    addon.editorPanel:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" and arg1 == "Tothys-Dungeon-Tips-TBC" then
            TDTConfig = applyConfigDefaults(TDTConfig)
            editorState.expansionKey = TDTConfig.BrowserExpansionKey
            editorState.instanceKey = TDTConfig.BrowserInstanceKey
            editorState.npcID = TDTConfig.BrowserNpcID
            updateEditorUI()
            if self.refreshScroll then self:refreshScroll() end
        end
    end)

    updateEditorUI()
end

local function createDungeonEditorMenu()
    addon.dungeonEditorPanel = CreateFrame("Frame", "TothysDungeonTipsDungeonEditor", UIParent)
    addon.dungeonEditorPanel.name = getBrowserLocaleString("dungeon_editor_page")
    addon.dungeonEditorPanel.okay = function(self) return end
    addon.dungeonEditorPanel.cancel = function(self) return end
    local editorContent = setupScrollablePanel(addon.dungeonEditorPanel, "TDTDungeonEditor", 1700)

    local headerFont = "Fonts\\MORPHEUS.ttf"
    local headerSize = 16

    local title = editorContent:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText(getBrowserLocaleString("dungeon_editor_title"))

    local subtitle = createString(editorContent, getBrowserLocaleString("dungeon_editor_subtitle"), "Fonts\\FRIZQT__.TTF", 11)
    subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    subtitle:SetWidth(620)

    local editorState = {
        expansionKey = TDTConfig.BrowserExpansionKey,
        instanceKey = TDTConfig.BrowserInstanceKey,
    }

    local expansionButton
    local instanceDropdown
    local selectionSummary
    local instancePreview
    local addTipTypeDropdown
    local addTipWeightEdit
    local addTipTextBox
    local addTipStatus
    local personalTipsHeader
    local personalTipRows = {}
    local editingTipID = nil

    local function ensureEditorSelection()
        local expansionKeys = getExpansionKeys()
        if #expansionKeys == 0 then
            editorState.expansionKey = nil
            editorState.instanceKey = nil
            return
        end

        local hasExpansion = false
        for _, key in ipairs(expansionKeys) do
            if key == editorState.expansionKey then
                hasExpansion = true
                break
            end
        end
        if not hasExpansion then
            editorState.expansionKey = expansionKeys[1]
        end

        local instanceKeys = getInstanceKeys(editorState.expansionKey)
        local hasInstance = false
        for _, key in ipairs(instanceKeys) do
            if key == editorState.instanceKey then
                hasInstance = true
                break
            end
        end
        if not hasInstance then
            editorState.instanceKey = instanceKeys[1]
        end
    end

    local function updateDungeonEditorUI()
        ensureEditorSelection()

        expansionButton:SetValues(getExpansionKeys())
        expansionButton:SetCurrentValue(editorState.expansionKey)
        instanceDropdown:SetValues(getInstanceKeys(editorState.expansionKey))
        instanceDropdown:SetCurrentValue(editorState.instanceKey)

        local expansionData = getExpansionData(editorState.expansionKey)
        local instanceData = getInstanceData(editorState.expansionKey, editorState.instanceKey)
        local expansionLabel = getLocalizedLabel(expansionData and expansionData.name, editorState.expansionKey or "-")
        local instanceLabel = getLocalizedLabel(instanceData and instanceData.name, editorState.instanceKey or "-")
        local mergedInstanceEntries = addon.getMergedInstanceTipEntries and addon:getMergedInstanceTipEntries(editorState.instanceKey) or {}
        local userTips = addon.getInstanceUserAdditions and addon:getInstanceUserAdditions(editorState.instanceKey) or {}

        selectionSummary:SetText(string.format("%s: %s -> %s", getBrowserLocaleString("instance_summary_prefix"), expansionLabel, instanceLabel))
        instancePreview:SetText(formatTipEntriesPreview(mergedInstanceEntries))

        for _, row in ipairs(personalTipRows) do
            row:Hide()
        end

        if #userTips == 0 then
            if personalTipRows[1] then
                personalTipRows[1].text:SetText(getBrowserLocaleString("no_user_instance_tips"))
                personalTipRows[1].toggle:Hide()
                personalTipRows[1].edit:Hide()
                personalTipRows[1].delete:Hide()
                personalTipRows[1]:Show()
            end
        else
            for index, tip in ipairs(userTips) do
                local row = personalTipRows[index]
                if row then
                    local hiddenLabel = tip.hidden and (" (" .. getBrowserLocaleString("hidden_tip") .. ")") or ""
                    row.text:SetText(string.format("[%s] %s (%d)%s\n%s", tip.type or "?", tip.id or "?", tip.weight or 0, hiddenLabel, tip.text or ""))
                    row.edit.tipID = tip.id
                    row.toggle:SetText(tip.hidden and getBrowserLocaleString("unhide") or getBrowserLocaleString("hide"))
                    row.toggle.tipID = tip.id
                    row.delete.tipID = tip.id
                    row.edit:Show()
                    row.toggle:Show()
                    row.delete:Show()
                    row:Show()
                end
            end
        end
    end

    local expansionFS = createString(editorContent, "Expansion", headerFont, headerSize)
    expansionFS:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -20)

    expansionButton = createCycleButton(editorContent, "DungeonEditorExpansion", getExpansionKeys(), function(value)
        editorState.expansionKey = value
        editorState.instanceKey = nil
        updateDungeonEditorUI()
    end)
    expansionButton:SetPoint("TOPLEFT", expansionFS, "BOTTOMLEFT", 0, -8)
    expansionButton.labelForValue = function(value)
        local expansionData = getExpansionData(value)
        return getLocalizedLabel(expansionData and expansionData.name, value)
    end

    local instanceFS = createString(editorContent, "Dungeon / Raid", headerFont, headerSize)
    instanceFS:SetPoint("TOPLEFT", expansionButton, "BOTTOMLEFT", 0, -24)

    instanceDropdown = createValueDropdown(editorContent, "DungeonEditorInstance", 220, function(value)
        editorState.instanceKey = value
        updateDungeonEditorUI()
    end)
    instanceDropdown:SetPoint("TOPLEFT", instanceFS, "BOTTOMLEFT", -16, -2)
    instanceDropdown.labelForValue = function(value)
        local instanceData = getInstanceData(editorState.expansionKey, value)
        if not instanceData then
            return value or "-"
        end

        return string.format("%s (%s)", getLocalizedLabel(instanceData.name, value), instanceData.type or "Unknown")
    end

    selectionSummary = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    selectionSummary:SetPoint("TOPLEFT", instanceDropdown, "BOTTOMLEFT", 16, -18)
    selectionSummary:SetWidth(620)

    local instancePreviewFS = createString(editorContent, getBrowserLocaleString("instance_tips_preview"), headerFont, headerSize)
    instancePreviewFS:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -18)

    instancePreview = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instancePreview:SetPoint("TOPLEFT", instancePreviewFS, "BOTTOMLEFT", 0, -6)
    instancePreview:SetWidth(620)

    local addTipHeader = createString(editorContent, getBrowserLocaleString("add_instance_tip"), headerFont, headerSize)
    addTipHeader:SetPoint("TOPLEFT", instancePreview, "BOTTOMLEFT", 0, -22)

    local addTipTypeLabel = createString(editorContent, getBrowserLocaleString("tip_type"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTypeLabel:SetPoint("TOPLEFT", addTipHeader, "BOTTOMLEFT", 0, -8)

    addTipTypeDropdown = createValueDropdown(editorContent, "DungeonEditorAddTipType", 220, function(value) end)
    addTipTypeDropdown:SetPoint("TOPLEFT", addTipTypeLabel, "BOTTOMLEFT", -16, -2)
    addTipTypeDropdown:SetValues(authorTipTypes)
    addTipTypeDropdown.labelForValue = function(value)
        return tostring(value or "-")
    end
    addTipTypeDropdown:SetCurrentValue("Personal")

    local addTipWeightLabel = createString(editorContent, getBrowserLocaleString("tip_weight"), "Fonts\\FRIZQT__.TTF", 11)
    addTipWeightLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "TOPRIGHT", 40, 2)

    addTipWeightEdit = createSingleLineInput(editorContent, 70, 24)
    addTipWeightEdit:SetPoint("TOPLEFT", addTipWeightLabel, "BOTTOMLEFT", 0, -6)
    addTipWeightEdit:SetText("15")

    local addTipTextLabel = createString(editorContent, getBrowserLocaleString("tip_text"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTextLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "BOTTOMLEFT", 16, -18)

    local addTipTextContainer
    addTipTextContainer, addTipTextBox = createMultiLineInput(editorContent, 620, 96)
    addTipTextContainer:SetPoint("TOPLEFT", addTipTextLabel, "BOTTOMLEFT", 0, -8)
    addTipTextBox:SetText(getBrowserLocaleString("default_tip_text"))

    local saveTipButton = CreateFrame("Button", "TDTDungeonEditorSaveTip", editorContent, "UIPanelButtonTemplate")
    saveTipButton:SetSize(140, 24)
    saveTipButton:SetPoint("TOPLEFT", addTipTextContainer, "BOTTOMLEFT", 0, -12)
    saveTipButton:SetText(getBrowserLocaleString("save_tip"))

    local cancelEditButton = CreateFrame("Button", "TDTDungeonEditorCancelTipEdit", editorContent, "UIPanelButtonTemplate")
    cancelEditButton:SetSize(140, 24)
    cancelEditButton:SetPoint("LEFT", saveTipButton, "RIGHT", 12, 0)
    cancelEditButton:SetText(getBrowserLocaleString("cancel_edit"))
    cancelEditButton:Hide()

    addTipStatus = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    addTipStatus:SetPoint("TOPLEFT", saveTipButton, "BOTTOMLEFT", 0, -8)
    addTipStatus:SetWidth(620)

    personalTipsHeader = createString(editorContent, getBrowserLocaleString("user_instance_tips"), headerFont, headerSize)
    personalTipsHeader:SetPoint("TOPLEFT", addTipStatus, "BOTTOMLEFT", 0, -22)

    for index = 1, 10 do
        local row = CreateFrame("Frame", nil, editorContent)
        row:SetSize(620, 58)
        if index == 1 then
            row:SetPoint("TOPLEFT", personalTipsHeader, "BOTTOMLEFT", 0, -8)
        else
            row:SetPoint("TOPLEFT", personalTipRows[index - 1], "BOTTOMLEFT", 0, -10)
        end

        row.text = createString(row, "", "Fonts\\FRIZQT__.TTF", 11)
        row.text:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 0)
        row.text:SetWidth(340)

        row.edit = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.edit:SetSize(80, 22)
        row.edit:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, 0)
        row.edit:SetText(getBrowserLocaleString("edit"))
        row.edit:SetScript("OnClick", function(self)
            local additions = addon:getInstanceUserAdditions(editorState.instanceKey)
            for _, addition in ipairs(additions) do
                if addition.id == self.tipID then
                    editingTipID = addition.id
                    addTipTypeDropdown:SetCurrentValue(addition.type or "Personal")
                    addTipWeightEdit:SetText(tostring(addition.weight or 15))
                    addTipTextBox:SetText(addition.text or "")
                    saveTipButton:SetText(getBrowserLocaleString("update_tip"))
                    cancelEditButton:Show()
                    addTipStatus:SetText(getBrowserLocaleString("instance_edit_loaded"))
                    break
                end
            end
        end)

        row.toggle = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.toggle:SetSize(80, 22)
        row.toggle:SetPoint("TOPRIGHT", row.edit, "BOTTOMRIGHT", 0, -6)
        row.toggle:SetScript("OnClick", function(self)
            if addon.setInstanceUserTipHidden and editorState.instanceKey and self.tipID then
                local additions = addon:getInstanceUserAdditions(editorState.instanceKey)
                for _, addition in ipairs(additions) do
                    if addition.id == self.tipID then
                        addon:setInstanceUserTipHidden(editorState.instanceKey, self.tipID, not addition.hidden)
                        updateDungeonEditorUI()
                        break
                    end
                end
            end
        end)

        row.delete = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.delete:SetSize(80, 22)
        row.delete:SetPoint("TOPRIGHT", row.toggle, "BOTTOMRIGHT", 0, -6)
        row.delete:SetText(getBrowserLocaleString("delete"))
        row.delete:SetScript("OnClick", function(self)
            if addon.deleteInstanceUserTip and editorState.instanceKey and self.tipID then
                if editingTipID == self.tipID then
                    editingTipID = nil
                    addTipTextBox:SetText("")
                    addTipWeightEdit:SetText("15")
                    addTipTypeDropdown:SetCurrentValue("Personal")
                    saveTipButton:SetText(getBrowserLocaleString("save_tip"))
                    cancelEditButton:Hide()
                end
                addon:deleteInstanceUserTip(editorState.instanceKey, self.tipID)
                updateDungeonEditorUI()
            end
        end)

        row:Hide()
        personalTipRows[index] = row
    end

    cancelEditButton:SetScript("OnClick", function()
        editingTipID = nil
        addTipTextBox:SetText("")
        addTipWeightEdit:SetText("15")
        addTipTypeDropdown:SetCurrentValue("Personal")
        saveTipButton:SetText(getBrowserLocaleString("save_tip"))
        cancelEditButton:Hide()
        addTipStatus:SetText("")
    end)

    saveTipButton:SetScript("OnClick", function()
        local selectedType = addTipTypeDropdown.currentValue or "Personal"
        local tipText = addTipTextBox:GetText() or ""
        tipText = tipText:gsub("^%s+", ""):gsub("%s+$", "")
        local weight = tonumber(addTipWeightEdit:GetText()) or 15

        if tipText == "" or tipText == getBrowserLocaleString("default_tip_text") then
            addTipStatus:SetText(getBrowserLocaleString("missing_tip"))
            return
        end

        if editorState.instanceKey then
            if editingTipID and addon.updateInstanceUserTip then
                addon:updateInstanceUserTip(editorState.instanceKey, editingTipID, selectedType, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("updated_instance_tip"))
            elseif addon.addInstanceUserTip then
                addon:addInstanceUserTip(editorState.instanceKey, selectedType, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("saved_instance_tip"))
            end

            editingTipID = nil
            addTipTextBox:SetText("")
            addTipWeightEdit:SetText("15")
            addTipTypeDropdown:SetCurrentValue("Personal")
            saveTipButton:SetText(getBrowserLocaleString("save_tip"))
            cancelEditButton:Hide()
            updateDungeonEditorUI()
            if addon.dungeonEditorPanel.refreshScroll then
                addon.dungeonEditorPanel:refreshScroll()
            end
        end
    end)

    addon.dungeonEditorPanel:RegisterEvent("ADDON_LOADED")
    addon.dungeonEditorPanel:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" and arg1 == "Tothys-Dungeon-Tips-TBC" then
            TDTConfig = applyConfigDefaults(TDTConfig)
            editorState.expansionKey = TDTConfig.BrowserExpansionKey
            editorState.instanceKey = TDTConfig.BrowserInstanceKey
            updateDungeonEditorUI()
            if self.refreshScroll then self:refreshScroll() end
        end
    end)

    updateDungeonEditorUI()
end

local function createInfoMenu()
    addon.infoPanel = CreateFrame("Frame", "TothysDungeonTipsInfo", UIParent)
    addon.infoPanel.name = getBrowserLocaleString("info_page")
    addon.infoPanel.okay = function(self) return end
    addon.infoPanel.cancel = function(self) return end
    local infoContent = setupScrollablePanel(addon.infoPanel, "TDTInfo", 900)

    local title = infoContent:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText("Kiesel Dungeon Tool - Info")

    local intro = createString(infoContent, "Kiesel Dungeon Tool is a successor to QE Dungeon Tips.", "Fonts\\FRIZQT__.TTF", 12)
    intro:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
    intro:SetWidth(620)

    local originHeader = createString(infoContent, "Background", "Fonts\\MORPHEUS.ttf", 16)
    originHeader:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", 0, -18)

    local originText = createString(infoContent,
        "QE Dungeon Tips did great groundwork and provided the base inspiration for this addon. The original project helped establish the structure and the idea of contextual dungeon and NPC guidance.\n\nThis addon exists because QE Dungeon Tips no longer worked reliably for TBC Anniversary, so we are rebuilding and extending the concept in a form that fits the current project goals.",
        "Fonts\\FRIZQT__.TTF",
        11)
    originText:SetPoint("TOPLEFT", originHeader, "BOTTOMLEFT", 0, -8)
    originText:SetWidth(620)

    local statusHeader = createString(infoContent, "Project Status", "Fonts\\MORPHEUS.ttf", 16)
    statusHeader:SetPoint("TOPLEFT", originText, "BOTTOMLEFT", 0, -18)

    local statusText = createString(infoContent,
        "Kiesel Dungeon Tool is still actively in development and is not complete yet.\n\nSome instances and NPCs are already structured in the new browser and data model, but the addon is still being expanded, cleaned up, and documented. Expect missing content, placeholder areas, and ongoing iteration while the new system is built out.",
        "Fonts\\FRIZQT__.TTF",
        11)
    statusText:SetPoint("TOPLEFT", statusHeader, "BOTTOMLEFT", 0, -8)
    statusText:SetWidth(620)

    local roadmapHeader = createString(infoContent, "Current Focus", "Fonts\\MORPHEUS.ttf", 16)
    roadmapHeader:SetPoint("TOPLEFT", statusText, "BOTTOMLEFT", 0, -18)

    local roadmapText = createString(infoContent,
        "Current work focuses on:\n- structured expansion, instance, and NPC browsing\n- tactical instance info and browser-only Zusatzinfos\n- locale-aware data handling\n- a future user override layer that stays update-safe",
        "Fonts\\FRIZQT__.TTF",
        11)
    roadmapText:SetPoint("TOPLEFT", roadmapHeader, "BOTTOMLEFT", 0, -8)
    roadmapText:SetWidth(620)

    addon.infoPanel:SetScript("OnShow", function(self)
        if self.refreshScroll then
            self:refreshScroll()
        end
    end)
end

local function createConfigMenu()

	-- Setup Panel --
	addon.configPanel = CreateFrame("Frame", "TothysDungeonTipsConfiguration", UIParent)
	addon.configPanel.name = "Kiesel Dungeon Tool";
	addon.configPanel.okay = function (self) return end
	addon.configPanel.cancel = function (self) return end
	local configContent = setupScrollablePanel(addon.configPanel, "TDTMainConfig", 1500)
	
	-- Set up Title --
	local ddTitleString = configContent:CreateFontString()
	ddTitleString:SetPoint("TOPLEFT", 10, -10)
	ddTitleString:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
	ddTitleString:SetTextColor(0.9, 0.68, 0.22, 1)
	ddTitleString:SetText("Kiesel Dungeon Tool - Config")

	
	-----------------------
	-- Set up Checkboxes --
	-----------------------
	local chkGeneral = createCheck("General", "Show Important General Information", configContent, function(self, value) end)
	chkGeneral:SetPoint("TOPLEFT", ddTitleString, "BOTTOMLEFT", 0, -10)
	chkGeneral:SetEnabled(false)
	chkGeneral:SetChecked(true)
	
	local chkPriority = createCheck("PriorityTargets", "Show Priority Targets", configContent, function(self, value) TDTConfig.PriorityTargets = self:GetChecked() end)
	chkPriority:SetPoint("TOPLEFT", chkGeneral, "BOTTOMLEFT", 0, -8)
	
	local chkInterrupts = createCheck("Interrupts", "Show Priority Interrupts", configContent, function(self, value) TDTConfig.Interrupts = self:GetChecked() end)
	chkInterrupts:SetPoint("TOPLEFT", chkPriority, "BOTTOMLEFT", 0, -8)
	
	local chkDefensives = createCheck("Defensives", "Show Defensive Recommendations", configContent, function(self, value) TDTConfig.Defensives = self:GetChecked() end)
	chkDefensives:SetPoint("TOPLEFT", chkInterrupts, "BOTTOMLEFT", 0, -8)
	
	local chkFluff = createCheck("Fluff", "Show Fluff", configContent, function(self, value) TDTConfig.Fluff = self:GetChecked() end)
	chkFluff:SetPoint("TOPLEFT", chkDefensives, "BOTTOMLEFT", 0, -8)
	
	local chkAdvanced = createCheck("Advanced", "Show advanced tips for high level keys", configContent, function(self, value) TDTConfig.Advanced = self:GetChecked() end)
	chkAdvanced:SetPoint("TOPLEFT", chkFluff, "BOTTOMLEFT", 0, -8)

	local chkPersonal = createCheck("Personal", "Show Personal Notes", configContent, function(self, value) TDTConfig.Personal = self:GetChecked() end)
	chkPersonal:SetPoint("TOPLEFT", chkAdvanced, "BOTTOMLEFT", 0, -8)
	
	
	----------------------------
	-- Setup "Dropdown" boxes --
	----------------------------
	-- Dropdown Taint Sucks
	local headerFont = "Fonts\\MORPHEUS.ttf"
	local headerSize = 16
	
	-- Tip Location Selector --
	local locFS = createString(configContent, "Tip Location", headerFont, headerSize)
	locFS:SetPoint("TOPLEFT", chkPersonal, "BOTTOMLEFT", 0, -30)
	
	--locDD = createDropdown(addon.configPanel, "TipLocation", "Show in separate frame", "Show in mob tooltips", "ShowFrame")
	--locDD:SetPoint("TOPLEFT", locFS, "BOTTOMLEFT", 0, -8)
	local locCB = createCheck("Location", "Show tips in separate frame", configContent, 
			function(self, value)
				if self:GetChecked() then
					TDTConfig.ShowFrame = "Show in separate frame"
				else
					TDTConfig.ShowFrame = "Show in mob tooltips"
				end
				addon:setEnabled() -- This just clears the addons frame.
				--addon:setMinimized(true) -- Ensures the tip frame is showing.
				addon:setDropdownEnabled() -- This shows / hides a second dropdown based on the current selection.
			end)
	locCB.tooltip = "Uncheck to have tips appear in mob tooltips instead"
	locCB:SetPoint("TOPLEFT", locFS, "BOTTOMLEFT", 0, -8)

	local showFrameBtn = CreateFrame("Button", "TDTConfigShowFrameBtn", configContent, "UIPanelButtonTemplate")
	showFrameBtn:SetSize(90, 22)
	showFrameBtn:SetPoint("TOPLEFT", locCB, "BOTTOMLEFT", 0, -8)
	showFrameBtn:SetText("Show Frame")
	showFrameBtn:SetScript("OnClick", function()
		if TDT_ParentFrame then
			TDT_ParentFrame:Show()
			if addon.setMinimized then
				addon:setMinimized(true)
			end
		end
	end)

	local hideFrameBtn = CreateFrame("Button", "TDTConfigHideFrameBtn", configContent, "UIPanelButtonTemplate")
	hideFrameBtn:SetSize(90, 22)
	hideFrameBtn:SetPoint("LEFT", showFrameBtn, "RIGHT", 8, 0)
	hideFrameBtn:SetText("Hide Frame")
	hideFrameBtn:SetScript("OnClick", function()
		if TDT_ParentFrame then
			TDT_ParentFrame:Hide()
		end
	end)
	
	
	-- Target / Mouseover Selector --
	addon.targetFS = createString(configContent, "Show Target or Mouseover", headerFont, headerSize)
	addon.targetFS:SetPoint("TOPLEFT", locFS, "TOPRIGHT", 70, 0)
	
	--targetDD = createDropdown(addon.configPanel, "TargetMouseover", "Show targeted mob", "Show mouseover", "TargetTrigger")
	--targetDD:SetPoint("TOPLEFT", targetFS, "BOTTOMLEFT", 0, -8)
	addon.chkTarget = createCheck("Target", "Show Targeted Mob", configContent, 
			function(self, value)
				if self:GetChecked() then
					TDTConfig.TargetTrigger = "Show targeted mob"
				else
					TDTConfig.TargetTrigger = "Show mouseover"
				end
			end)
	addon.chkTarget:SetPoint("TOPLEFT", addon.targetFS, "BOTTOMLEFT", 0, -8)
	
	
	-- Role Selector --
	local roleFS = createString(configContent, "Role Specific Tips", headerFont, headerSize)
	roleFS:SetPoint("TOPLEFT", showFrameBtn, "BOTTOMLEFT", 0, -18)

	local chkMyRoleOnly = createFilterCheck("MyRoleOnly", "Show MYROLEONLY", configContent,
			function(self, value)
				TDTConfig.RoleFilters.MYROLEONLY = self:GetChecked()
			end)
	chkMyRoleOnly:SetPoint("TOPLEFT", roleFS, "BOTTOMLEFT", 0, -8)

	local chkTankRole = createFilterCheck("RoleTank", "Show TANK", configContent,
			function(self, value)
				TDTConfig.RoleFilters.TANK = self:GetChecked()
			end)
	chkTankRole:SetPoint("TOPLEFT", chkMyRoleOnly, "BOTTOMLEFT", 0, -6)

	local chkHealerRole = createFilterCheck("RoleHealer", "Show HEALER", configContent,
			function(self, value)
				TDTConfig.RoleFilters.HEALER = self:GetChecked()
			end)
	chkHealerRole:SetPoint("TOPLEFT", chkTankRole, "BOTTOMLEFT", 0, -6)

	local chkDamageRole = createFilterCheck("RoleDamage", "Show DAMAGE", configContent,
			function(self, value)
				TDTConfig.RoleFilters.DAMAGE = self:GetChecked()
			end)
	chkDamageRole:SetPoint("TOPLEFT", chkHealerRole, "BOTTOMLEFT", 0, -6)
	
	-- Class Selector --
	local classFS = createString(configContent, "Class Specific Tips", headerFont, headerSize)
	classFS:SetPoint("TOPLEFT", roleFS, "TOPRIGHT", 70, 0)

	local chkMyClassOnly = createFilterCheck("MyClassOnly", "Show MYCLASSONLY", configContent,
			function(self, value)
				TDTConfig.ClassFilters.MYCLASSONLY = self:GetChecked()
			end)
	chkMyClassOnly:SetPoint("TOPLEFT", classFS, "BOTTOMLEFT", 0, -8)

	local classCheckRows = {
		{"ClassDruid", "Show DRUID", "DRUID"},
		{"ClassHunter", "Show HUNTER", "HUNTER"},
		{"ClassMage", "Show MAGE", "MAGE"},
		{"ClassPaladin", "Show PALADIN", "PALADIN"},
		{"ClassPriest", "Show PRIEST", "PRIEST"},
		{"ClassRogue", "Show ROGUE", "ROGUE"},
		{"ClassShaman", "Show SHAMAN", "SHAMAN"},
		{"ClassWarrior", "Show WARRIOR", "WARRIOR"},
		{"ClassWarlock", "Show WARLOCK", "WARLOCK"},
	}

	local classFilterChecks = {}
	local previousClassCheck = chkMyClassOnly
	for _, classCheck in ipairs(classCheckRows) do
		local checkboxName = classCheck[1]
		local checkboxLabel = classCheck[2]
		local classKey = classCheck[3]
		local chk = createFilterCheck(checkboxName, checkboxLabel, configContent,
				function(self, value)
					TDTConfig.ClassFilters[classKey] = self:GetChecked()
				end)
		chk:SetPoint("TOPLEFT", previousClassCheck, "BOTTOMLEFT", 0, -6)
		classFilterChecks[classKey] = chk
		previousClassCheck = chk
	end
	
	local localeFS = createString(configContent, "Language", headerFont, headerSize)
	localeFS:SetPoint("TOPLEFT", chkDamageRole, "BOTTOMLEFT", 0, -24)

	local localeHelp = createString(configContent, "Auto uses the client locale. English is the fallback if no translation exists.", "Fonts\\FRIZQT__.TTF", 11)
	localeHelp:SetPoint("TOPLEFT", localeFS, "BOTTOMLEFT", 0, -4)
	localeHelp:SetWidth(250)

	local localeButton = createCycleButton(configContent, "Locale", {"Auto", "enUS", "deDE"}, function(value)
		TDTConfig.LocaleChoice = value
	end)
	localeButton:SetPoint("TOPLEFT", localeHelp, "BOTTOMLEFT", 0, -8)

	-- Activate in
	-- Tip Location Selector --
	local showinFS = createString(configContent, "Content", headerFont, headerSize)
	showinFS:SetPoint("TOPLEFT", localeButton, "BOTTOMLEFT", 0, -24)
	
	local chkRegDungeons = createCheck("RegDungeons", "Show Tips in Dungeons", configContent, function(self, value) end)
	chkRegDungeons:SetPoint("TOPLEFT", showinFS, "BOTTOMLEFT", 0, -8)
	chkRegDungeons:SetEnabled(false)
	chkRegDungeons:SetChecked(true)
	
	--[[local chkMythicPlus = createCheck("MythicPlus", "Show Tips in Mythic+", addon.configPanel, function(self, value) 
		TDTConfig.MythicPlusToggle = self:GetChecked()
		addon:setEnabled()
		end)
	chkMythicPlus:SetPoint("TOPLEFT", chkRegDungeons, "BOTTOMLEFT", 0, -8)]]--
	
	local chkRaid = createCheck("Raid", "Show Tips in Raid", configContent, function(self, value) 
		TDTConfig.RaidToggle = self:GetChecked()
		addon:setEnabled()
	end)
	chkRaid:SetPoint("TOPLEFT", chkRegDungeons, "BOTTOMLEFT", 0, -8)
	

	-- Other Stuff
	local OtherFS = createString(configContent, "Font Size", headerFont, headerSize)
	OtherFS:SetPoint("TOPLEFT", previousClassCheck, "BOTTOMLEFT", 0, -24)
	
	--local deleteme = createString(addon.configPanel, "Delete me after", headerFont, headerSize)
	--deleteme:SetPoint("TOPLEFT", OtherFS, "BOTTOMLEFT", 0, -16)
	
	local sliderName = "FontSizeS"
	local fontEdit = CreateFrame("Slider", sliderName, configContent, "OptionsSliderTemplate")
	
	fontEdit:SetWidth(120)
	fontEdit:SetHeight(20)
	fontEdit:SetOrientation('HORIZONTAL')
	fontEdit:SetMinMaxValues(8, 18)
	fontEdit:SetValue(TDTConfig.FontSize)
	fontEdit:SetValueStep(1)
	
	fontEdit.textLow = _G[sliderName.."Low"]
	fontEdit.textHigh = _G[sliderName.."High"]
	fontEdit.text = _G[sliderName.."Text"]
	fontEdit.minValue, fontEdit.maxValue = fontEdit:GetMinMaxValues() 
	fontEdit.textLow:SetText(fontEdit.minValue)
	fontEdit.textHigh:SetText(fontEdit.maxValue)
	fontEdit.text:SetText(TDTConfig.FontSize)
	
	fontEdit.textLow = 8
	fontEdit.textHigh = 14
	--fontEdit.text = "Font Size"
	
	
	fontEdit:SetPoint("TOPLEFT", OtherFS, "BOTTOMLEFT", 0, -22)
	fontEdit:Enable()
	fontEdit:SetScript("OnValueChanged", function(self,event,arg1) 
		
		TDTConfig.FontSize = math.floor(event + 0.5)
		updateTextSize()
		--print(TDTConfig.FontSize)
		self.text:SetText(TDTConfig.FontSize)
			end)
	
	--[[
	
	
	
	local fontEdit = CreateFrame("EditBox", nil, addon.configPanel)
	fontEdit:SetMultiLine(false)
	fontEdit:SetWidth(40)
	fontEdit:SetText(12)
	fontEdit:SetFontObject(ChatFontNormal)
	fontEdit:SetPoint("TOPLEFT", OtherFS, "BOTTOMLEFT", 0, -8)
	fontEdit:SetEnabled(true) ]]--
	--chkRegDungeons:SetChecked(true)
	
	
	
	-- Load in SavedVariables on ADDON_LOADED
	addon.configPanel:RegisterEvent("ADDON_LOADED")
	addon.configPanel:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" then
            if arg1 ~= "Tothys-Dungeon-Tips-TBC" then return end

            QEConfig = nil
            TDTConfig = applyConfigDefaults(TDTConfig)
            if type(TDTConfig.FontSize) ~= "number" then
                TDTConfig.FontSize = tonumber(TDTConfig.FontSize) or defaultConfig.FontSize
            end
            if TDTConfig.LocaleChoice ~= "Auto" and TDTConfig.LocaleChoice ~= "enUS" and TDTConfig.LocaleChoice ~= "deDE" then
                TDTConfig.LocaleChoice = defaultConfig.LocaleChoice
            end
            --print(TDTConfig.FontSize)
			
			-- Set default checkbox behaviour
			chkPriority:SetChecked(TDTConfig.PriorityTargets)
			chkInterrupts:SetChecked(TDTConfig.Interrupts)
			chkDefensives:SetChecked(TDTConfig.Defensives)
			chkFluff:SetChecked(TDTConfig.Fluff)
			chkAdvanced:SetChecked(TDTConfig.Advanced)
			chkPersonal:SetChecked(TDTConfig.Personal)
			--chkMythicPlus:SetChecked(TDTConfig.MythicPlusToggle)
			
			chkRaid:SetChecked(TDTConfig.RaidToggle)
			
			-- Set default Drop Down text
			--UIDropDownMenu_SetText(locDD, TDTConfig.ShowFrame)
			--UIDropDownMenu_SetText(targetDD, TDTConfig.TargetTrigger)
			--UIDropDownMenu_SetText(roleDD, TDTConfig.RoleChoice)
			--UIDropDownMenu_SetText(classDD, TDTConfig.ClassChoice)
			-- "Drop downs"
			locCB:SetChecked(TDTConfig.ShowFrame == "Show in separate frame")
			addon.chkTarget:SetChecked(TDTConfig.TargetTrigger == "Show targeted mob")
			chkMyRoleOnly:SetChecked(TDTConfig.RoleFilters.MYROLEONLY)
			chkTankRole:SetChecked(TDTConfig.RoleFilters.TANK)
			chkHealerRole:SetChecked(TDTConfig.RoleFilters.HEALER)
			chkDamageRole:SetChecked(TDTConfig.RoleFilters.DAMAGE)
			chkMyClassOnly:SetChecked(TDTConfig.ClassFilters.MYCLASSONLY)
			for classKey, checkbox in pairs(classFilterChecks) do
				checkbox:SetChecked(TDTConfig.ClassFilters[classKey])
			end
			localeButton:SetCurrentValue(TDTConfig.LocaleChoice)
			
			updateTextSize()
			fontEdit.text:SetText(TDTConfig.FontSize)
			fontEdit:SetValue(TDTConfig.FontSize)
			
			addon:setEnabled()
			addon:setDropdownEnabled()
			if addon.configPanel.refreshScroll then addon.configPanel:refreshScroll() end
		end
	end);
	
	-- Add panel to config options
	addon:registerConfigPanel()
	
	-- Proceed
	createTDTFrame()
end

createContentBrowserMenu()
createDungeonEditorMenu()
createEditorMenu()
createInfoMenu()
createConfigMenu()











