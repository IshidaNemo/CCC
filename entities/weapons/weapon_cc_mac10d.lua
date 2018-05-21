AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Dual Mac 10s";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 4;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_mac10_akimbo.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_mac10_akimbo.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 60;
SWEP.Primary.DefaultClip 	= 60;
SWEP.Primary.Ammo			= "cc_smg";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= true;
SWEP.Primary.Sound			= "Weapon_MAC10.Single";
SWEP.Primary.Damage			= 10;
SWEP.Primary.Force			= 0.73;
SWEP.Primary.Accuracy		= 0.15;
SWEP.Primary.Delay			= 0.06;
SWEP.Primary.ViewPunch		= Angle( -1, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload";

SWEP.HoldType = "duel";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;

SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );

SWEP.AimPos = Vector( -9.82, 2.68, 0 );
SWEP.AimAng = Vector( 1.61, -4.82, -8.03 );
//SWEP.AimPos = Vector( -6.48, 3.10, -3.49 );
//SWEP.AimAng = Vector( 0, 0, -10 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The Ingram Mac M10 is the resistance alternative to the CCA's MP-7.";
SWEP.ItemWeight = 6;
SWEP.ItemFOV = 25;
SWEP.ItemCamPos = Vector( -2.94, 50, 0.27 );
SWEP.ItemLookAt = Vector( -1.44, 0, 0 );

SWEP.ItemBulkPrice		= 18000;
SWEP.ItemLicense		= LICENSE_BLACK;

function SWEP:AddViewKick()
	
	--self.Owner:ViewPunch( Angle( -1, math.Rand( -0.5, 0.5 ), 0 ) );
	self:DoMachineGunKick( 0.5, 1, self.Primary.Delay, 2 );
	
end
