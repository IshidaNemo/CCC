
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "SVD"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 110
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_svd.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_svd.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true

SWEP.Attachment    = 0

SWEP.Primary.ClipSize 		= 10
SWEP.Primary.DefaultClip 	= 10
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_distant.wav"
SWEP.Primary.Damage			= 60
SWEP.Primary.Force			= 0.8
SWEP.Primary.Accuracy		= 0.01
SWEP.Primary.Delay			= 0.18
SWEP.Primary.RecoilAdd		= 3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "rpg"
SWEP.HoldTypeHolster = "passive"
SWEP.Scoped = true
SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-6.36, 0.35, -4)
SWEP.AimAng = Vector(0, 0, 0)





SWEP.Itemize = true
SWEP.ItemDescription = "Classic cold war era marksmen rifle - 7.62x54mm Calibre."
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
