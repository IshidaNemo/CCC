
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "Galil"
SWEP.Slot = 2
SWEP.SlotPos = 54
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_galil.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_galil.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_m4.wav"
SWEP.Primary.Damage= 13
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.07
SWEP.Primary.Delay= 0.09
SWEP.Primary.RecoilAdd= 0.4
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.37, 1.58, -1.44 );
SWEP.AimAng = Vector( 0.25, 0.02, 0.31 );

SWEP.Itemize = true
SWEP.ItemDescription = "The Galil is a fully automatic assault rifle chambered in 5.56x45 NATO rounds."
SWEP.ItemWeight = 9
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end