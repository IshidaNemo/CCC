     AddCSLuaFile();
     
    SWEP.Base                       = "weapon_cc_base";
     
    SWEP.PrintName          = "Steyr Scout Sniper";
    SWEP.Slot                       = 2;
    SWEP.SlotPos            = 12;
     
    SWEP.UseHands           = true;
    SWEP.ViewModel          = "models/weapons/cstrike/c_snip_scout.mdl";
    SWEP.WorldModel         = "models/weapons/w_snip_scout.mdl";
     
    SWEP.Firearm                            = true;
     
    SWEP.Primary.ClipSize           = 10;
    SWEP.Primary.DefaultClip        = 10;
    SWEP.Primary.Ammo                       = "cc_ar2";
    SWEP.Primary.InfiniteAmmo       = true;
    SWEP.Primary.Automatic          = false;
    SWEP.Primary.Sound                      = "Weapon_SCOUT.Single";
    SWEP.Primary.Damage                     = 90;
    SWEP.Primary.Force                      = 7;
    SWEP.Primary.Accuracy           = 0;
    SWEP.Primary.Delay                      = .8;
    SWEP.Primary.ViewPunch          = Angle( -20, 0, 0 );
    SWEP.Primary.ReloadSound        = "weapon_SCOUT.Reload";
     
    SWEP.HoldType = "ar2";
    SWEP.HoldTypeHolster = "passive";
     
    SWEP.Holsterable = true;
     
    SWEP.HolsterPos = Vector( 13.11, -4.69, -25.91 );
    SWEP.HolsterAng = Vector( 6.19, 80.14, 0 );
     
    SWEP.AimPos = Vector( -5.87, 1.42, -13.96 );
    SWEP.AimAng = Vector( 0, 0, 0 );
     
    SWEP.Itemize = true;
    SWEP.ItemDescription = "The slightly weaker of the resistance long range weapons, the Steyr Scout.";
    SWEP.ItemWeight = 7;
    SWEP.ItemFOV = 48;
    SWEP.ItemCamPos = Vector( -1.12, 50, -0.82 );
    SWEP.ItemLookAt = Vector( 5.09, 0, 0 );
     
    SWEP.Scoped = true;
     
     
    function SWEP:PreDrawViewModel( vm, ply, wep )
           
            if( !self.Owner:Holstered() and self.IronMode < IRON_AIM and self.IronMode >= IRON_IDLE and self:GetNextPrimaryFire() <= CurTime() and self:Clip1() > 0 ) then
                   
                    if( self.Owner:InVehicle() ) then return end
                    if( self.Owner:GetNoDraw() ) then return end
                    if( hook.Call( "ShouldDrawLocalPlayer", GAMEMODE, self.Owner ) ) then return end
     
            end
           
            if( self.Scoped ) then
                   
                    if( self.IronMode == IRON_AIM ) then
                           
                            vm:SetMaterial( "engine/occlusionproxy" );
                           
                    else
                           
                            vm:SetMaterial( "" );
                           
                    end
                   
            else
                   
                    vm:SetMaterial( "" );
                   
            end
           
    end
     
    function SWEP:PostDrawOpaqueRenderables()
           
            if( self.Owner == LocalPlayer() and LocalPlayer():GetViewEntity() == LocalPlayer() and !hook.Call( "ShouldDrawLocalPlayer", GAMEMODE, self.Owner ) ) then return end
           
            if( self.Owner:InVehicle() ) then return end
            if( self.Owner:GetNoDraw() ) then return end
           
           
    end
     
    function SWEP:AddViewKick()
           
            self.Owner:ViewPunch( Angle( math.Rand( -18, -25 ), math.Rand( -2, 2 ), 0 ) );
           
    end

