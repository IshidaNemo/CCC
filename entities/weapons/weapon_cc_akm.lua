
-----------------------------------------------------
 AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "AKM"
SWEP.Slot = 2
SWEP.SlotPos = 24
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_akm.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_akm.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_akm.wav"
SWEP.Primary.Damage= 11
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.08
SWEP.Primary.Delay= 0.1
SWEP.Primary.RecoilAdd= 0.5
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.54, 3.11, -10 );
SWEP.AimAng = Vector( -0.11, 0.22, 0.11 );

SWEP.Itemize = true
SWEP.ItemDescription = "The AKM is a common modernized variant of the AK-47. It fires 7.62mm bullets."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice= 0
SWEP.ItemLicense= LICENSE_BLACK

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end