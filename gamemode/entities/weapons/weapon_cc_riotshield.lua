
-----------------------------------------------------
AddCSLuaFile()

SWEP.DrawWeaponInfoBox		= false

SWEP.PrintName 				= "Riot shield"
SWEP.Slot 					= 1
SWEP.SlotPos 				= 5

SWEP.WorldModel 			= "models/pg_props/pg_weapons/pg_cp_shield_w.mdl"
SWEP.ViewModel 				= "models/pg_props/pg_weapons/pg_cp_shield_w.mdl"

SWEP.RenderGroup 			= RENDERGROUP_BOTH

SWEP.Primary.ClipSize 		= -1
SWEP.Primary.DefaultClip 	= -1
SWEP.Primary.Ammo			= ""
SWEP.Primary.Automatic		= false

SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.Ammo			= ""
SWEP.Secondary.Automatic	= false

SWEP.Itemize = true
SWEP.ItemDescription = "A reinforced shield used for blocking incoming fire."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 50
SWEP.ItemCamPos = Vector(50, 50, 50)
SWEP.ItemLookAt = Vector(8.04, -1.6, 46.61)

function SWEP:CanPrimaryAttack()
	return false
end

function SWEP:CanSecondaryAttack()
	return false
end

function SWEP:GetViewModelPosition(pos, ang)
	local offset = Vector(0, -5, -65)
	offset:Rotate(Angle(0, ang.y, 0))

	pos = pos + offset

	ang.p = 0

	return pos, ang
end

function SWEP:Deploy()
	self:SetHoldType("melee2")
end

function SWEP:DrawWorldModel()
	self.BaseClass.DrawWorldModel(self)
end
