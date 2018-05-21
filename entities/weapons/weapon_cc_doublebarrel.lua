AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Double Barrel";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 14;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/tnb/weapons/c_sawnoff.mdl";
SWEP.WorldModel 	= "models/tnb/weapons/w_sawnoff.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 2;
SWEP.Primary.DefaultClip 	= 2;
SWEP.Primary.Ammo			= "cc_shotgun";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= true;
SWEP.Primary.Sound			= "weapons/stalker_shotgun.wav";
SWEP.Primary.Damage			= 3;
SWEP.Primary.Force			= 2;
SWEP.Primary.NumBullets		= 6;
SWEP.Primary.Accuracy		= 0.4;
SWEP.Primary.Delay			= 0.18;
SWEP.Primary.ViewPunch		= Angle( -10, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_Shotgun.Reload";

SWEP.HoldType = "shotgun";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector();
SWEP.HolsterAng = Vector();

SWEP.AimPos = Vector( -6, 2.8, -4.76 );
SWEP.AimAng = Vector( 3, -0.2, -.8 );

SWEP.Itemize = true;
SWEP.ItemDescription = "Did someone say hillbilly?";
SWEP.ItemWeight = 6;
SWEP.ItemFOV = 37;
SWEP.ItemCamPos = Vector( -0.79, 50, 5.13 );
SWEP.ItemLookAt = Vector( 0, 0, 0 );
SWEP.ItemBulkPrice		= 500SWEP.ItemLicense		= LICENSE_BLACK

local recoil = 2

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

function SWEP:ShootBullet( damage, force, n, aimcone )
	
	local bullet 	= { };
	bullet.Num 		= n or 1;
	bullet.Src 		= self.Owner:GetShootPos();
	bullet.Dir 		= self.Owner:GetAimVector();
	bullet.Spread 	= Vector( aimcone, aimcone, 0 );
	bullet.Tracer	= 1;
	bullet.Force	= force;
	bullet.Damage	= damage;
	bullet.AmmoType = "Pistol";
	
	bullet.Callback = function( ply, tr, dmg )
		
		if( CLIENT ) then return end
		
		if( tr.Entity and tr.Entity:IsValid() ) then
			
			if( tr.Entity:GetPos():Distance( ply:GetShootPos() ) > 150 ) then return end
			
			if( tr.Entity:GetClass() == "prop_door_rotating" ) then
				
				GAMEMODE:ExplodeDoor( tr.Entity, tr.Normal );
				
			end
			
		end
		
	end
	
	self.Owner:FireBullets( bullet );
	
end

function SWEP:Deploy()

	self.Owner:GetViewModel():SetBodygroup( 1, 0)
	self.Weapon:SetBodygroup(1, 0)

end