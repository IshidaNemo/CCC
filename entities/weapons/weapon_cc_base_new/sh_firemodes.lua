
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: sh_firemodes.lua
Author: thor
]]--

SWEP.FiremodeTypes = {}

function SWEP:FiremodeSetup()
	
end

function SWEP:DefineFiremode(name, properties)
	
	--[[
	i have a very rough idea of how this would work.
	the name would be the display name on the hud when you swap to it
	the properties table would have data like "recoilMod", "accuracyMod", "firetype" (singleshot, burst, auto, custom) etc
	custom would be used for something like an m203 round
	]]--
	
end