--[[
Tothys Dungeon Tips TBC
Configuration Page

Version: 4.8
Developed by: Voulk
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
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
    ["FrameOpacity"] = 0.55
}

local function applyConfigDefaults(config)
    for key, value in pairs(defaultConfig) do
        if config[key] == nil then
            config[key] = value
        end
    end

    return config
end
local function isAddOnAlreadyLoaded(addOnName)
	if IsAddOnLoaded then
		return IsAddOnLoaded(addOnName)
	end

	if GetAddOnInfo then
		local _, _, _, enabled, loadable, reason, security = GetAddOnInfo(addOnName)
		return reason == "LOADED" or reason == "DISABLED"
	end

	return false
end

function addon:registerConfigPanel()
	if addon.configPanelRegistered or not addon.configPanel then
		return
	end

	if UIParentLoadAddOn and not isAddOnAlreadyLoaded("Blizzard_InterfaceOptions") then
		pcall(UIParentLoadAddOn, "Blizzard_InterfaceOptions")
	end

	if InterfaceOptions_AddCategory then
		InterfaceOptions_AddCategory(addon.configPanel)
		addon.configPanelRegistered = true
	elseif InterfaceOptionsFrame_AddCategory then
		InterfaceOptionsFrame_AddCategory(addon.configPanel)
		addon.configPanelRegistered = true
	end
end
TDTConfig = applyConfigDefaults(TDTConfig or QEConfig or {})
if type(TDTConfig.FontSize) ~= "number" then
    TDTConfig.FontSize = tonumber(TDTConfig.FontSize) or defaultConfig.FontSize
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
local function createConfigMenu()

	-- Setup Panel --
	addon.configPanel = CreateFrame("Frame", "TothysDungeonTipsConfiguration", UIParent)
	addon.configPanel.name = "Tothys Dungeon Tips TBC";
	addon.configPanel.okay = function (self) return end
	addon.configPanel.cancel = function (self) return end
	
	-- Set up Title --
	local ddTitleString = addon.configPanel:CreateFontString()
	ddTitleString:SetPoint("TOPLEFT", 10, -10)
	ddTitleString:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
	ddTitleString:SetTextColor(0.9, 0.68, 0.22, 1)
	ddTitleString:SetText("Tothys Dungeon Tips TBC - Config")

	
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
	
	-- Activate in
	-- Tip Location Selector --
	local showinFS = createString(addon.configPanel, "Content", headerFont, headerSize)
	showinFS:SetPoint("TOPLEFT", roleFS, "BOTTOMLEFT", 0, -54)
	
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

createConfigMenu()









