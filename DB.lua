local _G = getfenv(0)
local LibStub = _G.LibStub

local FOLDER_NAME, private = ...

private.addon_name = "Chronicles - Wars"
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local addon = LibStub("AceAddon-3.0"):NewAddon(private.addon_name, "AceEvent-3.0")

local Chronicles = LibStub("AceAddon-3.0"):GetAddon("Chronicles")

addon.descName = L["Chronicles - Wars"]
addon.description = L["Add Azeroth history Wars to Chronicles' timeline"]
addon.pluginName = L["Wars"]
addon.Name = FOLDER_NAME

local constants = Chronicles.constants

function addon:OnInitialize()
	Chronicles:RegisterPluginDB(addon.pluginName, DB)
end

DB = {
	--[[ structure:
		[eventId] = {
			label=[string], 			-- label: text that'll be the label
			description=[string], 		-- description: text that give informations about the event
			icon=[string], 				-- the pre-define icon type which can be found in Constant.lua
			yearStart=[integer],		-- 
			yearEnd=[integer],			-- 
			eventType=[string],			-- type of event defined in constants

		},
	--]]
	[1] = {
		label = L["First War"],
		description = L["First War description"],
		icon = "research",
		yearStart = 0,
		yearEnd = 5,
		eventType = constants.eventType.war
	},
	[2] = {
		label = L["War of the ancient"],
		description = L["War of the ancient description"],
		icon = "research",
		yearStart = -10000,
		yearEnd = -9990,
		eventType = constants.eventType.war
	}
}
