
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Resistance Crossbow with HE Darts"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 54

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_crossbow.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_crossbow.mdl"
SWEP.Attachment    = 2
SWEP.Firearm				= true

SWEP.Primary.HitParticle 	= {"explosion_turret_break", "building_explosion"}
SWEP.Primary.ClipSize 		= 1
SWEP.Primary.DefaultClip 	= 1
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_crossbow.Single"
SWEP.Primary.Damage			= 80 --needs toning down when other mods are introduced
SWEP.Primary.Force			= 2
SWEP.Primary.Accuracy		= 0.03
SWEP.Primary.Delay			= 15
SWEP.Primary.RecoilAdd		= 0
SWEP.Primary.ReloadSound	= "Weapon_crossbow.Reload"

SWEP.HoldType = "rpg"
SWEP.HoldTypeHolster = "passive"
SWEP.Primary.HitSound = {"weapons/explode4.wav"}
SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-8.14, 2, -7)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Scoped = false

SWEP.Itemize = true
SWEP.ItemDescription = "An upgraded Crossbow with a Kobra sight and High-Explosive darts."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:CustomBulletCallback(ply, tr, dmg)
	if CLIENT then return end

	util.ScreenShake(tr.HitPos, 10, 150, 1, 256)

	local explo = ents.Create("env_explosion")
	explo:SetOwner(self.Owner)
	explo:SetPos(tr.HitPos)
	explo:SetKeyValue("iMagnitude", 40)
	explo:SetKeyValue("iRadiusOverride", 256)
	explo:SetKeyValue("spawnflags", 844) -- no sound or particles
	explo:Spawn()
	explo:Activate()
	explo:Fire("Explode")
end

function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end