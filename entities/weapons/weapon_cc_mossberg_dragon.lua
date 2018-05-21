
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Mossberg 590 with Dragons Breath"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 135
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mossberg.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mossberg.mdl"
SWEP.ViewModelFOV		= 50
SWEP.Firearm				= true
SWEP.DoorBreach				= true

SWEP.Attatchment    = 1

SWEP.Primary.ClipSize 		= 6
SWEP.Primary.DefaultClip 	= 6
SWEP.Primary.Ammo			= "cc_shotgun"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage			= 8
SWEP.Primary.Force			= 2
SWEP.Primary.NumBullets		= 12
SWEP.Primary.NumTracer		= 0
SWEP.Primary.Accuracy		= 0.0875
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
SWEP.ItemDescription = "The Mossberg shotgun has become the Combine Overwatch Transhuman Arm's crowd-control method of choice. It functions using an internal tube magazine loaded with 6 rounds of deadly buckshot."
SWEP.ItemWeight = 10
SWEP.ItemFOV = 37
SWEP.ItemCamPos = Vector(-0.79, 50, 5.13)
SWEP.ItemLookAt = Vector(0, 0, 0)

function SWEP:CustomBulletCallback(ply, tr, dmg)

	local ed = EffectData()
		ed:SetStart(self:GetAttachment(1).Pos)
		ed:SetOrigin(tr.HitPos)
		ed:SetMagnitude(5)
		ed:SetScale(2)
	util.Effect("cc_e_dragonsbreath", ed)
	
	
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
	if IsValid(tr.Entity) and SERVER then
		
		if tr.Entity:IsPlayer() or tr.Entity:IsNPC() then
			
			tr.Entity:Ignite(1)
			
		end
		
	end
end

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