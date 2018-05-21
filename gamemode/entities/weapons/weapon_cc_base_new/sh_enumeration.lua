
-----------------------------------------------------
--[[
Project: Combine Control SWEP Base
File: sh_enumeration.lua
Author: thor
]]--

--[[ ammo enums ]]--
AMMOTYPE_46x30 = 0 -- HK 4.6x30 (e.g. Mp7)
AMMOTYPE_9x18 = 1 -- 9mm rounds (e.g. Makarov)
AMMOTYPE_9x19 = 2 -- 9mm rounds (e.g. Mp5/Beretta)
AMMOTYPE_9x39 = 3 -- 9x39 rounds (e.g. AS VAL/VSS)
AMMOTYPE_45acp = 4 -- .45 ACP (e.g. Hardballer)
AMMOTYPE_545x39 = 5 -- 5.45x39 caliber (e.g. AK-74)
AMMOTYPE_556x45 = 6 -- 5.45x45 caliber (e.g. M4/M16)
AMMOTYPE_57x28 = 7 -- FN 5.7x28 caliber (e.g. P90)
AMMOTYPE_762x39 = 8 -- 7.62x39 caliber (e.g. AKM)
AMMOTYPE_762x51 = 9 -- 7.62x51 caliber (e.g. SCAR/M14)
AMMOTYPE_652x54 = 10 -- 7.52x54 caliber (e.g. SVD/PKM)
AMMOTYPE_338 = 11 -- .338 LAPUA (e.g. L115)
AMMOTYPE_BUCKSHOT = 12 -- shotgun buckshot (e.g. SPAS-12)
AMMOTYPE_SLUG = 13 -- shotgun slugs (e.g. SPAS-12)
AMMOTYPE_PULSE = 14 -- pulse rounds (e.g. AR2)

CAP_NONE = 0
CAP_DISINTEGRATE = 2^0
CAP_LASER = 2^1

--[[ firemode enums ]]--
CAP_SINGLESHOT = 2^0
CAP_BURSTFIRE = 2^1
CAP_AUTOMATIC = 2^2
CAP_M203 = 2^3
CAP_MASTERKEY = 2^4