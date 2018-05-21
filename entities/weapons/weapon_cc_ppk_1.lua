
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "PPK Silenced"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 109
SWEP.CSMuzzleFlashes	= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_ppk.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_ppk.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 8
SWEP.Primary.DefaultClip 	= 8
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_silencedsmall.wav"
SWEP.Primary.Damage			= 14
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.05
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false
SWEP.Attachment = 1

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.21, 3.34, -2.49 );
SWEP.AimAng = Vector( 0, 0.6, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The PPK is the smallest sidearm in the world, but also packs a lot of punch. It is chambered in .380 rounds. This variant of the weapon seems to be silenced."
SWEP.ItemWeight = 1.5
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end