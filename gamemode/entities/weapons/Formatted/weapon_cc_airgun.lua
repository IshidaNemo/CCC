
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Pneumatic Scrap Rifle"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 196
SWEP.CSMuzzleFlashes	= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_airgun.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_airgun.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav"
SWEP.Primary.Damage			= 8
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.25
SWEP.Primary.Delay			= 0.3
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"
SWEP.Primary.NumBullets		= 12

SWEP.HoldType = "rpg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.15, 2, -4)
SWEP.AimAng = Vector(0, 0, 0)



SWEP.Itemize = true
SWEP.ItemDescription = "Resistance Custom Weapon - Pressurised Flak Rounds"
SWEP.ItemWeight = 10
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
