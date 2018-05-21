
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "OTS-38 Silent Revolver"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 214

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_nagant.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_nagant.mdl"
SWEP.Attachment    = 2
SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 5
SWEP.Primary.DefaultClip 	= 5
SWEP.Primary.Ammo			= "cc_357"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_silenced.wav"
SWEP.Primary.Damage			= 40
SWEP.Primary.Force			= 12
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.3
SWEP.Primary.RecoilAdd		= 0.7
SWEP.Primary.ReloadSound	= "Weapon_357.Reload"

SWEP.HoldType = "pistol"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
--SWEP.HolsterUseAnim = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-4.59, 0.7, 0)
SWEP.AimAng = Vector(0, 0, 1.36)

SWEP.Itemize = true
SWEP.ItemDescription = "A rare Russian revolver developed for the KGB - 7.62x42mm"
SWEP.ItemWeight = 2
SWEP.ItemFOV = 18
SWEP.ItemCamPos = Vector(2.13, 50, -0.93)
SWEP.ItemLookAt = Vector(6.6, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK
function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end