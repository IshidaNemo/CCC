
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Mossberg 590 with Slug Rounds"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 18
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mossberg.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mossberg.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true
SWEP.DoorBreach				= true

SWEP.Attachment    = 1

SWEP.Primary.HitParticle 	= { "advisor_healthcharger_break"}
SWEP.Primary.ClipSize 		= 8
SWEP.Primary.DefaultClip 	= 8
SWEP.Primary.Ammo			= "cc_shotgun"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage			= 80
SWEP.Primary.Force			= 10
SWEP.Primary.NumBullets		= 1
SWEP.Primary.Accuracy		= 0.06
SWEP.Primary.Delay			= 0.6 -- the shotguns cannot have a delay shorter than the time it takes for their pump animation. the pump animation takes roughly 0.63 seconds.
SWEP.Primary.RecoilAdd		= 4
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload"

SWEP.HoldType = "shotgun"
SWEP.HoldTypeHolster = "passive"

SWEP.ReloadType = RELOADTYPE_SHOTGUN
SWEP.ShouldPump = true
SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-7.84, 1.65, -8)
SWEP.AimAng = Vector(0, 0, -1)

SWEP.Itemize = true
SWEP.ItemDescription = "The Mossberg shotgun has become the Combine Overwatch Transhuman Arm's crowd-control method of choice. It has been upgraded with a Holographic sight and slug rounds."
SWEP.ItemWeight = 10
SWEP.ItemFOV = 37
SWEP.ItemCamPos = Vector(-0.79, 50, 5.13)
SWEP.ItemLookAt = Vector(0, 0, 0)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end