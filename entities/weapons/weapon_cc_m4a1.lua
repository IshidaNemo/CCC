	
    AddCSLuaFile();
     
    SWEP.Base                       = "weapon_cc_base";
     
    SWEP.PrintName          = "Colt M4A1";
    SWEP.Slot                       = 2;
    SWEP.SlotPos            = 4;
     
    SWEP.UseHands           = true;
    SWEP.ViewModel          = "models/weapons/cstrike/c_rif_m4a1.mdl";
    SWEP.WorldModel         = "models/weapons/w_rif_m4a1.mdl";
     
    SWEP.Firearm                            = true;
     
    SWEP.Primary.ClipSize           = 30;
    SWEP.Primary.DefaultClip        = 30;
    SWEP.Primary.Ammo               = "cc_smg";
    SWEP.Primary.InfiniteAmmo       = true;
    SWEP.Primary.Automatic          = true;
    SWEP.Primary.Sound              = "Weapon_M4A1.Single";
    SWEP.Primary.Damage             = 21;
    SWEP.Primary.Force              = 0.7;
    SWEP.Primary.Accuracy           = 0.15;
    SWEP.Primary.Delay              = 0.11;
    SWEP.Primary.ViewPunch          = Angle( -1, 0, 0 );
    SWEP.Primary.ReloadSound        = "Weapon_M4A1.Reload";
     
    SWEP.HoldType = "smg";
    SWEP.HoldTypeHolster = "passive";
     
    SWEP.Holsterable = true;
     
    SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
    SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );
     
    SWEP.AimPos = Vector( -7.8, -2, -5 );
    SWEP.AimAng = Vector( 8.5, -1.71, -4 );
     
    SWEP.Itemize = true;
    SWEP.ItemDescription = "The Colt M4 series rifle were the rifles chosen by the strongest military on the planet.";
    SWEP.ItemWeight = 7;
    SWEP.ItemFOV = 25;
    SWEP.ItemCamPos = Vector( -2.94, 50, 0.27 );
    SWEP.ItemLookAt = Vector( -1.44, 0, 0 );
     
     
    function SWEP:AddViewKick()
           
            --self.Owner:ViewPunch( Angle( -1, math.Rand( -0.5, 0.5 ), 0 ) );
            self:DoMachineGunKick( 0.5, 1, self.Primary.Delay, 2 );
           
    end

