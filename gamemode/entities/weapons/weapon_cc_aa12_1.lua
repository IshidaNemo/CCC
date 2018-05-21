
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "AA-12"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 3
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
SWEP.Primary.Damage			= 8
SWEP.Primary.Force			= 0.73
SWEP.Primary.NumBullets		= 6
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 0.3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 1

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.32, 0.09, 0 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The AA-12 is a fully automatic shotgun which fires 12 gauge shells. This one has an aimpoint sight and suppressor attached."
SWEP.ItemWeight = 9
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end