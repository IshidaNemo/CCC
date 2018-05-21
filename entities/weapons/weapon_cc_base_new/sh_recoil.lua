
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: sh_recoil.lua
Author: thor
]]--

function SWEP:HandleRecoil()
	
	if self.useRecoil then
		
		local recoil = self.Recoil
		local recoilAng = Angle()
		
		-- this will differ on the client and server, however the server only uses it for viewpunch so not a big deal
		recoilAng.p = math.random(recoil.minUp, recoil.maxUp) * 60/self.Firerate -- scale to firerate
		recoilAng.y = math.random(-recoil.right, recoil.left) * 60/self.Firerate -- scale to firerate
		recoilAng = recoilAng * self:GetRecoilModifier() -- get recoil multiplier (based on speed, ironsights, crouching etc
		
		if CLIENT then
			
			local r = Angle(-recoilAng.p, recoilAng.y, 0)
			local ang = self.Owner:EyeAngles()
			ang = ang + r
			self.Owner:SetEyeAngles(ang) -- set our eye angles
			
			self.viewRecoilOffset = self.viewRecoilOffset + r -- for viewcalc to smooth
			self.gunRecoilOffset = self.gunRecoilOffset + r -- for getvmpos to smooth
			
		end
		
		self.Owner:ViewPunch(recoilAng * -1.5) -- viewpunch to add a bit of shoulder kick
		
	end
	
end

function SWEP:RecoilThink()
	
end

function SWEP:GetRecoilModifier() -- recoil modifiers are processed here
	local mod = 2.5
	local vel2d = self.Owner:GetVelocity():Length2D()
	
	-- process ground speed modifiers
	if not self.Owner:OnGround() then
		
		mod = mod * 2.5
		
	elseif vel2d <= 10 then -- standing still
		
		mod = mod * 1
		
	elseif vel2d <= 150 then -- walking
		
		mod = mod * 1.25
		
	else -- sprinting
		
		mod = mod * 1.75
		
	end
	
	-- process crouch modifier
	if self.Owner:Crouching() then
		
		mod = mod * 0.8
		
	end
	
	-- process sights modifier
	if self:InSights() then
		
		mod = mod * 0.7
		
	end
	
	-- aim equation
	mod = mod * (3 - 2 * self.Owner:Aim()/100)
	
	return mod
end