AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "OICW";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 5;

SWEP.UseHands		= false;
SWEP.ViewModel 		= "models/weapons/v_0icw.mdl";
SWEP.WorldModel 	= "models/weapons/w_oicw.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 35;
SWEP.Primary.DefaultClip 	= 35;
SWEP.Primary.Ammo			= "cc_smg";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= true;
SWEP.Primary.Sound      = "Weapon_FAMAS.Single";
SWEP.Primary.Damage			= 12;
SWEP.Primary.Force			= 0.90;
SWEP.Primary.Accuracy		= 0.07;
SWEP.Primary.Delay			= 0.1;
SWEP.Primary.ViewPunch		= Angle( -2, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_AR2.Reload";
SWEP.Primary.TracerName		= "AR2Tracer";

SWEP.HoldType = "ar2";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;

SWEP.HolsterPos = Vector( 13.11, -4.69, -25.91 );
SWEP.HolsterAng = Vector( 6.19, 80.14, 0 );

SWEP.AimPos = Vector( -5.8, 1.29, -5.18 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The XM-29 OICW was an assault rifle concept that sought to combine a standard 5.56mm assault rifle with a 20mm cannon and complicated computerized sighting system. It was the weapon of choice for the Overwatch units, before being replaced by the AR2. These weapons are VERY rare now. (This gun is kept together by an electronic sealent. As soon as the gun leaves the body of the person it was made for, the Biosignal is then lost to the gun, deactivating the sealent, causing the gun to fall to pieces.)";

SWEP.ItemWeight = 6;
SWEP.ItemFOV = 43;
SWEP.ItemCamPos = Vector( -1.12, 50, -0.82 );
SWEP.ItemLookAt = Vector( 5.09, 0, 0 );

SWEP.Scoped = true;

function SWEP:AddViewKick()
	
	--self.Owner:ViewPunch( Angle( -2, math.Rand( -0.5, 0.5 ), 0 ) );
	self:DoMachineGunKick( 0.5, 8, self.Primary.Delay, 5 );

end