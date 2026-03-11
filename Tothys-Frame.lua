--[[
Tothys Dungeon Tips TBC (former QE Dungeon Tips)
Configuration Page

Version: 0.9
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
	headerTDT:SetPoint("TOPRIGHT", 5, -4)
	headerTDT:SetFont("Fonts\\SKURRI.TTF", 16, "OUTLINE")
	headerTDT:SetTextColor(239/255, 191/255, 90/255)
	headerTDT:SetJustifyH("LEFT")
	headerTDT:SetJustifyV("MIDDLE")
	headerTDT:SetText("Tothys Dungeon Tips TBC")
	headerTDT:SetWordWrap(true)
	
	TDT_HeaderPanel:SetPoint("TOPLEFT", TDT_ParentFrame, "TOPLEFT", 0, 0)
	TDT_HeaderPanel:SetPoint("TOPRIGHT", TDT_ParentFrame, "TOPRIGHT", 0, 0)
	TDT_HeaderPanel:SetHeight(22)
	TDT_HeaderPanel:SetWidth(450)
	TDT_HeaderPanel:Show()
	
	
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

	-- Frame Tip Text
	TDT_TipText = TDT_TipPanel:CreateFontString("TDT_TipText", nil, nil)
	TDT_TipText:SetPoint("TOPLEFT", TDT_MobName, "BOTTOMLEFT", 0, -3)
	TDT_TipText:SetPoint("TOPRIGHT", TDT_MobName, "BOTTOMRIGHT", -3, -3)
	TDT_TipText:SetPoint("BOTTOMLEFT", TDT_ParentFrame, "BOTTOMLEFT", 0, 0)
	TDT_TipText:SetPoint("BOTTOMRIGHT", TDT_ParentFrame, "BOTTOMRIGHT", 0, 0)
	--TDT_TipText:SetFont("Fonts\\ARIALN.ttf", 14, nil)
	TDT_TipText:SetFontObject(GameFontWhite);
	local p,_,_ = TDT_TipText:GetFont();
	--print("Creating Frame" .. TDTConfig.FontSize)
	TDT_TipText:SetFont(p, TDTConfig.FontSize, nil)
	TDT_TipText:SetWidth(445)
	TDT_TipText:SetJustifyH("LEFT")
	TDT_TipText:SetJustifyV("TOP")
	TDT_TipText:SetText(" ")
	-----------------------
	
	
	-- Show Frame
	TDT_ParentFrame:SetPoint("CENTER", UIParent)
	TDT_ParentFrame:Show()
	
	
	TDT_ParentFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	TDT_ParentFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
	TDT_ParentFrame:RegisterEvent("ENCOUNTER_START")
	TDT_ParentFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
	TDT_ParentFrame:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT")
	TDT_ParentFrame:SetScript("OnEvent", function(self, event, ...)

		if event == "PLAYER_ENTERING_WORLD" then
			C_Timer.After(2, function() addon:setEnabled() end)
			--addon:setEnabled()
		elseif event == "PLAYER_TARGET_CHANGED" then
			--print("Player target changed" .. TDTConfig.TargetTrigger .. TDT_onBoss)
			if TDTConfig.TargetTrigger == "Show targeted mob" and not TDT_onBoss then addon:getTarget("target") end
			
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
	--if not TDT_TipText:IsVisible() or forceShow then
	if TDT_TipPanel:GetHeight() <= 26 then
		TDT_TipPanel:SetHeight(175)
		TDT_TipText:Show()
		
	else
		--TDT_TipPanel:Hide()
		TDT_TipPanel:SetHeight(25)
		TDT_TipText:Hide()
	end
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



TDT_onBoss = false

--createTDTFrame()







