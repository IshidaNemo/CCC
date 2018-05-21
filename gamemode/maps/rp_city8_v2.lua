--[[This is the background people will see on the Character Customisation Screen]]--
function GM:GetHL2CamPos()
	
	return { Vector( 1403, 1954,  -1), Angle( 13, 91, 0 ) };
	
end
-- City Admin camera.
--[[ function GM:GetCACamPos()
	
	return Vector( 2132, -1424, 1730 );
	
end
]]--

--[[Allows Combine(Players To get Items/Weapons out of Entity]]--
function GM:GetCombineCratePos()
	
	return { Vector( -2030, 2840, 50 ), Angle( 0, 90, 0) };
	-- ang 79.647598 98.017502 0.000000
	
end
--[[Allows the Spawning of the Combine Ration Machine]]--
function GM:GetCombineRationPos()
	
	return { Vector( -2030, 2830, 95 ), Angle( 0, 90, 0 ) };
	-- ang 89.000000 89.102020 0.000000

	
end


--[[If Player Click Play Intro on the F3 Menu]]--

GM.IntroCamData = { };
GM.IntroCamData[1] = { { Vector( -929, 2120, -44 ), Vector( -1001, 2400, 164 ) }, { Angle( 9, 165, 0 ), Angle( 34, -143, 0 ) } };
GM.IntroCamData[2] = { { Vector( 10370, 2642, 321 ), Vector( 9981, 2736, 70 ) }, { Angle( 14, -111, 0 ), Angle( 7, -91, 0 ) } };
GM.IntroCamData[3] = { { Vector( -181, -738, 166 ), Vector( 163, -780, -65 ) }, { Angle( 11, 44, 0 ), Angle( 13, 93, 0 ) } };
GM.IntroCamData[4] = { { Vector( -2406, -750, 154 ), Vector( -1931, -705, -42 ) }, { Angle( 10, 29, 0 ), Angle( 3, 132, 0 ) } };
GM.IntroCamData[5] = { { Vector( -550, 2681, 83 ), Vector( -311, 2513, -5 ) }, { Angle( 20, 20, 0 ), Angle( 13, 52, 0 ) } };
GM.IntroCamData[6] = { { Vector( -55, -842, -399 ), Vector( -184, -527, -366 ) }, { Angle( 3, 160, 0 ), Angle( 2, -173, 0 ) } };

GM.CurrentLocation = LOCATION_CITY;

function GM:OnJWOn()
	
	for _, v in pairs( ents.FindByName( "jw_redpanels" ) ) do
		
		v:Fire( "Enable" );
		
	end
	
end

function GM:OnJWOff()
	
	for _, v in pairs( ents.FindByName( "jw_redpanels" ) ) do
		
		v:Fire( "Disable" );
		
	end
	
end

GM.EntNamesToRemove = {
	"n1_tele_dest",
	"n1_tele",
	"jw_button",
	"nexus_JW_button2",
	"nexus_JW",
	"nexus_JW2",
	"jw_end",
	"jw_start",
	"jw_timer",
	"fatnogard_flame",
};

GM.EntPositionsToRemove = {
	Vector( 706.5, 3339.99, 1133.31 ),
}
--[[Speakers where audio from the City Administrator camera will be played. 
Should be around breenscreens and TVs.]]--
GM.Microphones = {
	{ Vector( 1452, -2252, 1411 ), MICROPHONE_BIG },
	{ Vector( 3581, -2474, 1029 ), MICROPHONE_BIG },
	{ Vector( -575, -424, 975 ), MICROPHONE_BIG },
	{ Vector( -1492, -262, 715 ), MICROPHONE_SMALL },
	{ Vector( -1607, 46, 720 ), MICROPHONE_SMALL },
	{ Vector( 2476, 658, 1453 ), MICROPHONE_BIG },
	{ Vector( 2375, 878, 990 ), MICROPHONE_SMALL },
	{ Vector( 2612, 1250, 989 ), MICROPHONE_BIG },
	{ Vector( 64, 2780, 1251 ), MICROPHONE_SMALL },
	{ Vector( -1359, 3055, 773 ), MICROPHONE_SMALL },
	{ Vector( -916, 5352, 1498 ), MICROPHONE_BIG },
	{ Vector( -2564, 1200, 845 ), MICROPHONE_BIG },
};
--[[Stoves Located in Apartments]]--
GM.Stoves = {
	{ Vector( 575, -1158, -77 ), Angle( 19, 91, 0 ), "AC01" },
	{ Vector( 587, -1217, -84 ), Angle( 85, -90, 0 ), "AC02" },
	{ Vector( 572, -1385, -69 ), Angle( 5, -91, 0 ), "AC03" },
	{ Vector( 1936, 1021, -76 ), Angle( -0, -177, 0 ), "AB01" },
	{ Vector( 1927, 1077,  58 ), Angle( 0, -91, 0 ), "AB02" },
	{ Vector( 1933, 1020,  178 ), Angle( -2, 179, 0 ), "AB03" },
	{ Vector( 1938, 1023,  302 ), Angle( -0, 177, 0 ), "AB04" },
	{ Vector( 390, 1826, 204 ), Angle( 1, 88, 0 ), "Kitchen" },
	{ Vector( 671, 3054, -207 ), Angle( -2,-90 , 0 ), "Cafe" },
	--{ Vector( -1539, 351, 1228.33 ), Angle( 0, 270, 0 ), "A42" },
	--{ Vector( -152, 2734, 1108.33 ), Angle( 0, 180, 0 ), "B12" },
	--{ Vector( -614, 2738, 1108.33 ), Angle( 0, 0, 0 ), "B11" },
	--{ Vector( -1466, -94, 1101.38 ), Angle( 0, 180, 0 ), "A31" },
	--{ Vector( -1539, 350, 1100.33 ), Angle( 0, 270, 0 ), "A32" },
	--{ Vector( -1466, -94.3028, 974.38 ), Angle( 0, 180, 0 ), "A21" },
	--{ Vector( -1539, 349.697, 973.334 ), Angle( 0, 270, 0 ), "A22" },
	--{ Vector( -1466, -94, 845.38 ), Angle( 0, 180, 0 ), "A11" },
	--{ Vector( -1539, 350, 844.334 ), Angle( 0, 270, 0 ), "A12" },
	--{ Vector( 726, 3343, 1116 ), Angle( 0, 0, 0 ), "FAT" },
	{ Vector( -259, 259,  40), Angle( -6, 178, 0 ), "House" };

};

--[[Spawn Points in the Nexus for Combine]]--

GM.CombineSpawnpoints = {
	Vector( -1999.927002, 2960.121583, 32.031250 ),
	Vector( -2191.548828, 2943.283203, 32.031250 ),
	Vector( -2211.012207, 3007.752197, 32.031250 ),
	Vector( -2122.627441, 2921.323730, 32.031250 ),
	Vector( -2246.027588, 2915.953613, 32.031250 ),
	Vector( -1980, 2983, 32.031250 ),
	Vector( -1980, 2983, 32.031250 ),
--[[ Additonal Spawnpoints for Combine ]]--
--	Vector( 1350, 991, 96 ),
--	Vector( 1398, 1054, 96 ),
--	Vector( 1498, 1130, 96 ),
--	Vector( 1432, 1117, 96 ),
--	Vector( 1370, 1132, 96 ),
};
--[[ Door Data
DOOR_COMBINEOPEN = Allows Door to be Opened By Combine
DOOR_UNBUYABLE = Allows Door to Not be bought but Open
DOOR_COMBINELOCK = COMBINE LOCKED
DOOR_BUYABLE_ASSIGNABLE = ASSIGNABLE USED FOR APARTMENT
DOOR_BUYABLE = Buyable
]]--
-- { Vector( X,Y,Z), DOORTYPE, "NAME", 0,"DOORGROUP"},
GM.DoorData = {
	{ Vector( 831, -927, -168 ), DOOR_UNBUYABLE, "Apartment Block C", 0,"AC" },
	{ Vector( 737, -927, -168 ), DOOR_UNBUYABLE, "Apartment Block C", 0,"AC" },
	{ Vector( -289, -414, -170 ), DOOR_BUYABLE, "House", 20,"House" },
	{ Vector( -353, -414, 86 ), DOOR_UNBUYABLE, "House Side Door", 0,"House" },
	{ Vector( -373, -226, 86.25 ), DOOR_UNBUYABLE, "House", 0,"House" },
	{ Vector( 825, -1192, -169 ), DOOR_UNBUYABLE, "Apartment Block C Inside Door", 0,"AC" },
	{ Vector( 460, -1359, -296 ), DOOR_UNBUYABLE, "Apartment Block C Side Door", 0,"AC" },
	{ Vector( 800, -1391, -168 ), DOOR_UNBUYABLE, "Apartment Block C Side Door", 0,"AC" },
	{ Vector( 825, -1186, -42 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment C-01", 5,"AC01" },
	{ Vector( 806, -1475, -41.749900817871 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment C-03", 5,"AC03" },
	{ Vector( 806, -1265, -41.749900817871 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment C-02", 5,"AC02" },
	{ Vector( 1530, -868, -168 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 1798, -960, -168 ), DOOR_COMBINELOCK, "" },
	{ Vector( 1337, 833, -169 ), DOOR_UNBUYABLE, "Apartment Block A", 0,"AA" },
	{ Vector( 1337, 927, -169 ), DOOR_UNBUYABLE, "Apartment Block A", 0,"AA" },
	{ Vector( 1116, 1023, 86 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment A-04", 5,"AA04" },
	{ Vector( 1116, 775, 86 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment A-03", 5, "AA03" },
	{ Vector( 1116, 1023, 214 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment A-06", 5,"AA06" },
	{ Vector( 1116, 775, 214 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment A-05", 5,"AA05" },
	{ Vector( 1116, 1023, -42 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment A-01", 5,"AA01" },
	{ Vector( 1116, 775, -42 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment A-02", 5,"AA02" },
	{ Vector( 703, 2372, -170 ), DOOR_BUYABLE, "Cafe", 20,"Cafe" },
	{ Vector( 645, 2372, -170 ), DOOR_BUYABLE, "Cafe", 20,"Cafe" },
	{ Vector( 2063, 748, -42 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment B-01", 5,"AB01" },
	{ Vector( 2116, 703.0009765625, -42 ), DOOR_UNBUYABLE, "Apartment B-01 Bathroom", 0,"AB01" },
	{ Vector( 2116, 703.0009765625, 86 ), DOOR_UNBUYABLE, "Apartment B-02 Bathroom", 0,"AB02" },
	{ Vector( 2063, 748, 86 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment B-02", 5,"AB02" }, 
	{ Vector( 2063, 748, 214 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment B-03", 5,"AB03" },
	{ Vector( 2116, 703.0009765625, 214 ), DOOR_UNBUYABLE, "Apartment B-03 Bathroom", 0,"ABO3" },
	{ Vector( 2116, 703.0009765625, 342 ), DOOR_UNBUYABLE, "Apartment B-04 Bathroom", 0,"AB04" },
	{ Vector( 2063, 748, 342 ), DOOR_BUYABLE_ASSIGNABLE, "Apartment B-04", 5,"AB04" },
	{ Vector( 1732, 864, -176 ), DOOR_UNBUYABLE, "Apartment Block B", 0,"AB" },
	{ Vector( 1732, 800, -176 ), DOOR_UNBUYABLE, "Apartment Block B", 0,"AB" },
	{ Vector( 2191, 620, -169 ), DOOR_UNBUYABLE, "Apartment Block Side Door", 0,"AB" },
	{ Vector( 1204, 1256, -168 ), DOOR_UNBUYABLE, "Shop Door" },
	{ Vector( 2016, 657, -168 ), DOOR_UNBUYABLE, "Apartment Block B Clerk Desk", 0,"AB" },
	{ Vector( 1054, 833, -168 ), DOOR_UNBUYABLE, "Apartment Block A Clerk Desk", 0,"AB" },
	{ Vector( 1783, 1345, -170 ), DOOR_BUYABLE, "Shop", 20,"" },
	{ Vector( 917, 1091, 86 ), DOOR_UNBUYABLE, "Apartment Block A Side Door", 0,"AA" },
	{ Vector( 2114, 1156, 88 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 422, 1164, 88 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 256, 1763.9899902344, 92 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 256, 2715.9799804688, 92 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -932.01000976563, -394, 88 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -800.01000976563, -400, 156 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 639, 1304, -168 ), DOOR_BUYABLE, "Alleyway Bar", 20,"ALLBA" },
	{ Vector( 435, 1588, -170 ), DOOR_BUYABLE, "Kitchen Front Door", 30,"Kitchen" },
	{ Vector( 341, 1588, -170 ), DOOR_BUYABLE, "Kitchen Front Door", 30,"Kitchen" },
	{ Vector( -1681, -400, -426 ), DOOR_UNBUYABLE, "Train Station Side Door", 0,"Train" },
	{ Vector( -2654, -300, -436 ), DOOR_UNBUYABLE, "Secret Door", 0,"Underground" },
	{ Vector( -4, 2823.9899902344, -164 ), DOOR_COMBINEOPEN, "Ration Distribution Center", 0,"RDC" },
	{ Vector( -1361, 80, -426 ), DOOR_UNBUYABLE, "Train Station Side Door", 0,"Train" },
	{ Vector( -1480, -276, -427.52801513672 ), DOOR_UNBUYABLE, "Train Station Door", 0,"Train" },
	{ Vector( -1368, -276, -427.52801513672 ), DOOR_UNBUYABLE, "Train Station Door", 0,"Train" },
	{ Vector( -4636, 1631, -426 ), DOOR_UNBUYABLE, "Bedroom", 0,"Underground" },
	{ Vector( 323, 1988, -177.71899414063 ), DOOR_UNBUYABLE, "Kitchen Back Door", 0,"Kitchen" },
	{ Vector( 265, 1988, -177.71899414063 ), DOOR_UNBUYABLE, "Kitchen Back Door", 0,"Kitchen"},
	{ Vector( -1988, 2176, -168 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -1248, 3450, 88 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -1184, 3450, 88 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -672.01000976563, -400, 156 ), DOOR_COMBINEOPEN, "" },
	--{ Vector( -1674, -868, -168 ), DOOR_UNBUYABLE, "Normal Open Door" },
	{ Vector( -689, -1201, -170 ), DOOR_UNBUYABLE, "Spawn Room", 0,"Spawn" },
	{ Vector( -783, -1201, -170 ), DOOR_UNBUYABLE, "Spawn Room", 0,"Spawn" },
	{ Vector( -30, 929, 86 ), DOOR_UNBUYABLE, "Door" },
	{ Vector( 1056, 2920, 344 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 624, 3488, 96 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 688, 3488, 96 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -2464, 3216, -176 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -2096, 3168, -176 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -2560, 3062, -170 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -2248, 3392, -170 ), DOOR_COMBINEOPEN, "" },
	{ Vector( -1664, 3244, -176 ), DOOR_UNBUYABLE, "Interogation Room" },
	{ Vector( -1664, 3092, -176 ), DOOR_UNBUYABLE, "Interogation Room" },
	{ Vector( 515, 1804, -169.71899414063 ), DOOR_UNBUYABLE, "Kitchen Staff Door", 0,"Kitchen" },
	{ Vector( 1777, 1311, -170 ), DOOR_UNBUYABLE, "Shop", 20,"" },
	{ Vector( 2060, 1503, -170 ), DOOR_UNBUYABLE, "Shop Back", 5,"" },
	{ Vector( 2060, 1161, -170 ), DOOR_UNBUYABLE, "Shop Back", 5,"" },
	{ Vector( -312, 959, 342.28100585938 ), DOOR_UNBUYABLE, "Door" },
	{ Vector( -332, 959, 214.28100585938 ), DOOR_UNBUYABLE, "Door" },
	{ Vector( -248, 959, 86.281303405762 ), DOOR_UNBUYABLE, "Door" },
};