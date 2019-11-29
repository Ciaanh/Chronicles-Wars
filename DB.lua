local _G = getfenv(0)
local LibStub = _G.LibStub

local FOLDER_NAME, private = ...

private.addon_name = "Chronicles - Wars"
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local addon = LibStub("AceAddon-3.0"):NewAddon(private.addon_name, "AceEvent-3.0")

local Chronicles = LibStub("AceAddon-3.0"):GetAddon("Chronicles")

addon.pluginName = "Wars"
addon.Name = FOLDER_NAME

local constants = Chronicles.constants

function addon:OnInitialize()
	Chronicles:RegisterPluginDB(addon.pluginName, DB)
end

DB = {
	--[[ structure:
		[eventId] = {
			id=[integer],				-- Id of the event
			label=[string], 			-- label: text that'll be the label
			description=table[string], 	-- description: text that give informations about the event
			yearStart=[integer],		-- 
			yearEnd=[integer],			-- 
			eventType=[string],			-- type of event defined in constants
		},
	--]]
	[1] = {
		id = 1,
		label = L["First War label"],
		description = {
			L["First War page 1"]
		},
		yearStart = 0,
		yearEnd = 5,
		eventType = constants.eventType.war
	},
	[2] = {
		id = 2,
		label = L["War of the ancient label"],
		description = {
			L["War of the ancient page 1"],
			L["War of the ancient page 2"]
		},
		yearStart = -10000,
		yearEnd = -9990,
		eventType = constants.eventType.war
	},
	[3] = {
		id = 3,
		label = L["War of the Three Hammers label"],
		description = {
			L["War of the Three Hammers page 1"],
			L["War of the Three Hammers page 2"],
			L["War of the Three Hammers page 3"]
		},
		yearStart = -230,
		yearEnd = -230,
		eventType = constants.eventType.war
	}
}
