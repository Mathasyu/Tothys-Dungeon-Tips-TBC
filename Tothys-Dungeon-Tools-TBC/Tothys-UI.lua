--[[
Tothys Dungeon Tools TBC
Minimal UI shell

Version: 0.1.0
]]

local _, addon = ...

local mainFrame

local function createMainFrame()
    local frame = CreateFrame("Frame", "TDT2MainFrame", UIParent, "BasicFrameTemplateWithInset")
    frame:SetSize(TDT2Config.frame.width, TDT2Config.frame.height)
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
    end)

    frame.TitleText:SetText("Kiesel Dungeon Tool")

    local subtitle = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    subtitle:SetPoint("TOPLEFT", 16, -32)
    subtitle:SetPoint("TOPRIGHT", -16, -32)
    subtitle:SetJustifyH("LEFT")
    subtitle:SetText("Normalized-model rewrite shell. This frame will become the new TBC-only Kiesel Dungeon Tool addon.")

    local sampleHeader = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    sampleHeader:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -18)
    sampleHeader:SetText(addon:GetLocalizedText(addon:GetInstance("hellfire_ramparts").name))

    local sampleNpc = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    sampleNpc:SetPoint("TOPLEFT", sampleHeader, "BOTTOMLEFT", 0, -16)
    sampleNpc:SetText(addon:GetLocalizedText(addon:GetNpc(17306).name))

    local sampleTip = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    sampleTip:SetPoint("TOPLEFT", sampleNpc, "BOTTOMLEFT", 0, -12)
    sampleTip:SetPoint("TOPRIGHT", -16, 0)
    sampleTip:SetJustifyH("LEFT")
    sampleTip:SetJustifyV("TOP")
    sampleTip:SetText(addon:GetLocalizedText(addon:GetNpcTips("hellfire_ramparts", 17306)[1].text))

    frame:Hide()
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
