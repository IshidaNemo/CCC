
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: sh_animation.lua
Author: disseminate
]]--

local ActIndex = {
	[ "pistol" ] 		= ACT_HL2MP_IDLE_PISTOL,
	[ "revolver" ] 		= ACT_HL2MP_IDLE_REVOLVER,
	[ "smg" ] 			= ACT_HL2MP_IDLE_SMG1,
	[ "grenade" ] 		= ACT_HL2MP_IDLE_GRENADE,
	[ "ar2" ] 			= ACT_HL2MP_IDLE_AR2,
	[ "shotgun" ] 		= ACT_HL2MP_IDLE_SHOTGUN,
	[ "rpg" ]	 		= ACT_HL2MP_IDLE_RPG,
	[ "physgun" ] 		= ACT_HL2MP_IDLE_PHYSGUN,
	[ "crossbow" ] 		= ACT_HL2MP_IDLE_CROSSBOW,
	[ "melee" ] 		= ACT_HL2MP_IDLE_MELEE,
	[ "slam" ] 			= ACT_HL2MP_IDLE_SLAM,
	[ "normal" ]		= ACT_HL2MP_IDLE,
	[ "fist" ]			= ACT_HL2MP_IDLE_FIST,
	[ "melee2" ]		= ACT_HL2MP_IDLE_MELEE2,
	[ "passive" ]		= ACT_HL2MP_IDLE_PASSIVE,
	[ "knife" ]			= ACT_HL2MP_IDLE_KNIFE,
	[ "camera" ]		= ACT_HL2MP_IDLE_CAMERA,
	[ "duel" ]			= ACT_HL2MP_IDLE_DUEL,
	[ "magic" ]			= ACT_HL2MP_IDLE_MAGIC,
	[ "zombie" ]		= ACT_HL2MP_IDLE_ZOMBIE,
	[ "suitcase" ]		= ACT_HL2MP_IDLE_SUITCASE
}

function SWEP:TranslateActivitySetup()
	
	for i=0,1 do
	
		local holdtype = string.Trim(self.HoldType)
		
		if i > 0 then
		
			holdtype = string.Trim(self.HoldTypeHolster)
			
		end
		
		if not ActIndex[holdtype] then
			holdtype = "normal"
		end
		
		local holdIndex = ActIndex[holdtype]
		local holdTable = {}
		holdTable[ACT_MP_STAND_IDLE] 				= holdIndex
		holdTable[ACT_MP_WALK] 						= holdIndex+1
		holdTable[ACT_MP_RUN] 						= holdIndex+2
		holdTable[ACT_MP_CROUCH_IDLE] 				= holdIndex+3
		holdTable[ACT_MP_CROUCHWALK] 				= holdIndex+4
		holdTable[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 	= holdIndex+5
		holdTable[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] = holdIndex+5
		holdTable[ACT_MP_RELOAD_STAND]		 		= holdIndex+6
		holdTable[ACT_MP_RELOAD_CROUCH]		 		= holdIndex+6
		holdTable[ACT_MP_JUMP] 						= holdIndex+7
		holdTable[ACT_RANGE_ATTACK1] 				= holdIndex+8
		
		if holdtype == "normal" then
		
			holdTable[ACT_MP_JUMP] = ACT_HL2MP_JUMP_SLAM

		elseif holdtype == "revolver" then
		
			holdTable[ACT_RANGE_ATTACK1] = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			
		elseif holdtype == "passive" then
		
			holdTable[ACT_MP_CROUCH_IDLE] = ACT_HL2MP_IDLE_CROUCH
			
		elseif holdtype == "suitcase" then

			holdTable[ACT_MP_STAND_IDLE] 				= ACT_HL2MP_IDLE_SUITCASE
			holdTable[ACT_MP_WALK] 						= ACT_HL2MP_WALK_SUITCASE
			holdTable[ACT_MP_RUN] 						= ACT_HL2MP_IDLE+2
			holdTable[ACT_MP_CROUCH_IDLE] 				= ACT_HL2MP_IDLE+3
			holdTable[ACT_MP_CROUCHWALK] 				= ACT_HL2MP_IDLE+4
			holdTable[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 	= ACT_HL2MP_IDLE+5
			holdTable[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE]	= ACT_HL2MP_IDLE+5
			holdTable[ACT_MP_RELOAD_STAND]		 		= ACT_HL2MP_IDLE+6
			holdTable[ACT_MP_RELOAD_CROUCH]		 		= ACT_HL2MP_IDLE+6
			holdTable[ACT_MP_JUMP] 						= ACT_HL2MP_IDLE+7
			holdTable[ACT_RANGE_ATTACK1] 				= ACT_HL2MP_IDLE+8

		end
		
		self.ActivityTranslate[i] = holdTable
		
	end
	
end

function SWEP:TranslateActivity(act)

	local val = -1
	local actList = self.ActivityTranslate
	if self:Holstered() then
		
		if actList[1] then
		
			val = actList[1][act] or -1
			
		end
		
	else
		
		if actList[0] then
		
			val = actList[0][act] or -1
			
		end
		
	end
	
	local vel2d = self.Owner:GetVelocity():Length2D()
	if val == ACT_MP_RUN and len2d >= 200 then

		val = ACT_MP_RUN_FAST

	end
	
	return val
end