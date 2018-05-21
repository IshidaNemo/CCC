
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "P90"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 151
SWEP.CSMuzzleFlashes	= true
SWEP.Bodygroup    = 0
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_p90.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_p90.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 50
SWEP.Primary.DefaultClip 	= 50
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 15
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.09
SWEP.Primary.RecoilAdd		= 5
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.38, 0.21, -5)
SWEP.AimAng = Vector(0, 0, 0)


SWEP.Itemize = true
SWEP.ItemDescription = "The P90 has become the firearm of choice for use by the Combine Civil Authority."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 16000
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
