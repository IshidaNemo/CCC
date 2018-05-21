
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Jericho 941"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 164
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_jericho.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_jericho.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 12
SWEP.Primary.DefaultClip 	= 12
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_glock.Single"
SWEP.Primary.Damage			= 20
SWEP.Primary.Force			= 0.8
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.08
SWEP.Primary.RecoilAdd		= 2
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-5.32, 2.6, -5)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "The Combine variant of the 941 is chambered for .40 rounds."
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end
