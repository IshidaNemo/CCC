
-----------------------------------------------------
 AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "Immolator"
SWEP.Slot = 2
SWEP.SlotPos = 78
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_m16.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_m16.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo= "cc_ar2"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/1immolator/plasma_shoot"
SWEP.Primary.Damage= 40
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.01
SWEP.Primary.Delay= 0.01
SWEP.Primary.RecoilAdd= 0.01
SWEP.Primary.ReloadSound= "weapons/1immolator/plasma_stop"

SWEP.HoldType = "physgun"
SWEP.HoldTypeHolster = "physgun"

SWEP.Holsterable = true
SWEP.Attachment = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.56, 1.2, -2.78 );
SWEP.AimAng = Vector( 0, -0.14, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "This is a weapon currently in development. As a warning from Neomi Ishida, do not spawn this weapon in even if you are an admin as it could cause issues."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end