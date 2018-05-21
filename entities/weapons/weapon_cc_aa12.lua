
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "AA-12"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 2
SWEP.CSMuzzleFlashes= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_aa12.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_aa12.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_shotgun"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage			= 5
SWEP.Primary.Force			= 0.73
SWEP.Primary.NumBullets		= 6
SWEP.Primary.Accuracy		= 0.15
SWEP.Primary.Delay			= 0.2
SWEP.Primary.RecoilAdd		= 0.3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"
SWEP.ItemBulkPrice		= 0

SWEP.ItemLicense		= LICENSE_BLACK
SWEP.Holsterable = true
SWEP.Attachment = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.35, -1.48, 1.27 );
SWEP.AimAng = Vector( 1.19, -0, 0.06 );

SWEP.Itemize = true
SWEP.ItemDescription = "The AA-12 is a fully automatic shotgun which fires 12 gauge shells. [This gun is no longer given/buyable AKA, should be deleted.]"
SWEP.ItemWeight = 15
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end