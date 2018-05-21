
-----------------------------------------------------
AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "AR-Pistol";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 123;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_arp.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_arp.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 20;
SWEP.Primary.DefaultClip 	= 20;
SWEP.Primary.Ammo			= "cc_ar2";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_AR2.Single";
SWEP.Primary.Damage			= 5;
SWEP.Primary.Force			= 0.73;
SWEP.Primary.Accuracy		= 0.07;
SWEP.Primary.Delay			= 0.08;
SWEP.Primary.ReloadSound	= "Weapon_AR2.Reload";
SWEP.Primary.TracerName		= "AR2Tracer";

SWEP.HoldType = "revolver";
SWEP.HoldTypeHolster = "normal";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector( 0, 0, 0 );
SWEP.HolsterAng = Vector( -20.89, 0, 0 );
SWEP.AimPos = Vector( -5.36, 1.71, -13 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "[Admin Spawned: Cannot be dropped/mugged for.] The retired Combine AR-Pisol. It was de-serviced because of it's compact size, if had a tendency to explode. ";
SWEP.ItemWeight = 3;
SWEP.ItemFOV = 13;
SWEP.ItemCamPos = Vector( -3.34, 50, -5.8 );
SWEP.ItemLookAt = Vector( 0, 0, -1.32 );


function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( 0.25, 0.5 ), math.Rand( -0.6, 0.6 ), 0 ) );
	
end

