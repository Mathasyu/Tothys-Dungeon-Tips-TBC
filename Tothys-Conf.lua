local localeDisplayNames = {
    Auto = "Auto",
    enUS = "English",
    deDE = "Deutsch",
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
    ["RoleChoice"] = "Show my role only",
    ["ClassChoice"] = "Show my class only",
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
}

local function applyConfigDefaults(config)
    for key, value in pairs(defaultConfig) do
        if config[key] == nil then
            config[key] = value
        end
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
		addon.configPanelRegistered = true
	elseif InterfaceOptionsFrame_AddCategory then
		InterfaceOptionsFrame_AddCategory(addon.configPanel)
		if addon.contentBrowserPanel then
			addon.contentBrowserPanel.parent = addon.configPanel.name
			InterfaceOptionsFrame_AddCategory(addon.contentBrowserPanel)
		end
		addon.configPanelRegistered = true
	end
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

local function formatTipsPreview(rawTips, maxLines)
    local previewLines = {}
    local normalizedTips = normalizeRawTips(rawTips)
    local lineCount = math.min(#normalizedTips, maxLines or 4)

    for index = 1, lineCount do
        local tip = normalizedTips[index]
        previewLines[#previewLines + 1] = string.format("[%s] %s", tip.type or "?", tip.text or "")
    end

    if #normalizedTips > lineCount then
        previewLines[#previewLines + 1] = string.format("... %d more", #normalizedTips - lineCount)
    end

    if #previewLines == 0 then
        previewLines[#previewLines + 1] = "No entries found."
    end

    return table.concat(previewLines, "\n")
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

    local headerFont = "Fonts\\MORPHEUS.ttf"
    local headerSize = 16

    local title = addon.contentBrowserPanel:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText("Kiesel Dungeon Tool - Content Browser")

    local subtitle = createString(addon.contentBrowserPanel, "Browse the hardcoded expansion, instance and NPC structure before we add editing.", "Fonts\\FRIZQT__.TTF", 11)
    subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    subtitle:SetWidth(540)

    local expansionFS = createString(addon.contentBrowserPanel, "Expansion", headerFont, headerSize)
    expansionFS:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -20)

    local instanceFS = createString(addon.contentBrowserPanel, "Dungeon / Raid", headerFont, headerSize)
    instanceFS:SetPoint("TOPLEFT", expansionButton or subtitle, "BOTTOMLEFT", 0, -24)

    local npcFS = createString(addon.contentBrowserPanel, "NPC", headerFont, headerSize)
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

        selectionSummary:SetText(string.format("Selected: %s -> %s (%s) -> %s", expansionLabel, instanceLabel, instanceType, npcLabel))
        npcSelectionLabel:SetText(string.format("NPC: %s", npcLabel))
        instancePreview:SetText(formatTipsPreview(getRawInstanceTips(browserState.instanceKey), 5))
        npcPreview:SetText(formatTipsPreview(getRawNpcTips(browserState.npcID), 6))
    end

    expansionButton = createCycleButton(addon.contentBrowserPanel, "BrowserExpansion", getExpansionKeys(), function(value)
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

    instanceDropdown = createValueDropdown(addon.contentBrowserPanel, "BrowserInstance", 220, function(value)
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

    npcDropdown = createValueDropdown(addon.contentBrowserPanel, "BrowserNpc", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    npcDropdown:SetPoint("TOPLEFT", npcFS, "BOTTOMLEFT", -16, -2)
    npcDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    selectionSummary = createString(addon.contentBrowserPanel, "", "Fonts\\FRIZQT__.TTF", 11)
    selectionSummary:SetPoint("TOPLEFT", npcDropdown, "BOTTOMLEFT", 16, -18)
    selectionSummary:SetWidth(620)

    npcSelectionLabel = createString(addon.contentBrowserPanel, "", "Fonts\\FRIZQT__.TTF", 11)
    npcSelectionLabel:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -8)
    npcSelectionLabel:SetWidth(620)

    local instancePreviewFS = createString(addon.contentBrowserPanel, "Instance Info Preview", headerFont, headerSize)
    instancePreviewFS:SetPoint("TOPLEFT", npcSelectionLabel, "BOTTOMLEFT", 0, -18)

    instancePreview = createString(addon.contentBrowserPanel, "", "Fonts\\FRIZQT__.TTF", 11)
    instancePreview:SetPoint("TOPLEFT", instancePreviewFS, "BOTTOMLEFT", 0, -6)
    instancePreview:SetWidth(620)

    local npcPreviewFS = createString(addon.contentBrowserPanel, "NPC Tips Preview", headerFont, headerSize)
    npcPreviewFS:SetPoint("TOPLEFT", instancePreview, "BOTTOMLEFT", 0, -18)

    npcPreview = createString(addon.contentBrowserPanel, "", "Fonts\\FRIZQT__.TTF", 11)
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
        end
    end)

    updateBrowserUI()
end

local function createConfigMenu()

	-- Setup Panel --
	addon.configPanel = CreateFrame("Frame", "TothysDungeonTipsConfiguration", UIParent)
	addon.configPanel.name = "Kiesel Dungeon Tool";
	addon.configPanel.okay = function (self) return end
	addon.configPanel.cancel = function (self) return end
	
	-- Set up Title --
	local ddTitleString = addon.configPanel:CreateFontString()
	ddTitleString:SetPoint("TOPLEFT", 10, -10)
	ddTitleString:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
	ddTitleString:SetTextColor(0.9, 0.68, 0.22, 1)
	ddTitleString:SetText("Kiesel Dungeon Tool - Config")

	
	-----------------------
	-- Set up Checkboxes --
	-----------------------
	local chkGeneral = createCheck("General", "Show Important General Information", addon.configPanel, function(self, value) end)
	chkGeneral:SetPoint("TOPLEFT", ddTitleString, "BOTTOMLEFT", 0, -10)
	chkGeneral:SetEnabled(false)
	chkGeneral:SetChecked(true)
	
	local chkPriority = createCheck("PriorityTargets", "Show Priority Targets", addon.configPanel, function(self, value) TDTConfig.PriorityTargets = self:GetChecked() end)
	chkPriority:SetPoint("TOPLEFT", chkGeneral, "BOTTOMLEFT", 0, -8)
	
	local chkInterrupts = createCheck("Interrupts", "Show Priority Interrupts", addon.configPanel, function(self, value) TDTConfig.Interrupts = self:GetChecked() end)
	chkInterrupts:SetPoint("TOPLEFT", chkPriority, "BOTTOMLEFT", 0, -8)
	
	local chkDefensives = createCheck("Defensives", "Show Defensive Recommendations", addon.configPanel, function(self, value) TDTConfig.Defensives = self:GetChecked() end)
	chkDefensives:SetPoint("TOPLEFT", chkInterrupts, "BOTTOMLEFT", 0, -8)
	
	local chkFluff = createCheck("Fluff", "Show Fluff", addon.configPanel, function(self, value) TDTConfig.Fluff = self:GetChecked() end)
	chkFluff:SetPoint("TOPLEFT", chkDefensives, "BOTTOMLEFT", 0, -8)
	
	local chkAdvanced = createCheck("Advanced", "Show advanced tips for high level keys", addon.configPanel, function(self, value) TDTConfig.Advanced = self:GetChecked() end)
	chkAdvanced:SetPoint("TOPLEFT", chkFluff, "BOTTOMLEFT", 0, -8)
	
	
	----------------------------
	-- Setup "Dropdown" boxes --
	----------------------------
	-- Dropdown Taint Sucks
	local headerFont = "Fonts\\MORPHEUS.ttf"
	local headerSize = 16
	
	-- Tip Location Selector --
	local locFS = createString(addon.configPanel, "Tip Location", headerFont, headerSize)
	locFS:SetPoint("TOPLEFT", chkAdvanced, "BOTTOMLEFT", 0, -30)
	
	--locDD = createDropdown(addon.configPanel, "TipLocation", "Show in separate frame", "Show in mob tooltips", "ShowFrame")
	--locDD:SetPoint("TOPLEFT", locFS, "BOTTOMLEFT", 0, -8)
	local locCB = createCheck("Location", "Show tips in separate frame", addon.configPanel, 
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
	
	
	-- Target / Mouseover Selector --
	addon.targetFS = createString(addon.configPanel, "Show Target or Mouseover", headerFont, headerSize)
	addon.targetFS:SetPoint("TOPLEFT", locFS, "TOPRIGHT", 70, 0)
	
	--targetDD = createDropdown(addon.configPanel, "TargetMouseover", "Show targeted mob", "Show mouseover", "TargetTrigger")
	--targetDD:SetPoint("TOPLEFT", targetFS, "BOTTOMLEFT", 0, -8)
	addon.chkTarget = createCheck("Target", "Show Targeted Mob", addon.configPanel, 
			function(self, value)
				if self:GetChecked() then
					TDTConfig.TargetTrigger = "Show targeted mob"
				else
					TDTConfig.TargetTrigger = "Show mouseover"
				end
			end)
	addon.chkTarget:SetPoint("TOPLEFT", addon.targetFS, "BOTTOMLEFT", 0, -8)
	
	
	-- Role Selector --
	local roleFS = createString(addon.configPanel, "Role Specific Tips", headerFont, headerSize)
	roleFS:SetPoint("TOPLEFT", locCB, "BOTTOMLEFT", 0, -14)
	
	--roleDD = createDropdown(addon.configPanel, "RoleSelector", "Show my role only", "Show all roles", "RoleChoice")
	--roleDD:SetPoint("TOPLEFT", roleFS, "BOTTOMLEFT", 0, -8)
	local chkRole = createCheck("Role", "Show all roles", addon.configPanel, 
			function(self, value)
				if self:GetChecked() then
					TDTConfig.RoleChoice = "Show all roles"
				else
					TDTConfig.RoleChoice = "Show my role only"
				end
			end)
	chkRole:SetPoint("TOPLEFT", roleFS, "BOTTOMLEFT", 0, -8)
	
	-- Class Selector --
	local classFS = createString(addon.configPanel, "Class Specific Tips", headerFont, headerSize)
	classFS:SetPoint("TOPLEFT", roleFS, "TOPRIGHT", 70, 0)
	
	--classDD = createDropdown(addon.configPanel, "ClassSelector", "Show my class only", "Show all classes", "ClassChoice")
	--classDD:SetPoint("TOPLEFT", classFS, "BOTTOMLEFT", 0, -8)
	local chkClass = createCheck("Class", "Show all classes", addon.configPanel, 
			function(self, value)
				if self:GetChecked() then
					TDTConfig.ClassChoice = "Show all classes"
				else
					TDTConfig.ClassChoice = "Show my class only"
				end
			end)	
	chkClass:SetPoint("TOPLEFT", classFS, "BOTTOMLEFT", 0, -8)
	
	local localeFS = createString(addon.configPanel, "Language", headerFont, headerSize)
	localeFS:SetPoint("TOPLEFT", chkRole, "BOTTOMLEFT", 0, -24)

	local localeHelp = createString(addon.configPanel, "Auto uses the client locale. English is the fallback if no translation exists.", "Fonts\\FRIZQT__.TTF", 11)
	localeHelp:SetPoint("TOPLEFT", localeFS, "BOTTOMLEFT", 0, -4)
	localeHelp:SetWidth(250)

	local localeButton = createCycleButton(addon.configPanel, "Locale", {"Auto", "enUS", "deDE"}, function(value)
		TDTConfig.LocaleChoice = value
	end)
	localeButton:SetPoint("TOPLEFT", localeHelp, "BOTTOMLEFT", 0, -8)

	-- Activate in
	-- Tip Location Selector --
	local showinFS = createString(addon.configPanel, "Content", headerFont, headerSize)
	showinFS:SetPoint("TOPLEFT", localeButton, "BOTTOMLEFT", 0, -24)
	
	local chkRegDungeons = createCheck("RegDungeons", "Show Tips in Dungeons", addon.configPanel, function(self, value) end)
	chkRegDungeons:SetPoint("TOPLEFT", showinFS, "BOTTOMLEFT", 0, -8)
	chkRegDungeons:SetEnabled(false)
	chkRegDungeons:SetChecked(true)
	
	--[[local chkMythicPlus = createCheck("MythicPlus", "Show Tips in Mythic+", addon.configPanel, function(self, value) 
		TDTConfig.MythicPlusToggle = self:GetChecked()
		addon:setEnabled()
		end)
	chkMythicPlus:SetPoint("TOPLEFT", chkRegDungeons, "BOTTOMLEFT", 0, -8)]]--
	
	local chkRaid = createCheck("Raid", "Show Tips in Raid", addon.configPanel, function(self, value) 
		TDTConfig.RaidToggle = self:GetChecked()
		addon:setEnabled()
	end)
	chkRaid:SetPoint("TOPLEFT", chkRegDungeons, "BOTTOMLEFT", 0, -8)
	

	-- Other Stuff
	local OtherFS = createString(addon.configPanel, "Font Size", headerFont, headerSize)
	OtherFS:SetPoint("TOPLEFT", classFS, "BOTTOMLEFT", 0, -54)
	
	--local deleteme = createString(addon.configPanel, "Delete me after", headerFont, headerSize)
	--deleteme:SetPoint("TOPLEFT", OtherFS, "BOTTOMLEFT", 0, -16)
	
	local sliderName = "FontSizeS"
	local fontEdit = CreateFrame("Slider", sliderName, addon.configPanel, "OptionsSliderTemplate")
	
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
			chkRole:SetChecked(TDTConfig.RoleChoice == "Show all roles")
			chkClass:SetChecked(TDTConfig.ClassChoice == "Show all classes")
			localeButton:SetCurrentValue(TDTConfig.LocaleChoice)
			
			updateTextSize()
			fontEdit.text:SetText(TDTConfig.FontSize)
			fontEdit:SetValue(TDTConfig.FontSize)
			
			addon:setEnabled()
			addon:setDropdownEnabled()
		end
	end);
	
	-- Add panel to config options
	addon:registerConfigPanel()
	
	-- Proceed
	createTDTFrame()
end

createContentBrowserMenu()
createConfigMenu()











