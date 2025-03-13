-------\\ Tome Creation //-----
local Tome = MyChatLogger
local AC = LibStub("AceConfig-3.0")
local ACD = LibStub("AceConfigDialog-3.0")

-------\\ When enabled/disabled //-----
function Tome:OnEnable()
    SLASH_MYCHATLOGGER1 = "/tome"
    SlashCmdList["MYCHATLOGGER"] = function()
        Tome.UI:ToggleChatLog()
    end
end


