
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "PP-Bizon"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 40
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_bizon.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_bizon.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 64
SWEP.Primary.DefaultClip 	= 64
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 7
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.09
SWEP.Primary.Delay			= 0.07
SWEP.Primary.RecoilAdd		= 0.2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -8.04, 2.4, -5.2 );
SWEP.AimAng = Vector( 1.15, -0.15, -0.32 );

SWEP.Itemize = true
SWEP.ItemDescription = "The PP-Bizon is a well known sub-machine gun for it's very high ammo capacity, but low damage. It is chambered in 9x18mm Makarov."
SWEP.ItemWeight = 5
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end