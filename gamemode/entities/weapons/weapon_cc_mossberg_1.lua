
-----------------------------------------------------
AddCSLuaFile();

SWEP.Base			= "weapon_cc_ithaca37";

SWEP.PrintName 		= "Mossberg 590";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 98;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_mossberg.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_mossberg.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 6;
SWEP.Primary.DefaultClip 	= 6;
SWEP.Primary.Ammo			= "cc_shotgun";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav";
SWEP.Primary.Damage			= 3;
SWEP.Primary.Force			= 2;
SWEP.Primary.NumBullets		= 6;
SWEP.Primary.Accuracy		= 0.0875;
SWEP.Primary.Delay			= 0.6;
SWEP.Primary.RecoilAdd      = 4;
SWEP.Primary.ViewPunch		= Angle( -10, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload";

SWEP.HoldType = "shotgun";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;
SWEP.Attachment = 1

SWEP.HolsterPos = Vector( 0, 0, 0 );
SWEP.HolsterAng = Vector( -31.35, 0, 0 );

SWEP.AimPos = Vector( -7.89, 2.47, 0 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The Mossberg 590 shotgun is a mass produced pump-action shotgun.  It functions using an internal tube magazine loaded with 6 rounds of deadly buckshot.";
SWEP.ItemWeight = 8;
SWEP.ItemFOV = 37;
SWEP.ItemCamPos = Vector( -0.79, 50, 5.13 );
SWEP.ItemLookAt = Vector( 0, 0, 0 );

function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( -12, -15 ), math.Rand( -1, 1 ), 0 ) );
	
end