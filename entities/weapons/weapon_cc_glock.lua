
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Glock 17"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 25
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_glock.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_glock.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 17
SWEP.Primary.DefaultClip 	= 17
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/usp/usp_unsil-1.wav"
SWEP.Primary.Damage			= 15
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.1
SWEP.Primary.Delay			= 0.05
SWEP.Primary.RecoilAdd		= 1.2
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.25, 3.1, 0)
SWEP.AimAng = Vector(0, 0.5, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "The Combine variant of the Glock 17 is chambered for 9x19mm Parabellum rounds. It feels like unique, a one of a kind pistol."
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end

