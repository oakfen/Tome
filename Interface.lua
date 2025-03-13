local Tome = MyChatLogger
local AceGUI = LibStub("AceGUI-3.0")


-------\\ Storing Messages //-----

local logFrame = nil -- Will hold our chat log window
local scrollBox = nil -- Will store messages
local isFrameShown = false -- Track visibility


-------\\ Creating frame //-----
function Tome.UI:CreateChatLogFrame()
    if logFrame then return end -- Prevent multiple instances

  
    logFrame = AceGUI:Create("Frame")
    logFrame:SetTitle("Tome")
    logFrame:SetStatusText("Tome Logs")
    logFrame:SetWidth(500)
    logFrame:SetHeight(300)
    logFrame:SetLayout("Flow")
    logFrame:Hide() -- Start hidden

    
    scrollBox = AceGUI:Create("MultiLineEditBox")
    scrollBox:SetLabel("")
    scrollBox:SetNumLines(1000)
    scrollBox:SetFullWidth(true)
    scrollBox:SetFullHeight(true)
    scrollBox:SetDisabled(true) 
    scrollBox:DisableButton(true) 
    logFrame:AddChild(scrollBox)
end

-- Function to toggle chat log visibility
function Tome.UI:ToggleChatLog()
    if not logFrame then self:CreateChatLogFrame() end
    isFrameShown = not isFrameShown
    if  isFrameShown then
        logFrame:Show()
    else
        logFrame:Hide()
    end
end

function Tome.UI:AddMessageToLog(msg)
    if scrollBox then
        local currentText = scrollBox:GetText() or ""
        scrollBox:SetText(currentText .. msg.. "\n")
    end
end