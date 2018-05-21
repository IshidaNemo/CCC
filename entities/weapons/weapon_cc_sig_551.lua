
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Sig SG551 DMR"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 116
SWEP.CSMuzzleFlashes	= false
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_sig.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_sig.mdl"
SWEP.ViewModelFOV		= 40
SWEP.Firearm				= true

SWEP.Attachment    = 2

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_m14.wav"
SWEP.Primary.Damage			= 40
SWEP.Primary.Force			= 0.7
SWEP.Primary.Accuracy		= 0.05
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 0.6
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-7.36, 0.86, -13)
SWEP.AimAng = Vector(0.11, -0.15, 0)

SWEP.Scoped = true


SWEP.Itemize = true
SWEP.ItemDescription = "Standard issue military carbine - 7.62x51mm Calibre."
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
