AddCSLuaFile();
 
SWEP.Base                       = "weapon_cc_base";
 
SWEP.PrintName          = "Sig 552 Commando";
SWEP.Slot                       = 2;
SWEP.SlotPos            = 4;
 
SWEP.UseHands           = true;
SWEP.ViewModel          = "models/weapons/cstrike/c_rif_sg552.mdl";
SWEP.WorldModel         = "models/weapons/w_rif_sg552.mdl";
 
SWEP.Firearm                            = true;
 
SWEP.Primary.ClipSize           = 30;
SWEP.Primary.DefaultClip        = 30;
SWEP.Primary.Ammo                       = "cc_smg";
SWEP.Primary.InfiniteAmmo       = true;
SWEP.Primary.Automatic          = true;
SWEP.Primary.Sound                      = "Weapon_SG552.Single";
SWEP.Primary.Damage                     = 18;
SWEP.Primary.Force                      = 0.7;
SWEP.Primary.Accuracy           = 0.09;
SWEP.Primary.Delay                      = 0.14;
SWEP.Primary.ViewPunch          = Angle( -1, 0, 0 );
SWEP.Primary.ReloadSound        = "Weapon_SG552.Reload";
SWEP.IronSightZoom                      =1.3; --might not work
SWEP.Scoped                                     = true;
 
SWEP.HoldType = "smg";
SWEP.HoldTypeHolster = "passive";
 
SWEP.Holsterable = true;
 
SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );
 
SWEP.AimPos = Vector( -6.48, 3.10, -3.49 );
SWEP.AimAng = Vector( -2.3, -0.23, 0.01 );
 
SWEP.Itemize = true;
SWEP.ItemDescription = "The Sig 552 is the short barrel version of the Sig 550 DMR.";
SWEP.ItemWeight = 7;
SWEP.ItemFOV = 25;
SWEP.ItemCamPos = Vector( -2.94, 50, 0.27 );
SWEP.ItemLookAt = Vector( -1.44, 0, 0 );
 
 
function SWEP:AddViewKick()
       
        --self.Owner:ViewPunch( Angle( -1, math.Rand( -0.5, 0.5 ), 0 ) );
        self:DoMachineGunKick( 0.5, 1, self.Primary.Delay, 2 );
end
        