--[[
Tothys Dungeon Tips TBC (former QE Dungeon Tips)
Configuration Page

Version: 0.9.1
Developed by: Voulk
Forked by: Mathasyu 2026-03-09
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
	

Future Versions - Engine
 - Tooltips on all config options
 - Lock button on frame
 - Alpha channel config
 - /TDT Slash command to bring up config. - DONE
 - Add an icon to fluff
 
Future Versions - Content
 - All BFA dungeons
 - Possible Raid version for LFR/N/H

]]--

local _, addon = ...;

local function getMinimapLocale()
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

local function getMinimapTooltipLines()
	if getMinimapLocale() == "deDE" then
		return {
			title = "Kiesel Dungeon Tool",
			left = "Linksklick: Fenster ein/aus",
			right = "Rechtsklick: Dungeon-Browser",
			ctrl = "Strg + Klick: Konfiguration",
			shift = "Shift + Klick + Ziehen: Button verschieben",
		}
	end

	return {
		title = "Kiesel Dungeon Tool",
		left = "Left Click: Toggle main window",
		right = "Right Click: Dungeon-Browser",
		ctrl = "Ctrl + Click: Config",
		shift = "Shift + Click + Drag: Move button",
	}
end

local createMinimapButton

local function updateMinimapButtonPosition(button)
	if not button or not Minimap then
		return
	end

	local angle = (TDTConfig and TDTConfig.MinimapButtonAngle) or 0
	if type(angle) ~= "number" or angle ~= angle then
		angle = 0
	end
	angle = angle % 360
	local radians = math.rad(angle)
	local radius = 78
	button:ClearAllPoints()
	button:SetPoint("CENTER", Minimap, "CENTER", math.cos(radians) * radius, math.sin(radians) * radius)
end

function addon:updateMinimapButtonVisibility()
	local shouldShow = not TDTConfig or TDTConfig.ShowMinimapButton ~= false
	if shouldShow and not addon.minimapButton and createMinimapButton then
		createMinimapButton()
	end

	if not addon.minimapButton then
		return
	end

	if shouldShow then
		addon.minimapButton:Show()
	else
		addon.minimapButton:Hide()
	end
end

createMinimapButton = function()
	if addon.minimapButton or not Minimap then
		return
	end

	local button = CreateFrame("Button", "TDT_MinimapButton", Minimap)
	button:SetSize(31, 31)
	button:SetFrameStrata("DIALOG")
	button:SetFrameLevel(Minimap:GetFrameLevel() + 20)
	button:SetMovable(true)
	button:EnableMouse(true)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	button:RegisterForDrag("LeftButton")
	button:SetClampedToScreen(true)

	local background = button:CreateTexture(nil, "BACKGROUND")
	background:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
	background:SetSize(20, 20)
	background:SetPoint("TOPLEFT", 7, -5)
	background:SetVertexColor(0, 0, 0, 0.85)
	button.background = background

	local border = button:CreateTexture(nil, "BORDER")
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	border:SetSize(53, 53)
	border:SetPoint("TOPLEFT")
	button.border = border

	local icon = button:CreateTexture(nil, "ARTWORK")
	icon:SetSize(17, 17)
	icon:SetPoint("TOPLEFT", 7, -6)
	icon:SetTexture("Interface\\Icons\\INV_Misc_Note_01")
	icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	button.icon = icon

	if icon.AddMaskTexture and button.CreateMaskTexture then
		local mask = button:CreateMaskTexture()
		mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
		mask:SetAllPoints(icon)
		icon:AddMaskTexture(mask)
		button.iconMask = mask
	end

	local overlay = button:CreateTexture(nil, "OVERLAY")
	overlay:SetTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
	overlay:SetBlendMode("ADD")
	overlay:SetAllPoints()
	overlay:SetAlpha(0.6)
	button.overlay = overlay

	local label = button:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	label:SetPoint("CENTER", icon, "CENTER", 2, -2)
	label:SetText("K")
	label:SetTextColor(1, 0.82, 0)
	label:SetJustifyH("CENTER")
	label:SetJustifyV("MIDDLE")
	label:SetDrawLayer("OVERLAY", 7)
	button.label = label

	button:SetScript("OnEnter", function(self)
		local lines = getMinimapTooltipLines()
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
		GameTooltip:SetText(lines.title, 1, 0.82, 0)
		GameTooltip:AddLine(lines.left, 1, 1, 1)
		GameTooltip:AddLine(lines.right, 1, 1, 1)
		GameTooltip:AddLine(lines.ctrl, 1, 1, 1)
		GameTooltip:AddLine(lines.shift, 0.8, 0.8, 0.8)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

	button:SetScript("OnDragStart", function(self)
		if IsShiftKeyDown() then
			self:SetScript("OnUpdate", function(frame)
				local mx, my = Minimap:GetCenter()
				local px, py = GetCursorPosition()
				local scale = UIParent:GetEffectiveScale()
				px, py = px / scale, py / scale
				TDTConfig = TDTConfig or {}
				TDTConfig.MinimapButtonAngle = math.deg(math.atan2(py - my, px - mx))
				updateMinimapButtonPosition(frame)
			end)
		end
	end)

	button:SetScript("OnDragStop", function(self)
		self:SetScript("OnUpdate", nil)
	end)

	button:SetScript("OnClick", function(_, mouseButton)
		if IsShiftKeyDown() then
			return
		end

		if IsControlKeyDown() then
			addon:openConfig()
			return
		end

		if mouseButton == "RightButton" then
			addon:openContentBrowser()
			return
		end

		addon:toggleMainFrame()
	end)

	addon.minimapButton = button
	if not TDTConfig or type(TDTConfig.MinimapButtonAngle) ~= "number" then
		TDTConfig = TDTConfig or {}
		TDTConfig.MinimapButtonAngle = 0
	end
	updateMinimapButtonPosition(button)
	addon:updateMinimapButtonVisibility()
end

function addon:updateFrameButtons()
	if TDT_MinimizeBtn and TDT_TipPanel then
		if addon.frameCollapsed then
			TDT_MinimizeBtn:SetText("+")
		else
			TDT_MinimizeBtn:SetText("-")
		end
	end
end

-- Create a frame
function createTDTFrame()
	--addon.isShowing = true

	TDT_ParentFrame = CreateFrame("Frame", "TDT_ParentFrame", UIParent)
	if TDT_ParentFrame.SetResizable then
		TDT_ParentFrame:SetResizable(true)
	end
	TDT_ParentFrame:SetMovable(true)
	TDT_ParentFrame:EnableMouse(true)
	TDT_ParentFrame:SetWidth(420)
	TDT_ParentFrame:SetHeight(120)
	if TDT_ParentFrame.SetMinResize then
		TDT_ParentFrame:SetMinResize(300, 90) -- Real, change back to this
		--TDT_ParentFrame:SetMinResize(20, 90) -- For testing wraps
	end
	if TDT_ParentFrame.SetMaxResize then
		TDT_ParentFrame:SetMaxResize(500, 200)
	end
	TDT_ParentFrame:RegisterForDrag("LeftButton")
	TDT_ParentFrame:SetScript("OnDragStart", function(self) self:StartMoving() end)
	TDT_ParentFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
	TDT_ParentFrame:SetScript("OnSizeChanged", function(self)
		if TDT_TipScrollChild then
			local childWidth = math.max(self:GetWidth() - 40, 220)
			TDT_TipScrollChild:SetWidth(childWidth)
		end
		if TDT_TipText then
			TDT_TipText:SetWidth(math.max(self:GetWidth() - 45, 215))
		end
		if addon.refreshFrameTipLineLayout then
			addon:refreshFrameTipLineLayout()
		end
		if addon.refreshTipScroll then addon:refreshTipScroll() end
	end)
	
	
	-- Texture
	TDT_ParentFrameTexture = TDT_ParentFrame:CreateTexture(nil, "Background")
	TDT_ParentFrameTexture:ClearAllPoints()
	--TDT_ParentFrameTexture:SetColorTexture(35/255, 35/255, 35/255, 0.0)
	--TDT_ParentFrameTexture:SetAllPoints(TDT_ParentFrame)
	------
	
	-- Resize Button
	local resizeButton = CreateFrame("Button", nil, TDT_ParentFrame)
	resizeButton:SetSize(16, 16)
	resizeButton:SetPoint("BOTTOMRIGHT")
	resizeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
	resizeButton:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
	resizeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
 
	if TDT_ParentFrame.StartSizing and TDT_ParentFrame.StopMovingOrSizing then
		resizeButton:SetScript("OnMouseDown", function(self, button)
			TDT_ParentFrame:StartSizing("BOTTOMRIGHT")
			if TDT_ParentFrame.SetUserPlaced then
				TDT_ParentFrame:SetUserPlaced(true)
			end
		end)
 
		resizeButton:SetScript("OnMouseUp", function(self, button)
			TDT_ParentFrame:StopMovingOrSizing()
		end)
	else
		resizeButton:Hide()
	end
	--
	
	
	
	
	


	-- Header Panel
    TDT_HeaderPanel = CreateFrame("Frame", "TDT_HeaderFrame", TDT_ParentFrame)
	TDT_HeaderPanel:SetFrameStrata("Background")
	--TDT_HeaderPanel:SetAllPoints(TDT_ParentFrame)
	

	
	-- Header Texture
	TDT_HeaderPanelTexture = TDT_HeaderPanel:CreateTexture(nil, "Background")

	TDT_HeaderPanelTexture:ClearAllPoints()
	TDT_HeaderPanelTexture:SetColorTexture(62/255, 59/255, 55/255, 0.75)
	TDT_HeaderPanelTexture:SetAllPoints(TDT_HeaderPanel)
	
	-- Header Text
	headerTDT = TDT_HeaderPanel:CreateFontString("TDT_HeaderText", nil, nil)
	headerTDT:SetPoint("TOPLEFT", 5, -4)
	headerTDT:SetPoint("TOPRIGHT", -52, -4)
	headerTDT:SetFont("Fonts\\SKURRI.TTF", 16, "OUTLINE")
	headerTDT:SetTextColor(239/255, 191/255, 90/255)
	headerTDT:SetJustifyH("LEFT")
	headerTDT:SetJustifyV("MIDDLE")
	headerTDT:SetText("Kiesel Dungeon Tool")
	headerTDT:SetWordWrap(true)
	
	TDT_HeaderPanel:SetPoint("TOPLEFT", TDT_ParentFrame, "TOPLEFT", 0, 0)
	TDT_HeaderPanel:SetPoint("TOPRIGHT", TDT_ParentFrame, "TOPRIGHT", 0, 0)
	TDT_HeaderPanel:SetHeight(22)
	TDT_HeaderPanel:SetWidth(450)
	TDT_HeaderPanel:Show()

	TDT_MinimizeBtn = CreateFrame("Button", "TDT_MinimizeBtn", TDT_HeaderPanel, "UIPanelButtonTemplate")
	TDT_MinimizeBtn:SetSize(20, 18)
	TDT_MinimizeBtn:SetPoint("TOPRIGHT", TDT_HeaderPanel, "TOPRIGHT", -26, -2)
	TDT_MinimizeBtn:SetFrameStrata("DIALOG")
	TDT_MinimizeBtn:SetFrameLevel(TDT_HeaderPanel:GetFrameLevel() + 10)
	TDT_MinimizeBtn:SetText("-")
	TDT_MinimizeBtn:RegisterForClicks("LeftButtonUp")
	TDT_MinimizeBtn:SetScript("OnClick", function()
		addon:setMinimized()
	end)

	TDT_NpcBrowserBtn = CreateFrame("Button", "TDT_NpcBrowserBtn", TDT_HeaderPanel, "UIPanelButtonTemplate")
	TDT_NpcBrowserBtn:SetSize(30, 18)
	TDT_NpcBrowserBtn:SetPoint("TOPRIGHT", TDT_HeaderPanel, "TOPRIGHT", -48, -2)
	TDT_NpcBrowserBtn:SetFrameStrata("DIALOG")
	TDT_NpcBrowserBtn:SetFrameLevel(TDT_HeaderPanel:GetFrameLevel() + 10)
	TDT_NpcBrowserBtn:SetText(">>>")
	TDT_NpcBrowserBtn:RegisterForClicks("LeftButtonUp")
	TDT_NpcBrowserBtn:SetScript("OnClick", function()
		addon:openCurrentNpcInBrowser()
	end)
	TDT_NpcBrowserBtn:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText("Open NPC-Browser", 1, 0.82, 0)
		GameTooltip:AddLine("Jump to the NPC currently shown in this window.", 1, 1, 1, true)
		GameTooltip:Show()
	end)
	TDT_NpcBrowserBtn:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

	function addon:updateFrameNpcBrowserButton()
		if not TDT_NpcBrowserBtn then
			return
		end

		local hasNpcSelection = addon.currentFrameSelection and addon.currentFrameSelection.npcID
		TDT_NpcBrowserBtn:SetEnabled(hasNpcSelection and true or false)
		TDT_NpcBrowserBtn:SetAlpha(hasNpcSelection and 1 or 0.45)
	end

	TDT_CloseBtn = CreateFrame("Button", "TDT_CloseBtn", TDT_HeaderPanel, "UIPanelButtonTemplate")
	TDT_CloseBtn:SetSize(20, 18)
	TDT_CloseBtn:SetPoint("TOPRIGHT", TDT_HeaderPanel, "TOPRIGHT", -4, -2)
	TDT_CloseBtn:SetFrameStrata("DIALOG")
	TDT_CloseBtn:SetFrameLevel(TDT_HeaderPanel:GetFrameLevel() + 10)
	TDT_CloseBtn:SetText("X")
	TDT_CloseBtn:RegisterForClicks("LeftButtonUp")
	TDT_CloseBtn:SetScript("OnClick", function()
		if TDT_ParentFrame then
			TDT_ParentFrame:Hide()
		end
	end)
	
	
	-----------------
	-- TIPS PANEL ---
	-----------------
	TDT_TipPanel = CreateFrame("Frame", "TDT_TipFrame", TDT_ParentFrame)
	
	TDT_TipPanel:SetFrameStrata("Background")
	TDT_TipPanel:SetWidth(450)
	--TDT_TipPanel:SetHeight(98)
	TDT_TipPanel:SetPoint("TOPLEFT", TDT_HeaderPanel, "BOTTOMLEFT", 0, 0)
	TDT_TipPanel:SetPoint("TOPRIGHT", TDT_HeaderPanel, "BOTTOMRIGHT", 0, 0)
	TDT_TipPanel:SetPoint("BOTTOMLEFT", TDT_ParentFrame, "BOTTOMLEFT", 0, 0)
	TDT_TipPanel:SetPoint("BOTTOMRIGHT", TDT_ParentFrame, "BOTTOMRIGHT", 0, 0)
	
	-- Tip Texture
	TDT_TipPanelTexture = TDT_TipPanel:CreateTexture(nil, "Background")
	--TDT_TipPanelTexture:SetWidth(128)
	--TDT_TipPanelTexture:SetHeight(64)
	TDT_TipPanelTexture:ClearAllPoints()
	TDT_TipPanelTexture:SetColorTexture(55/255, 55/255, 55/255, 0.45)
	TDT_TipPanelTexture:SetAllPoints(TDT_TipPanel)
	
	
	TDT_TipPanel:Show()
	
	

	TDT_MobName = TDT_TipPanel:CreateFontString("TDT_MobName", nil, nil)
	TDT_MobName:SetPoint("TOPLEFT", 5, -5)
	TDT_MobName:SetPoint("TOPRIGHT", 5, -5)
	TDT_MobName:SetWordWrap(true)
	TDT_MobName:SetFont("Fonts\\ARIALN.ttf", 16, "OUTLINE")
	TDT_MobName:SetJustifyH("LEFT")
	TDT_MobName:SetJustifyV("TOP")
	TDT_MobName:SetText(" ")

	TDT_TipScrollFrame = CreateFrame("ScrollFrame", "TDT_TipScrollFrame", TDT_TipPanel)
	TDT_TipScrollFrame:SetPoint("TOPLEFT", TDT_MobName, "BOTTOMLEFT", 0, -3)
	TDT_TipScrollFrame:SetPoint("TOPRIGHT", TDT_TipPanel, "TOPRIGHT", -26, -28)
	TDT_TipScrollFrame:SetPoint("BOTTOMLEFT", TDT_TipPanel, "BOTTOMLEFT", 0, 4)
	TDT_TipScrollFrame:SetPoint("BOTTOMRIGHT", TDT_TipPanel, "BOTTOMRIGHT", -26, 4)
	TDT_TipScrollFrame:EnableMouseWheel(true)

	TDT_TipScrollChild = CreateFrame("Frame", "TDT_TipScrollChild", TDT_TipScrollFrame)
	TDT_TipScrollChild:SetWidth(410)
	TDT_TipScrollChild:SetHeight(1)
	TDT_TipScrollFrame:SetScrollChild(TDT_TipScrollChild)

	TDT_TipLineContainer = CreateFrame("Frame", "TDT_TipLineContainer", TDT_TipScrollChild)
	TDT_TipLineContainer:SetPoint("TOPLEFT", TDT_TipScrollChild, "TOPLEFT", 0, 0)
	TDT_TipLineContainer:SetPoint("TOPRIGHT", TDT_TipScrollChild, "TOPRIGHT", -3, 0)
	TDT_TipLineContainer:SetHeight(1)
	TDT_TipLineContainer:Show()

	-- Frame Tip Text
	TDT_TipText = TDT_TipScrollChild:CreateFontString("TDT_TipText", nil, nil)
	TDT_TipText:SetPoint("TOPLEFT", TDT_TipScrollChild, "TOPLEFT", 0, 0)
	TDT_TipText:SetPoint("TOPRIGHT", TDT_TipScrollChild, "TOPRIGHT", -3, 0)
	--TDT_TipText:SetFont("Fonts\\ARIALN.ttf", 14, nil)
	TDT_TipText:SetFontObject(GameFontWhite);
	local p,_,_ = TDT_TipText:GetFont();
	--print("Creating Frame" .. TDTConfig.FontSize)
	TDT_TipText:SetFont(p, TDTConfig.FontSize, nil)
	TDT_TipText:SetWidth(405)
	TDT_TipText:SetJustifyH("LEFT")
	TDT_TipText:SetJustifyV("TOP")
	TDT_TipText:SetText(" ")
	TDT_TipText:Hide()
	if addon.refreshTipScroll then addon:refreshTipScroll() end

	TDT_TipScrollBar = CreateFrame("Slider", "TDT_TipScrollBar", TDT_TipPanel, "UIPanelScrollBarTemplate")
	TDT_TipScrollBar:SetPoint("TOPRIGHT", TDT_TipPanel, "TOPRIGHT", -4, -28)
	TDT_TipScrollBar:SetPoint("BOTTOMRIGHT", TDT_TipPanel, "BOTTOMRIGHT", -4, 16)
	TDT_TipScrollBar:SetMinMaxValues(0, 0)
	TDT_TipScrollBar:SetValueStep(8)
	TDT_TipScrollBar:SetValue(0)
	TDT_TipScrollBar:SetScript("OnValueChanged", function(self, value)
		TDT_TipScrollFrame:SetVerticalScroll(value)
	end)

	TDT_TipScrollFrame:SetScript("OnMouseWheel", function(self, delta)
		local currentValue = TDT_TipScrollBar:GetValue()
		local minValue, maxValue = TDT_TipScrollBar:GetMinMaxValues()
		local nextValue = currentValue - (delta * 24)
		if nextValue < minValue then nextValue = minValue end
		if nextValue > maxValue then nextValue = maxValue end
		TDT_TipScrollBar:SetValue(nextValue)
	end)
	-----------------------
	
	
	-- Show Frame
	TDT_ParentFrame:SetPoint("CENTER", UIParent)
	TDT_ParentFrame:Show()
	addon:updateFrameButtons()
	addon:updateFrameNpcBrowserButton()
	createMinimapButton()
	
	
	TDT_ParentFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	TDT_ParentFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
	TDT_ParentFrame:RegisterEvent("ENCOUNTER_START")
	TDT_ParentFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
	TDT_ParentFrame:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT")
	TDT_ParentFrame:SetScript("OnEvent", function(self, event, ...)

		if event == "PLAYER_ENTERING_WORLD" then
			C_Timer.After(2, function()
				addon:setEnabled()
				if TDTConfig and TDTConfig.ShowFrame == "Show in separate frame" then
					addon:showCurrentInstanceInfo()
				end
			end)
			--addon:setEnabled()
		elseif event == "PLAYER_TARGET_CHANGED" then
			--print("Player target changed" .. TDTConfig.TargetTrigger .. TDT_onBoss)
			if TDTConfig.TargetTrigger == "Show targeted mob" and not TDT_onBoss then
				addon:getTarget("target")
				if not UnitExists("target") then
					addon:showCurrentInstanceInfo()
				end
			end
			
		elseif event == "INSTANCE_ENCOUNTER_ENGAGE_UNIT" and UnitExists("boss1") then
			--TDT_onBoss = true
			
			if TDTConfig.ShowFrame == "Show in separate frame" then
				addon:colorFrame(TDT_onBoss)
				addon:getTarget("boss1") 
			end
			
		elseif event == "PLAYER_REGEN_ENABLED" then
			TDT_onBoss = false
			addon:colorFrame(TDT_onBoss)
		end
		
		
		
		
	end)
	
	
	--TDT_ParentFrame:SetClampedToScreen(true)
	
	--[[
	


	

	-- Create slim header panel to hold title.
	
	TDT_HeaderPanel:SetFrameStrata("Background")
	TDT_HeaderPanel:SetWidth(450)
	TDT_HeaderPanel:SetHeight(22)
	TDT_HeaderPanel:EnableMouse(true)
	TDT_HeaderPanel:SetMovable(true)
	TDT_HeaderPanel:RegisterForDrag("LeftButton")
	TDT_HeaderPanel:SetScript("OnDragStart", function(self) self:StartMoving() end)
	TDT_HeaderPanel:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

	TDT_ParentFrameTexture = TDT_HeaderPanel:CreateTexture(nil, "Background")
	--TDT_TipPanelTexture:SetWidth(128)
	--TDT_TipPanelTexture:SetHeight(64)
	TDT_ParentFrameTexture:ClearAllPoints()
	TDT_ParentFrameTexture:SetColorTexture(35/255, 35/255, 35/255, 0.55)
	TDT_ParentFrameTexture:SetAllPoints(TDT_HeaderPanel)

	TDT_HeaderPanel:SetPoint("CENTER", UIParent)
	TDT_HeaderPanel:Show()
	TDT_HeaderPanel:SetClampedToScreen(true)


	
	
	





	TDT_ConfigBtn = CreateFrame("Button", "TDT_ConfigButton", TDT_HeaderPanel)
	TDT_ConfigBtn:SetFrameLevel(5)
	TDT_ConfigBtn:ClearAllPoints()
	TDT_ConfigBtn:SetHeight(16)
	TDT_ConfigBtn:SetWidth(16)
	TDT_ConfigBtn:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton")
	TDT_ConfigBtn:SetHighlightTexture("Interface\\Buttons\\UI-OptionsButton", 1.0)
	TDT_ConfigBtn:SetAlpha(0.45)
	TDT_ConfigBtn:SetPoint("TOPRIGHT", TDT_HeaderPanel, "TOPRIGHT", -4, -2)

	TDT_ConfigBtn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	TDT_ConfigBtn:SetScript("OnClick", function()
		InterfaceOptionsFrame_OpenToCategory(addon.configPanel)
		InterfaceOptionsFrame_OpenToCategory(addon.configPanel)
		
	end)
	TDT_ConfigBtn:Show()
	
	-- Minimize Button
	minimizeBtn = CreateFrame("Button", "minimize", TDT_HeaderPanel)
	minimizeBtn:SetFrameLevel(5)
	minimizeBtn:ClearAllPoints()
	minimizeBtn:SetHeight(30)
	minimizeBtn:SetWidth(30)
	minimizeBtn:SetNormalTexture("Interface\\Buttons\\UI-MultiCheck-Up")
	minimizeBtn:SetHighlightTexture("Interface\\Buttons\\UI-MultiCheck-Up", 1.0)
	minimizeBtn:SetAlpha(0.45)
	minimizeBtn:SetPoint("TOPRIGHT", TDT_HeaderPanel, "TOPRIGHT", -17, 5)
	minimizeBtn:SetScript("OnClick", function()
		addon:setMinimized()
		
	end)
	
	minimizeBtn:Show()
	
 --]]
end



--[[
lockBtn = CreateFrame("Button", "lock", TDT_HeaderPanel)
lockBtn:SetFrameLevel(5)
lockBtn:ClearAllPoints()
lockBtn:SetHeight(25)
lockBtn:SetWidth(25)
lockBtn:SetNormalTexture("Interface\\Buttons\\LockButton-Unlocked-Up")
lockBtn:SetHighlightTexture("Interface\\Buttons\\LockButton-Unlocked-Up", 1.0)
lockBtn:SetAlpha(0.35)
lockBtn:SetPoint("TOPRIGHT", TDT_HeaderPanel, "TOPRIGHT", -17, 0)

lockBtn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
lockBtn:SetScript("OnClick", function()
	InterfaceOptionsFrame_OpenToCategory(configPanel)
	InterfaceOptionsFrame_OpenToCategory(configPanel)
	
end)
lockBtn:Show()
]]--

-- Returns true or false depending on if the user wants the addon on in the current instance.
function addon:checkInstance()
		-- Check if in raid or Mythic+
	local inInstance, instanceType = IsInInstance()
	local _, _, difficultyID = GetInstanceInfo()	
	
	local instanceAllowed = true
	if difficultyID == 8 then 
		if TDTConfig.MythicPlusToggle then
			instanceAllowed = true
		else
			instanceAllowed = false
		end
	elseif instanceType == "party" then
		if TDTConfig.DungeonToggle then
			instanceAllowed = true
		else
			instanceAllowed = false
		end
	elseif instanceType == "raid" then
		if TDTConfig.RaidToggle then
			instanceAllowed = true
		else
			instanceAllowed = false
		end	
	end
	return instanceAllowed

end

function addon:setEnabled()
	local inInstance, instanceType = IsInInstance()
	local mapID = C_Map.GetBestMapForUnit("player")
	local instanceMapID = select(8,GetInstanceInfo())
	--TDT_MobName:SetText("")
	--TDT_TipText:SetText("")
	

	if inInstance and TDTConfig.ShowFrame == "Show in separate frame" and (
		addon.acceptedDungeons[mapID] or (instanceMapID == 269 or instanceMapID == 560)) -- Torghast Maps
		 then
		if addon:checkInstance() then
			--TDT_HeaderPanel:Show()
			TDT_ParentFrame:Show()
		else
			TDT_ParentFrame:Hide()
		end
	
		--elseif difficultyID == 
			
		--local mapID = C_Map.GetBestMapForUnit("player")
		--if not acceptedDungeons[mapID] then return end	
		--local isShown = TDT_TipPanel:IsVisible()
		--print(isShown)
		
		
		--if not isShown then
		--	TDT_TipPanel:Hide()
		--end
	else
		TDT_ParentFrame:Hide()
	end
end


function addon:setMinimized(forceShow)
	if forceShow then
		addon.frameCollapsed = false
	elseif addon.frameCollapsed then
		addon.frameCollapsed = false
	else
		addon.frameCollapsed = true
	end

	if addon.frameCollapsed then
		addon.expandedFrameHeight = TDT_ParentFrame:GetHeight()
		TDT_TipPanel:Hide()
		TDT_ParentFrame:SetHeight(26)
	else
		TDT_TipPanel:Show()
		TDT_TipText:Show()
		if TDT_TipScrollFrame then TDT_TipScrollFrame:Show() end
		if TDT_TipScrollBar then TDT_TipScrollBar:Show() end
		TDT_ParentFrame:SetHeight(addon.expandedFrameHeight or TDTConfig.FrameHeight or 120)
	end
	addon:updateFrameButtons()
end
		
		
function addon:setDropdownEnabled()
	if TDTConfig.ShowFrame == "Show in separate frame" then
		--targetDD:Show()
		addon.targetFS:Show()
		addon.chkTarget:Show()
		
	else
		--targetDD:Hide()
		addon.targetFS:Hide()
		addon.chkTarget:Hide()
	end

end


function addon:colorFrame(TDT_onBoss)
	if TDT_onBoss then
		TDT_TipPanelTexture:SetColorTexture(100/255, 80/255, 0/255, 0.55)
		TDT_ParentFrameTexture:SetColorTexture(70/255, 50/255, 0/255, 0.55)
	else
		TDT_TipPanelTexture:SetColorTexture(55/255, 55/255, 55/255, 0.55)
		TDT_ParentFrameTexture:SetColorTexture(35/255, 35/255, 35/255, 0.55)
	end
end

function addon:refreshTipScroll()
	if not TDT_TipText or not TDT_TipScrollFrame or not TDT_TipScrollBar or not TDT_TipScrollChild then
		return
	end

	local textHeight = TDT_TipText:IsShown() and TDT_TipText:GetStringHeight() or 0
	local lineHeight = (addon.frameTipContentHeight or 0)
	local contentHeight = math.max(textHeight + 8, lineHeight + 8, 1)
	local viewHeight = TDT_TipScrollFrame:GetHeight()
	local maxScroll = math.max(contentHeight - viewHeight, 0)

	TDT_TipScrollChild:SetHeight(contentHeight)
	if TDT_TipLineContainer then
		TDT_TipLineContainer:SetHeight(math.max(lineHeight, 1))
	end
	TDT_TipScrollBar:SetMinMaxValues(0, maxScroll)
	if maxScroll == 0 then
		TDT_TipScrollBar:SetValue(0)
		TDT_TipScrollBar:Hide()
	else
		local currentValue = TDT_TipScrollBar:GetValue()
		if currentValue > maxScroll then
			currentValue = maxScroll
		end
		TDT_TipScrollBar:SetValue(currentValue)
		TDT_TipScrollBar:Show()
	end
end



TDT_onBoss = false

--createTDTFrame()







