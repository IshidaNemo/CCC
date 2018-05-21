
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base_other"

SWEP.PrintName 		= "AA12 HE Rounds"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 141
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_aa12.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_aa12.mdl"
SWEP.ViewModelFOV		= 45
SWEP.Firearm				= true
SWEP.DoorBreach				= true

SWEP.Bodygroup    = 1

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_shotgun"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage			= 80
SWEP.Primary.Force			= 10
SWEP.Primary.NumBullets		= 1
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.14
SWEP.Primary.RecoilAdd		= 0.4
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Primary.HitParticle = {"building_explosion"}
SWEP.Primary.HitSound = {"weapons/explode3.wav"}

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.3, 0.06, -15)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "A modern assault shotgun."
SWEP.ItemWeight = 5
SWEP.ItemFOV = 37
SWEP.ItemCamPos = Vector(-0.79, 50, 5.13)
SWEP.ItemLookAt = Vector(0, 0, 0)

function SWEP:CustomBulletCallback(ply, tr, dmg)
	if CLIENT then return end

	util.ScreenShake(tr.HitPos, 10, 150, 1, 256)

	local explo = ents.Create("env_explosion")
	explo:SetOwner(self.Owner)
	explo:SetPos(tr.HitPos)
	explo:SetKeyValue("iMagnitude", 60)
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