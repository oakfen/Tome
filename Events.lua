local Tome = MyChatLogger
local TRP_Loaded = IsAddonLoaded("TotalRP3")
local TRP3 = TRP3_API
local profileCurrently = TRP3.profile.getData(path)

-------\\ TRP3 Check //----- 
-- local function TRPName()
--     if Tome.trpOn then
--         local OCName = TRP3_API.register.getUnitRPName("player")

-------\\ Chat Handling //-----
function Tome:OnChatMessage(event, message, sender, ...)
    local newMsg = string.format("[%s]: %s\n", sender, message)
    Tome.UI:AddMessageToLog(newMsg)
    
end

-------\\ Register Events //-----
function Tome.Events:RegisterChatEvents()
    Tome:RegisterEvent("CHAT_MSG_SAY", "OnChatMessage")
    Tome:RegisterEvent("CHAT_MSG_GUILD", "OnChatMessage")
    Tome:RegisterEvent("CHAT_MSG_PARTY", "OnChatMessage")
    Tome:RegisterEvent("CHAT_MSG_WHISPER", "OnChatMessage")
    Tome:RegisterEvent("CHAT_MSG_EMOTE", "OnChatMessage")
    Tome:RegisterEvent("CHAT_MSG_RAID", "OnChatMessage")

end