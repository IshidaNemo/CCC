AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "M14 Silenced";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 28;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_m14.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_m14.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 20;
SWEP.Primary.DefaultClip 	= 20;
SWEP.Primary.Ammo			= "cc_smg";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "weapons/stalker_silenced3.wav";
SWEP.Primary.Damage			= 32;
SWEP.Primary.Force			= 1;
SWEP.Primary.Accuracy		= 0.05;
SWEP.Primary.Delay			= .1;
SWEP.Primary.ViewPunch		= Angle( -8, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload";

SWEP.HoldType = "ar2";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;
SWEP.Attachment = 3
SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );

SWEP.AimPos = Vector( -6.19, 1.44, -4.36 );SWEP.AimAng = Vector( -0.58, 0.66, -1.17 );

SWEP.Itemize = true;
SWEP.ItemDescription = "A worn down combat rifle.";
SWEP.ItemWeight = 5;
SWEP.ItemFOV = 18;
SWEP.ItemCamPos = Vector( 2.13, 50, -0.93 );
SWEP.ItemLookAt = Vector( 6.6, 0, 0 );


local recoil = .7

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

function SWEP:Deploy()

	self.Owner:GetViewModel():SetBodygroup( 1, 3)
	self.Weapon:SetBodygroup(1, 3)

end