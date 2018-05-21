
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: shared.lua
Author: thor
]]--

if SERVER then
	
	AddCSLuaFile()
	AddCSLuaFile("sh_enumeration.lua")
	AddCSLuaFile("sh_helper.lua")
	AddCSLuaFile("sh_animation.lua")
	AddCSLuaFile("sh_ammo.lua")
	AddCSLuaFile("sh_firemodes.lua")
	AddCSLuaFile("sh_recoil.lua")
	
	AddCSLuaFile("cl_model.lua")
	AddCSLuaFile("cl_net.lua")
	
end

include("sh_enumeration.lua")
include("sh_helper.lua")
include("sh_animation.lua")
include("sh_ammo.lua")
include("sh_firemodes.lua")
include("sh_recoil.lua")

if CLIENT then

	include("cl_model.lua")
	include("cl_net.lua")
	
else
	
	include("sv_net.lua")
	
end

SWEP.PrintName 		= "Base"
SWEP.Slot 			= 1
SWEP.SlotPos 		= 1

SWEP.WorldModel 	= ""
SWEP.ViewModel 		= ""

SWEP.ViewModelFlip 	= false
SWEP.ViewModelFOV	= 60
SWEP.VMOffsetHolstered = {
	Ang = {
		p = -15,
		y = 50,
		r = 0,
	},
	Pos = {
		FW = -4,
		RT = -12,
		UP = 4,
	},
}
SWEP.VMOffset = {
	Ang = {
		p = 0,
		y = 0,
		r = 0,
	},
	Pos = {
		FW = 6,
		RT = 4,
		UP = 2,
	},
}
SWEP.VMOffsetAimed = {
	Ang = {
		p = 0,
		y = 0.15,
		r = 0,
	},
	Pos = {
		FW = 14,
		RT = 7.79,
		UP = 2.6,
	},
}

SWEP.Primary.ClipSize 		= -1
SWEP.Primary.DefaultClip 	= -1
SWEP.Primary.Ammo			= ""
SWEP.Primary.Automatic		= true

SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.Ammo			= ""
SWEP.Secondary.Automatic	= false

SWEP.SwayScale = 0
SWEP.BobScale = 0

SWEP.FireSounds = "weapons/stalker_akm.wav"
SWEP.ReloadSounds = "Weapon_SMG1.Reload"

SWEP.Melee = false
SWEP.CanFire = true
SWEP.CanReload = true
SWEP.Holsterable = true

SWEP.useRecoil = true
SWEP.Recoil = {
	maxUp = 0,
	minUp = 0,
	right = 0,
	left = 0,
}

SWEP.useFreeaim = true
SWEP.freeAimOffset = Angle(0, 0, 0)
SWEP.nextFreeAimSync = CurTime()
SWEP.freeAimSpeed = 0.5
SWEP.freeAimLimit = 3

function SWEP:Precache()
	
end

function SWEP:Initialize()
	
	self:TranslateActivitySetup()
	self:AmmoSetup()
	self:FiremodeSetup()
	
	self:SetBodygroup(self.BodygroupCategory or 1, self.Bodygroup or 0)
	self:SetSkin(self.Skin or 0)
	
end

function SWEP:Deploy()

	if self.Donator then -- steamid locks for donation sweps
		
		if type(self.Donator) == "table" then -- if its a table, cycle the table to search for our steamid
			
			if not table.HasValue(self.Donator, self.Owner:SteamID()) and not self.Owner:IsDeveloper() then
				
				self:Remove()
				net.Start("nAddChat")
					net.WriteVector(Vector(200, 0, 0, 255))
					net.WriteString("The donator has chosen to restrict this weapon, and you have not been authorized to use it!")
				net.Send(self.Owner)
				
				return false
			end
			
		elseif type(self.Donator) == "string" then -- if its a string, trim the string and compare
			
			if not (string.Trim(self.Donator) == self.Owner:SteamID()) and not self.Owner:IsDeveloper() then
				
				self:Remove()
				net.Start("nAddChat")
					net.WriteVector(Vector(200, 0, 0, 255))
					net.WriteString("The donator has chosen to restrict this weapon, and you have not been authorized to use it!")
				net.Send(self.Owner)
				
				return false
			end
			
		end
		
	end

	self.Owner:GetViewModel():SetBodygroup(self.BodygroupCategory or 1, self.Bodygroup or 0)
	self.Owner:GetViewModel():SetSkin(self.Skin or 0)
	
	self:SetIronsights(false)
	
	return true
end

function SWEP:Holster()
	
	self:SetIronsights(false)
	
	return true
end

function SWEP:OnRemove()

end

function SWEP:Think()
	
	local FT = FrameTime()
		
	self:UpdateAngularVelocity(FT)
	self:RecoilThink()
	self:FreeaimThink()
	
	self:NextThink(CurTime())
	return true
end

function SWEP:PrimaryAttack()
	if self:Holstered() then
		
		self:PrimaryHolstered()
		
	else
	
		self:PrimaryUnholstered()
		
	end
end

function SWEP:PrimaryHolstered()

end

function SWEP:PrimaryUnholstered()
	
	if self.Melee then return self:MeleeAttack() end
	
	if self:CanPrimaryAttack() then
		
		self:SetNextPrimaryFire(CurTime() + (1/self.Firerate * 60))
		
		self:TakePrimaryAmmo(1)
		self:ShootEffects()
		self:HandleSound()
		
		if not IsFirstTimePredicted() then return end -- prevent the client from accidently FUCKING me
		
		self:HandleRecoil() -- should we write our own viewpunch stuff?
		self:ShootBullet()
		
	end
	
end

function SWEP:SecondaryAttack()
	if self:Holstered() then
		
		self:SecondaryHolstered()
		
	else
		
		self:SecondaryUnholstered()
		
	end
end

function SWEP:SecondaryHolstered()

end

function SWEP:SecondaryUnholstered()
	
	self:ToggleIronsights()
	
end

function SWEP:Reload()

end

function SWEP:MeleeAttack()

end

function SWEP:GetSpeeds(w, r, c, j)
	
	if self:InSights() then
		
		w = w * 0.7
		r = w
		c = w
		
	end
	
	return w, r, c, j
end