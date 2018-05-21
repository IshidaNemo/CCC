
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Old Person's Machine Gun"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 155
SWEP.CSMuzzleFlashes	= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_stg44.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_stg44.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_tar.wav"
SWEP.Primary.Damage			= 22
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.1
SWEP.Primary.RecoilAdd		= 0.3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.3, 2.91, -10 )
SWEP.AimAng = Vector(0, 0, 0)


SWEP.Itemize = true
SWEP.ItemDescription = "That is grandpa's machine gun! But how do you know this?.."
SWEP.ItemWeight = 8
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end

local recoil = .91

function SWEP:AddViewKick()
self.Owner:ViewPunch(Angle(-.5, math.Rand(-0.2, 0.2), .5))

   if ((game.SinglePlayer() and SERVER) or ((not game.SinglePlayer()) and CLIENT and IsFirstTimePredicted())) then

      -- reduce recoil if ironsighting
      recoil = recoil

      local eyeang = self.Owner:EyeAngles()
      eyeang.pitch = eyeang.pitch - recoil
      self.Owner:SetEyeAngles( eyeang )
   end

end