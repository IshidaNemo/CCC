
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "M249"
SWEP.Slot = 2
SWEP.SlotPos = 84
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_m249.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_m249.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 200
SWEP.Primary.DefaultClip = 200
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_mg.wav"
SWEP.Primary.Damage= 22
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.1
SWEP.Primary.Delay= 0.06
SWEP.Primary.RecoilAdd= 0.4
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 4

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -5.37, 2.36, 1.56 );
SWEP.AimAng = Vector( 0, 0.25, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The M249 is an American made weapon chambered in 5.56mm."
SWEP.ItemWeight = 22
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
