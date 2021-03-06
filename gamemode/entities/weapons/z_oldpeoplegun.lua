
-----------------------------------------------------
AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "An Old Person's Gun";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 998;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_nagant.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_nagant.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 7;
SWEP.Primary.DefaultClip 	= 7;
SWEP.Primary.Ammo			= "cc_357";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_357.Single";
SWEP.Primary.Damage			= 39;
SWEP.Primary.Force			= 1.5;
SWEP.Primary.Accuracy		= 0.07;
SWEP.Primary.Delay			= 0.3;
SWEP.Primary.ReloadSound	= "Weapon_357.Reload";

SWEP.HoldType = "revolver";
SWEP.HoldTypeHolster = "normal";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector( 0, 0, 0 );
SWEP.HolsterAng = Vector( -14.46, 0, 0 );

SWEP.AimPos = Vector( -4.61, 0.81, -3 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "You see faint memories of your grandfather shooting this gun. How the hell on earth?...";
SWEP.ItemWeight = 3;
SWEP.ItemFOV = 13;
SWEP.ItemCamPos = Vector( -3.34, 50, -5.8 );
SWEP.ItemLookAt = Vector( 0, 0, -1.32 );

local recoil = 4

function SWEP:AddViewKick()
self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 1))

   if ((game.SinglePlayer() and SERVER) or ((not game.SinglePlayer()) and CLIENT and IsFirstTimePredicted())) then

      -- reduce recoil if ironsighting
      recoil = recoil

      local eyeang = self.Owner:EyeAngles()
      eyeang.pitch = eyeang.pitch - recoil
      self.Owner:SetEyeAngles( eyeang )
   end

end

