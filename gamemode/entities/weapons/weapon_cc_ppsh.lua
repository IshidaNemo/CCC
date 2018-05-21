
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "PPSH 41"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 110
SWEP.CSMuzzleFlashes	= true

SWEP.Bodygroup    = 0

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_ppsh.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_ppsh.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 70
SWEP.Primary.DefaultClip 	= 70
SWEP.Primary.Ammo			= "cc_smg"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= true
SWEP.Primary.Sound			= "weapons/stalker_mp7.wav"
SWEP.Primary.Damage			= 6
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.05
SWEP.Primary.RecoilAdd		= 2
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload"

SWEP.HoldType = "rpg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.37, 3.91, 0 );
SWEP.AimAng = Vector( 1.2, -0, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "Classic Soviet SMG - 7.62x25mm"
SWEP.ItemWeight = 4
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

SWEP.ItemBulkPrice		= 250
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
	self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end
