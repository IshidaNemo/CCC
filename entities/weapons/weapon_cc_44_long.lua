
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= ".44 Magnum Long"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 200

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_magnum.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_magnum.mdl"

SWEP.Attachment    = 1

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 6
SWEP.Primary.DefaultClip 	= 6
SWEP.Primary.Ammo			= "cc_357"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_357.Single"
SWEP.Primary.Damage			= 50
SWEP.Primary.Force			= 12
SWEP.Primary.Accuracy		= 0.04
SWEP.Primary.Delay			= 0.5
SWEP.Primary.RecoilAdd		= 4
SWEP.Primary.ReloadSound	= "Weapon_357.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-4.59, 0.7, 0)
SWEP.AimAng = Vector(0, 0, 1.36)

SWEP.Itemize = true
SWEP.ItemDescription = "A Smith & Wesson revolver. Chambered for the .44 Magnum cartridge. Quick, accurate, and deadly - this is one bigass gun."
SWEP.ItemWeight = 5
SWEP.ItemFOV = 18
SWEP.ItemCamPos = Vector(2.13, 50, -0.93)
SWEP.ItemLookAt = Vector(6.6, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end
