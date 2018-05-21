
-----------------------------------------------------
 AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "M24"
SWEP.Slot = 2
SWEP.SlotPos = 79
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_m24.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_m24.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Ammo= "cc_rifle"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= false
SWEP.Primary.Sound= "weapons/stalker_rifle.wav"
SWEP.Primary.Damage= 70
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.01
SWEP.Primary.Delay= 1.4
SWEP.Primary.RecoilAdd= 4
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachments = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.4, 0.81, -5)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Scoped = true

SWEP.Itemize = true
SWEP.ItemDescription = "The M24 bolt-action rifle is chambered in 7.62x51mm NATO rounds."
SWEP.ItemWeight = 10
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice= 0
SWEP.ItemLicense= LICENSE_BLACK

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end