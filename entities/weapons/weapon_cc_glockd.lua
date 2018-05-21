AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Glock-17s";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 2;
SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_glock_akimbo.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_glock_akimbo.mdl";

SWEP.Firearm				= true;
SWEP.Primary.ClipSize 		= 36;
SWEP.Primary.DefaultClip 	= 36;
SWEP.Primary.Ammo			= "cc_pistol";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_Glock.Single";
SWEP.Primary.Damage			= 15;
SWEP.Primary.Force			= .6;
SWEP.Primary.Accuracy		= 0.20;
SWEP.Primary.Delay			= 0.03;
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload"

SWEP.HoldType = "duel";
SWEP.HoldTypeHolster = "normal";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector( 0, 4, 0 );
SWEP.HolsterAng = Vector( -20, 0, 0 );


SWEP.AimPos = Vector( 2.55, 1.65, 0 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "A two Glock-17s, for twice the power.";
SWEP.ItemWeight = 3.5;
SWEP.ItemFOV = 20;
SWEP.ItemCamPos = Vector( 0, 50, 0 );
SWEP.ItemLookAt = Vector( 0, 0, 0 );

function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( 0.25, 0.5 ), math.Rand( -0.6, 0.6 ), 0 ) );
	
end

