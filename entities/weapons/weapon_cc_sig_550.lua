
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Sig SG550 C-MAG"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 115
SWEP.CSMuzzleFlashes	= false
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_sig.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_sig.mdl"
SWEP.ViewModelFOV		= 40
SWEP.Firearm				= true

SWEP.Attachment    = 3

SWEP.Primary.ClipSize 		= 60
SWEP.Primary.DefaultClip 	= 60
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mg.wav"
SWEP.Primary.Damage			= 25
SWEP.Primary.Force			= 0.7
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 0.4
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-6.4, 1.38, -9)
SWEP.AimAng = Vector(0, 0, 0)





SWEP.Itemize = true
SWEP.ItemDescription = "Standard issue military carbine - 5.56x45mm Calibre."
SWEP.ItemWeight = 10
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
