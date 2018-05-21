
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Sten Gun"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 210
SWEP.CSMuzzleFlashes	= true

SWEP.Attachment    = 0

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_sten.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_sten.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_akm.wav"
SWEP.Primary.Damage			= 12
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.4, 4.31, -4)
SWEP.AimAng = Vector(0, 0, 0)




SWEP.Itemize = true
SWEP.ItemDescription = "The classic Sten is a favoured firearm for veteran members of the Resistance."
SWEP.ItemWeight = 4
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
