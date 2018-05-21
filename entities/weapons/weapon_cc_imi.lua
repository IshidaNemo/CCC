AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "IMI Galil";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 5;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/weapons/cstrike/c_rif_galil.mdl";
SWEP.WorldModel 	= "models/weapons/w_rif_galil.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 25;
SWEP.Primary.DefaultClip 	= 25;
SWEP.Primary.Ammo			= "cc_ar2";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= true;
SWEP.Primary.Sound			= "Weapon_Galil.Single";
SWEP.Primary.Damage			= 45;
SWEP.Primary.Force			= 0.8;
SWEP.Primary.Accuracy		= 0.03;
SWEP.Primary.Delay			= 0.14;
SWEP.Primary.ViewPunch		= Angle( -2, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_Galil.Reload";


SWEP.HoldType = "ar2";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;

SWEP.HolsterPos = Vector( 13.11, -4.69, -25.91 );
SWEP.HolsterAng = Vector( 6.19, 80.14, 0 );

SWEP.AimPos = Vector( -6.4, 2.5, -3 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The rifle design borrowed heavily from the AK-47 and had a modified gas diversion system similar to the AK-47 to reduce the recoil of the rifle making it easier to fire especially in automatic mode.";
SWEP.ItemWeight = 7;
SWEP.ItemFOV = 43;
SWEP.ItemCamPos = Vector( -1.12, 50, -0.82 );
SWEP.ItemLookAt = Vector( 5.09, 0, 0 );

SWEP.ItemBulkPrice		= 35000;
SWEP.ItemLicense		= LICENSE_BLACK;

function SWEP:AddViewKick()
	
	--self.Owner:ViewPunch( Angle( -2, math.Rand( -0.5, 0.5 ), 0 ) );
	self:DoMachineGunKick( 0.5, 8, self.Primary.Delay, 5 );
	
end

