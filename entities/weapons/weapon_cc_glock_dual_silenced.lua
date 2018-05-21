
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Dual Glock 17s"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 29
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_glock_akimbo.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_glock_akimbo.mdl"
SWEP.Attachment    = 1
SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 34
SWEP.Primary.DefaultClip 	= 34
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_silencedsmall.wav"
SWEP.Primary.Damage			= 14
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.1
SWEP.Primary.Delay			= 0.04
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "duel"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(0, 2, -8)
SWEP.AimAng = Vector(0, 0, 0)



SWEP.Itemize = true
SWEP.ItemDescription = "The Combine variant of the Glock17 is chambered for 9x19mm Parabellum rounds. It's the Combine Civil Authority's standard sidearm."
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end

