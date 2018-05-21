
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: cl_model.lua
Author: thor
]]--

--[[ view model ]]--
SWEP.viewRecoilOffset = Angle(0, 0, 0)
SWEP.gunRecoilOffset = Angle(0, 0, 0)

SWEP.targetBlendPosition = Vector(0, 0, 0)
SWEP.currentBlendPosition = Vector(0, 0, 0)

SWEP.targetBlendAngles = Angle(0, 0, 0)
SWEP.currentBlendAngles = Angle(0, 0, 0)

SWEP.currentFreeAimOffset = Angle(0, 0, 0)
SWEP.currentSwayOffset = Angle(0, 0, 0)

SWEP.ironZoom = 0
SWEP.swayIntensity = 0.25

function SWEP:CalcView(ply, pos, ang, fov)
	
	-- rough sway
	local CT = UnPredictedCurTime()
	local sway = math.atan(math.cos(CT) * math.sin(CT))
	self.currentSwayOffset = Angle(sway, math.sin(CT)^3, 0) * self.swayIntensity
	
	if self:InSights() then
		
		pos = pos + ang:Forward() * self.ironZoom
		ang = ang - Angle(sway, math.sin(CT), 0) * self.swayIntensity * 0.25
		
	end
	
	-- calculate offsets for ironsights, holster, etc. called each frame.
	self:CalcCurrentBlendPosition(pos, ang)
	
	-- recoil smoothing & view smoothing (if you have 60 fps, the recoil will take 6 frames to fully apply to the VM/Screen
	self.viewRecoilOffset = LerpAngle(FrameTime() * 10, self.viewRecoilOffset, Angle(0, 0, 0))
	self.gunRecoilOffset = LerpAngle(FrameTime() * 10, self.gunRecoilOffset, Angle(0, 0, 0))
	ang = ang - self.viewRecoilOffset
	
	return pos, ang, fov
end

function SWEP:PreDrawViewModel(vm, ply, weapon)
	
	local FT = FrameTime()
	
end

function SWEP:GetViewModelPosition(pos, ang)
	
	local CT = UnPredictedCurTime()
	local FT = FrameTime()
	
	-- find and translate to our base position
	local blendPosOffset, blendAngOffset = self.currentBlendPosition, self.currentBlendAngles
	local blendPos, blendAng = Vector(0, 0, 0), Angle(0, 0, 0)
	blendPos = ang:Forward() * blendPosOffset.x
	blendPos = blendPos + ang:Right() * blendPosOffset.y
	blendPos = blendPos + ang:Up() * blendPosOffset.z
	pos = pos + blendPos
	
	-- find and translate to our base angles
	local newAng = ang
	newAng:RotateAroundAxis(ang:Right(), blendAngOffset.p)
	newAng:RotateAroundAxis(ang:Up(), blendAngOffset.y)
	newAng:RotateAroundAxis(ang:Forward(), blendAngOffset.r)
	ang = newAng
	
	-- weapon sway is handled differently in ironsights
	if not self:InSights() then
	
		-- apply weapon sway
		ang = ang - self.currentSwayOffset
		
	end

	-- freeaim is not applied, but we dont want it to snap so we'll set the angle to (0, 0, 0) and let it approach
	if self.useFreeaim then
	
		-- apply freeaim offset to vm
		ang = ang + self.currentFreeAimOffset
		
	end
	
	-- apply recoil smoothing
	ang = ang - self.gunRecoilOffset
	
	-- normalize angles cus why not
	ang.p = math.NormalizeAngle(ang.p)
	ang.y = math.NormalizeAngle(ang.y)
	ang.r = math.NormalizeAngle(ang.r)
	
	return pos, ang
	
end

function SWEP:CalcCurrentBlendPosition(pos, ang)
	
	local FT = FrameTime()
	local currentAngOffset = self.currentBlendAngles
	local currentPosOffset = self.currentBlendPosition
	local targetPosOffset, targetAngOffset = self:GetTargetBlendPosition()
	
	currentAngOffset = LerpAngle(FT * 5, currentAngOffset, targetAngOffset)
	currentPosOffset = LerpVector(FT * 5, currentPosOffset, targetPosOffset)
	
	self.currentBlendAngles = currentAngOffset
	self.currentBlendPosition = currentPosOffset
	
end

function SWEP:GetTargetBlendPosition()
	
	local pos, ang
	if self:Holstered() then
		
		-- holstered / aim positions
		ang = self.VMOffsetHolstered.Ang
		pos = self.VMOffsetHolstered.Pos
		
	else
		
		if self:InSights() then
			
			-- ironsight offsets
			ang = self.VMOffsetAimed.Ang
			pos = self.VMOffsetAimed.Pos
			
		else
			
			-- idle offsets
			ang = self.VMOffset.Ang
			pos = self.VMOffset.Pos
			
		end
		
	end
	
	return pos, ang
	
end

function SWEP:TranslateFOV(fov)

	return fov
end

local function freeaimSync(len)

	local ang = net.ReadAngle()
	local wep = net.ReadEntity()
	
	if IsValid(wep) then
	
		wep.freeAimOffset = ang
		
	end
	
end
net.Receive("fa_sync", freeaimSync)

--[[ world model ]]--
function SWEP:DrawWorldModel()

	self:DrawModel()
	
end

function SWEP:DrawHUD()
	
	local endpos = EyePos() + EyeAngles():Forward() * 4096
	if not self:InSights() then
		endpos = EyePos() + (EyeAngles() + self.freeAimOffset):Forward() * 4096
	end
	
	local tr = {}
	tr.start = EyePos()
	tr.endpos = endpos
	tr.filter = {self, self.Owner}
	tr = util.TraceLine(tr)
	
	local pos = tr.HitPos:ToScreen()
	surface.SetDrawColor(255, 255, 255, 255)
	surface.DrawLine(pos.x + 5, pos.y, pos.x + 10, pos.y)
	surface.DrawLine(pos.x - 5, pos.y, pos.x - 10, pos.y)
	surface.DrawLine(pos.x, pos.y + 5, pos.x, pos.y + 10)
	surface.DrawLine(pos.x, pos.y - 5, pos.x, pos.y - 10)
	
end