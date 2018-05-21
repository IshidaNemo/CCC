
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Dual MP7 PDWs"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 103
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mp7_akimbo.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mp7_akimbo.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 40
SWEP.Primary.DefaultClip 	= 40
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 12
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.09
SWEP.Primary.Delay			= 0.05
SWEP.Primary.RecoilAdd		= 6
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "duel"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector()
SWEP.AimAng = Vector()

SWEP.Itemize = true
SWEP.ItemDescription = "Dual H&K MP7s. A very deadly, yet inaccurate combo."
SWEP.ItemWeight = 12
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end