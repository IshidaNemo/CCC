AddCSLuaFile()SWEP.Base			= "weapon_cc_base"SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 16
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.1
SWEP.Primary.Delay			= 0.065
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "ar2"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-5.34, 1.21, -8)
SWEP.AimAng = Vector(0, 0, 0)





SWEP.Itemize = true
SWEP.ItemDescription = "The Uzi is a compact SMG favoured by resistance members - .45Cal"
SWEP.ItemWeight = 3
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)
function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
