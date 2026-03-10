--[[
Tothys Dungeon Tips TBC
Version: 0.5 (Burning Crusade Classic Alpha)
Developed by: Voulk
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

local iconList = {
	PriorityTargets = "ability_hunter_snipershot",
	Interrupts = "ability_kick",
	Defensives = "inv_shield_05",
	Important = "ability_dualwield",
	Legion = "ability_dualwield",
	Dodge = "ability_dualwield",
	
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

local function RGBToHex(r, g, b)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	return string.format("%02x%02x%02x", r*255, g*255, b*255)
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
			
			if TDTConfig[tip[1]] or tip[1] == "Legion" or tip[1] == "Dodge" or -- Show if tip type turned on, or if it's using an old Legion tag.
				(tip[1] == class and TDTConfig["ClassChoice"] == "Show my class only") or
				(classList[tip[1]] and TDTConfig["ClassChoice"] == "Show all classes") then
				
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
local function addFrameLine(tooltip, tips, type, class)
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

			if TDTConfig[tip[1]] or tip[1] == "Legion" or tip[1] == "Dodge" or -- Show if tip type turned on, or if it's using an old Legion tag.
				(tip[1] == class and TDTConfig["ClassChoice"] == "Show my class only") or
				(classList[tip[1]] and TDTConfig["ClassChoice"] == "Show all classes") then
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					local lineHex = RGBToHex(r, g, b)
					local tipBase = TDT_TipText:GetText() or ""
					
					if iconList[tip[1]] then -- Check if Icon exists
						--tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
						
						TDT_TipText:SetText(tipBase .. ((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]]).. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")))
						
					elseif tipsColors[tip[1]] then -- Check if color exists
						TDT_TipText:SetText(tipBase .. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")
						--tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						TDT_TipText:SetText(tipBase .. " " .. tip[2] .. "\n")
						--tooltip:AddLine(tip[2])
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
		if tipsMap[id] then
			-- Don't remove active tip if you accidentally mouse over ally.
			TDT_TipText:SetText("")
			TDT_MobName:SetText(name)
		
			if TDTConfig.ShowFrame == "Show in separate frame" then addFrameLine(TDT_TipPanel, tipsMap[id], "NPC ID:", class)
			else addLine(GameTooltip, tipsMap[id], "NPC ID:", class)
			end
		
		elseif UnitIsEnemy(unit, "player") then
			TDT_TipText:SetText("")
			TDT_MobName:SetText(name)
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
	if tipsMap[id] then
		-- Don't remove active tip if you accidentally mouse over ally.
		
		TDT_TipText:SetText("")
		TDT_MobName:SetText(name)
		addFrameLine(TDT_TipPanel, tipsMap[id], "NPC ID:", class)
		--addLine(GameTooltip, tipsMap[id], "NPC ID:", role, class)		

	elseif 	UnitIsEnemy(mobType, "player") then
		TDT_TipText:SetText("")
		TDT_MobName:SetText(name)
		
	end
	

	
  end
end



local function tdtPrint(message)
	if DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99TDT:|r " .. message)
	end
end

function addon:openConfig()
    if addon.registerConfigPanel then
        addon:registerConfigPanel()
    end
    if Settings and Settings.OpenToCategory and addon.configCategory then
        if addon.configCategory.GetID then
            Settings.OpenToCategory(addon.configCategory:GetID())
        elseif addon.configCategory.ID then
            Settings.OpenToCategory(addon.configCategory.ID)
        else
            Settings.OpenToCategory(addon.configPanel.name)
        end
    elseif addon.configPanel and InterfaceOptionsFrame_OpenToCategory then
        InterfaceOptionsFrame_OpenToCategory(addon.configPanel)
        InterfaceOptionsFrame_OpenToCategory(addon.configPanel)
    else
        tdtPrint("Config panel is not available in this client.")
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
		TDT_TipText:SetText(" |cff33ff99Addon loaded successfully.|r\n |cffffd166Use /tdt show, /tdt hide, or target a dungeon mob.|r")
	end
end

SLASH_TDTCOMMAND1 = "/tdt"
SlashCmdList["TDTCOMMAND"] = function(msg)
	msg = string.lower(msg or "")

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
	elseif msg == "test" then
		addon:showTestFrame()
	else
        tdtPrint("Commands: /tdt config, /tdt show, /tdt hide, /tdt test")
	end
end





