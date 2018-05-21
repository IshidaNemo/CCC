AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "1911"
SWEP.Slot 			= 1
SWEP.SlotPos 		= 2
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_45.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_45.mdl"

SWEP.Firearm				= true

SWEP.Primary.ClipSize 		= 8
SWEP.Primary.DefaultClip 	= 8
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_deagle.Single"
SWEP.Primary.Damage			= 20
SWEP.Primary.Force			= 2
SWEP.Primary.Accuracy		= 0.08
SWEP.Primary.Delay			= 0.05
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.36, 2.93, -7.98 );
SWEP.AimAng = Vector( 0.13, 0.11, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "Classic compact pistol."
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

function SWEP:AddViewKick()

	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))

end

function SWEP:Deploy()

	self.Owner:GetViewModel():SetBodygroup( 1, 0)
	self.Weapon:SetBodygroup(1, 0)

end