
-----------------------------------------------------
AddCSLuaFile()

SWEP.Base= "weapon_cc_base"

SWEP.PrintName = "Frying Pan"
SWEP.Slot = 2
SWEP.SlotPos = 47
SWEP.UseHands= true
SWEP.ViewModelFOV = 81
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/tnb/weapons/c_fryingpan.mdl"
SWEP.WorldModel = "models/tnb/weapons/w_fryingpan.mdl"

SWEP.Firearm= false
SWEP.Melee= true
SWEP.Primary.Automatic= true
SWEP.HoldType = "melee"
SWEP.HoldTypeHolster = "normal"

SWEP.Holsterable = true
SWEP.HolsterUseAnim = true
SWEP.HolsterPos = Vector()
SWEP.HolsterAng = Vector()
SWEP.AimPos = Vector(-9.82, 4.47, -9.82)
SWEP.AimAng = Vector(0, 17.68, -75.53)
SWEP.Itemize = true
SWEP.ItemDescription = "Good for boshing wogs."
SWEP.ItemWeight = 2
SWEP.ItemFOV = 19
SWEP.ItemCamPos = Vector(50, 50, 50)
SWEP.ItemLookAt = Vector(0, 0, 0)
SWEP.ItemBulkPrice= 25
SWEP.ItemLicense= LICENSE_BLACK;

SWEP.SecondaryBlock = true
SWEP.BlockMul = 0.5

SWEP.Length = 100
SWEP.SwingSound = "weapons/pan/cbar_miss1.wav"
SWEP.HitFleshSound =
{

  "weapons/pan/melee_frying_pan_01.wav",
  "weapons/pan/melee_frying_pan_02.wav",
  "weapons/pan/melee_frying_pan_03.wav",
  "weapons/pan/melee_frying_pan_04.wav"

}
SWEP.HitWallSound =
{

  "weapons/pan/pan_impact_world1.wav",
  "weapons/pan/pan_impact_world2.wav",
  "weapons/pan/pan_impact_world3.wav"

}
SWEP.DamageMul = 14
SWEP.HitDelay = 1
SWEP.MissDelay = 1.3
SWEP.DamageType = DMG_CLUB
SWEP.HitAnim = ACT_VM_HITCENTER
SWEP.BulletDecal = true

function SWEP:AddViewKick()
self.Owner:ViewPunch(Angle(1.5, -1.5, 0))
end