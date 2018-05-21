
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "FN F2000"
SWEP.Slot = 2
SWEP.SlotPos = 46
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_f2000.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_f2000.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 40
SWEP.Primary.DefaultClip = 40
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_tar.wav"
SWEP.Primary.Damage= 12
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.06
SWEP.Primary.Delay= 0.08
SWEP.Primary.RecoilAdd= 0.3
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.42, 1.42, -10 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The FN F2000 is a fully automatic assault rifle with a high fire rate. It is chambered in 5.56x45 NATO."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice= 385
SWEP.ItemLicense= LICENSE_BLACK

SWEP.Scoped = true

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end