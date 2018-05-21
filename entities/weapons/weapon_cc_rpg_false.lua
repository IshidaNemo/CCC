
-----------------------------------------------------
 AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "Taze Test"
SWEP.Slot = 2
SWEP.SlotPos = 80
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_crossbow.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_crossbow.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Ammo= "cc_rifle"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= false
SWEP.Primary.Sound= "weapons/stalker_silencedsmall.wav"
SWEP.Primary.Damage= 5
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.01
SWEP.Primary.Delay= 1.4
SWEP.Primary.RecoilAdd= 4
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachments = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector(-6.4, 0.81, -5)
SWEP.AimAng = Vector(0, 0, 0)

SWEP.Scoped = true

SWEP.Itemize = true
SWEP.ItemDescription = "Pew."
SWEP.ItemWeight = 0
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)

function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
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
			
			if( tr.Entity:GetPos():Distance( ply:GetShootPos() ) > 99999 ) then return end
			
			if( tr.Entity:IsPlayer() ) then
				
				tr.Entity:TakeCDamage( 300 );
				
			elseif( tr.Entity:GetClass() == "prop_ragdoll" and tr.Entity:PropFakePlayer() and tr.Entity:PropFakePlayer():IsValid() ) then
				
				tr.Entity:PropFakePlayer():TakeCDamage( 300 );
				
			elseif( tr.Entity:IsVehicle() and tr.Entity:GetDriver() and tr.Entity:GetDriver():IsValid() ) then
				
				tr.Entity:GetDriver():TakeCDamage( 300 );
				
			end
			
		end
		
	end
	
	self.Owner:FireBullets( bullet );
	
end