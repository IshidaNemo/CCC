
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Dual MP7 Specops"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 39
SWEP.CSMuzzleFlashes	= true
SWEP.Attachment    = 2
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mp7_akimbo.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mp7_akimbo.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 60
SWEP.Primary.DefaultClip 	= 60
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_silenced4.wav"
SWEP.Primary.Damage			= 18
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.04
SWEP.Primary.Delay			= 0.04
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "duel"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(0, 2, -8)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Itemize = true
SWEP.ItemDescription = "The H&K MP7 has become the firearm of choice for use by the Combine Civil Authority."
SWEP.ItemWeight = 1
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)
function SWEP:AddViewKick()

	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))

	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)

end
