
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: cl_net.lua
Author: thor
]]--

local function ironsightSync_CLIENT(len)
	local val = net.ReadBit()
	
	if IsValid(LocalPlayer()) then
	
		LocalPlayer().inIronsights = tobool(val)
		
	end
end
net.Receive("fa_ironsight_t", ironsightSync_CLIENT)