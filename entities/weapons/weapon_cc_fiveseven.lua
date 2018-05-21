    AddCSLuaFile();
     
    SWEP.Base                       = "weapon_cc_base";
     
    SWEP.PrintName          = "FN Five-Seven";
    SWEP.Slot                       = 2;
    SWEP.SlotPos            = 2;
     
    SWEP.UseHands           = true;
    SWEP.ViewModel          = "models/weapons/cstrike/c_pist_fiveseven.mdl";
    SWEP.WorldModel         = "models/weapons/w_pist_fiveseven.mdl";
    SWEP.Firearm                            = true;
     
    SWEP.Primary.ClipSize           = 20;
    SWEP.Primary.DefaultClip        = 20;
    SWEP.Primary.Ammo                       = "cc_pistol";
    SWEP.Primary.InfiniteAmmo       = true;
    SWEP.Primary.Automatic          = false;
    SWEP.Primary.Sound                      = "Weapon_FiveSeven.Single";
    SWEP.Primary.Damage                     =9;
    SWEP.Primary.Force                      = 0.73;
    SWEP.Primary.Accuracy           = 0.13;
    SWEP.Primary.Delay                      = 0.07;
    SWEP.Primary.ReloadSound        = "Weapon_FiveSeven.Reload";
     
    SWEP.HoldType = "revolver";
    SWEP.HoldTypeHolster = "normal";
     
    SWEP.Holsterable = true;
    SWEP.HolsterUseAnim = true;
     
    SWEP.HolsterPos = Vector();
    SWEP.HolsterAng = Vector();
     
    SWEP.AimPos = Vector( -5.94, 2.91, -8 );
    SWEP.AimAng = Vector( 0, 0, 0 );
     
    SWEP.Itemize = true;
    SWEP.ItemDescription = "The FN Five Seven is a weapon used by the United States Secret Service, and for good reason.";
    SWEP.ItemWeight = 2;
    SWEP.ItemFOV = 13;
    SWEP.ItemCamPos = Vector( -3.34, 50, -5.8 );
    SWEP.ItemLookAt = Vector( 0, 0, -1.32 );
     
    function SWEP:AddViewKick()
           
            self.Owner:ViewPunch( Angle( math.Rand( 0.25, 0.5 ), math.Rand( -0.6, 0.6 ), 0 ) );
           
    end

