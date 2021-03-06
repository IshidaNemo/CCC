
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "APSSD"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 230
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_aps.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_aps.mdl"

SWEP.Firearm				= true
SWEP.Attachment    = 1
SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_silencedsmall.wav"
SWEP.Primary.Damage			= 14
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.03
SWEP.Primary.Delay			= 0.07
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.32, 3.3, -6)
SWEP.AimAng = Vector(0, 0, 0)


SWEP.Itemize = true
SWEP.ItemDescription = "Classic Soviet sidearm - 9x18mm"
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

SWEP.ItemBulkPrice		= 1200
SWEP.ItemLicense		= LICENSE_BOOT

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end

