
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "M4a3 CCO"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 197
SWEP.CSMuzzleFlashes	= false
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_m4.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_m4.mdl"
SWEP.ViewModelFOV		= 40
SWEP.Firearm				= true

SWEP.Attachment    = 4

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_m4.wav"
SWEP.Primary.Damage			= 25
SWEP.Primary.Force			= 0.7
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.07
SWEP.Primary.RecoilAdd		= 0.3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-6.51, 1.5, -6)
SWEP.AimAng = Vector(-1.2, 0, 0)



SWEP.Itemize = true
SWEP.ItemDescription = "Standard issue US-military carbine - 5.56x45mm Calibre."
SWEP.ItemWeight = 7
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end
