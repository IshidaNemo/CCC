
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: sh_helper.lua
Author: thor
]]--

--[[ variable management ]]--
SWEP.m_lastEyeAngles = Angle(0, 0, 0)
SWEP.m_AngularVelocity = Angle(0, 0, 0)

function SWEP:UpdateAngularVelocity(delta) -- should be called once per frame
	
	-- how far have we moved
	local angVel = (self.m_lastEyeAngles - self.Owner:EyeAngles())
	if angVel.p >= 180 or angVel.y >= 180 then 
		
		-- normalization is a bitch here, so we need to account for a specific case
		local a1, a2 = self.m_lastEyeAngles, self.Owner:EyeAngles()
		
		a1.p = math.abs(a1.p)
		a1.y = math.abs(a1.y)
		a1.r = math.abs(a1.r)
		
		a2.p = math.abs(a2.p)
		a2.y = math.abs(a2.y)
		a2.r = math.abs(a2.r)
		
		angVel = a1 - a2
		
	elseif angVel.p <= -180 or angVel.y <= -180 then
	
		-- in both directions
		local a1, a2 = self.m_lastEyeAngles, self.Owner:EyeAngles()
		
		a1.p = math.abs(a1.p)
		a1.y = math.abs(a1.y)
		a1.r = math.abs(a1.r)
		
		a2.p = math.abs(a2.p)
		a2.y = math.abs(a2.y)
		a2.r = math.abs(a2.r)
		
		angVel = a1 - a2
		
	end
	
	-- v = distance/time
	angVel.p = angVel.p / delta
	angVel.y = angVel.y / delta
	angVel.r = angVel.r / delta
	
	-- set variables
	self.m_AngularVelocity = angVel
	self.m_lastEyeAngles = self.Owner:EyeAngles()
	
end

function SWEP:GetAngularVelocity()

	if not self.m_AngularVelocity then
	
		self.m_AngularVelocity = Angle(0, 0, 0)
		
	end
	
	return self.m_AngularVelocity
end

function SWEP:ToggleIronsights()

	if not SERVER then return end
	if not self.Owner.inIronsights then self.Owner.inIronsights = false end
	
	self.Owner.inIronsights = !self.Owner.inIronsights 
	
	net.Start("fa_ironsight_t")
		net.WriteBit(self.Owner.inIronsights)
	net.Send(self.Owner)
	
end

function SWEP:SetIronsights(var)
	
	if not SERVER then return end
	if not self.Owner.inIronsights then self.Owner.inIronsights = false end
	
	self.Owner.inIronsights = var
	
	net.Start("fa_ironsight_t")
		net.WriteBit(self.Owner.inIronsights)
	net.Send(self.Owner)
	
	
end

function SWEP:InSights()

	if not self.Owner.inIronsights then 
	
		self.Owner.inIronsights = false
		
	end
	
	return self.Owner.inIronsights
end

--[[ freeaim ]]--
function SWEP:FreeaimThink()

	local FT = FrameTime()
	
	if SERVER then
		
		-- freeaim stuff (serverside)
		if self.useFreeaim then
			
			if not self:InSights() then
			
				local goalOffset, faLimit = self.freeAimOffset, self.freeAimLimit
				local delta = self:GetAngularVelocity() * FT * self.freeAimSpeed
				
				local length = (goalOffset.p - delta.p)^2 + (goalOffset.y - delta.y)^2
				if length > (faLimit^2) then
					
					local norm1, norm2 = goalOffset:Forward(), (goalOffset - delta):Forward()
					local nAng = norm1:AngleEx(norm2) -- angle between the two points
					
					-- we only care to take pitch and yaw
					goalOffset.p = nAng.p 
					goalOffset.y = nAng.y
					
				else
					
					-- no need for fancy maths
					goalOffset = goalOffset - delta
					
				end
				
				self.freeAimOffset = goalOffset
				
			else
				
				self.freeAimOffset = Angle(0, 0, 0)
				
			end
			
		end
	
	else
		-- freeaim stuff (clientside)
		if self.useFreeaim then
			
			if not self:InSights() then
			
				local goalOffset, faLimit = self.freeAimOffset, self.freeAimLimit
				local delta = self:GetAngularVelocity() * FT * self.freeAimSpeed
				
				local length = (goalOffset.p - delta.p)^2 + (goalOffset.y - delta.y)^2
				if length > (faLimit^2) then
					
					local norm1, norm2 = goalOffset:Forward(), (goalOffset - delta):Forward()
					local nAng = norm1:AngleEx(norm2) -- angle between the two points
					
					-- we only care to take pitch and yaw
					goalOffset.p = nAng.p 
					goalOffset.y = nAng.y
					
				else
					
					-- no need for fancy maths
					goalOffset = goalOffset - delta
					
				end
				
				self.freeAimOffset = goalOffset
				self.currentFreeAimOffset = LerpAngle(FrameTime() * 10, self.currentFreeAimOffset, self.freeAimOffset)
				
			else
				
				self.freeAimOffset = Angle(0, 0, 0)
				self.currentFreeAimOffset = LerpAngle(FrameTime() * 10, self.currentFreeAimOffset, self.freeAimOffset)
				
			end
			
			if self.nextFreeAimSync <= CurTime() then -- keep it in sync, just to avoid rounding errors.
				
				-- i realize im trusting the client, but it keeps it from being super jumpy and still keeps it in sync
				net.Start("fa_sync_s")
					net.WriteAngle(self.freeAimOffset)
				net.SendToServer()
				
				self.nextFreeAimSync = CurTime() + 1
				
			end
			
		end	
		
	end
	
end

--[[ sound ]]--
function SWEP:InitializeSound()

end

function SWEP:HandleSound()
	
	if SERVER then
	
		self.Owner:EmitSound(self.FireSounds)
		
	end
	
end

--[[ swep convenience ]]--
function SWEP:Holstered()
	return self.Owner:Holstered()
end

function SWEP:CanPrimaryAttack(noreload)
	
	if not self.CanFire then return false end
	
	if self:Clip1() <= 0 then
		
		self:SetNextPrimaryFire(CurTime() + 0.2)
		
		if not noreload then
			
			self:Reload()
			
		end
	end
	
	return true
end

function SWEP:ShootEffects()
	
	if not self:InSights() then
	
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		
	end
	
	self.Owner:MuzzleFlash()
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
end