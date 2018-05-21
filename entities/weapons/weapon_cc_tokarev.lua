
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base			= "weapon_cc_base"

SWEP.PrintName 		= "Tokarev TT33"
SWEP.Slot 			= 2
SWEP.SlotPos 		= 130
SWEP.CSMuzzleFlashes	= true
SWEP.UseHands		= true
SWEP.ViewModel 		= "models/tnb/weapons/c_tokarev.mdl"
SWEP.WorldModel 	= "models/tnb/weapons/w_tokarev.mdl"

SWEP.Firearm				= true
SWEP.Bodygroup    = 0
SWEP.Primary.ClipSize 		= 7
SWEP.Primary.DefaultClip 	= 7
SWEP.Primary.Ammo			= "cc_pistol"
SWEP.Primary.InfiniteAmmo	= true
SWEP.Primary.Automatic		= false
SWEP.Primary.Sound			= "Weapon_Pistol.Single"
SWEP.Primary.Damage			= 14
SWEP.Primary.Force			= 0.73
SWEP.Primary.Accuracy		= 0.07
SWEP.Primary.Delay			= 0.05
SWEP.Primary.RecoilAdd		= 1
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "revolver"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = false

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -6.59, 2.58, -6.98 );
SWEP.AimAng = Vector( 0, 0.64, 0 );

SWEP.Itemize = true
SWEP.ItemDescription = "Classic compact pistol - 7.62x25mm"
SWEP.ItemWeight = 2
SWEP.ItemFOV = 13
SWEP.ItemCamPos = Vector(-3.34, 50, -5.8)
SWEP.ItemLookAt = Vector(0, 0, -1.32)

SWEP.ItemBulkPrice		= 0
SWEP.ItemLicense		= LICENSE_BLACK

function SWEP:AddViewKick()
	self.Owner:ViewPunch(Angle(math.Rand(0.25, 0.5), math.Rand(-0.6, 0.6), 0))
end

function SWEP:Bodygroup()
self.Owner:GetViewModel():SetBodygroup(1, 0)
self:SetBodygroup(1, 0)
end
