
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "DP27"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 17
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_dp27.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_dp27.mdl"
SWEP.ViewModelFOV		= 40
SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 75
SWEP.Primary.DefaultClip 	= 75
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mg.wav"
SWEP.Primary.Damage			= 40
SWEP.Primary.Force			= 2
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.12
SWEP.Primary.RecoilAdd		= 0.6
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "shotgun"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-5.75, 3.8, -6)
SWEP.AimAng = Vector(0, 0, 0)
SWEP.ItemBulkPrice		= 450

SWEP.ItemLicense		= LICENSE_BLACK

SWEP.Itemize = true
SWEP.ItemDescription = "A classic WW2 era support weapon - 7.62x54mm Drum"
SWEP.ItemWeight = 12
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)
function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end
