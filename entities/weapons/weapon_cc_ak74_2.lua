
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "AK-74"
SWEP.Slot = 2
SWEP.SlotPos = 19
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_ak74.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_ak74.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_akm.wav"
SWEP.Primary.Damage= 10
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.06
SWEP.Primary.Delay= 0.09
SWEP.Primary.RecoilAdd= 0.3
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -7.91, 2.79, 0 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The AK-74 is a fully automatic assault rifle which is chambered in 5.45x39mm."
SWEP.ItemWeight = 7
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end