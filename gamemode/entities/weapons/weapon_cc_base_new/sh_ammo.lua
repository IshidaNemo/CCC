
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: sh_ammo.lua
Author: thor
]]--

-- this only needs to run once in order to be placed into the base metatable
local stub = function() end
local fileList = file.Find(GAMEMODE.FolderName .. "/entities/weapons/weapon_cc_base_new/ammo/*.lua", "LUA", "namedesc")
local function registerAmmoType(k, file)
	
	AMMO = {}
	AMMO.ID				= -1
	AMMO.Name			= ""
	AMMO.Range			= nil
	AMMO.Damage			= 0
	AMMO.NumShots		= 1
	AMMO.Tracer			= "Tracer"
	AMMO.NumTracer		= 0
	
	AMMO.Capabilities	= CAP_NONE
	AMMO.Callback		= stub
	
	AddCSLuaFile("ammo/" .. file)
	include("ammo/" .. file)

	AMMO.__index		= AMMO
	AMMO.__tostring		= function(self)

		return "Ammo [" .. self.Name .. ": " .. self.ID .. "]"

	end
	
	SWEP.AmmoTypes[AMMO.ID] = AMMO
	MsgC(Color(150, 150, 150, 255), AMMO.__tostring(AMMO) .. " loaded.\n")
	
end

SWEP.AmmoTypes = {}
if #fileList > 0 then

	for k,v in pairs(fileList) do
		
		registerAmmoType(k, v)
		
	end
	
end

function SWEP:AmmoSetup()

	-- the enumerations load after the swep initializes, so we do some hacky bullshit
	if not self.AmmoType or string.Trim(self.AmmoType) == "" then
	
		self.AmmoType = 0
		
		return
	end
	
	self.AmmoType = _G[self.AmmoType]
end

function SWEP:ShootBullet()
	
	local AmmoType 		= self.AmmoTypes[self.AmmoType]
	local bullet 		= {}
	bullet.Src 			= self.Owner:GetShootPos()
	bullet.Dir 			= (self.Owner:EyeAngles() + self.freeAimOffset + self.Owner:GetViewPunchAngles()):Forward()
	bullet.Spread 		= Vector(0, 0, 0)
	bullet.Force		= 1
	bullet.AmmoType 	= AmmoType.Name
	bullet.Distance		= AmmoType.Range
	bullet.Damage		= AmmoType.Damage
	bullet.Num 			= AmmoType.NumShots
	bullet.Tracer		= AmmoType.NumTracer
	bullet.TracerName	= AmmoType.Tracer
	
	bullet.Callback = function(ply, tr, dmg)
	
		AmmoType.Callback(ply, tr, dmg)
		
	end

	self.Owner:FireBullets(bullet)
	
end