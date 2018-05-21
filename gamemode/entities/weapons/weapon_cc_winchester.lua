AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Repeater";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 48;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_winchester.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_winchester.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 15;
SWEP.Primary.DefaultClip 	= 15;
SWEP.Primary.Ammo			= "cc_smg";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "weapons/stalker_m14.wav";
SWEP.Primary.Damage			= 34;
SWEP.Primary.Force			= 1;
SWEP.Primary.Accuracy		= 0.01;
SWEP.Primary.Delay			= 1;
SWEP.Primary.ViewPunch		= Angle( -8, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_SMG1.Reload";
SWEP.ItemBulkPrice		= 225SWEP.ItemLicense		= LICENSE_BLACK
SWEP.HoldType = "ar2";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );


SWEP.AimPos = Vector( -7.65, 3.6, 0 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "A worn down combat rifle.";
SWEP.ItemWeight = 5;
SWEP.ItemFOV = 18;
SWEP.ItemCamPos = Vector( 2.13, 50, -0.93 );
SWEP.ItemLookAt = Vector( 6.6, 0, 0 );

local recoil = 1.6

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

	self.Owner:GetViewModel():SetBodygroup( 1, 0)
	self.Weapon:SetBodygroup(1, 0)

end