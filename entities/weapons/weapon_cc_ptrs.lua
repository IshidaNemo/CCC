     AddCSLuaFile();
     
    SWEP.Base                       = "weapon_cc_base";
     
    SWEP.PrintName          = "PTRS Sniper Rifle";
    SWEP.Slot                       = 2;
    SWEP.SlotPos            = 12;
     
    SWEP.UseHands           = true;
    SWEP.ViewModel          = "models/weapons/v_snip_ptrscope.mdl";
    SWEP.WorldModel         = "models/weapons/w_snip_ptrscope.mdl";
     
    SWEP.Firearm                            = true;
     
    SWEP.Primary.ClipSize           = 5;
    SWEP.Primary.DefaultClip        = 5;
    SWEP.Primary.Ammo                       = "cc_ar2";
    SWEP.Primary.InfiniteAmmo       = true;
    SWEP.Primary.Automatic          = false;
    SWEP.Primary.Sound                      = "weapons/ptrs/ptrs-shoot.wav";
    SWEP.Primary.Damage                     = 500;
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
     
    SWEP.AimPos = Vector(3.39, -3, 1.9);
    SWEP.AimAng = Vector(-4.1, -1.65, 0;
     
    SWEP.Itemize = true;
    SWEP.ItemDescription = "The PTRS Anti Tank rifle was developed and used by the Soviet Union during World War 2. It could pierce through a tank, and it could easily pierce through flesh.";
    SWEP.ItemWeight = 15;
    SWEP.ItemFOV = 60;
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

