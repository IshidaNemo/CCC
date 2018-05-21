
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Dual Mac10 Resistance Specials"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 219

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mac10_akimbo.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mac10_akimbo.mdl"

SWEP.Attachment    = 2

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 80
SWEP.Primary.DefaultClip 	= 80
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mac10.wav"
SWEP.Primary.Damage			= 16
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.05
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "duel"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(0, 2, -8)
SWEP.AimAng = Vector(0, 0, 0)


SWEP.Itemize = true
SWEP.ItemDescription = "The compact Mac10 provides extreme high rates of fire in classic concealable design."
SWEP.ItemWeight = 3
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)


function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
