
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Resistance Crossbow with Antlion-acid Darts"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 54

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_crossbow.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_crossbow.mdl"
SWEP.Attachment    = 4
SWEP.Firearm				= true

SWEP.Primary.HitParticle 	= {"antlion_gib_01", "antlion_spit"}
SWEP.Primary.ClipSize 		= 1
SWEP.Primary.DefaultClip 	= 1
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_crossbow.Single"
SWEP.Primary.Damage			= 100
SWEP.Primary.Force			= 2
SWEP.Primary.Accuracy		= 0.01
SWEP.Primary.Delay			= 15
SWEP.Primary.RecoilAdd		= 0
SWEP.Primary.ReloadSound	= "Weapon_crossbow.Reload"

SWEP.Primary.HitSound = {"npc/antlion_grub/agrub_squish2.wav"}
SWEP.HoldType = "rpg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-8, 2, -6)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Scoped = true

SWEP.Itemize = true
SWEP.ItemDescription = "An upgraded Crossbow using specialist Acid darts."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end