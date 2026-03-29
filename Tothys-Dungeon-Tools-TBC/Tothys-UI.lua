--[[
Tothys Dungeon Tools TBC
Minimal UI shell

Version: 0.1.0
]]

local _, addon = ...

local mainFrame
local contentHeader
local instanceLabel
local npcLabel
local tipBody
local tipScrollFrame
local tipScrollChild
local MIN_FRAME_WIDTH = 420
local MIN_FRAME_HEIGHT = 320

local function addSection(lines, title, body)
    if not body or body == "" then
        return
    end
    lines[#lines + 1] = title
    lines[#lines + 1] = body
end

local function formatTipList(tips)
    local lines = {}
    for _, tip in ipairs(tips or {}) do
        lines[#lines + 1] = string.format("[%s] %s", tip.type or "Tip", addon:GetLocalizedText(tip.text))
    end
    return table.concat(lines, "\n\n")
end

local function formatInstanceDetails(details)
    local lines = {}
    local orderedFields = {
        { key = "travel", label = "Travel" },
        { key = "attunement", label = "Attunement" },
        { key = "notes", label = "Notes" },
        { key = "lore", label = "Lore / RP" },
    }

    for _, field in ipairs(orderedFields) do
        local value = details and details[field.key]
        local text = value and addon:GetLocalizedText(value) or ""
        if text ~= "" then
            lines[#lines + 1] = string.format("%s: %s", field.label, text)
        end
    end

    return table.concat(lines, "\n")
end

local function createNavButton(parent, width, height, text, onClick)
    local button = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    button:SetSize(width, height)
    button:SetText(text)
    button:SetScript("OnClick", onClick)
    return button
end

local function refreshMainFrame()
    if not mainFrame then
        return
    end

    local context = addon:GetCurrentContext()
    local bodyLines = {}

    contentHeader:SetText(context.expansion and addon:GetLocalizedText(context.expansion.name) or "No expansion")
    instanceLabel:SetText(context.instance and addon:GetLocalizedText(context.instance.name) or "No instance")

    if context.npc then
        npcLabel:SetText(string.format("%s (%d)", addon:GetLocalizedText(context.npc.name), context.npcID))
    else
        npcLabel:SetText("No NPC")
    end

    addSection(bodyLines, "Dungeon Info", formatTipList(context.instanceTips))
    addSection(bodyLines, "More Infos", formatInstanceDetails(context.instanceDetails))
    addSection(bodyLines, "NPC Tips", formatTipList(context.npcTips))

    tipBody:SetText(table.concat(bodyLines, "\n\n"))
    if tipScrollChild and tipScrollFrame then
        tipScrollChild:SetWidth(tipScrollFrame:GetWidth() - 8)
        tipScrollChild:SetHeight(math.max(tipBody:GetStringHeight() + 8, tipScrollFrame:GetHeight()))
    end
end

local function applyFrameSize(frame, width, height)
    local safeWidth = math.max(MIN_FRAME_WIDTH, math.floor((width or MIN_FRAME_WIDTH) + 0.5))
    local safeHeight = math.max(MIN_FRAME_HEIGHT, math.floor((height or MIN_FRAME_HEIGHT) + 0.5))
    frame:SetSize(safeWidth, safeHeight)
    TDT2Config.frame.width = safeWidth
    TDT2Config.frame.height = safeHeight
end

local function createMainFrame()
    local frame = CreateFrame("Frame", "TDT2MainFrame", UIParent, "BasicFrameTemplateWithInset")
    applyFrameSize(frame, TDT2Config.frame.width, TDT2Config.frame.height)
    frame:SetResizable(true)
    frame:SetPoint(TDT2Config.frame.point, UIParent, TDT2Config.frame.point, TDT2Config.frame.x, TDT2Config.frame.y)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local point, _, _, x, y = self:GetPoint(1)
        TDT2Config.frame.point = point
        TDT2Config.frame.x = x
        TDT2Config.frame.y = y
        applyFrameSize(self, self:GetWidth(), self:GetHeight())
        if tipScrollChild and tipScrollFrame then
            tipScrollChild:SetWidth(tipScrollFrame:GetWidth() - 8)
        end
    end)
    frame:SetScript("OnSizeChanged", function(self, width, height)
        if width < MIN_FRAME_WIDTH or height < MIN_FRAME_HEIGHT then
            applyFrameSize(self, width, height)
        else
            TDT2Config.frame.width = math.floor(width + 0.5)
            TDT2Config.frame.height = math.floor(height + 0.5)
        end
        if tipScrollChild and tipScrollFrame then
            tipScrollChild:SetWidth(tipScrollFrame:GetWidth() - 8)
        end
    end)

    frame.TitleText:SetText("Kiesel Dungeon Tool")

    local subtitle = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    subtitle:SetPoint("TOPLEFT", 16, -32)
    subtitle:SetPoint("TOPRIGHT", -16, -32)
    subtitle:SetJustifyH("LEFT")
    subtitle:SetText("Rewrite browser on the normalized TBC database.")

    local instancePrev = createNavButton(frame, 32, 22, "<", function()
        addon:StepInstance(-1)
        refreshMainFrame()
    end)
    instancePrev:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -16)

    local instanceNext = createNavButton(frame, 32, 22, ">", function()
        addon:StepInstance(1)
        refreshMainFrame()
    end)
    instanceNext:SetPoint("TOPRIGHT", subtitle, "BOTTOMRIGHT", 0, -16)

    contentHeader = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    contentHeader:SetPoint("TOPLEFT", instancePrev, "BOTTOMLEFT", 0, -16)
    contentHeader:SetPoint("TOPRIGHT", instanceNext, "BOTTOMRIGHT", 0, -16)
    contentHeader:SetJustifyH("CENTER")

    instanceLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    instanceLabel:SetPoint("TOPLEFT", contentHeader, "BOTTOMLEFT", 0, -12)
    instanceLabel:SetPoint("TOPRIGHT", contentHeader, "BOTTOMRIGHT", 0, -12)
    instanceLabel:SetJustifyH("CENTER")

    local npcPrev = createNavButton(frame, 32, 22, "<", function()
        addon:StepNpc(-1)
        refreshMainFrame()
    end)
    npcPrev:SetPoint("TOPLEFT", instanceLabel, "BOTTOMLEFT", 0, -16)

    local npcNext = createNavButton(frame, 32, 22, ">", function()
        addon:StepNpc(1)
        refreshMainFrame()
    end)
    npcNext:SetPoint("TOPRIGHT", instanceLabel, "BOTTOMRIGHT", 0, -16)

    npcLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    npcLabel:SetPoint("TOPLEFT", npcPrev, "BOTTOMLEFT", 0, -12)
    npcLabel:SetPoint("TOPRIGHT", npcNext, "BOTTOMRIGHT", 0, -12)
    npcLabel:SetJustifyH("CENTER")

    tipScrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    tipScrollFrame:SetPoint("TOPLEFT", npcLabel, "BOTTOMLEFT", 0, -18)
    tipScrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -28, 16)

    tipScrollChild = CreateFrame("Frame", nil, tipScrollFrame)
    tipScrollChild:SetSize(tipScrollFrame:GetWidth() - 8, 1)
    tipScrollFrame:SetScrollChild(tipScrollChild)

    tipBody = tipScrollChild:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    tipBody:SetPoint("TOPLEFT", 0, 0)
    tipBody:SetPoint("TOPRIGHT", 0, 0)
    tipBody:SetJustifyH("LEFT")
    tipBody:SetJustifyV("TOP")
    tipBody:SetWidth(tipScrollFrame:GetWidth() - 8)

    local resizeButton = CreateFrame("Button", nil, frame)
    resizeButton:SetSize(16, 16)
    resizeButton:SetPoint("BOTTOMRIGHT", -6, 6)
    resizeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    resizeButton:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    resizeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    resizeButton:SetScript("OnMouseDown", function()
        frame:StartSizing("BOTTOMRIGHT")
    end)
    resizeButton:SetScript("OnMouseUp", function()
        frame:StopMovingOrSizing()
        applyFrameSize(frame, frame:GetWidth(), frame:GetHeight())
        if tipScrollChild and tipScrollFrame then
            tipScrollChild:SetWidth(tipScrollFrame:GetWidth() - 8)
        end
    end)

    frame:Hide()
    refreshMainFrame()
    return frame
end

function addon:InitializeUI()
    if mainFrame then
        return
    end
    mainFrame = createMainFrame()
end

function addon:ShowMainFrame()
    if mainFrame then
        mainFrame:Show()
    end
end

function addon:HideMainFrame()
    if mainFrame then
        mainFrame:Hide()
    end
end

function addon:ToggleMainFrame()
    if not mainFrame then
        return
    end
    if mainFrame:IsShown() then
        mainFrame:Hide()
    else
        mainFrame:Show()
    end
end
