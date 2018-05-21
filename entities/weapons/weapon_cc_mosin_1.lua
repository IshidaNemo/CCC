
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "Mosin Nagant"
SWEP.Slot = 2
SWEP.SlotPos = 96
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_mosin.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_mosin.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Ammo= "cc_shotgun"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= false
SWEP.Primary.Sound= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage= 8
SWEP.Primary.Force= 0.73
SWEP.Primary.NumBullets= 1
SWEP.Primary.Accuracy= 0.1
SWEP.Primary.Delay= 0.08
SWEP.Primary.RecoilAdd= 0.3
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 1

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.63, 3.56, -1.81 );
SWEP.AimAng = Vector( 0, 0.04, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The AA-12 is a fully automatic shotgun which fires 12 gauge shells."
SWEP.ItemWeight = 9
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end