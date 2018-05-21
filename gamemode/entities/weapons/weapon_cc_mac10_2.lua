
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Mac 10"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 91
SWEP.CSMuzzleFlashes	= true

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_mac10.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_mac10.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 30
SWEP.Primary.DefaultClip 	= 30
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 8
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.1
SWEP.Primary.Delay			= 0.06
SWEP.Primary.RecoilAdd		= 0.3
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 2

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -5.62, 1.69, 0 );
SWEP.AimAng = Vector( 0, -0.72, -0.83 );

SWEP.Itemize = true
SWEP.ItemDescription = "The Mac 10 is a sub-machine gun that is chambered in 9x19 Parabellum rounds."
SWEP.ItemWeight = 6
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
