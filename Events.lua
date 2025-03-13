local Tome = MyChatLogger

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