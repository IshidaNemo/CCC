
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "CISR Compact"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 16

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_cisr.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_cisr.mdl"
SWEP.Attachment    = 1
SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 1
SWEP.Primary.DefaultClip 	= 1
SWEP.Primary.Ammo			= "cc_ar2"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= {"NPC_Sniper.FireBullet", "NPC_Sniper.SonicBoom"}
SWEP.Primary.Damage			= 80
SWEP.Primary.Force			= 15
SWEP.Primary.Accuracy		= 0.05
SWEP.Primary.Delay			= 1
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "NPC_Sniper.Reload"
SWEP.Primary.TracerName		= "AR2Tracer"
SWEP.Primary.HitSound = {"ambient/levels/labs/electric_explosion5.wav"}
SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(13.11, -4.69, -25.91)
SWEP.HolsterAng = Vector(6.19, 80.14, 0)
SWEP.Thermal = true
SWEP.AimPos = Vector(0.35, 0, 0)
SWEP.AimAng = Vector(1.87, 1.56, 0.28)

SWEP.Itemize = true
SWEP.ItemDescription = "This carbine sniper rifle sacrifices accuracy for manueverability and a faster rate of fire."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 43
SWEP.ItemCamPos = Vector(-1.12, 50, -0.82)
SWEP.ItemLookAt = Vector(5.09, 0, 0)

SWEP.Scoped = true

if CLIENT then

	SWEP.LaserMat = Material("effects/bluelaser1")

	local tab = {}
	tab[ "$basetexture" ] = "sprites/light_glow03"
	tab[ "$additive" ] = 1
	tab[ "$translucent" ] = 1
	tab[ "$vertexcolor" ] = 1
	SWEP.SpriteMat = CreateMaterial("csniper_sprite", "UnlitGeneric", tab)
end

function SWEP:PreDrawViewModel(vm, ply, wep)
	if not self.Owner:Holstered() and self.IronMode < IRON_AIM and self.IronMode >= IRON_IDLE and self:GetNextPrimaryFire() <= CurTime() and self:Clip1() > 0 then

		if self.Owner:InVehicle() then return end
		if self.Owner:GetNoDraw() then return end
		if hook.Call("ShouldDrawLocalPlayer", GAMEMODE, self.Owner) then return end

		if vm:GetAttachment(1) then

			render.SetMaterial(self.LaserMat)
			render.DrawBeam(vm:GetAttachment(1).Pos, self.Owner:GetEyeTrace().HitPos, 1, 0, 1, Color(0, 100, 255, 255))
			render.SetMaterial(self.SpriteMat)
			render.DrawSprite(self.Owner:GetEyeTrace().HitPos, 4, 4, Color(50, 190, 255, 255))

		end

	end

	if self.Scoped then

		if self.IronMode == IRON_AIM then

			vm:SetMaterial("engine/occlusionproxy")

		else

			vm:SetMaterial("")

		end

	else

		vm:SetMaterial("")

	end
end

function SWEP:PostDrawOpaqueRenderables()
	if self.Owner == LocalPlayer() and LocalPlayer():GetViewEntity() == LocalPlayer() and not hook.Call("ShouldDrawLocalPlayer", GAMEMODE, self.Owner) then return end

	if self.Owner:InVehicle() then return end
	if self.Owner:GetNoDraw() then return end

	if not self.Owner:Holstered() and self:GetNextPrimaryFire() <= CurTime() and self:Clip1() > 0 then

		if self:GetAttachment(1) then

			render.SetMaterial(self.LaserMat)
			render.DrawBeam(self:GetAttachment(1).Pos, self.Owner:GetEyeTrace().HitPos, 1, 0, 1, Color(0, 100, 255, 255))
			render.SetMaterial(self.SpriteMat)
			render.DrawSprite(self.Owner:GetEyeTrace().HitPos, 4, 4, Color(50, 190, 255, 255))

		end

	end
end

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(-18, -25), math.Rand(-2, 2), 0))
end
