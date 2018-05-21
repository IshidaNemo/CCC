
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Blunderbuss"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 237
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_blunderbuss.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_blunderbuss.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true
SWEP.DoorBreach				= true

SWEP.Attachment    = 0

SWEP.Primary.ClipSize 		= 1
SWEP.Primary.DefaultClip 	= 1
SWEP.Primary.Ammo			= "cc_shotgun"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_heavy.wav"
SWEP.Primary.Damage			= 20
SWEP.Primary.Force			= 20
SWEP.Primary.NumBullets		= 12
SWEP.Primary.Accuracy		= 0.14
SWEP.Primary.Delay			= 0.14
SWEP.Primary.RecoilAdd		= 12
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload"

SWEP.HoldType = "shotgun"
SWEP.HoldTypeHolster = "passive"

SWEP.Primary.HitParticle 	= {"advisor_healthcharger_break" }
--SWEP.Primary.HitSound = {"weapons/explode3.wav"}

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-5.9, 4, 0)
SWEP.AimAng = Vector(1, 0, 0)
SWEP.Itemize = true
SWEP.ItemDescription = "A weapon for dirty old bastards (and peglegs)"
SWEP.ItemWeight = 5
SWEP.ItemFOV = 37
SWEP.ItemCamPos = Vector(-0.79, 50, 5.13)
SWEP.ItemLookAt = Vector(0, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end


