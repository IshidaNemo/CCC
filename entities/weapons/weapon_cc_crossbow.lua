
-----------------------------------------------------

-----------------------------------------------------
AddCSLuaFile();

SWEP.Base			= "weapon_cc_base";

SWEP.PrintName 		= "Crossbow";
SWEP.Slot 			= 2;
SWEP.SlotPos 		= 31;

SWEP.UseHands		= true;
SWEP.ViewModel 		= "models/weapons/v_crossbow.mdl";
SWEP.WorldModel 	= "models/weapons/w_crossbow.mdl";

SWEP.Firearm				= true;

SWEP.Primary.ClipSize 		= 1;
SWEP.Primary.DefaultClip 	= 0;
SWEP.Primary.InfiniteAmmo	= true;
-- SWEP.Primary.Ammo			= "cc_crossbow";
SWEP.Primary.Automatic		= false;
SWEP.Primary.Sound			= "Weapon_CROSSBOW.Single";
SWEP.Primary.Damage			= 150;
SWEP.Primary.Force			= 0.73;
SWEP.Primary.Accuracy		= 0.01;
SWEP.Primary.Delay			= 0.015;
SWEP.Primary.ViewPunch		= Angle( -1, 0, 0 );
SWEP.Primary.ReloadSound	= "Weapon_CROSSBOW.Reload";

SWEP.HoldType = "crossbow";
SWEP.HoldTypeHolster = "passive";

SWEP.Holsterable = true;

SWEP.HolsterPos = Vector( 8.04, -2.67, -9.82 );
SWEP.HolsterAng = Vector( 4.83, 46.61, 4.83 );

SWEP.AimPos = Vector( -4.2102, -4.8433, 0.3925 );
SWEP.AimAng = Vector( 0, 0, -12.6692 );

SWEP.Itemize = true;
SWEP.ItemDescription = "Crossbow.";
SWEP.ItemWeight = 5;
SWEP.ItemFOV = 47;
SWEP.ItemCamPos = Vector( 50, 40.18, 50 );
SWEP.ItemLookAt = Vector( 30.54, -4.82, -4.82 );

SWEP.ItemBulkPrice		= 45000;
SWEP.ItemLicense		= LICENSE_BLACK;

SWEP.Scoped = true;

function SWEP:DeployChild()

	if( !self.Owner or !self.Owner:IsValid() ) then return end

	if( self.Owner:CrossowBoltAmmo() > 0 ) then

		self:SetClip1( self.Owner:CrossowBoltAmmo() );

	end

end

function SWEP:ThinkChild()

	if( !self.Owner or !self.Owner:IsValid() ) then return end

	local ammo = self:Clip1()
	if( SERVER ) then

		self.Owner:SetCrossowBoltAmmo( ammo );
		self.Owner:UpdateCharacterField( "CrossowBoltAmmo", ammo );

	end

end

function SWEP:AddViewKick()

	self.Owner:ViewPunch( Angle( math.Rand( -18, -25 ), math.Rand( -2, 2 ), 0 ) );
	
end

function SWEP:Reload()
	
	if( self:Clip1() == 0 and self.Owner:HasItem( "crossbowbolt" ) ) then

		self:SendWeaponAnimShared( ACT_VM_RELOAD );
		self:PlaySound( self.Primary.ReloadSound );
		
		self.Owner:SetAnimation( PLAYER_RELOAD );
		self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() );
		self:SetNextSecondaryFire( CurTime() + self:SequenceDuration() );

		self:Idle();

		self:SetClip1( 1 );
		
		if( SERVER ) then
			
			self.Owner:RemoveItem( self.Owner:GetInventoryItem( "crossbowbolt" ) );
			
		end
		
	end
	
end
