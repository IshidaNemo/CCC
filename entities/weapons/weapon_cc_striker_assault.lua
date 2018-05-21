
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Striker Assault Shotgun"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 228
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_striker.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_striker.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true
SWEP.DoorBreach				= true

SWEP.Attachment    = 1

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_shotgun"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage			= 10
SWEP.Primary.Force			= 10
SWEP.Primary.NumBullets		= 12
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.14
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"
SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.28, 1.59, -5)
SWEP.AimAng = Vector(0, 0, 0)



SWEP.Itemize = true
SWEP.ItemDescription = "A modern assault shotgun."
SWEP.ItemWeight = 10
SWEP.ItemFOV = 37
SWEP.ItemCamPos = Vector(-0.79, 50, 5.13)
SWEP.ItemLookAt = Vector(0, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end