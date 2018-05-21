
-----------------------------------------------------
AddCSLuaFile();

SWEP.Base			= "weapon_cc_shotgun";

SWEP.PrintName 		= "SPAS-12";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 123;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_spas12.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_spas12.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 6;
SWEP.Primary.DefaultClip 	= 6;
SWEP.Primary.Ammo			= "cc_shotgun";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_Shotgun.Single";
SWEP.Primary.Damage			= 10;
SWEP.Primary.Force			= 2;
SWEP.Primary.NumBullets		= 7;
SWEP.Primary.Accuracy		= 0.19;
SWEP.Primary.Delay			= 0.14;
SWEP.Primary.ViewPunch		= Angle( -10, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload";

SWEP.HoldType = "shotgun";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;
SWEP.Attachment = 0

SWEP.HolsterPos = Vector( 0, 0, 0 );
SWEP.HolsterAng = Vector( 0, 0, 0 );

SWEP.AimPos = Vector( -7.93, 3.08, -3.15 );
SWEP.AimAng = Vector( 0.46, -0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The SPAS-12 shotgun has become the Combine Overwatch Transhuman Arm's crowd-control method of choice. It functions using an internal tube magazine loaded with 6 rounds of deadly buckshot.";
SWEP.ItemWeight = 10;
SWEP.ItemFOV = 37;
SWEP.ItemCamPos = Vector( -0.79, 50, 5.13 );
SWEP.ItemLookAt = Vector( 0, 0, 0 );

SWEP.ItemBulkPrice		= 0;
SWEP.ItemLicense		= LICENSE_BLACK;

function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( -12, -15 ), math.Rand( -1, 1 ), 0 ) );
	
end
