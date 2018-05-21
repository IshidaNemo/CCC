
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "P99"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 104
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_p99.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_p99.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 16
SWEP.Primary.DefaultClip 	= 16
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/usp/usp_unsil-1.wav"
SWEP.Primary.Damage			= 7
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.05
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 0.5
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false
SWEP.Attachment = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.23, 2.86, -7.38 );
SWEP.AimAng = Vector( 0.05, 0.81, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "The P99 is a semi-automatic pistol which is chambered in 9x19 Parabellum."
SWEP.ItemWeight = 1
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK;

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end