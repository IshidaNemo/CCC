AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Benelli M3 Super 90";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 6;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/weapons/cstrike/c_shot_m3super90.mdl";
SWEP.WorldModel 	= "models/weapons/w_shot_m3super90.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 6;
SWEP.Primary.DefaultClip 	= 6;
SWEP.Primary.Ammo			= "cc_shotgun";
SWEP.Primary.InfiniteAmmo	= true;
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_M3.Single";
SWEP.Primary.Damage			= 25;
SWEP.Primary.Force			= 2;
SWEP.Primary.NumBullets		= 8;
SWEP.Primary.Accuracy		= 0.09;
SWEP.Primary.Delay			= 0.5;
SWEP.Primary.ViewPunch		= Angle( -10, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_M3.Reload";

SWEP.HoldType = "shotgun";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;
SWEP.HolsterUseAnim = true;

SWEP.HolsterPos = Vector( 10, 4, 0 );
SWEP.HolsterAng = Vector( -20, 30, 0 );

SWEP.AimPos = Vector( -7.6, 3.6, -6.76 );
SWEP.AimAng = Vector( 0, 0, 0 );

SWEP.Itemize = true;
SWEP.ItemDescription = "The M3 Super 90 is a powerful wide-spread shotgun.";
SWEP.ItemWeight = 10;
SWEP.ItemFOV = 37;
SWEP.ItemCamPos = Vector( -0.79, 50, 5.13 );
SWEP.ItemLookAt = Vector( 0, 0, 0 );

SWEP.ItemBulkPrice		= 0;
SWEP.ItemLicense		= LICENSE_BLACK;

function SWEP:Reload()
	
	if( self.NeedPump ) then return false end
	
	if( !self.Owner or !self.Owner:IsValid() ) then return false end
	
	if( self.InReload ) then return false end
	if( self.Owner:Holstered() ) then return false end
	
	local j = self.Primary.ClipSize - self:Clip1();
	
	if( j <= 0 ) then return false end
	
	self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START );
	-- animation event
	
	self.Owner:SetAnimation( PLAYER_RELOAD );
	
	self.Weapon:SetBodygroup( 1, 0 );
	
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() );
	self.InReload = true;
	
	return true;
	
end

function SWEP:FillClip()
	
	if( !self.Owner or !self.Owner:IsValid() ) then return end
	
	if( self:Clip1() < self.Primary.ClipSize ) then
		
		self:SetClip1( self:Clip1() + 1 );
		
	end
	
end

function SWEP:ReloadProgress()
	
	if( !self.Owner or !self.Owner:IsValid() ) then return end
	
	if( self:Clip1() >= self.Primary.ClipSize ) then return end
	
	self:FillClip();
	
	self.Weapon:EmitSound( "Weapon_M3.Reload" );
	self.Weapon:SendWeaponAnim( ACT_VM_RELOAD );

	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() );
	
end

function SWEP:FinishReload()
	
	self.Weapon:SetBodygroup( 1, 1 );
	
	if( !self.Owner or !self.Owner:IsValid() ) then return end
	
	self.InReload = false;
	
	self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH );
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() );
	self:Idle();
	
end

function SWEP:Pump()
	
	if( !self.Owner or !self.Owner:IsValid() ) then return end
	
	self.NeedPump = false;
	
	self.Weapon:EmitSound( "Weapon_M3.Special1" );
	self.Weapon:SendWeaponAnim( ACT_SHOTGUN_PUMP );
	
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() );
	self:Idle();
	
end

function SWEP:ThinkChild()
	
	if( !self.Owner or !self.Owner:IsValid() ) then return end
	
	if( self.InReload ) then
		
		if( self.Owner:Holstered() ) then
			
			self.Weapon:SetBodygroup( 1, 1 );
			self.InReload = false;
			return;
			
		end
		
		if( self:GetNextPrimaryFire() <= CurTime() ) then
			
			if( self:Clip1() < self.Primary.ClipSize ) then
				
				self:ReloadProgress();
				
			else
				
				self:FinishReload();
				
			end
			
		end
		
	else
		
		self:SetBodygroup( 1, 1 );
		
	end
	
	if( self.NeedPump and self:GetNextPrimaryFire() <= CurTime() ) then
		
		self:Pump();
		return;
		
	end
	
	if( !self.InReload ) then
		
		--self:Idle();
		
	end
	
end

function SWEP:PrimaryUnholstered()
	
	if( self:CanPrimaryAttack( true ) ) then
		
		self.Weapon:EmitSound( self.Primary.Sound );
		
		self:ShootEffects();
		self:SetNextPrimaryFire( CurTime() + self.Weapon:SequenceDuration() );
		
		if( IsFirstTimePredicted() ) then
			
			self:ShootBullet( self.Primary.Damage, self.Primary.Force, self.Primary.NumBullets, self.Primary.Accuracy * self:BulletAccuracyModifier( 0.4 ) );
			
		end
		
		self:TakePrimaryAmmo( 1 );
		
		if( self.AddViewKick ) then
			
			self:AddViewKick();
			
		else
			
			if( type( self.Primary.ViewPunch ) == "Angle" ) then
				
				self.Owner:ViewPunch( Angle( self.Primary.ViewPunch.p, math.random( -self.Primary.ViewPunch.y, self.Primary.ViewPunch.y ), math.random( -self.Primary.ViewPunch.r, self.Primary.ViewPunch.r ) ) );
				
			else
				
				self:DoMachineGunKick( self.Primary.ViewPunch.x, self.Primary.ViewPunch.y, self.Primary.Delay, self.Primary.ViewPunch.z );
				
			end
			
		end
		
		self.NeedPump = true;
		
	end
	
end

function SWEP:AddViewKick()
	
	self.Owner:ViewPunch( Angle( math.Rand( -12, -15 ), math.Rand( -1, 1 ), 0 ) );
	
end
