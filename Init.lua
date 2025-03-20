local Tome = LibStub("AceAddon-3.0"):NewAddon("MyChatLogger", "AceEvent-3.0")
AC = LibStub("AceConfig-3.0")
ACD = LibStub("AceConfigDialog-3.0")
_G.MyChatLogger = Tome

Tome.UI = {}
Tome.Events = {}

-------\\ Upon Startup //-----


function Tome:OnInitialize()
    -- DB setup
    Tome.db = LibStub("AceDB-3.0"):New("TomeDB", defaults, true)
    Tome.optionsframe = ACD: AddToBlizOptions("Tome", "Tome")

    -- register UI/events
    Tome.UI:CreateChatLogFrame()
    Tome.Events:RegisterChatEvents()

    -- register profiles

    local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(Tome.db)
    AC: RegisterOptionsTable("Tome_Chapters", profiles)
    ACD: AddToBlizOptions("Tome_Chapters", "Chapters", "Tome")
end

local defaults = {
    profile = {
        setting = true,
    }
}