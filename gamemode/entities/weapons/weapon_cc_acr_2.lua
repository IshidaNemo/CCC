
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "ACR"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 6
SWEP.CSMuzzleFlashes= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_acr.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_acr.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 150
SWEP.Primary.DefaultClip 	= 150
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_tar.wav"
SWEP.Primary.Damage			= 13
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.07
SWEP.Primary.RecoilAdd		= 0.4
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.4, 0.81, -5)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "The ACR is a fully automatic assault rifle which is chambered in 5.56x54mm NATO rounds. It is fitted with a drum mag and an aimport."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end

