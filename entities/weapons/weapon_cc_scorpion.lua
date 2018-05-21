AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Škorpion vz. 61";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 2;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_ots.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_ots.mdl";

SWEP.Firearm				= true;
SWEP.Primary.ClipSize 		= 20;
SWEP.Primary.DefaultClip 	= 20;
SWEP.Primary.Ammo			= "cc_pistol";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= true;
SWEP.Primary.Sound			= "Weapon_Glock.Single";
SWEP.Primary.Damage			= 19;
SWEP.Primary.Force			= 0.73;
SWEP.Primary.Accuracy		= 0.13;
SWEP.Primary.Delay			= 0.05;
SWEP.Primary.ReloadSound	= "Weapon_Pistol.Reload";

SWEP.HoldType = "smg";
SWEP.HoldTypeHolster = "normal";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector(-5, -5 ,-5);
SWEP.HolsterAng = Vector(-5, -5, -5);

SWEP.AimPos = Vector( -5.4, 1.61, -9 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The Škorpion vz. 61 is a Czechoslovak 7.65 mm submachine gun developed in 1959 by Miroslav Rybář (1924–1970) and produced under the official designation Samopal vzor 61.";
SWEP.ItemWeight = 2;
SWEP.ItemFOV = 13;
SWEP.ItemCamPos = Vector( -1.47, 50, -4.21 );
SWEP.ItemLookAt = Vector( -0.4, 3.11, 0 );

function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( 0.25, 0.5 ), math.Rand( -0.6, 0.6 ), 0 ) );
	
end

