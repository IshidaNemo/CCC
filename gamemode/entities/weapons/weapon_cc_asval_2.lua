
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "AS VAL"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 34
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_vss.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_vss.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 20
SWEP.Primary.DefaultClip 	= 20
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_silenced.wav"
SWEP.Primary.Damage			= 24
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.09
SWEP.Primary.RecoilAdd		= 0.4
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.32, 3.12, -1.81 );
SWEP.AimAng = Vector( 1.68, 0.05, 0.4 );


SWEP.Itemize = true
SWEP.ItemDescription = "The AS VAL is a fully automatic assault rifle which has an intedgrated silencer. It is chambered in 9x39mm rounds."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end