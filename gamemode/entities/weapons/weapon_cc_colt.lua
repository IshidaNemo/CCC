AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Colt M1911";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 2;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_45.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_45.mdl";

SWEP.Firearm				= true;
SWEP.Primary.ClipSize 		= 7;
SWEP.Primary.DefaultClip 	= 7;
SWEP.Primary.Ammo			= "cc_pistol";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_Glock.Single";
SWEP.Primary.Damage			= 12;
SWEP.Primary.Force			= 0.73;
SWEP.Primary.Accuracy		= 0.13;
SWEP.Primary.Delay			= 0.05;
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload";

SWEP.HoldType = "revolver";
SWEP.HoldTypeHolster = "normal";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector(-5, -5 ,-5);
SWEP.HolsterAng = Vector(-5, -5, -5);

SWEP.AimPos = Vector( -6.3, 2.8, -4 );
SWEP.AimAng = Vector( 0.5, 0.11, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The M1911 is a single-action, semi-automatic, magazine-fed, recoil-operated pistol chambered for the .45 ACP cartridge.";
SWEP.ItemWeight = 2;
SWEP.ItemFOV = 13;
SWEP.ItemCamPos = Vector( -1.47, 50, -4.21 );
SWEP.ItemLookAt = Vector( -0.4, 3.11, 0 );

SWEP.ItemBulkPrice		= 12000;
SWEP.ItemLicense		= LICENSE_BLACK;

function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( 0.25, 0.5 ), math.Rand( -0.6, 0.6 ), 0 ) );
	
end

