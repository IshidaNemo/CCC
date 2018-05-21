
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "HK SOCOM"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 122
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_usp.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_usp.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 12
SWEP.Primary.DefaultClip 	= 12
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/usp/usp_unsil-1.wav"
SWEP.Primary.Damage			= 11
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.07
SWEP.Primary.RecoilAdd		= 0.5
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -5.35, 2.69, -1.15 );
SWEP.AimAng = Vector( 0, 0, 0.75 );

SWEP.Itemize = true
SWEP.ItemDescription = "The HK SOCOM is a semi-automatic pistol which is chambered in 9x19 Parabellum rounds."
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end