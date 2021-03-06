
-----------------------------------------------------
 AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "AK-12"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 13
SWEP.CSMuzzleFlashes= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_ak12.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_ak12.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_akm.wav"
SWEP.Primary.Damage			= 14
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.07
SWEP.Primary.RecoilAdd		= 0.5
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType 				= "smg"
SWEP.HoldTypeHolster 		= "passive"

SWEP.Holsterable 			= true
SWEP.Attachment 			= 0

SWEP.HolsterPos 			= Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng 			= Vector(4.83, 46.61, 4.83)

SWEP.AimPos 				= Vector( -6.31, 1.62, 2 );
SWEP.AimAng 				= Vector( 2.29, 0.11, 0 );

SWEP.Itemize 				= true
SWEP.ItemDescription 		= "The Kalashnikov AK-12 is the newest derivative of the Russian AK series of assault rifles."
SWEP.ItemWeight 			= 7
SWEP.ItemFOV 				= 25
SWEP.ItemCamPos 			= Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt 			= Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice			= 0
SWEP.ItemLicense			= LICENSE_BLACK

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end