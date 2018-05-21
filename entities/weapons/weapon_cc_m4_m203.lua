
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "M4a3 M203 C-Mag"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 62
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_m4.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_m4.mdl"
SWEP.ViewModelFOV		= 40
SWEP.Firearm				= true

SWEP.Attachment    = 2

SWEP.Primary.ClipSize 		= 60
SWEP.Primary.DefaultClip 	= 60
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_m4.wav"
SWEP.Primary.Damage			= 25
SWEP.Primary.Force			= 0.7
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 0.3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-6.51, 1.24, -8)
SWEP.AimAng = Vector(0, 0, 0)





SWEP.Itemize = true
SWEP.ItemDescription = "US Specops carbine - 5.56x45mm Calibre."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
