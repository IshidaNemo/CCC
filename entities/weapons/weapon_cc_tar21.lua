
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "TAR-21"
SWEP.Slot = 2
SWEP.SlotPos = 127
SWEP.CSMuzzleFlashes= true

SWEP.UseHands= true
SWEP.ViewModel = "models/tnb/weapons/c_tar.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_tar.mdl"

SWEP.Firearm= true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo= "cc_smg"
SWEP.Primary.InfiniteAmmo= true
SWEP.Primary.Automatic= true
SWEP.Primary.Sound= "weapons/stalker_tar.wav"
SWEP.Primary.Damage= 18
SWEP.Primary.Force= 0.73
SWEP.Primary.Accuracy= 0.08
SWEP.Primary.Delay= 0.08
SWEP.Primary.RecoilAdd= 0.3
SWEP.Primary.ReloadSound= "Weapon_SMG1.Reload"

SWEP.HoldType = "smg"
SWEP.HoldTypeHolster = "passive"

SWEP.Holsterable = true
SWEP.Attachment = 0

SWEP.HolsterPos = Vector(8.04, -2.67, -9.82)
SWEP.HolsterAng = Vector(4.83, 46.61, 4.83)

SWEP.AimPos = Vector( -5.92, 2.45, 2.35 );
SWEP.AimAng = Vector( 0, 0, -0.32 );

SWEP.Itemize = true
SWEP.ItemDescription = "The TAR-21 is a fully automatic rifle that shoots 5.56x45mm NATO rounds."
SWEP.ItemWeight = 7
SWEP.ItemFOV = 25
SWEP.ItemCamPos = Vector(-2.94, 50, 0.27)
SWEP.ItemLookAt = Vector(-1.44, 0, 0)


function SWEP:AddViewKick()
--self.Owner:ViewPunch(Angle(-1, math.Rand(-0.5, 0.5), 0))
self:DoMachineGunKick(0.5, 1, self.Primary.Delay, 2)
end

function SWEP:Bodygroup()
self.Owner:GetViewModel():SetBodygroup(1, 0)
self:SetBodygroup(1, 0)
end