
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "MP5K"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 101
SWEP.CSMuzzleFlashes	= true

SWEP.Bodygroup    = 0

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mp5.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mp5.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 12
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.1
SWEP.Primary.Delay			= 0.065
SWEP.Primary.RecoilAdd		= 3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-5.36, 2.71, -9)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "The H&K MP5 is a favoured firearm for veteran members of the Combine Civil Authority."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end