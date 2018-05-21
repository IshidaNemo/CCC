
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Desert Eagle"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 43
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_deserteagle.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_deserteagle.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 7
SWEP.Primary.DefaultClip 	= 7
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_mg.wav"
SWEP.Primary.Damage			= 49
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.1
SWEP.Primary.Delay			= 0.1
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -5.34, 2.11, -3.13 );
SWEP.AimAng = Vector( 0, -0.06, 0.86 );

SWEP.Itemize = true
SWEP.ItemDescription = "The legendary Desert Eagle is known for its very high stopping power. It is chambered in .50 bullets."
SWEP.ItemWeight = 4
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

SWEP.ItemBulkPrice		= 250
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end