
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "AR1"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 29

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_ar1.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_ar1.mdl"

SWEP.Firearm				= true
SWEP.Bodygroup    = 0
--SWEP.Primary.HitParticle 	= {"hunter_shield_impactglow" }

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_ar2"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "npc/turret_floor/shoot1.wav"
SWEP.Primary.Damage			= 18
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.09
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "Weapon_AR2.Reload"
SWEP.Primary.TracerName		= "AR2Tracer"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 1

SWEP.HolsterPos = Vector( 10, -0.97, 0 );
SWEP.HolsterAng = Vector( -10.61, 40.04, 0 );

SWEP.AimPos = Vector( -6.18, 0.12, 1.96 );
SWEP.AimAng = Vector( 0, 0, 0.36 );

SWEP.Scoped = true

SWEP.Itemize = true
SWEP.ItemDescription = "The AR1 was once the weapon of choice for the Overwatch Transhuman Arm, but is now retired, the AR2 replaced this gun.(THIS IS AN ADMIN SPAWNED WEAPON, YOU CANNOT MUG FOR THIS)"
SWEP.ItemWeight = 7
SWEP.ItemFOV = 43
SWEP.ItemCamPos = Vector(-1.12, 50, -0.82)
SWEP.ItemLookAt = Vector(5.09, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-2, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 8, self.Primary.Delay, 5)
end