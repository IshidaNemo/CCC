
    AddCSLuaFile();
     
    SWEP.Base               = "weapon_cc_base";
     
    SWEP.PrintName          = "Steyr TMP";
    SWEP.Slot               = 2;
    SWEP.SlotPos            = 4;
     
    SWEP.UseHands           = true;
    SWEP.ViewModel          = "models/weapons/cstrike/c_smg_tmp.mdl";
    SWEP.WorldModel         = "models/weapons/w_smg_tmp.mdl";
     
    SWEP.Firearm                    = true;
     
    SWEP.Primary.ClipSize           = 30;
    SWEP.Primary.DefaultClip        = 30;
    SWEP.Primary.Ammo               = "cc_smg";
    SWEP.Primary.InfiniteAmmo       = true;
    SWEP.Primary.Automatic          = true;
    SWEP.Primary.Sound              = "Weapon_TMP.Single";
    SWEP.Primary.Damage             = 23;
    SWEP.Primary.Force              = 0.5;
    SWEP.Primary.Accuracy           = 0.03;
    SWEP.Primary.Delay              = 0.08;
    SWEP.Primary.ViewPunch          = Angle( -1, 0, 0 );
    SWEP.Primary.ReloadSound        = "Weapon_TMP.Reload";
     
    SWEP.HoldType = "smg";
    SWEP.HoldTypeHolster = "passive";
     
    SWEP.Holsterable = true;
     
    SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
    SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );
	
    SWEP.AimPos = Vector( -6.28, 3, -12 );
    SWEP.AimAng = Vector( -1, -0.4, 5 );
     
    SWEP.Itemize = true;
    SWEP.ItemDescription = "The Steyr TMP is a small, concealable weapon capable of spitting 9x19 rounds downrange fast and accurate.";
    SWEP.ItemWeight = 3;
    SWEP.ItemFOV = 25;
    SWEP.ItemCamPos = Vector( -2.94, 50, 0.27 );
    SWEP.ItemLookAt = Vector( -1.44, 0, 0 );
 