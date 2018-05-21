AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "AR3";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 8;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/weapons/c_irifle.mdl";
SWEP.WorldModel 	= "models/weapons/w_irifle.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 300;
SWEP.Primary.DefaultClip 	= 300;
SWEP.Primary.Ammo			= "cc_ar2";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= true;
SWEP.Primary.Sound			= "Weapon_AR2.Single";
SWEP.Primary.Damage			= 35;
SWEP.Primary.Force			= 1;
SWEP.Primary.Accuracy		= 0.07;
SWEP.Primary.Delay			= 0.06;
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
SWEP.ItemDescription = "The Overwatch Synthetics division Standard Issue Pulse Machine Gun.";
SWEP.ItemWeight = 1;
SWEP.ItemFOV = 43;
SWEP.ItemCamPos = Vector( -1.12, 50, -0.82 );
SWEP.ItemLookAt = Vector( 5.09, 0, 0 );

local recoil = .5

function SWEP:AddViewKick()
self.Owner:ViewPunch(Angle(-.5, math.Rand(-0.2, 0.2), .5))

   if ((game.SinglePlayer() and SERVER) or ((not game.SinglePlayer()) and CLIENT and IsFirstTimePredicted())) then

      -- reduce recoil if ironsighting
      recoil = recoil

      local eyeang = self.Owner:EyeAngles()
      eyeang.pitch = eyeang.pitch - recoil
      self.Owner:SetEyeAngles( eyeang )
   end

end
