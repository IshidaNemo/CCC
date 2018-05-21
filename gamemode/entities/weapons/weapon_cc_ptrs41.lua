
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "PTRS-41"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 112
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_ptrs41.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_ptrs41.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 5
SWEP.Primary.DefaultClip 	= 5
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_AWP.Single"
SWEP.Primary.Damage			= 45
SWEP.Primary.Force			= 0.8
SWEP.Primary.Accuracy		= 0.01
SWEP.Primary.Delay			= 0.3
SWEP.Primary.RecoilAdd		= 2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"
SWEP.Scoped = false
SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)
SWEP.AimPos = Vector(-6.19, 2.8, -6)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.ItemBulkPrice		= 950

SWEP.ItemLicense		= LICENSE_BLACK
SWEP.Itemize = true
SWEP.ItemDescription = "Russian Millitary support weapon - 14.5mm"
SWEP.ItemWeight = 1
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)


function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end
