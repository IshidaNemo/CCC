AddCSLuaFile();
 
SWEP.Base                       = "weapon_cc_base";
 
SWEP.PrintName          = "MP5-A5";
SWEP.Slot                       = 2;
SWEP.SlotPos            = 4;
 
SWEP.UseHands           = true;
SWEP.ViewModel          = "models/weapons/cstrike/c_smg_mp5.mdl";
SWEP.WorldModel         = "models/weapons/w_smg_mp5.mdl";
 
SWEP.Firearm                            = true;
 
SWEP.Primary.ClipSize           = 30;
SWEP.Primary.DefaultClip        = 30;
SWEP.Primary.Ammo                       = "cc_smg";
SWEP.Primary.InfiniteAmmo       = true;
SWEP.Primary.Automatic          = true;
SWEP.Primary.Sound                      = "Weapon_MP5Navy.Single";
SWEP.Primary.Damage                     = 18;
SWEP.Primary.Force                      = 0.73;
SWEP.Primary.Accuracy                   = 0.1;
SWEP.Primary.Delay                      = 0.13;
SWEP.Primary.ViewPunch          = Angle( -1, 0, 0 );
SWEP.Primary.ReloadSound        = "Weapon_MP5Navy.Reload";
 
SWEP.HoldType = "smg";
SWEP.HoldTypeHolster = "passive";
 
SWEP.Holsterable = true;
 
SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );
 
SWEP.AimPos = Vector( -5.34, 2, 0 );
SWEP.AimAng = Vector( 1, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The H&K MP5 is a world renowned weapon legendary for it's reliability and accuracy.";
SWEP.ItemWeight = 6;
SWEP.ItemFOV = 25;
SWEP.ItemCamPos = Vector( -2.94, 50, 0.27 );
SWEP.ItemLookAt = Vector( -1.44, 0, 0 );
 
 
function SWEP:AddViewKick()
       
        --self.Owner:ViewPunch( Angle( -1, math.Rand( -0.5, 0.5 ), 0 ) );
        self:DoMachineGunKick( 0.5, 1, self.Primary.Delay, 2 );
end
        