local Tome = MyChatLogger
local AC = LibStub("AceConfig-3.0")
local ACD = LibStub("AceConfigDialog-3.0")
local defaults = {
    profile = {
        setting = true,
    }
}

local options = {
    name = "Tome",
    handler = Tome,
    type = "group",
    args = {
        enable = {
            name = "Enable",
            desc = "Enable Tome",
            type = "toggle",
            set = function(info,val) Tome.enabled = val end,
            get = function(info) return Tome.enabled end
        }
    }
}