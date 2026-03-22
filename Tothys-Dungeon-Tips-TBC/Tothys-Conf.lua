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
        - New Slash Commands: /kdt config, /kdt show, /kdt hide, /kdt test
]]--

local localeDisplayNames = {
    Auto = "Auto",
    enUS = "English",
    deDE = "Deutsch",
}

local browserLocaleStrings = {
	enUS = {
		content_browser_page = "Content Browser",
		content_browser_title = "Kiesel Dungeon Tool - Content Browser",
		content_browser_subtitle = "Browse expansions, dungeons, raids, and NPC tips here. This is the easiest place to look up encounters and check notes before a run.",
		config_page = "Kiesel Dungeon Tool",
		config_title = "Kiesel Dungeon Tool - Config",
		info_title = "Kiesel Dungeon Tool - Info",
		info_intro = "Kiesel Dungeon Tool is a successor to QE Dungeon Tips.",
		info_background = "Background",
		info_background_text = "QE Dungeon Tips did great groundwork and provided the base inspiration for this addon. The original project helped establish the structure and the idea of contextual dungeon and NPC guidance.\n\nThis addon exists because QE Dungeon Tips no longer worked reliably for TBC Anniversary, so we are rebuilding and extending the concept in a form that fits the current project goals.",
		info_status = "Project Status",
		info_status_text = "Kiesel Dungeon Tool is still actively in development and is not complete yet.\n\nSome instances and NPCs are already structured in the new browser and data model, but the addon is still being expanded, cleaned up, and documented. Expect missing content, placeholder areas, and ongoing iteration while the new system is built out.",
		info_focus = "Current Focus",
		info_focus_text = "Current work focuses on:\n- structured expansion, instance, and NPC browsing\n- tactical dungeon info and browser-only extra details\n- locale-aware data handling\n- update-safe personal editing and overrides",
		locale_reload_text = "Changing the language will reload the UI. Continue?",
		locale_reload_accept = "Reload UI",
		locale_reload_cancel = "Cancel",
		info_how_it_works_text = "Use the browser to look up dungeon info, extra details, and NPC tips. In the editors, Addon Tips are the built-in notes that come with the addon. They can be adjusted or hidden without changing the original addon data. Personal Tips are your own notes and can use different tip types, custom text, and custom weights.\n\nWeight controls the order of tips. Higher values appear first. The built-in addon tips usually start at 10 and go up in steps of 10, which makes it easy to place your own notes in between them when needed.",
		additional_details = "More Infos",
		add_npc_tip = "Add Personal NPC Tip",
		editor_page = "Tip Editor",
		editor_title = "Kiesel Dungeon Tool - Tip Editor",
		editor_subtitle = "Add your own NPC tips or adjust existing addon tips here. This is useful for raid leads, group notes, and encounter reminders.",
		dungeon_editor_page = "Dungeon Editor",
		dungeon_editor_title = "Kiesel Dungeon Tool - Dungeon Editor",
		dungeon_editor_subtitle = "Add your own dungeon notes or adjust existing dungeon info here. This is useful for route notes, reminders, and group preparation.",
		add_instance_tip = "Add Personal Dungeon Tip",
		instance_tips_preview = "Dungeon Tips",
		instance_summary_prefix = "Selected",
		user_instance_tips = "Personal Dungeon Tips",
		addon_instance_tips = "Addon Dungeon Tips",
		no_addon_instance_tips = "No addon dungeon tips found for this dungeon or raid.",
		no_user_instance_tips = "No personal dungeon tips for this dungeon or raid yet.",
		saved_instance_tip = "Personal dungeon tip saved.",
		updated_instance_tip = "Personal dungeon tip updated.",
		instance_edit_loaded = "Personal dungeon tip loaded into editor.",
		base_instance_edit_loaded = "Addon dungeon tip loaded into override mode.",
		updated_base_instance_tip = "Addon dungeon tip override updated.",
		edit_more_infos = "Edit More Infos",
		save_more_infos = "Save More Infos",
		reset_more_infos = "Reset More Infos",
		more_infos_saved = "More Infos overrides saved.",
		more_infos_reset = "More Infos overrides reset.",
		original_text = "Original",
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
		default_instance_tip_text = "Write a personal dungeon tip here...",
		saved_tip = "Personal NPC tip saved.",
		missing_tip = "Please choose a tip type and enter text first.",
		travel = "Travel",
		attunement = "Attunement",
		extra_notes = "More Infos",
		lore = "Lore / RP",
		no_details = "No extra dungeon info yet.",
		info_page = "Info",
		dungeon_info = "Dungeon Info",
		npc_tips = "NPC Tips",
		info_how_it_works = "How It Works",
		expansion = "Expansion",
		dungeon_or_raid = "Dungeon / Raid",
		npc = "NPC",
		bosses = "Bosses",
		npc_ids = "NPC IDs",
		npcs_a_i = "NPCs A-I",
		npcs_j_r = "NPCs J-R",
		npcs_s_z = "NPCs S-Z",
		selected_with_type = "Selected: %s -> %s (%s) -> %s",
		selected_npc_path = "Selected: %s -> %s -> %s",
		selected_npc = "NPC: %s",
		selected_instance = "Selected: %s -> %s",
		config_tip_location = "Tip Location",
		config_show_separate_frame = "Show tips in separate frame",
		config_show_prefix = "Show",
		config_show_separate_frame_tooltip = "Uncheck to have tips appear in mob tooltips instead",
		config_show_frame = "Show Frame",
		config_hide_frame = "Hide Frame",
		config_target_mouseover = "Show Target or Mouseover",
		config_show_target = "Show Targeted Mob",
		config_role_specific = "Role Specific Tips",
		config_show_myroleonly = "Show My Role Only",
		config_show_tank = "Show Tank",
		config_show_healer = "Show Healer",
		config_show_damage = "Show Damage Dealer",
		config_class_specific = "Class Specific Tips",
		config_show_myclassonly = "Show My Class Only",
		class_druid = "Druid",
		class_hunter = "Hunter",
		class_mage = "Mage",
		class_paladin = "Paladin",
		class_priest = "Priest",
		class_rogue = "Rogue",
		class_shaman = "Shaman",
		class_warrior = "Warrior",
		class_warlock = "Warlock",
		config_language = "Language",
		config_language_help = "Auto uses the client locale. English is the fallback if no translation exists.",
		config_content = "Content",
		config_show_in_dungeons = "Show Tips in Dungeons",
		config_show_in_raid = "Show Tips in Raid",
		config_show_npc_ids = "Show NPC IDs",
		config_font_size = "Font Size",
		config_general = "Show Important General Information",
		config_priority = "Show Priority Targets",
		config_interrupts = "Show Priority Interrupts",
		config_defensives = "Show Defensive Recommendations",
		config_fluff = "Show Fluff/RP",
		config_advanced = "Show advanced tips for high level keys",
		config_personal = "Show Personal Notes",
	},
	deDE = {
		content_browser_page = "Inhaltsbrowser",
		content_browser_title = "Kiesel Dungeon Tool - Inhaltsbrowser",
		content_browser_subtitle = "Hier kannst du Erweiterungen, Dungeons, Raids und NPC-Tipps durchsehen. Das ist der einfachste Ort, um Begegnungen und Notizen vor einem Run nachzuschlagen.",
		config_page = "Kiesel Dungeon Tool",
		config_title = "Kiesel Dungeon Tool - Konfiguration",
		info_title = "Kiesel Dungeon Tool - Info",
		info_intro = "Kiesel Dungeon Tool ist ein Nachfolger von QE Dungeon Tips.",
		info_background = "Hintergrund",
		info_background_text = "QE Dungeon Tips hat tolle Vorarbeit geleistet und die Grundlage fuer dieses Addon geschaffen. Das urspruengliche Projekt hat die Idee von kontextbezogenen Dungeon- und NPC-Hinweisen etabliert.\n\nDieses Addon existiert, weil QE Dungeon Tips fuer TBC Anniversary nicht mehr verlaesslich funktioniert hat. Deshalb bauen wir das Konzept in einer Form neu auf und erweitern es weiter, die besser zu den heutigen Projektzielen passt.",
		info_status = "Projektstatus",
		info_status_text = "Kiesel Dungeon Tool ist weiterhin aktiv in Entwicklung und noch nicht vollstaendig.\n\nEinige Instanzen und NPCs sind bereits in der neuen Browser- und Datenstruktur vorhanden, aber das Addon wird noch weiter ausgebaut, bereinigt und dokumentiert. Es ist also normal, wenn Inhalte fehlen oder sich noch veraendern.",
		info_focus = "Aktueller Fokus",
		info_focus_text = "Der aktuelle Fokus liegt auf:\n- strukturierter Navigation fuer Erweiterungen, Instanzen und NPCs\n- taktischen Dungeon-Infos und zusaetzlichen Browser-Infos\n- lokalisierungsfaehigen Daten\n- updatesicheren persoenlichen Bearbeitungen und Overrides",
		locale_reload_text = "Das Aendern der Sprache laedt das Interface neu. Fortfahren?",
		locale_reload_accept = "Interface neu laden",
		locale_reload_cancel = "Abbrechen",
		info_how_it_works_text = "Im Browser kannst du Dungeon-Infos, Zusatzinfos und NPC-Tipps nachschlagen. In den Editoren sind Addon-Tipps die eingebauten Hinweise, die mit dem Addon geliefert werden. Sie koennen angepasst oder ausgeblendet werden, ohne die urspruenglichen Addon-Daten zu veraendern. Persoenliche Tipps sind deine eigenen Notizen und koennen verschiedene Tipp-Arten, eigenen Text und eigene Gewichtungen haben.\n\nDie Gewichtung steuert die Reihenfolge der Tipps. Hoehere Werte erscheinen weiter oben. Die eingebauten Addon-Tipps beginnen meist bei 10 und steigen in 10er-Schritten, damit du eigene Notizen leicht dazwischen einsortieren kannst.",
		additional_details = "Mehr Infos",
		add_npc_tip = "Persoenlichen NPC-Tipp hinzufuegen",
		editor_page = "Tipp-Editor",
		editor_title = "Kiesel Dungeon Tool - Tipp-Editor",
		editor_subtitle = "Hier kannst du eigene NPC-Tipps hinzufuegen oder vorhandene Addon-Tipps anpassen. Ideal fuer Raid-Leads, Gruppennotizen und Begegnungserinnerungen.",
		dungeon_editor_page = "Dungeon-Editor",
		dungeon_editor_title = "Kiesel Dungeon Tool - Dungeon-Editor",
		dungeon_editor_subtitle = "Hier kannst du eigene Dungeon-Notizen hinzufuegen oder vorhandene Dungeon-Infos anpassen. Ideal fuer Routen, Erinnerungen und Gruppenvorbereitung.",
		add_instance_tip = "Persoenlichen Dungeon-Tipp hinzufuegen",
		instance_tips_preview = "Dungeon-Tipps",
		instance_summary_prefix = "Ausgewaehlt",
		user_instance_tips = "Persoenliche Dungeon-Tipps",
		addon_instance_tips = "Addon-Dungeon-Tipps",
		no_addon_instance_tips = "Fuer diesen Dungeon oder Raid wurden keine Addon-Dungeon-Tipps gefunden.",
		no_user_instance_tips = "Fuer diesen Dungeon oder Raid gibt es noch keine persoenlichen Dungeon-Tipps.",
		saved_instance_tip = "Persoenlicher Dungeon-Tipp gespeichert.",
		updated_instance_tip = "Persoenlicher Dungeon-Tipp aktualisiert.",
		instance_edit_loaded = "Persoenlicher Dungeon-Tipp in den Editor geladen.",
		base_instance_edit_loaded = "Addon-Dungeon-Tipp im Ueberschreibungsmodus geladen.",
		updated_base_instance_tip = "Addon-Dungeon-Tipp-Ueberschreibung aktualisiert.",
		edit_more_infos = "Mehr Infos bearbeiten",
		save_more_infos = "Mehr Infos speichern",
		reset_more_infos = "Mehr Infos zuruecksetzen",
		more_infos_saved = "Mehr-Infos-Overrides gespeichert.",
		more_infos_reset = "Mehr-Infos-Overrides zurueckgesetzt.",
		original_text = "Original",
		tip_type = "Tipp-Typ",
		tip_weight = "Gewichtung",
		tip_text = "Tipp-Text",
		save_tip = "Tipp speichern",
		edit = "Bearbeiten",
		edit_base = "Ueberschreiben",
		update_tip = "Tipp aktualisieren",
		update_base_tip = "Ueberschreibung speichern",
		cancel_edit = "Bearbeiten abbrechen",
		edit_loaded = "Persoenlicher Tipp in den Editor geladen.",
		base_edit_loaded = "Basis-Tipp im Ueberschreibungsmodus geladen.",
		updated_tip = "Persoenlicher Tipp aktualisiert.",
		updated_base_tip = "Basis-Tipp-Ueberschreibung aktualisiert.",
		personal_tips = "Eigene Tipps",
		base_tips = "Addon-Tipps",
		no_base_tips = "Fuer diesen NPC wurden keine Addon-Tipps gefunden.",
		reset = "Zuruecksetzen",
		overridden_tip = "ueberschrieben",
		legacy_tip = "Altes Format, schreibgeschuetzt",
		hidden_tip = "ausgeblendet",
		hide = "Ausblenden",
		unhide = "Einblenden",
		delete = "Loeschen",
		no_personal_tips = "Fuer diesen NPC gibt es noch keine persoenlichen Tipps.",
		default_tip_text = "Hier persoenlichen NPC-Tipp eingeben...",
		default_instance_tip_text = "Hier persoenlichen Dungeon-Tipp eingeben...",
		saved_tip = "Persoenlicher NPC-Tipp gespeichert.",
		missing_tip = "Bitte zuerst einen Tipp-Typ waehlen und Text eingeben.",
		travel = "Anfahrt",
		attunement = "Zugang",
		extra_notes = "Mehr Infos",
		lore = "Lore / RP",
		no_details = "Noch keine zusaetzlichen Dungeon-Infos vorhanden.",
		info_page = "Info",
		dungeon_info = "Dungeon-Infos",
		npc_tips = "NPC-Tipps",
		info_how_it_works = "So funktioniert's",
		expansion = "Erweiterung",
		dungeon_or_raid = "Dungeon / Raid",
		npc = "NPC",
		bosses = "Bosse",
		npc_ids = "NPC-IDs",
		npcs_a_i = "NPCs A-I",
		npcs_j_r = "NPCs J-R",
		npcs_s_z = "NPCs S-Z",
		selected_with_type = "Ausgewaehlt: %s -> %s (%s) -> %s",
		selected_npc_path = "Ausgewaehlt: %s -> %s -> %s",
		selected_npc = "NPC: %s",
		selected_instance = "Ausgewaehlt: %s -> %s",
		config_tip_location = "Anzeigeort",
		config_show_separate_frame = "Tipps in separatem Fenster anzeigen",
		config_show_prefix = "Zeige",
		config_show_separate_frame_tooltip = "Deaktivieren, damit Tipps direkt in Mob-Tooltips erscheinen",
		config_show_frame = "Fenster zeigen",
		config_hide_frame = "Fenster verbergen",
		config_target_mouseover = "Target oder Mouseover",
		config_show_target = "Anvisierten Mob anzeigen",
		config_role_specific = "Rollenspezifische Tipps",
		config_show_myroleonly = "Nur meine Rolle anzeigen",
		config_show_tank = "Tank anzeigen",
		config_show_healer = "Heiler anzeigen",
		config_show_damage = "Schadensausteiler anzeigen",
		config_class_specific = "Klassenspezifische Tipps",
		config_show_myclassonly = "Nur meine Klasse anzeigen",
		class_druid = "Druide",
		class_hunter = "Jaeger",
		class_mage = "Magier",
		class_paladin = "Paladin",
		class_priest = "Priester",
		class_rogue = "Schurke",
		class_shaman = "Schamane",
		class_warrior = "Krieger",
		class_warlock = "Hexenmeister",
		config_language = "Sprache",
		config_language_help = "Auto verwendet die Sprache des Spiels. Englisch wird verwendet, wenn keine Uebersetzung vorhanden ist.",
		config_content = "Inhalte",
		config_show_in_dungeons = "Tipps in Dungeons anzeigen",
		config_show_in_raid = "Tipps in Raids anzeigen",
		config_show_npc_ids = "NPC-IDs anzeigen",
		config_font_size = "Schriftgroesse",
		config_general = "Wichtige allgemeine Hinweise anzeigen",
		config_priority = "Prioritaetsziele anzeigen",
		config_interrupts = "Wichtige Unterbrechungen anzeigen",
		config_defensives = "Defensiv-Empfehlungen anzeigen",
		config_fluff = "Fluff / RP anzeigen",
		config_advanced = "Fortgeschrittene Tipps fuer schwere Inhalte anzeigen",
		config_personal = "Persoenliche Notizen anzeigen",
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

local NPC_NONE = "__none__"

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
    ["DungeonToggle"] = true,
    ["RaidToggle"] = true,
    ["ShowNpcIDs"] = true,
    ["MythicPlusToggle"] = true,
    ["FrameWidth"] = 450,
    ["FrameHeight"] = 175,
    ["FontSize"] = 13,
    ["FrameOpacity"] = 0.55,
    ["LocaleChoice"] = "Auto",
    ["BrowserExpansionKey"] = "tbc",
    ["BrowserInstanceKey"] = "auchenai_crypts",
    ["BrowserNpcID"] = 18371,
    ["RoleFilters"] = {
        MYROLEONLY = false,
        TANK = true,
        HEALER = true,
        DAMAGE = true,
    },
    ["ClassFilters"] = {
        MYCLASSONLY = false,
        DRUID = true,
        HUNTER = true,
        MAGE = true,
        PALADIN = true,
        PRIEST = true,
        ROGUE = true,
        SHAMAN = true,
        WARRIOR = true,
        WARLOCK = true,
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

local function getBrowserLocaleString(key)
	local localeStrings = browserLocaleStrings[getConfigLocale()] or browserLocaleStrings.enUS
	return localeStrings[key] or browserLocaleStrings.enUS[key] or key
end

local function getLocalizedClassName(classKey)
    return getBrowserLocaleString("class_" .. string.lower(classKey or "")) or classKey
end

StaticPopupDialogs["TDT_CONFIRM_LOCALE_RELOAD"] = {
	text = "Reload UI?",
	button1 = "Reload",
	button2 = "Cancel",
	OnAccept = function(self)
		if self and self.data then
			TDTConfig.LocaleChoice = self.data
		end
		if ReloadUI then
			ReloadUI()
		end
	end,
	OnCancel = function(self)
		if self and self.data2 and self.data2.dropdown then
			self.data2.dropdown:SetCurrentValue(self.data2.previousValue)
		end
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	preferredIndex = STATICPOPUP_NUMDIALOGS,
}

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
    if addon.getMergedInstanceDetails then
        return addon:getMergedInstanceDetails(instanceKey)
    end

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

local function buildDetailLines(details)
    local lines = {}
    if not details then
        return lines
    end

    if details.travel and details.travel ~= "" then
        lines[#lines + 1] = string.format("%s: %s", getBrowserLocaleString("travel"), details.travel)
    end
    if details.attunement and details.attunement ~= "" then
        lines[#lines + 1] = string.format("%s: %s", getBrowserLocaleString("attunement"), details.attunement)
    end
    if details.notes and details.notes ~= "" then
        lines[#lines + 1] = string.format("%s: %s", getBrowserLocaleString("extra_notes"), details.notes)
    end
    if details.lore and details.lore ~= "" then
        lines[#lines + 1] = string.format("%s: %s", getBrowserLocaleString("lore"), details.lore)
    end

    return lines
end

local function sendBrowserLineToChat(message, channel)
    if not message or message == "" or not SendChatMessage then
        return
    end

    SendChatMessage(message, channel)
end

local function createBrowserShareRows(parent, count)
    local rows = {}

    for index = 1, count do
        local row = CreateFrame("Frame", nil, parent)
        row:SetSize(620, 34)

        row.text = createString(row, "", "Fonts\\FRIZQT__.TTF", 11)
        row.text:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 0)
        row.text:SetWidth(420)

        local buttons = {
            {"S", "SAY", 24},
            {"P", "PARTY", 24},
            {"G", "GUILD", 24},
            {"RA", "RAID", 28},
            {"RL", "RAID_WARNING", 28},
        }

        row.shareButtons = {}
        local previousButton
        for _, buttonInfo in ipairs(buttons) do
            local label, channel, width = buttonInfo[1], buttonInfo[2], buttonInfo[3]
            local button = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
            button:SetSize(width, 20)
            if previousButton then
                button:SetPoint("RIGHT", previousButton, "LEFT", -4, 0)
            else
                button:SetPoint("TOPRIGHT", row, "TOPRIGHT", 0, 0)
            end
            button:SetText(label)
            button:SetScript("OnClick", function(self)
                sendBrowserLineToChat(self.message, self.channel)
            end)
            button.channel = channel
            row.shareButtons[#row.shareButtons + 1] = button
            previousButton = button
        end

        row:Hide()
        rows[index] = row
    end

    return rows
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

    table.insert(npcIDs, 1, NPC_NONE)
    return npcIDs
end

local function getNpcSortName(expansionKey, instanceKey, npcID)
    if npcID == NPC_NONE then
        return "---"
    end

    local instanceData = getInstanceData(expansionKey, instanceKey)
    if instanceData and instanceData.npcNames and instanceData.npcNames[npcID] then
        local localizedName = getLocalizedLabel(instanceData.npcNames[npcID], nil)
        if localizedName and localizedName ~= "" then
            return localizedName
        end
    end

    local rawTips = getRawNpcTips(npcID)
    local commentName = getNpcCommentName(rawTips)
    if commentName and commentName ~= "" then
        return commentName
    end

    return tostring(npcID)
end

local function getNpcAlphaBucket(expansionKey, instanceKey, npcID)
    local sortName = getNpcSortName(expansionKey, instanceKey, npcID)
    local first = sortName:match("^%s*([A-Za-z])")
    if not first then
        return "s_z"
    end

    local upper = string.upper(first)
    if upper >= "A" and upper <= "I" then
        return "a_i"
    elseif upper >= "J" and upper <= "R" then
        return "j_r"
    end
    return "s_z"
end

local function getNpcIDsForSelector(expansionKey, instanceKey, selector)
    local allNpcIDs = getNpcIDs(expansionKey, instanceKey)
    if selector == "bosses" then
        local npcIDs = { NPC_NONE }
        local groups = addon.npcGroups and addon.npcGroups[instanceKey]
        for _, npcID in ipairs(allNpcIDs) do
            if npcID ~= NPC_NONE and groups and groups[npcID] == "boss" then
                npcIDs[#npcIDs + 1] = npcID
            end
        end
        table.sort(npcIDs, function(left, right)
            if left == NPC_NONE then
                return true
            end
            if right == NPC_NONE then
                return false
            end
            return getNpcSortName(expansionKey, instanceKey, left) < getNpcSortName(expansionKey, instanceKey, right)
        end)
        return npcIDs
    end

    if selector == "ids" then
        return allNpcIDs
    end

    local npcIDs = { NPC_NONE }
    for _, npcID in ipairs(allNpcIDs) do
        if npcID ~= NPC_NONE and getNpcAlphaBucket(expansionKey, instanceKey, npcID) == selector then
            npcIDs[#npcIDs + 1] = npcID
        end
    end

    table.sort(npcIDs, function(left, right)
        if left == NPC_NONE then
            return true
        end
        if right == NPC_NONE then
            return false
        end
        return getNpcSortName(expansionKey, instanceKey, left) < getNpcSortName(expansionKey, instanceKey, right)
    end)

    return npcIDs
end

local function getNpcCommentName(rawTips)
    return nil
end

local function shouldShowNpcIDs()
    return not TDTConfig or TDTConfig.ShowNpcIDs ~= false
end

local function getNpcBrowserLabel(expansionKey, instanceKey, npcID)
    if npcID == NPC_NONE then
        return "---"
    end

    local instanceData = getInstanceData(expansionKey, instanceKey)
    local localizedName

    if instanceData and instanceData.npcNames and instanceData.npcNames[npcID] then
        localizedName = getLocalizedLabel(instanceData.npcNames[npcID], nil)
    end

    if localizedName then
        if not shouldShowNpcIDs() then
            return localizedName
        end
        return string.format("%s (%d)", localizedName, npcID)
    end

    local rawTips = getRawNpcTips(npcID)
    local commentName = getNpcCommentName(rawTips)
    if commentName then
        if not shouldShowNpcIDs() then
            return commentName
        end
        return string.format("%s (%d)", commentName, npcID)
    end

    return tostring(npcID)
end

local function getNpcDisplayName(expansionKey, instanceKey, npcID)
    if npcID == NPC_NONE then
        return nil
    end
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
    local browserContent = setupScrollablePanel(addon.contentBrowserPanel, "TDTContentBrowser", 1900)

    local headerFont = "Fonts\\MORPHEUS.ttf"
    local headerSize = 16

    local title = browserContent:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText(getBrowserLocaleString("content_browser_title"))

    local subtitle = createString(browserContent, getBrowserLocaleString("content_browser_subtitle"), "Fonts\\FRIZQT__.TTF", 11)
    subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    subtitle:SetWidth(540)

    local expansionFS = createString(browserContent, getBrowserLocaleString("expansion"), headerFont, headerSize)
    expansionFS:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -20)

    local instanceFS = createString(browserContent, getBrowserLocaleString("dungeon_or_raid"), headerFont, headerSize)
    instanceFS:SetPoint("TOPLEFT", expansionButton or subtitle, "BOTTOMLEFT", 0, -24)

    local bossesFS = createString(browserContent, getBrowserLocaleString("bosses"), headerFont, headerSize)
    bossesFS:SetPoint("TOPLEFT", instanceFS, "BOTTOMLEFT", 0, -26)

    local npcIdsFS = createString(browserContent, getBrowserLocaleString("npc_ids"), headerFont, headerSize)
    npcIdsFS:SetPoint("TOPLEFT", bossesFS, "BOTTOMLEFT", 0, -26)

    local npcAiFS = createString(browserContent, getBrowserLocaleString("npcs_a_i"), headerFont, headerSize)
    npcAiFS:SetPoint("TOPLEFT", npcIdsFS, "BOTTOMLEFT", 0, -26)

    local npcJrFS = createString(browserContent, getBrowserLocaleString("npcs_j_r"), headerFont, headerSize)
    npcJrFS:SetPoint("TOPLEFT", npcAiFS, "BOTTOMLEFT", 0, -26)

    local npcSzFS = createString(browserContent, getBrowserLocaleString("npcs_s_z"), headerFont, headerSize)
    npcSzFS:SetPoint("TOPLEFT", npcJrFS, "BOTTOMLEFT", 0, -26)

    local browserState = {
        expansionKey = TDTConfig.BrowserExpansionKey,
        instanceKey = TDTConfig.BrowserInstanceKey,
        npcID = TDTConfig.BrowserNpcID,
    }

    local expansionButton
    local instanceDropdown
    local bossDropdown
    local bossDropdown
    local npcIdsDropdown
    local npcAiDropdown
    local npcJrDropdown
    local npcSzDropdown
    local selectionSummary
    local npcSelectionLabel
    local instancePreview
    local instanceDetailsPreview
    local npcPreview
    local instancePreviewFS
    local instanceDetailsFS
    local npcPreviewFS
    local instanceTipRows = createBrowserShareRows(browserContent, 20)
    local instanceDetailRows = createBrowserShareRows(browserContent, 8)
    local npcHeadingRow = createBrowserShareRows(browserContent, 1)[1]
    local npcTipRows = createBrowserShareRows(browserContent, 24)

    local function refreshBrowserTexts()
        title:SetText(getBrowserLocaleString("content_browser_title"))
        subtitle:SetText(getBrowserLocaleString("content_browser_subtitle"))
        expansionFS:SetText(getBrowserLocaleString("expansion"))
        instanceFS:SetText(getBrowserLocaleString("dungeon_or_raid"))
        bossesFS:SetText(getBrowserLocaleString("bosses"))
        npcIdsFS:SetText(getBrowserLocaleString("npc_ids"))
        npcAiFS:SetText(getBrowserLocaleString("npcs_a_i"))
        npcJrFS:SetText(getBrowserLocaleString("npcs_j_r"))
        npcSzFS:SetText(getBrowserLocaleString("npcs_s_z"))
        instancePreviewFS:SetText(getBrowserLocaleString("dungeon_info"))
        instanceDetailsFS:SetText(getBrowserLocaleString("additional_details"))
        npcPreviewFS:SetText(getBrowserLocaleString("npc_tips"))
    end

    local function setBrowserRows(rows, startAnchor, lines)
        local lastAnchor = startAnchor

        for _, row in ipairs(rows) do
            row:Hide()
        end

        if not lines or #lines == 0 then
            return startAnchor
        end

        for index, line in ipairs(lines) do
            local row = rows[index]
            if not row then
                break
            end

            row:ClearAllPoints()
            if index == 1 then
                row:SetPoint("TOPLEFT", startAnchor, "BOTTOMLEFT", 0, -6)
            else
                row:SetPoint("TOPLEFT", rows[index - 1], "BOTTOMLEFT", 0, -6)
            end

            row.text:SetText(line.display)
            for _, button in ipairs(row.shareButtons or {}) do
                button.message = line.message
            end
            row:Show()
            lastAnchor = row
        end

        return lastAnchor
    end
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
            browserState.npcID = NPC_NONE
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

        local expansionData = getExpansionData(browserState.expansionKey)
        local instanceData = getInstanceData(browserState.expansionKey, browserState.instanceKey)
        local expansionLabel = getLocalizedLabel(expansionData and expansionData.name, browserState.expansionKey or "-")
        local instanceLabel = getLocalizedLabel(instanceData and instanceData.name, browserState.instanceKey or "-")
        local instanceType = instanceData and instanceData.type or "Unknown"
        local selectedNpcID = browserState.npcID ~= NPC_NONE and browserState.npcID or nil
        bossDropdown:SetValues(getNpcIDsForSelector(browserState.expansionKey, browserState.instanceKey, "bosses"))
        npcIdsDropdown:SetValues(getNpcIDsForSelector(browserState.expansionKey, browserState.instanceKey, "ids"))
        npcAiDropdown:SetValues(getNpcIDsForSelector(browserState.expansionKey, browserState.instanceKey, "a_i"))
        npcJrDropdown:SetValues(getNpcIDsForSelector(browserState.expansionKey, browserState.instanceKey, "j_r"))
        npcSzDropdown:SetValues(getNpcIDsForSelector(browserState.expansionKey, browserState.instanceKey, "s_z"))
        if selectedNpcID and addon.npcGroups and addon.npcGroups[browserState.instanceKey] and addon.npcGroups[browserState.instanceKey][selectedNpcID] == "boss" then
            bossDropdown:SetCurrentValue(selectedNpcID)
        else
            bossDropdown:SetCurrentValue(NPC_NONE)
        end
        npcIdsDropdown:SetCurrentValue(browserState.npcID)
        if selectedNpcID then
            local bucket = getNpcAlphaBucket(browserState.expansionKey, browserState.instanceKey, selectedNpcID)
            npcAiDropdown:SetCurrentValue(bucket == "a_i" and selectedNpcID or NPC_NONE)
            npcJrDropdown:SetCurrentValue(bucket == "j_r" and selectedNpcID or NPC_NONE)
            npcSzDropdown:SetCurrentValue(bucket == "s_z" and selectedNpcID or NPC_NONE)
        else
            npcAiDropdown:SetCurrentValue(NPC_NONE)
            npcJrDropdown:SetCurrentValue(NPC_NONE)
            npcSzDropdown:SetCurrentValue(NPC_NONE)
        end

        local npcLabel = browserState.npcID and getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, browserState.npcID) or "-"
        local npcDisplayName = selectedNpcID and getNpcDisplayName(browserState.expansionKey, browserState.instanceKey, selectedNpcID) or nil

        selectionSummary:SetText(string.format(getBrowserLocaleString("selected_with_type"), expansionLabel, instanceLabel, instanceType, npcLabel))
        npcSelectionLabel:SetText(string.format(getBrowserLocaleString("selected_npc"), npcLabel))
        local mergedInstanceEntries = addon.getMergedInstanceTipEntries and addon:getMergedInstanceTipEntries(browserState.instanceKey) or normalizeRawTips(getRawInstanceTips(browserState.instanceKey))
        local mergedNpcEntries = selectedNpcID and (addon.getMergedNpcTipEntries and addon:getMergedNpcTipEntries(selectedNpcID) or normalizeRawTips(getRawNpcTips(selectedNpcID))) or nil

        instancePreview:SetText("")
        instanceDetailsPreview:SetText("")
        npcPreview:SetText("")

        local instanceLines = {}
        for _, tip in ipairs(mergedInstanceEntries or {}) do
            instanceLines[#instanceLines + 1] = {
                display = string.format("[%s] %s", tip.type or "?", tip.text or ""),
                message = string.format("[%s] %s", tip.type or "?", tip.text or ""),
            }
        end

        local detailLines = {}
        for _, line in ipairs(buildDetailLines(getInstanceDetails(browserState.instanceKey))) do
            detailLines[#detailLines + 1] = {
                display = line,
                message = line,
            }
        end

        local npcLines = {}
        for _, tip in ipairs(mergedNpcEntries or {}) do
            npcLines[#npcLines + 1] = {
                display = string.format("[%s] %s", tip.type or "?", tip.text or ""),
                message = string.format("[%s] %s", tip.type or "?", tip.text or ""),
            }
        end

        local lastInstanceAnchor = setBrowserRows(instanceTipRows, instancePreviewFS, instanceLines)
        instanceDetailsFS:ClearAllPoints()
        instanceDetailsFS:SetPoint("TOPLEFT", lastInstanceAnchor, "BOTTOMLEFT", 0, -18)

        local lastDetailsAnchor = setBrowserRows(instanceDetailRows, instanceDetailsFS, detailLines)
        npcPreviewFS:ClearAllPoints()
        npcPreviewFS:SetPoint("TOPLEFT", lastDetailsAnchor, "BOTTOMLEFT", 0, -18)

        npcHeadingRow:Hide()
        for _, row in ipairs(npcTipRows) do
            row:Hide()
        end

        if selectedNpcID and npcDisplayName then
            npcHeadingRow:SetPoint("TOPLEFT", npcPreviewFS, "BOTTOMLEFT", 0, -6)
            npcHeadingRow.text:SetText(string.format("--- %s ---", npcDisplayName))
            for _, button in ipairs(npcHeadingRow.shareButtons or {}) do
                button.message = string.format("--- %s ---", npcDisplayName)
            end
            npcHeadingRow:Show()
            setBrowserRows(npcTipRows, npcHeadingRow, npcLines)
        end

        if addon.showBrowserSelectionInFrame then
            addon:showBrowserSelectionInFrame(
                instanceLabel,
                npcDisplayName,
                selectedNpcID,
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

    bossesFS:ClearAllPoints()
    bossesFS:SetPoint("TOPLEFT", instanceDropdown, "BOTTOMLEFT", 16, -18)

    bossDropdown = createValueDropdown(browserContent, "BrowserNpcBosses", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    bossDropdown:SetPoint("TOPLEFT", bossesFS, "BOTTOMLEFT", -16, -2)
    bossDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    npcIdsFS:ClearAllPoints()
    npcIdsFS:SetPoint("TOPLEFT", bossDropdown, "BOTTOMLEFT", 16, -18)

    npcIdsDropdown = createValueDropdown(browserContent, "BrowserNpcIds", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    npcIdsDropdown:SetPoint("TOPLEFT", npcIdsFS, "BOTTOMLEFT", -16, -2)
    npcIdsDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    npcAiFS:ClearAllPoints()
    npcAiFS:SetPoint("TOPLEFT", npcIdsDropdown, "BOTTOMLEFT", 16, -18)

    npcAiDropdown = createValueDropdown(browserContent, "BrowserNpcAi", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    npcAiDropdown:SetPoint("TOPLEFT", npcAiFS, "BOTTOMLEFT", -16, -2)
    npcAiDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    npcJrFS:ClearAllPoints()
    npcJrFS:SetPoint("TOPLEFT", npcAiDropdown, "BOTTOMLEFT", 16, -18)

    npcJrDropdown = createValueDropdown(browserContent, "BrowserNpcJr", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    npcJrDropdown:SetPoint("TOPLEFT", npcJrFS, "BOTTOMLEFT", -16, -2)
    npcJrDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    npcSzFS:ClearAllPoints()
    npcSzFS:SetPoint("TOPLEFT", npcJrDropdown, "BOTTOMLEFT", 16, -18)

    npcSzDropdown = createValueDropdown(browserContent, "BrowserNpcSz", 240, function(value)
        browserState.npcID = value
        updateBrowserUI()
    end)
    npcSzDropdown:SetPoint("TOPLEFT", npcSzFS, "BOTTOMLEFT", -16, -2)
    npcSzDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(browserState.expansionKey, browserState.instanceKey, value)
    end

    selectionSummary = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    selectionSummary:SetPoint("TOPLEFT", npcSzDropdown, "BOTTOMLEFT", 16, -18)
    selectionSummary:SetWidth(620)

    npcSelectionLabel = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    npcSelectionLabel:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -8)
    npcSelectionLabel:SetWidth(620)

    instancePreviewFS = createString(browserContent, getBrowserLocaleString("dungeon_info"), headerFont, headerSize)
    instancePreviewFS:SetPoint("TOPLEFT", npcSelectionLabel, "BOTTOMLEFT", 0, -18)

    instancePreview = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instancePreview:SetPoint("TOPLEFT", instancePreviewFS, "BOTTOMLEFT", 0, -6)
    instancePreview:SetWidth(620)

    instanceDetailsFS = createString(browserContent, getBrowserLocaleString("additional_details"), headerFont, headerSize)
    instanceDetailsFS:SetPoint("TOPLEFT", instancePreview, "BOTTOMLEFT", 0, -18)

    instanceDetailsPreview = createString(browserContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instanceDetailsPreview:SetPoint("TOPLEFT", instanceDetailsFS, "BOTTOMLEFT", 0, -6)
    instanceDetailsPreview:SetWidth(620)

    npcPreviewFS = createString(browserContent, getBrowserLocaleString("npc_tips"), headerFont, headerSize)
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
            refreshBrowserTexts()
            updateBrowserUI()
            if self.refreshScroll then self:refreshScroll() end
        end
    end)

    addon.contentBrowserPanel:HookScript("OnShow", function()
        refreshBrowserTexts()
        updateBrowserUI()
    end)

    refreshBrowserTexts()
    updateBrowserUI()
end

local function createEditorMenu()
    addon.editorPanel = CreateFrame("Frame", "TothysDungeonTipsEditor", UIParent)
    addon.editorPanel.name = "Tip Editor"
    addon.editorPanel.okay = function(self) return end
    addon.editorPanel.cancel = function(self) return end
    local editorContent = setupScrollablePanel(addon.editorPanel, "TDTEditor", 1650)

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

    local expansionFS = createString(editorContent, getBrowserLocaleString("expansion"), headerFont, headerSize)
    expansionFS:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -20)

    local editorState = {
        expansionKey = TDTConfig.BrowserExpansionKey,
        instanceKey = TDTConfig.BrowserInstanceKey,
        npcID = TDTConfig.BrowserNpcID,
    }

    local expansionButton
    local instanceDropdown
    local npcIdsDropdown
    local npcAiDropdown
    local npcJrDropdown
    local npcSzDropdown
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
    local instanceFS
    local bossesFS
    local npcIdsFS
    local npcAiFS
    local npcJrFS
    local npcSzFS
    local npcPreviewFS
    local addTipHeader
    local addTipTypeLabel
    local addTipWeightLabel
    local addTipTextLabel
    local saveTipButton
    local cancelEditButton

    local function refreshTipEditorTexts()
        title:SetText(getBrowserLocaleString("editor_title"))
        subtitle:SetText(getBrowserLocaleString("editor_subtitle"))
        expansionFS:SetText(getBrowserLocaleString("expansion"))
        instanceFS:SetText(getBrowserLocaleString("dungeon_or_raid"))
        bossesFS:SetText(getBrowserLocaleString("bosses"))
        npcIdsFS:SetText(getBrowserLocaleString("npc_ids"))
        npcAiFS:SetText(getBrowserLocaleString("npcs_a_i"))
        npcJrFS:SetText(getBrowserLocaleString("npcs_j_r"))
        npcSzFS:SetText(getBrowserLocaleString("npcs_s_z"))
        npcPreviewFS:SetText(getBrowserLocaleString("npc_tips"))
        addTipHeader:SetText(getBrowserLocaleString("add_npc_tip"))
        addTipTypeLabel:SetText(getBrowserLocaleString("tip_type"))
        addTipWeightLabel:SetText(getBrowserLocaleString("tip_weight"))
        addTipTextLabel:SetText(getBrowserLocaleString("tip_text"))
        saveTipButton:SetText(editingBaseTipID and getBrowserLocaleString("update_base_tip") or editingTipID and getBrowserLocaleString("update_tip") or getBrowserLocaleString("save_tip"))
        cancelEditButton:SetText(getBrowserLocaleString("cancel_edit"))
        personalTipsHeader:SetText(getBrowserLocaleString("personal_tips"))
        baseTipsHeader:SetText(getBrowserLocaleString("base_tips"))
        for _, row in ipairs(personalTipRows) do
            row.edit:SetText(getBrowserLocaleString("edit"))
            row.delete:SetText(getBrowserLocaleString("delete"))
        end
        for _, row in ipairs(baseTipRows) do
            row.reset:SetText(getBrowserLocaleString("reset"))
            row.edit:SetText(getBrowserLocaleString("edit_base"))
        end
    end

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
            editorState.npcID = NPC_NONE
        end
    end

    local function updateEditorUI()
        ensureEditorSelection()

        expansionButton:SetValues(getExpansionKeys())
        expansionButton:SetCurrentValue(editorState.expansionKey)
        instanceDropdown:SetValues(getInstanceKeys(editorState.expansionKey))
        instanceDropdown:SetCurrentValue(editorState.instanceKey)
        local expansionData = getExpansionData(editorState.expansionKey)
        local instanceData = getInstanceData(editorState.expansionKey, editorState.instanceKey)
        local expansionLabel = getLocalizedLabel(expansionData and expansionData.name, editorState.expansionKey or "-")
        local instanceLabel = getLocalizedLabel(instanceData and instanceData.name, editorState.instanceKey or "-")
        local selectedNpcID = editorState.npcID ~= NPC_NONE and editorState.npcID or nil
        bossDropdown:SetValues(getNpcIDsForSelector(editorState.expansionKey, editorState.instanceKey, "bosses"))
        npcIdsDropdown:SetValues(getNpcIDsForSelector(editorState.expansionKey, editorState.instanceKey, "ids"))
        npcAiDropdown:SetValues(getNpcIDsForSelector(editorState.expansionKey, editorState.instanceKey, "a_i"))
        npcJrDropdown:SetValues(getNpcIDsForSelector(editorState.expansionKey, editorState.instanceKey, "j_r"))
        npcSzDropdown:SetValues(getNpcIDsForSelector(editorState.expansionKey, editorState.instanceKey, "s_z"))
        if selectedNpcID and addon.npcGroups and addon.npcGroups[editorState.instanceKey] and addon.npcGroups[editorState.instanceKey][selectedNpcID] == "boss" then
            bossDropdown:SetCurrentValue(selectedNpcID)
        else
            bossDropdown:SetCurrentValue(NPC_NONE)
        end
        npcIdsDropdown:SetCurrentValue(editorState.npcID)
        if selectedNpcID then
            local bucket = getNpcAlphaBucket(editorState.expansionKey, editorState.instanceKey, selectedNpcID)
            npcAiDropdown:SetCurrentValue(bucket == "a_i" and selectedNpcID or NPC_NONE)
            npcJrDropdown:SetCurrentValue(bucket == "j_r" and selectedNpcID or NPC_NONE)
            npcSzDropdown:SetCurrentValue(bucket == "s_z" and selectedNpcID or NPC_NONE)
        else
            npcAiDropdown:SetCurrentValue(NPC_NONE)
            npcJrDropdown:SetCurrentValue(NPC_NONE)
            npcSzDropdown:SetCurrentValue(NPC_NONE)
        end
        local npcLabel = editorState.npcID and getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, editorState.npcID) or "-"
        local mergedNpcEntries = selectedNpcID and (addon.getMergedNpcTipEntries and addon:getMergedNpcTipEntries(selectedNpcID) or normalizeRawTips(getRawNpcTips(selectedNpcID))) or nil
        local personalTips = selectedNpcID and (addon.getNpcUserAdditions and addon:getNpcUserAdditions(selectedNpcID) or {}) or {}
        local baseTips = selectedNpcID and (addon.getNpcBaseTipsForEditor and addon:getNpcBaseTipsForEditor(selectedNpcID) or {}) or {}

        selectionSummary:SetText(string.format(getBrowserLocaleString("selected_npc_path"), expansionLabel, instanceLabel, npcLabel))
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

    instanceFS = createString(editorContent, getBrowserLocaleString("dungeon_or_raid"), headerFont, headerSize)
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

    bossesFS = createString(editorContent, getBrowserLocaleString("bosses"), headerFont, headerSize)
    bossesFS:SetPoint("TOPLEFT", instanceDropdown, "BOTTOMLEFT", 16, -18)

    bossDropdown = createValueDropdown(editorContent, "EditorNpcBosses", 240, function(value)
        editorState.npcID = value
        updateEditorUI()
    end)
    bossDropdown:SetPoint("TOPLEFT", bossesFS, "BOTTOMLEFT", -16, -2)
    bossDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, value)
    end

    npcIdsFS = createString(editorContent, getBrowserLocaleString("npc_ids"), headerFont, headerSize)
    npcIdsFS:SetPoint("TOPLEFT", bossDropdown, "BOTTOMLEFT", 16, -18)

    npcIdsDropdown = createValueDropdown(editorContent, "EditorNpcIds", 240, function(value)
        editorState.npcID = value
        updateEditorUI()
    end)
    npcIdsDropdown:SetPoint("TOPLEFT", npcIdsFS, "BOTTOMLEFT", -16, -2)
    npcIdsDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, value)
    end

    npcAiFS = createString(editorContent, getBrowserLocaleString("npcs_a_i"), headerFont, headerSize)
    npcAiFS:SetPoint("TOPLEFT", npcIdsDropdown, "BOTTOMLEFT", 16, -18)

    npcAiDropdown = createValueDropdown(editorContent, "EditorNpcAi", 240, function(value)
        editorState.npcID = value
        updateEditorUI()
    end)
    npcAiDropdown:SetPoint("TOPLEFT", npcAiFS, "BOTTOMLEFT", -16, -2)
    npcAiDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, value)
    end

    npcJrFS = createString(editorContent, getBrowserLocaleString("npcs_j_r"), headerFont, headerSize)
    npcJrFS:SetPoint("TOPLEFT", npcAiDropdown, "BOTTOMLEFT", 16, -18)

    npcJrDropdown = createValueDropdown(editorContent, "EditorNpcJr", 240, function(value)
        editorState.npcID = value
        updateEditorUI()
    end)
    npcJrDropdown:SetPoint("TOPLEFT", npcJrFS, "BOTTOMLEFT", -16, -2)
    npcJrDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, value)
    end

    npcSzFS = createString(editorContent, getBrowserLocaleString("npcs_s_z"), headerFont, headerSize)
    npcSzFS:SetPoint("TOPLEFT", npcJrDropdown, "BOTTOMLEFT", 16, -18)

    npcSzDropdown = createValueDropdown(editorContent, "EditorNpcSz", 240, function(value)
        editorState.npcID = value
        updateEditorUI()
    end)
    npcSzDropdown:SetPoint("TOPLEFT", npcSzFS, "BOTTOMLEFT", -16, -2)
    npcSzDropdown.labelForValue = function(value)
        return getNpcBrowserLabel(editorState.expansionKey, editorState.instanceKey, value)
    end

    selectionSummary = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    selectionSummary:SetPoint("TOPLEFT", npcSzDropdown, "BOTTOMLEFT", 16, -18)
    selectionSummary:SetWidth(620)

    npcPreviewFS = createString(editorContent, getBrowserLocaleString("npc_tips"), headerFont, headerSize)
    npcPreviewFS:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -18)

    npcPreview = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    npcPreview:SetPoint("TOPLEFT", npcPreviewFS, "BOTTOMLEFT", 0, -6)
    npcPreview:SetWidth(620)

    addTipHeader = createString(editorContent, getBrowserLocaleString("add_npc_tip"), headerFont, headerSize)
    addTipHeader:SetPoint("TOPLEFT", npcPreview, "BOTTOMLEFT", 0, -22)

    addTipTypeLabel = createString(editorContent, getBrowserLocaleString("tip_type"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTypeLabel:SetPoint("TOPLEFT", addTipHeader, "BOTTOMLEFT", 0, -8)

    addTipTypeDropdown = createValueDropdown(editorContent, "EditorAddTipType", 220, function(value) end)
    addTipTypeDropdown:SetPoint("TOPLEFT", addTipTypeLabel, "BOTTOMLEFT", -16, -2)
    addTipTypeDropdown:SetValues(authorTipTypes)
    addTipTypeDropdown.labelForValue = function(value)
        return tostring(value or "-")
    end
    addTipTypeDropdown:SetCurrentValue("Personal")

    addTipWeightLabel = createString(editorContent, getBrowserLocaleString("tip_weight"), "Fonts\\FRIZQT__.TTF", 11)
    addTipWeightLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "TOPRIGHT", 40, 2)

    addTipWeightEdit = createSingleLineInput(editorContent, 70, 24)
    addTipWeightEdit:SetPoint("TOPLEFT", addTipWeightLabel, "BOTTOMLEFT", 0, -6)
    addTipWeightEdit:SetText("5")

    addTipTextLabel = createString(editorContent, getBrowserLocaleString("tip_text"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTextLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "BOTTOMLEFT", 16, -18)

    local addTipTextContainer
    addTipTextContainer, addTipTextBox = createMultiLineInput(editorContent, 620, 96)
    addTipTextContainer:SetPoint("TOPLEFT", addTipTextLabel, "BOTTOMLEFT", 0, -8)
    addTipTextBox:SetText(getBrowserLocaleString("default_tip_text"))

    saveTipButton = CreateFrame("Button", "TDTEditorSaveNpcTip", editorContent, "UIPanelButtonTemplate")
    saveTipButton:SetSize(140, 24)
    saveTipButton:SetPoint("TOPLEFT", addTipTextContainer, "BOTTOMLEFT", 0, -12)
    saveTipButton:SetText(getBrowserLocaleString("save_tip"))

    cancelEditButton = CreateFrame("Button", "TDTEditorCancelNpcTipEdit", editorContent, "UIPanelButtonTemplate")
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
                    addTipWeightEdit:SetText(tostring(addition.weight or 5))
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
                    addTipWeightEdit:SetText("5")
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
                    addTipWeightEdit:SetText("5")
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
        addTipWeightEdit:SetText("5")
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
        local weight = tonumber(addTipWeightEdit:GetText()) or 5

        if tipText == "" or tipText == getBrowserLocaleString("default_tip_text") then
            addTipStatus:SetText(getBrowserLocaleString("missing_tip"))
            return
        end

        if editorState.npcID and editorState.npcID ~= NPC_NONE then
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
            addTipWeightEdit:SetText("5")
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
            refreshTipEditorTexts()
            updateEditorUI()
            if self.refreshScroll then self:refreshScroll() end
        end
    end)

    addon.editorPanel:HookScript("OnShow", function()
        refreshTipEditorTexts()
        updateEditorUI()
    end)

    refreshTipEditorTexts()
    updateEditorUI()
end

local function createDungeonEditorMenu()
    addon.dungeonEditorPanel = CreateFrame("Frame", "TothysDungeonTipsDungeonEditor", UIParent)
    addon.dungeonEditorPanel.name = "Dungeon Editor"
    addon.dungeonEditorPanel.okay = function(self) return end
    addon.dungeonEditorPanel.cancel = function(self) return end
    local editorContent = setupScrollablePanel(addon.dungeonEditorPanel, "TDTDungeonEditor", 2200)

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
    local instanceDetailsPreview
    local addTipTypeDropdown
    local addTipWeightEdit
    local addTipTextBox
    local addTipStatus
    local personalTipsHeader
    local personalTipRows = {}
    local editingTipID = nil
    local editingBaseTipID = nil
    local baseTipsHeader
    local baseTipRows = {}
    local expansionFS
    local instanceFS
    local instancePreviewFS
    local instanceDetailsFS
    local addTipHeader
    local addTipTypeLabel
    local addTipWeightLabel
    local addTipTextLabel
    local saveTipButton
    local cancelEditButton
    local detailsEditorHeader
    local detailsTravelLabel
    local detailsAttunementLabel
    local detailsNotesLabel
    local detailsLoreLabel
    local detailsTravelEdit
    local detailsAttunementEdit
    local detailsNotesEdit
    local detailsLoreEdit
    local detailsTravelOverrideButton
    local detailsTravelResetButton
    local detailsTravelOriginalText
    local detailsAttunementOverrideButton
    local detailsAttunementResetButton
    local detailsAttunementOriginalText
    local detailsNotesOverrideButton
    local detailsNotesResetButton
    local detailsNotesOriginalText
    local detailsLoreOverrideButton
    local detailsLoreResetButton
    local detailsLoreOriginalText
    local detailsStatus

    local function refreshDungeonEditorTexts()
        title:SetText(getBrowserLocaleString("dungeon_editor_title"))
        subtitle:SetText(getBrowserLocaleString("dungeon_editor_subtitle"))
        expansionFS:SetText(getBrowserLocaleString("expansion"))
        instanceFS:SetText(getBrowserLocaleString("dungeon_or_raid"))
        instancePreviewFS:SetText(getBrowserLocaleString("instance_tips_preview"))
        instanceDetailsFS:SetText(getBrowserLocaleString("additional_details"))
        addTipHeader:SetText(getBrowserLocaleString("add_instance_tip"))
        addTipTypeLabel:SetText(getBrowserLocaleString("tip_type"))
        addTipWeightLabel:SetText(getBrowserLocaleString("tip_weight"))
        addTipTextLabel:SetText(getBrowserLocaleString("tip_text"))
        saveTipButton:SetText(editingBaseTipID and getBrowserLocaleString("update_base_tip") or editingTipID and getBrowserLocaleString("update_tip") or getBrowserLocaleString("save_tip"))
        cancelEditButton:SetText(getBrowserLocaleString("cancel_edit"))
        personalTipsHeader:SetText(getBrowserLocaleString("user_instance_tips"))
        baseTipsHeader:SetText(getBrowserLocaleString("addon_instance_tips"))
        detailsEditorHeader:SetText(getBrowserLocaleString("edit_more_infos"))
        detailsTravelLabel:SetText(getBrowserLocaleString("travel"))
        detailsAttunementLabel:SetText(getBrowserLocaleString("attunement"))
        detailsNotesLabel:SetText(getBrowserLocaleString("extra_notes"))
        detailsLoreLabel:SetText(getBrowserLocaleString("lore"))
        detailsTravelOverrideButton:SetText(getBrowserLocaleString("edit_base"))
        detailsTravelResetButton:SetText(getBrowserLocaleString("reset"))
        detailsAttunementOverrideButton:SetText(getBrowserLocaleString("edit_base"))
        detailsAttunementResetButton:SetText(getBrowserLocaleString("reset"))
        detailsNotesOverrideButton:SetText(getBrowserLocaleString("edit_base"))
        detailsNotesResetButton:SetText(getBrowserLocaleString("reset"))
        detailsLoreOverrideButton:SetText(getBrowserLocaleString("edit_base"))
        detailsLoreResetButton:SetText(getBrowserLocaleString("reset"))
        for _, row in ipairs(personalTipRows) do
            row.edit:SetText(getBrowserLocaleString("edit"))
            row.delete:SetText(getBrowserLocaleString("delete"))
        end
        for _, row in ipairs(baseTipRows) do
            row.reset:SetText(getBrowserLocaleString("reset"))
            row.edit:SetText(getBrowserLocaleString("edit_base"))
        end
    end

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

    local function anchorDetailsEditorHeader()
        local anchor = baseTipsHeader
        local offset = -22

        for index = #baseTipRows, 1, -1 do
            if baseTipRows[index]:IsShown() then
                anchor = baseTipRows[index]
                offset = -14
                break
            end
        end

        detailsEditorHeader:ClearAllPoints()
        detailsEditorHeader:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, offset)
    end

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
        local baseTips = addon.getInstanceBaseTipsForEditor and addon:getInstanceBaseTipsForEditor(editorState.instanceKey) or {}
        local detailsData = addon.getInstanceDetailsForEditor and addon:getInstanceDetailsForEditor(editorState.instanceKey) or {}
        local mergedDetails = addon.getMergedInstanceDetails and addon:getMergedInstanceDetails(editorState.instanceKey) or getInstanceDetails(editorState.instanceKey) or {}

        selectionSummary:SetText(string.format(getBrowserLocaleString("selected_instance"), expansionLabel, instanceLabel))
        instancePreview:SetText(formatTipEntriesPreview(mergedInstanceEntries))
        instanceDetailsPreview:SetText(formatInstanceDetails(getInstanceDetails(editorState.instanceKey)))

        for _, row in ipairs(personalTipRows) do
            row:Hide()
        end
        for _, row in ipairs(baseTipRows) do
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

        anchorBaseTipsHeader()

        if #baseTips == 0 then
            if baseTipRows[1] then
                baseTipRows[1].text:SetText(getBrowserLocaleString("no_addon_instance_tips"))
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
                    if tip.overridden and tip.overrideText then
                        local overrideWeight = tip.overrideWeight ~= nil and tip.overrideWeight or tip.weight or 0
                        row.text:SetText(string.format("[%s] %s (%d)%s\nOverride: %s\nOriginal (%d): %s", tip.type or "?", tip.id or "-", overrideWeight, statusLabel, tip.overrideText or "", tip.weight or 0, tip.text or ""))
                    else
                        row.text:SetText(string.format("[%s] %s (%d)%s\n%s", tip.type or "?", tip.id or "-", tip.weight or 0, statusLabel, tip.text or ""))
                    end
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

        anchorDetailsEditorHeader()

        detailsTravelLabel:SetText(getBrowserLocaleString("travel") .. ((detailsData.travel and detailsData.travel.overridden) and (" (" .. getBrowserLocaleString("overridden_tip") .. ")") or ""))
        detailsAttunementLabel:SetText(getBrowserLocaleString("attunement") .. ((detailsData.attunement and detailsData.attunement.overridden) and (" (" .. getBrowserLocaleString("overridden_tip") .. ")") or ""))
        detailsNotesLabel:SetText(getBrowserLocaleString("extra_notes") .. ((detailsData.notes and detailsData.notes.overridden) and (" (" .. getBrowserLocaleString("overridden_tip") .. ")") or ""))
        detailsLoreLabel:SetText(getBrowserLocaleString("lore") .. ((detailsData.lore and detailsData.lore.overridden) and (" (" .. getBrowserLocaleString("overridden_tip") .. ")") or ""))

        detailsTravelEdit:SetText((detailsData.travel and detailsData.travel.current) or mergedDetails.travel or "")
        detailsAttunementEdit:SetText((detailsData.attunement and detailsData.attunement.current) or mergedDetails.attunement or "")
        detailsNotesEdit:SetText((detailsData.notes and detailsData.notes.current) or mergedDetails.notes or "")
        detailsLoreEdit:SetText((detailsData.lore and detailsData.lore.current) or mergedDetails.lore or "")
        detailsTravelOriginalText:SetText(string.format("%s: %s", getBrowserLocaleString("original_text"), (detailsData.travel and detailsData.travel.base) or ""))
        detailsAttunementOriginalText:SetText(string.format("%s: %s", getBrowserLocaleString("original_text"), (detailsData.attunement and detailsData.attunement.base) or ""))
        detailsNotesOriginalText:SetText(string.format("%s: %s", getBrowserLocaleString("original_text"), (detailsData.notes and detailsData.notes.base) or ""))
        detailsLoreOriginalText:SetText(string.format("%s: %s", getBrowserLocaleString("original_text"), (detailsData.lore and detailsData.lore.base) or ""))
    end

    expansionFS = createString(editorContent, getBrowserLocaleString("expansion"), headerFont, headerSize)
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

    instanceFS = createString(editorContent, getBrowserLocaleString("dungeon_or_raid"), headerFont, headerSize)
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

    instancePreviewFS = createString(editorContent, getBrowserLocaleString("instance_tips_preview"), headerFont, headerSize)
    instancePreviewFS:SetPoint("TOPLEFT", selectionSummary, "BOTTOMLEFT", 0, -18)

    instancePreview = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instancePreview:SetPoint("TOPLEFT", instancePreviewFS, "BOTTOMLEFT", 0, -6)
    instancePreview:SetWidth(620)

    instanceDetailsFS = createString(editorContent, getBrowserLocaleString("additional_details"), headerFont, headerSize)
    instanceDetailsFS:SetPoint("TOPLEFT", instancePreview, "BOTTOMLEFT", 0, -18)

    instanceDetailsPreview = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    instanceDetailsPreview:SetPoint("TOPLEFT", instanceDetailsFS, "BOTTOMLEFT", 0, -6)
    instanceDetailsPreview:SetWidth(620)

    addTipHeader = createString(editorContent, getBrowserLocaleString("add_instance_tip"), headerFont, headerSize)
    addTipHeader:SetPoint("TOPLEFT", instanceDetailsPreview, "BOTTOMLEFT", 0, -22)

    addTipTypeLabel = createString(editorContent, getBrowserLocaleString("tip_type"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTypeLabel:SetPoint("TOPLEFT", addTipHeader, "BOTTOMLEFT", 0, -8)

    addTipTypeDropdown = createValueDropdown(editorContent, "DungeonEditorAddTipType", 220, function(value) end)
    addTipTypeDropdown:SetPoint("TOPLEFT", addTipTypeLabel, "BOTTOMLEFT", -16, -2)
    addTipTypeDropdown:SetValues(authorTipTypes)
    addTipTypeDropdown.labelForValue = function(value)
        return tostring(value or "-")
    end
    addTipTypeDropdown:SetCurrentValue("Personal")

    addTipWeightLabel = createString(editorContent, getBrowserLocaleString("tip_weight"), "Fonts\\FRIZQT__.TTF", 11)
    addTipWeightLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "TOPRIGHT", 40, 2)

    addTipWeightEdit = createSingleLineInput(editorContent, 70, 24)
    addTipWeightEdit:SetPoint("TOPLEFT", addTipWeightLabel, "BOTTOMLEFT", 0, -6)
    addTipWeightEdit:SetText("5")

    addTipTextLabel = createString(editorContent, getBrowserLocaleString("tip_text"), "Fonts\\FRIZQT__.TTF", 11)
    addTipTextLabel:SetPoint("TOPLEFT", addTipTypeDropdown, "BOTTOMLEFT", 16, -18)

    local addTipTextContainer
    addTipTextContainer, addTipTextBox = createMultiLineInput(editorContent, 620, 96)
    addTipTextContainer:SetPoint("TOPLEFT", addTipTextLabel, "BOTTOMLEFT", 0, -8)
    addTipTextBox:SetText(getBrowserLocaleString("default_instance_tip_text"))

    saveTipButton = CreateFrame("Button", "TDTDungeonEditorSaveTip", editorContent, "UIPanelButtonTemplate")
    saveTipButton:SetSize(140, 24)
    saveTipButton:SetPoint("TOPLEFT", addTipTextContainer, "BOTTOMLEFT", 0, -12)
    saveTipButton:SetText(getBrowserLocaleString("save_tip"))

    cancelEditButton = CreateFrame("Button", "TDTDungeonEditorCancelTipEdit", editorContent, "UIPanelButtonTemplate")
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
                    editingBaseTipID = nil
                    editingTipID = addition.id
                    setTipTypeDropdownInteractive(true)
                    addTipTypeDropdown:SetCurrentValue(addition.type or "Personal")
                    addTipWeightEdit:SetText(tostring(addition.weight or 5))
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
                    editingBaseTipID = nil
                    addTipTextBox:SetText("")
                    addTipWeightEdit:SetText("5")
                    addTipTypeDropdown:SetCurrentValue("Personal")
                    setTipTypeDropdownInteractive(true)
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

    baseTipsHeader = createString(editorContent, getBrowserLocaleString("addon_instance_tips"), headerFont, headerSize)
    baseTipsHeader:SetPoint("TOPLEFT", addTipStatus, "BOTTOMLEFT", 0, -22)

    for index = 1, 10 do
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
            if addon.setInstanceBaseTipHidden and editorState.instanceKey and self.tipID then
                local baseTips = addon:getInstanceBaseTipsForEditor(editorState.instanceKey)
                for _, baseTip in ipairs(baseTips) do
                    if baseTip.id == self.tipID then
                        addon:setInstanceBaseTipHidden(editorState.instanceKey, self.tipID, not baseTip.hidden)
                        updateDungeonEditorUI()
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
            if addon.resetInstanceBaseTip and editorState.instanceKey and self.tipID then
                if editingBaseTipID == self.tipID then
                    editingBaseTipID = nil
                    addTipTextBox:SetText("")
                    addTipWeightEdit:SetText("5")
                    addTipTypeDropdown:SetCurrentValue("Personal")
                    setTipTypeDropdownInteractive(true)
                    saveTipButton:SetText(getBrowserLocaleString("save_tip"))
                    cancelEditButton:Hide()
                end
                addon:resetInstanceBaseTip(editorState.instanceKey, self.tipID)
                updateDungeonEditorUI()
            end
        end)

        row.edit = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
        row.edit:SetSize(80, 22)
        row.edit:SetPoint("TOPRIGHT", row.reset, "BOTTOMRIGHT", 0, -6)
        row.edit:SetText(getBrowserLocaleString("edit_base"))
        row.edit:SetScript("OnClick", function(self)
            local baseTips = addon:getInstanceBaseTipsForEditor(editorState.instanceKey)
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
                    addTipStatus:SetText(getBrowserLocaleString("base_instance_edit_loaded"))
                    break
                end
            end
        end)

        row:Hide()
        baseTipRows[index] = row
    end

    detailsEditorHeader = createString(editorContent, getBrowserLocaleString("edit_more_infos"), headerFont, headerSize)
    detailsEditorHeader:SetPoint("TOPLEFT", baseTipsHeader, "BOTTOMLEFT", 0, -22)

    detailsTravelLabel = createString(editorContent, getBrowserLocaleString("travel"), "Fonts\\FRIZQT__.TTF", 11)
    detailsTravelLabel:SetPoint("TOPLEFT", detailsEditorHeader, "BOTTOMLEFT", 0, -8)
    local detailsTravelContainer
    detailsTravelContainer, detailsTravelEdit = createMultiLineInput(editorContent, 620, 56)
    detailsTravelContainer:SetPoint("TOPLEFT", detailsTravelLabel, "BOTTOMLEFT", 0, -8)
    detailsTravelOverrideButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsTravelOverrideButton:SetSize(90, 22)
    detailsTravelOverrideButton:SetPoint("TOPLEFT", detailsTravelContainer, "BOTTOMLEFT", 0, -8)
    detailsTravelResetButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsTravelResetButton:SetSize(90, 22)
    detailsTravelResetButton:SetPoint("LEFT", detailsTravelOverrideButton, "RIGHT", 8, 0)
    detailsTravelOriginalText = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    detailsTravelOriginalText:SetPoint("TOPLEFT", detailsTravelOverrideButton, "BOTTOMLEFT", 0, -8)
    detailsTravelOriginalText:SetWidth(620)

    detailsAttunementLabel = createString(editorContent, getBrowserLocaleString("attunement"), "Fonts\\FRIZQT__.TTF", 11)
    detailsAttunementLabel:SetPoint("TOPLEFT", detailsTravelOriginalText, "BOTTOMLEFT", 0, -14)
    local detailsAttunementContainer
    detailsAttunementContainer, detailsAttunementEdit = createMultiLineInput(editorContent, 620, 56)
    detailsAttunementContainer:SetPoint("TOPLEFT", detailsAttunementLabel, "BOTTOMLEFT", 0, -8)
    detailsAttunementOverrideButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsAttunementOverrideButton:SetSize(90, 22)
    detailsAttunementOverrideButton:SetPoint("TOPLEFT", detailsAttunementContainer, "BOTTOMLEFT", 0, -8)
    detailsAttunementResetButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsAttunementResetButton:SetSize(90, 22)
    detailsAttunementResetButton:SetPoint("LEFT", detailsAttunementOverrideButton, "RIGHT", 8, 0)
    detailsAttunementOriginalText = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    detailsAttunementOriginalText:SetPoint("TOPLEFT", detailsAttunementOverrideButton, "BOTTOMLEFT", 0, -8)
    detailsAttunementOriginalText:SetWidth(620)

    detailsNotesLabel = createString(editorContent, getBrowserLocaleString("extra_notes"), "Fonts\\FRIZQT__.TTF", 11)
    detailsNotesLabel:SetPoint("TOPLEFT", detailsAttunementOriginalText, "BOTTOMLEFT", 0, -14)
    local detailsNotesContainer
    detailsNotesContainer, detailsNotesEdit = createMultiLineInput(editorContent, 620, 72)
    detailsNotesContainer:SetPoint("TOPLEFT", detailsNotesLabel, "BOTTOMLEFT", 0, -8)
    detailsNotesOverrideButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsNotesOverrideButton:SetSize(90, 22)
    detailsNotesOverrideButton:SetPoint("TOPLEFT", detailsNotesContainer, "BOTTOMLEFT", 0, -8)
    detailsNotesResetButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsNotesResetButton:SetSize(90, 22)
    detailsNotesResetButton:SetPoint("LEFT", detailsNotesOverrideButton, "RIGHT", 8, 0)
    detailsNotesOriginalText = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    detailsNotesOriginalText:SetPoint("TOPLEFT", detailsNotesOverrideButton, "BOTTOMLEFT", 0, -8)
    detailsNotesOriginalText:SetWidth(620)

    detailsLoreLabel = createString(editorContent, getBrowserLocaleString("lore"), "Fonts\\FRIZQT__.TTF", 11)
    detailsLoreLabel:SetPoint("TOPLEFT", detailsNotesOriginalText, "BOTTOMLEFT", 0, -14)
    local detailsLoreContainer
    detailsLoreContainer, detailsLoreEdit = createMultiLineInput(editorContent, 620, 72)
    detailsLoreContainer:SetPoint("TOPLEFT", detailsLoreLabel, "BOTTOMLEFT", 0, -8)
    detailsLoreOverrideButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsLoreOverrideButton:SetSize(90, 22)
    detailsLoreOverrideButton:SetPoint("TOPLEFT", detailsLoreContainer, "BOTTOMLEFT", 0, -8)
    detailsLoreResetButton = CreateFrame("Button", nil, editorContent, "UIPanelButtonTemplate")
    detailsLoreResetButton:SetSize(90, 22)
    detailsLoreResetButton:SetPoint("LEFT", detailsLoreOverrideButton, "RIGHT", 8, 0)
    detailsLoreOriginalText = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    detailsLoreOriginalText:SetPoint("TOPLEFT", detailsLoreOverrideButton, "BOTTOMLEFT", 0, -8)
    detailsLoreOriginalText:SetWidth(620)

    detailsStatus = createString(editorContent, "", "Fonts\\FRIZQT__.TTF", 11)
    detailsStatus:SetPoint("TOPLEFT", detailsLoreOriginalText, "BOTTOMLEFT", 0, -12)
    detailsStatus:SetWidth(620)

    cancelEditButton:SetScript("OnClick", function()
        editingTipID = nil
        editingBaseTipID = nil
        addTipTextBox:SetText("")
        addTipWeightEdit:SetText("5")
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
        local weight = tonumber(addTipWeightEdit:GetText()) or 5

        if tipText == "" or tipText == getBrowserLocaleString("default_instance_tip_text") then
            addTipStatus:SetText(getBrowserLocaleString("missing_tip"))
            return
        end

        if editorState.instanceKey then
            if editingTipID and addon.updateInstanceUserTip then
                addon:updateInstanceUserTip(editorState.instanceKey, editingTipID, selectedType, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("updated_instance_tip"))
            elseif editingBaseTipID and addon.updateInstanceBaseTipOverride then
                addon:updateInstanceBaseTipOverride(editorState.instanceKey, editingBaseTipID, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("updated_base_instance_tip"))
            elseif addon.addInstanceUserTip then
                addon:addInstanceUserTip(editorState.instanceKey, selectedType, tipText, weight)
                addTipStatus:SetText(getBrowserLocaleString("saved_instance_tip"))
            end

            editingTipID = nil
            editingBaseTipID = nil
            addTipTextBox:SetText("")
            addTipWeightEdit:SetText("5")
            addTipTypeDropdown:SetCurrentValue("Personal")
            setTipTypeDropdownInteractive(true)
            saveTipButton:SetText(getBrowserLocaleString("save_tip"))
            cancelEditButton:Hide()
            updateDungeonEditorUI()
            if addon.dungeonEditorPanel.refreshScroll then
                addon.dungeonEditorPanel:refreshScroll()
            end
        end
    end)

    detailsTravelOverrideButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.updateInstanceDetailsOverrides then
            addon:updateInstanceDetailsOverrides(editorState.instanceKey, { travel = detailsTravelEdit:GetText() or "" })
            detailsStatus:SetText(getBrowserLocaleString("more_infos_saved"))
            updateDungeonEditorUI()
        end
    end)
    detailsTravelResetButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.resetInstanceDetailsOverrides then
            addon:resetInstanceDetailsOverrides(editorState.instanceKey, "travel")
            detailsStatus:SetText(getBrowserLocaleString("more_infos_reset"))
            updateDungeonEditorUI()
        end
    end)
    detailsAttunementOverrideButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.updateInstanceDetailsOverrides then
            addon:updateInstanceDetailsOverrides(editorState.instanceKey, { attunement = detailsAttunementEdit:GetText() or "" })
            detailsStatus:SetText(getBrowserLocaleString("more_infos_saved"))
            updateDungeonEditorUI()
        end
    end)
    detailsAttunementResetButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.resetInstanceDetailsOverrides then
            addon:resetInstanceDetailsOverrides(editorState.instanceKey, "attunement")
            detailsStatus:SetText(getBrowserLocaleString("more_infos_reset"))
            updateDungeonEditorUI()
        end
    end)
    detailsNotesOverrideButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.updateInstanceDetailsOverrides then
            addon:updateInstanceDetailsOverrides(editorState.instanceKey, { notes = detailsNotesEdit:GetText() or "" })
            detailsStatus:SetText(getBrowserLocaleString("more_infos_saved"))
            updateDungeonEditorUI()
        end
    end)
    detailsNotesResetButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.resetInstanceDetailsOverrides then
            addon:resetInstanceDetailsOverrides(editorState.instanceKey, "notes")
            detailsStatus:SetText(getBrowserLocaleString("more_infos_reset"))
            updateDungeonEditorUI()
        end
    end)
    detailsLoreOverrideButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.updateInstanceDetailsOverrides then
            addon:updateInstanceDetailsOverrides(editorState.instanceKey, { lore = detailsLoreEdit:GetText() or "" })
            detailsStatus:SetText(getBrowserLocaleString("more_infos_saved"))
            updateDungeonEditorUI()
        end
    end)
    detailsLoreResetButton:SetScript("OnClick", function()
        if editorState.instanceKey and addon.resetInstanceDetailsOverrides then
            addon:resetInstanceDetailsOverrides(editorState.instanceKey, "lore")
            detailsStatus:SetText(getBrowserLocaleString("more_infos_reset"))
            updateDungeonEditorUI()
        end
    end)

    addon.dungeonEditorPanel:RegisterEvent("ADDON_LOADED")
    addon.dungeonEditorPanel:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" and arg1 == "Tothys-Dungeon-Tips-TBC" then
            TDTConfig = applyConfigDefaults(TDTConfig)
            editorState.expansionKey = TDTConfig.BrowserExpansionKey
            editorState.instanceKey = TDTConfig.BrowserInstanceKey
            refreshDungeonEditorTexts()
            updateDungeonEditorUI()
            if self.refreshScroll then self:refreshScroll() end
        end
    end)

    addon.dungeonEditorPanel:HookScript("OnShow", function()
        refreshDungeonEditorTexts()
        updateDungeonEditorUI()
    end)

    refreshDungeonEditorTexts()
    updateDungeonEditorUI()
end

local function createInfoMenu()
    addon.infoPanel = CreateFrame("Frame", "TothysDungeonTipsInfo", UIParent)
    addon.infoPanel.name = "Info"
    addon.infoPanel.okay = function(self) return end
    addon.infoPanel.cancel = function(self) return end
    local infoContent = setupScrollablePanel(addon.infoPanel, "TDTInfo", 760)

    local title = infoContent:CreateFontString()
    title:SetPoint("TOPLEFT", 10, -10)
    title:SetFont("Fonts\\MORPHEUS.ttf", 22, "OUTLINE")
    title:SetTextColor(0.9, 0.68, 0.22, 1)
    title:SetText(getBrowserLocaleString("info_title"))

    local intro = createString(infoContent, getBrowserLocaleString("info_intro"), "Fonts\\FRIZQT__.TTF", 12)
    intro:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
    intro:SetWidth(620)

    local originHeader = createString(infoContent, getBrowserLocaleString("info_background"), "Fonts\\MORPHEUS.ttf", 16)
    originHeader:SetPoint("TOPLEFT", intro, "BOTTOMLEFT", 0, -18)

    local originText = createString(infoContent, getBrowserLocaleString("info_background_text"), "Fonts\\FRIZQT__.TTF", 11)
    originText:SetPoint("TOPLEFT", originHeader, "BOTTOMLEFT", 0, -8)
    originText:SetWidth(620)

    local statusHeader = createString(infoContent, getBrowserLocaleString("info_status"), "Fonts\\MORPHEUS.ttf", 16)
    statusHeader:SetPoint("TOPLEFT", originText, "BOTTOMLEFT", 0, -18)

    local statusText = createString(infoContent, getBrowserLocaleString("info_status_text"), "Fonts\\FRIZQT__.TTF", 11)
    statusText:SetPoint("TOPLEFT", statusHeader, "BOTTOMLEFT", 0, -8)
    statusText:SetWidth(620)

    local roadmapHeader = createString(infoContent, getBrowserLocaleString("info_focus"), "Fonts\\MORPHEUS.ttf", 16)
    roadmapHeader:SetPoint("TOPLEFT", statusText, "BOTTOMLEFT", 0, -18)

    local roadmapText = createString(infoContent, getBrowserLocaleString("info_focus_text"), "Fonts\\FRIZQT__.TTF", 11)
    roadmapText:SetPoint("TOPLEFT", roadmapHeader, "BOTTOMLEFT", 0, -8)
    roadmapText:SetWidth(620)

    local howHeader = createString(infoContent, getBrowserLocaleString("info_how_it_works"), "Fonts\\MORPHEUS.ttf", 16)
    howHeader:SetPoint("TOPLEFT", roadmapText, "BOTTOMLEFT", 0, -18)

    local howText = createString(infoContent, getBrowserLocaleString("info_how_it_works_text"), "Fonts\\FRIZQT__.TTF", 11)
    howText:SetPoint("TOPLEFT", howHeader, "BOTTOMLEFT", 0, -8)
    howText:SetWidth(620)

    local function refreshInfoTexts()
        title:SetText(getBrowserLocaleString("info_title"))
        intro:SetText(getBrowserLocaleString("info_intro"))
        originHeader:SetText(getBrowserLocaleString("info_background"))
        originText:SetText(getBrowserLocaleString("info_background_text"))
        statusHeader:SetText(getBrowserLocaleString("info_status"))
        statusText:SetText(getBrowserLocaleString("info_status_text"))
        roadmapHeader:SetText(getBrowserLocaleString("info_focus"))
        roadmapText:SetText(getBrowserLocaleString("info_focus_text"))
        howHeader:SetText(getBrowserLocaleString("info_how_it_works"))
        howText:SetText(getBrowserLocaleString("info_how_it_works_text"))
    end

    addon.infoPanel:SetScript("OnShow", function(self)
        refreshInfoTexts()
        if self.refreshScroll then
            self:refreshScroll()
        end
    end)

    refreshInfoTexts()
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
	ddTitleString:SetText(getBrowserLocaleString("config_title"))

	
	-----------------------
	-- Set up Checkboxes --
	-----------------------
	local chkGeneral = createCheck("General", getBrowserLocaleString("config_general"), configContent, function(self, value)
		TDTConfig.Important = self:GetChecked()
	end)
	chkGeneral:SetPoint("TOPLEFT", ddTitleString, "BOTTOMLEFT", 0, -10)
	
	local chkPriority = createCheck("PriorityTargets", getBrowserLocaleString("config_priority"), configContent, function(self, value) TDTConfig.PriorityTargets = self:GetChecked() end)
	chkPriority:SetPoint("TOPLEFT", chkGeneral, "BOTTOMLEFT", 0, -8)
	
	local chkInterrupts = createCheck("Interrupts", getBrowserLocaleString("config_interrupts"), configContent, function(self, value) TDTConfig.Interrupts = self:GetChecked() end)
	chkInterrupts:SetPoint("TOPLEFT", chkPriority, "BOTTOMLEFT", 0, -8)
	
	local chkDefensives = createCheck("Defensives", getBrowserLocaleString("config_defensives"), configContent, function(self, value) TDTConfig.Defensives = self:GetChecked() end)
	chkDefensives:SetPoint("TOPLEFT", chkInterrupts, "BOTTOMLEFT", 0, -8)
	
	local chkFluff = createCheck("Fluff", getBrowserLocaleString("config_fluff"), configContent, function(self, value) TDTConfig.Fluff = self:GetChecked() end)
	chkFluff:SetPoint("TOPLEFT", chkDefensives, "BOTTOMLEFT", 0, -8)
	
	local chkAdvanced = createCheck("Advanced", getBrowserLocaleString("config_advanced"), configContent, function(self, value) TDTConfig.Advanced = self:GetChecked() end)
	chkAdvanced:SetPoint("TOPLEFT", chkFluff, "BOTTOMLEFT", 0, -8)

	local chkPersonal = createCheck("Personal", getBrowserLocaleString("config_personal"), configContent, function(self, value) TDTConfig.Personal = self:GetChecked() end)
	chkPersonal:SetPoint("TOPLEFT", chkAdvanced, "BOTTOMLEFT", 0, -8)
	
	
	----------------------------
	-- Setup "Dropdown" boxes --
	----------------------------
	-- Dropdown Taint Sucks
	local headerFont = "Fonts\\MORPHEUS.ttf"
	local headerSize = 16
	
	-- Tip Location Selector --
	local locFS = createString(configContent, getBrowserLocaleString("config_tip_location"), headerFont, headerSize)
	locFS:SetPoint("TOPLEFT", chkPersonal, "BOTTOMLEFT", 0, -30)
	
	--locDD = createDropdown(addon.configPanel, "TipLocation", "Show in separate frame", "Show in mob tooltips", "ShowFrame")
	--locDD:SetPoint("TOPLEFT", locFS, "BOTTOMLEFT", 0, -8)
	local locCB = createCheck("Location", getBrowserLocaleString("config_show_separate_frame"), configContent, 
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
	locCB.tooltip = getBrowserLocaleString("config_show_separate_frame_tooltip")
	locCB:SetPoint("TOPLEFT", locFS, "BOTTOMLEFT", 0, -8)

	local showFrameBtn = CreateFrame("Button", "TDTConfigShowFrameBtn", configContent, "UIPanelButtonTemplate")
	showFrameBtn:SetSize(90, 22)
	showFrameBtn:SetPoint("TOPLEFT", locCB, "BOTTOMLEFT", 0, -8)
	showFrameBtn:SetText(getBrowserLocaleString("config_show_frame"))
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
	hideFrameBtn:SetText(getBrowserLocaleString("config_hide_frame"))
	hideFrameBtn:SetScript("OnClick", function()
		if TDT_ParentFrame then
			TDT_ParentFrame:Hide()
		end
	end)
	
	
	-- Target / Mouseover Selector --
	addon.targetFS = createString(configContent, getBrowserLocaleString("config_target_mouseover"), headerFont, headerSize)
	addon.targetFS:SetPoint("TOPLEFT", locFS, "TOPRIGHT", 70, 0)
	
	--targetDD = createDropdown(addon.configPanel, "TargetMouseover", "Show targeted mob", "Show mouseover", "TargetTrigger")
	--targetDD:SetPoint("TOPLEFT", targetFS, "BOTTOMLEFT", 0, -8)
	addon.chkTarget = createCheck("Target", getBrowserLocaleString("config_show_target"), configContent, 
			function(self, value)
				if self:GetChecked() then
					TDTConfig.TargetTrigger = "Show targeted mob"
				else
					TDTConfig.TargetTrigger = "Show mouseover"
				end
			end)
	addon.chkTarget:SetPoint("TOPLEFT", addon.targetFS, "BOTTOMLEFT", 0, -8)
	
	
	-- Role Selector --
	local roleFS = createString(configContent, getBrowserLocaleString("config_role_specific"), headerFont, headerSize)
	roleFS:SetPoint("TOPLEFT", showFrameBtn, "BOTTOMLEFT", 0, -18)

	local chkMyRoleOnly = createFilterCheck("MyRoleOnly", getBrowserLocaleString("config_show_myroleonly"), configContent,
			function(self, value)
				TDTConfig.RoleFilters.MYROLEONLY = self:GetChecked()
			end)
	chkMyRoleOnly:SetPoint("TOPLEFT", roleFS, "BOTTOMLEFT", 0, -8)

	local chkTankRole = createFilterCheck("RoleTank", getBrowserLocaleString("config_show_tank"), configContent,
			function(self, value)
				TDTConfig.RoleFilters.TANK = self:GetChecked()
			end)
	chkTankRole:SetPoint("TOPLEFT", chkMyRoleOnly, "BOTTOMLEFT", 0, -6)

	local chkHealerRole = createFilterCheck("RoleHealer", getBrowserLocaleString("config_show_healer"), configContent,
			function(self, value)
				TDTConfig.RoleFilters.HEALER = self:GetChecked()
			end)
	chkHealerRole:SetPoint("TOPLEFT", chkTankRole, "BOTTOMLEFT", 0, -6)

	local chkDamageRole = createFilterCheck("RoleDamage", getBrowserLocaleString("config_show_damage"), configContent,
			function(self, value)
				TDTConfig.RoleFilters.DAMAGE = self:GetChecked()
			end)
	chkDamageRole:SetPoint("TOPLEFT", chkHealerRole, "BOTTOMLEFT", 0, -6)
	
	-- Class Selector --
	local classFS = createString(configContent, getBrowserLocaleString("config_class_specific"), headerFont, headerSize)
	classFS:SetPoint("TOPLEFT", roleFS, "TOPRIGHT", 70, 0)

	local chkMyClassOnly = createFilterCheck("MyClassOnly", getBrowserLocaleString("config_show_myclassonly"), configContent,
			function(self, value)
				TDTConfig.ClassFilters.MYCLASSONLY = self:GetChecked()
			end)
	chkMyClassOnly:SetPoint("TOPLEFT", classFS, "BOTTOMLEFT", 0, -8)

	local classCheckRows = {
		{"ClassDruid", string.format("%s DRUID", getBrowserLocaleString("config_show_prefix")), "DRUID"},
		{"ClassHunter", string.format("%s HUNTER", getBrowserLocaleString("config_show_prefix")), "HUNTER"},
		{"ClassMage", string.format("%s MAGE", getBrowserLocaleString("config_show_prefix")), "MAGE"},
		{"ClassPaladin", string.format("%s PALADIN", getBrowserLocaleString("config_show_prefix")), "PALADIN"},
		{"ClassPriest", string.format("%s PRIEST", getBrowserLocaleString("config_show_prefix")), "PRIEST"},
		{"ClassRogue", string.format("%s ROGUE", getBrowserLocaleString("config_show_prefix")), "ROGUE"},
		{"ClassShaman", string.format("%s SHAMAN", getBrowserLocaleString("config_show_prefix")), "SHAMAN"},
		{"ClassWarrior", string.format("%s WARRIOR", getBrowserLocaleString("config_show_prefix")), "WARRIOR"},
		{"ClassWarlock", string.format("%s WARLOCK", getBrowserLocaleString("config_show_prefix")), "WARLOCK"},
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

	local function setCheckLabel(check, text)
		local label = getglobal(check:GetName() .. "Text")
		if label then
			label:SetText(text)
		end
	end
	
	local localeFS = createString(configContent, getBrowserLocaleString("config_language"), headerFont, headerSize)
	localeFS:SetPoint("TOPLEFT", chkDamageRole, "BOTTOMLEFT", 0, -24)

	local localeHelp = createString(configContent, getBrowserLocaleString("config_language_help"), "Fonts\\FRIZQT__.TTF", 11)
	localeHelp:SetPoint("TOPLEFT", localeFS, "BOTTOMLEFT", 0, -4)
	localeHelp:SetWidth(250)

	local localeButton
	localeButton = createCycleButton(configContent, "Locale", {"Auto", "enUS", "deDE"}, function(value)
		local previousValue = TDTConfig.LocaleChoice or "Auto"
		if previousValue == value then
			return
		end

		local dialogInfo = StaticPopupDialogs["TDT_CONFIRM_LOCALE_RELOAD"]
		dialogInfo.text = getBrowserLocaleString("locale_reload_text")
		dialogInfo.button1 = getBrowserLocaleString("locale_reload_accept")
		dialogInfo.button2 = getBrowserLocaleString("locale_reload_cancel")

		local dialog = StaticPopup_Show("TDT_CONFIRM_LOCALE_RELOAD", nil, nil, value)
		if dialog then
			dialog.data2 = {
				previousValue = previousValue,
				dropdown = localeButton,
			}
		else
			localeButton:SetCurrentValue(previousValue)
		end
	end)
	localeButton:SetPoint("TOPLEFT", localeHelp, "BOTTOMLEFT", 0, -8)

	-- Activate in
	-- Tip Location Selector --
	local showinFS = createString(configContent, getBrowserLocaleString("config_content"), headerFont, headerSize)
	showinFS:SetPoint("TOPLEFT", localeButton, "BOTTOMLEFT", 0, -24)
	
	local chkRegDungeons = createCheck("RegDungeons", getBrowserLocaleString("config_show_in_dungeons"), configContent, function(self, value)
		TDTConfig.DungeonToggle = self:GetChecked()
		addon:setEnabled()
	end)
	chkRegDungeons:SetPoint("TOPLEFT", showinFS, "BOTTOMLEFT", 0, -8)
	
	--[[local chkMythicPlus = createCheck("MythicPlus", "Show Tips in Mythic+", addon.configPanel, function(self, value) 
		TDTConfig.MythicPlusToggle = self:GetChecked()
		addon:setEnabled()
		end)
	chkMythicPlus:SetPoint("TOPLEFT", chkRegDungeons, "BOTTOMLEFT", 0, -8)]]--
	
	local chkRaid = createCheck("Raid", getBrowserLocaleString("config_show_in_raid"), configContent, function(self, value) 
		TDTConfig.RaidToggle = self:GetChecked()
		addon:setEnabled()
	end)
	chkRaid:SetPoint("TOPLEFT", chkRegDungeons, "BOTTOMLEFT", 0, -8)

	local chkShowNpcIDs = createCheck("ShowNpcIDs", getBrowserLocaleString("config_show_npc_ids"), configContent, function(self, value)
		TDTConfig.ShowNpcIDs = self:GetChecked()
	end)
	chkShowNpcIDs:SetPoint("TOPLEFT", chkRaid, "BOTTOMLEFT", 0, -8)
	

	-- Other Stuff
	local OtherFS = createString(configContent, getBrowserLocaleString("config_font_size"), headerFont, headerSize)
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

	local function refreshConfigTexts()
		ddTitleString:SetText(getBrowserLocaleString("config_title"))
		setCheckLabel(chkGeneral, getBrowserLocaleString("config_general"))
		setCheckLabel(chkPriority, getBrowserLocaleString("config_priority"))
		setCheckLabel(chkInterrupts, getBrowserLocaleString("config_interrupts"))
		setCheckLabel(chkDefensives, getBrowserLocaleString("config_defensives"))
		setCheckLabel(chkFluff, getBrowserLocaleString("config_fluff"))
		setCheckLabel(chkAdvanced, getBrowserLocaleString("config_advanced"))
		setCheckLabel(chkPersonal, getBrowserLocaleString("config_personal"))
		locFS:SetText(getBrowserLocaleString("config_tip_location"))
		setCheckLabel(locCB, getBrowserLocaleString("config_show_separate_frame"))
		locCB.tooltip = getBrowserLocaleString("config_show_separate_frame_tooltip")
		showFrameBtn:SetText(getBrowserLocaleString("config_show_frame"))
		hideFrameBtn:SetText(getBrowserLocaleString("config_hide_frame"))
		addon.targetFS:SetText(getBrowserLocaleString("config_target_mouseover"))
		setCheckLabel(addon.chkTarget, getBrowserLocaleString("config_show_target"))
		roleFS:SetText(getBrowserLocaleString("config_role_specific"))
		setCheckLabel(chkMyRoleOnly, getBrowserLocaleString("config_show_myroleonly"))
		setCheckLabel(chkTankRole, getBrowserLocaleString("config_show_tank"))
		setCheckLabel(chkHealerRole, getBrowserLocaleString("config_show_healer"))
		setCheckLabel(chkDamageRole, getBrowserLocaleString("config_show_damage"))
		classFS:SetText(getBrowserLocaleString("config_class_specific"))
		setCheckLabel(chkMyClassOnly, getBrowserLocaleString("config_show_myclassonly"))
		for _, classCheck in ipairs(classCheckRows) do
			local classKey = classCheck[3]
			local checkbox = classFilterChecks[classKey]
			if checkbox then
				setCheckLabel(checkbox, string.format("%s %s", getBrowserLocaleString("config_show_prefix"), getLocalizedClassName(classKey)))
			end
		end
		localeFS:SetText(getBrowserLocaleString("config_language"))
		localeHelp:SetText(getBrowserLocaleString("config_language_help"))
		showinFS:SetText(getBrowserLocaleString("config_content"))
		setCheckLabel(chkRegDungeons, getBrowserLocaleString("config_show_in_dungeons"))
		setCheckLabel(chkRaid, getBrowserLocaleString("config_show_in_raid"))
		setCheckLabel(chkShowNpcIDs, getBrowserLocaleString("config_show_npc_ids"))
		OtherFS:SetText(getBrowserLocaleString("config_font_size"))
	end
	
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
			chkGeneral:SetChecked(TDTConfig.Important)
			chkPriority:SetChecked(TDTConfig.PriorityTargets)
			chkInterrupts:SetChecked(TDTConfig.Interrupts)
			chkDefensives:SetChecked(TDTConfig.Defensives)
			chkFluff:SetChecked(TDTConfig.Fluff)
			chkAdvanced:SetChecked(TDTConfig.Advanced)
			chkPersonal:SetChecked(TDTConfig.Personal)
			--chkMythicPlus:SetChecked(TDTConfig.MythicPlusToggle)
			
			chkRegDungeons:SetChecked(TDTConfig.DungeonToggle)
			chkRaid:SetChecked(TDTConfig.RaidToggle)
			chkShowNpcIDs:SetChecked(TDTConfig.ShowNpcIDs)
			
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
			refreshConfigTexts()
			
			addon:setEnabled()
			addon:setDropdownEnabled()
			if addon.configPanel.refreshScroll then addon.configPanel:refreshScroll() end
		end
	end);

	addon.configPanel:HookScript("OnShow", function()
		refreshConfigTexts()
		if localeButton and TDTConfig then
			localeButton:SetCurrentValue(TDTConfig.LocaleChoice or "Auto")
		end
	end)
	
	-- Add panel to config options
	addon:registerConfigPanel()
	refreshConfigTexts()
	
	-- Proceed
	createTDTFrame()
end

createContentBrowserMenu()
createDungeonEditorMenu()
createEditorMenu()
createInfoMenu()
createConfigMenu()











