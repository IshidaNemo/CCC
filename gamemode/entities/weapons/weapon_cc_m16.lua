
-----------------------------------------------------
 AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "M16a3"
SWEP.Slot = 2
SWEP.SlotPos = 74
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_m16.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_m16.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_m4.wav"
SWEP.Primary.Damage= 13
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.05
SWEP.Primary.Delay= 0.09
SWEP.Primary.RecoilAdd= 0.2
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.56, 1.2, -2.78 );
SWEP.AimAng = Vector( 0, -0.14, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The M16a3 is the most common military rifle used by the U.S. It is chambered in 5.56 mm rounds."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice= 275
SWEP.ItemLicense= LICENSE_BLACK

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end