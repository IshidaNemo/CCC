
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "FN FAL DSA"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 64
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_fal.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_fal.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true

SWEP.Attachment    = 1

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_m14.wav"
SWEP.Primary.Damage			= 40
SWEP.Primary.Force			= 0.8
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.1
SWEP.Primary.RecoilAdd		= 0.5
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-6.36, 2.06, -4)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "A CQB version of the popular battle rifle, with a front grip and aimpoint - 7.62x51mm Calibre."
SWEP.ItemWeight = 9
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK
function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end