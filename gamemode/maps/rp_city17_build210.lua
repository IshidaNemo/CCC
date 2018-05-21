function GM:GetHL2CamPos()
	
	return { Vector( -662, 938, 622 ), Angle( 20, -49, 0 ) };
	
end

function GM:GetCACamPos()
	
	return Vector( 1990, 586, 2945 );
	
end

function GM:GetCombineCratePos()
	
return { Vector( 3816, -3532, -419 ), Angle( 1, -89, -0 ) };
	
end

function GM:GetCombineRationPos()
	
return { Vector( 3819, -3517, -356 ), Angle( 0, -90, 0 ) };
	
end

GM.CurrentLocation = LOCATION_CITY;

GM.EntNamesToRemove = {
	"nexus_ind_button1",
	"nexus_ind_button3",
	"checkpoint.closed.sprite",
	"checkpoint.open.sprite",
	"nexus_ind_button2",
	"nexus_ind_button4",
	"jw_button",
	"nexus_JW_button2",
	"exogen_button_off",
	"nexus_exoen_button1",
	"exogen.disabled.sprite",
	"exogen_button",
	"exogen.enabled.sprite",
	"nexus_exogen_button2",
	"ration_offline_text",
	"ration_online_text",
	"rationdispatch",
	"ration_online_btn",
	"rtn.online.sprite",
	"ration_online_btnmodel",
	"ration_offline_btn",
	"rtn.offline.sprite",
	"pistolspawnbuttonmodel",
	"pistolspawner",
	"pistolspawn.dispensesound",
	"pistolspawn1case",
	"smgspawnbuttonmodel",
	"smgspawn.dispensesound",
	"smgspawner",
	"smgspawn1case",
	"shotgunspawnbuttonmodel",
	"shotgunspawn.dispensesound",
	"shotgunspawner",
	"shotgunspawn1case",
	"ar2spawnbuttonmodel",
	"ar2spawn.dispensesound",
	"ar2spawner",
	"ar2spawn1case",
	"jurbosprite",
	"jurbomodel",
	"UCHUNLOCK_text",
	"UCHLOCK_text",
	"jurbolock",
	"jurbounlock",
};

function GM:OnJWOn()
	
	for _, v in pairs( ents.FindByName( "jw_redpanel" ) ) do
		
		v:Fire( "Enable" );
		
	end
	
	ents.FindByName( "pivotsprite" )[1]:Fire( "Color", "255 0 0" );
	ents.FindByName( "JW.Spire.1" )[1]:Fire( "Start" );
	ents.FindByName( "JW.Spire.2" )[1]:Fire( "Open", "", 15 );
	ents.FindByName( "JW.Spire.3" )[1]:Fire( "Open", "", 19 );
	
end

function GM:OnJWOff()
	
	for _, v in pairs( ents.FindByName( "jw_redpanel" ) ) do
		
		v:Fire( "Disable" );
		
	end
	
	ents.FindByName( "pivotsprite" )[1]:Fire( "Color", "33 68 231" );
	ents.FindByName( "JW.Spire.1" )[1]:Fire( "Stop" );
	ents.FindByName( "JW.Spire.2" )[1]:Fire( "Close", "", 15 );
	ents.FindByName( "JW.Spire.3" )[1]:Fire( "Close", "", 19 );
	
end

GM.Stoves = {
	{ Vector( 141, -1767, 100 ), Angle( 0, 90, 0 ), "store1", true },
	{ Vector( -114, -1389, 229 ), Angle( 0, 90, 0 ), "a1", true },
	{ Vector( -417, -1339, 228 ), Angle( 0, 0, 0 ), "a2", true },
	{ Vector( -115, -1387, 357 ), Angle( 0, 90, 0 ), "a3", true },
	{ Vector( -419, -1338, 356 ), Angle( 0, 0, 0 ), "a4", true },
	{ Vector( -115, -1391, 484 ), Angle( 0, 90, 0 ), "a5", true },
	{ Vector( -416, -1339, 485 ), Angle( 0, 1, 0 ), "a6", true },
	{ Vector( -114, -1389, 613 ), Angle( 0, 90, 0 ), "a7", true },
	{ Vector( -416, -1338, 613 ), Angle( 0, -0, 0 ), "a8", true },
	{ Vector( -2237, -4443, 101 ), Angle( 0, 180, 0 ), "S2", true },
	{ Vector( -2911, -3027, 357 ), Angle( 0, -90, 0 ), "b1", true },
	{ Vector( -2456, -2604, 357 ), Angle( 0, 90, 0 ), "b2", true },
	{ Vector( -2942, -3029, 485 ), Angle( 0, -90, 0 ), "b4", true },
	{ Vector( -2470, -2614, 485 ), Angle( 0, 91, 0 ), "b5", true },
	{ Vector( -2301, -2582, 485 ), Angle( 0, -90, 0 ), "b6", true },
	{ Vector( -3863, -3029, 165 ), Angle( 0, -90, 0 ), "apt1", true },
	{ Vector( -4174, -3029, 165 ), Angle( 0, -90, 0 ), "apt2", true },
	{ Vector( 634, 2647, 236 ), Angle( 0, 180, 0 ), "C1", true },
	{ Vector( 633, 1980, 237 ), Angle( 0, 180, 0 ), "C2", true },
	{ Vector( 634, 2646, 373 ), Angle( 0, 180, 0 ), "C3", true },
	{ Vector( 631, 1981, 374 ), Angle( 0, 180, 0 ), "C4", true },
	{ Vector( 633, 2646, 509 ), Angle( 0, 180, 0 ), "C5", true },
	{ Vector( 588, 2234, 509 ), Angle( 0, 180, 0 ), "C6", true },
	{ Vector( 633, 1979, 509 ), Angle( 0, 180, 0 ), "C7", true },
	{ Vector( -278, 1946, 101 ), Angle( 0, 90, 0 ), "Bistro", true },

};

GM.CombineSpawnpoints = {
Vector( 3459, -3574, -435 ),
Vector( 3738, -3787, -435 ),
Vector( 3654, -3830, -435 ),
Vector( 3557, -3752, -435 ),
Vector( 3492, -3848, -435 ),
Vector( 3614, -3638, -435 ),
Vector( 3363, -3647, -435 ),
Vector( 3383, -3776, -435 ),
Vector( 3409, -3683, -435 ),
Vector( 3661, -3735, -435 ),
Vector( 3502, -3675, -435 )
};

GM.DoorData = {
	{ 1240, DOOR_BUYABLE, "Apartment  A-1-2", 7, "a2" },
	{ 1241, DOOR_BUYABLE, "Apartment A-1-1", 7, "a1" },
	{ 1242, DOOR_BUYABLE, "Apartment A-2-2", 7, "a4" },
	{ 1243, DOOR_BUYABLE, "Apartment A-2-1", 7, "a3" },
	{ 1244, DOOR_BUYABLE, "Apartment A-3-2", 7, "a6" },
	{ 1245, DOOR_BUYABLE, "Apartment A-3-1", 7, "a5" },
	{ 1465, DOOR_UNBUYABLE, "Apartment Block C" },
	{ 1466, DOOR_UNBUYABLE, "Apartment Block C" },
	{ 1468, DOOR_BUYABLE, "Apartment C-1-1", 5, "C1" },
	{ 1469, DOOR_BUYABLE, "Apartment C-1-2", 5, "C2" },
	{ 1471, DOOR_BUYABLE, "Apartment C-2-2", 5, "C4" },
	{ 1472, DOOR_BUYABLE, "Apartment C-2-1", 5, "C3" },
	{ 1744, DOOR_BUYABLE, "Bathroom", 5, "C3" },
	{ 1780, DOOR_BUYABLE, "Store", 10, "store2" },
	{ 2172, DOOR_COMBINELOCK, "Priority Cell 4" },
	{ 2222, DOOR_COMBINEOPEN, "Tower" },
	{ 2223, DOOR_COMBINEOPEN, "" },
	{ 2224, DOOR_COMBINEOPEN, "Supply Room" },
	{ 2225, DOOR_COMBINELOCK, "Priority Cell 3" },
	{ 2241, DOOR_COMBINELOCK, "Priority Cell 1" },
	{ 2242, DOOR_COMBINELOCK, "Priority Cell 2" },
	{ 2243, DOOR_COMBINELOCK, "Interrogation" },
	{ 2261, DOOR_COMBINEOPEN, "" },
	{ 2267, DOOR_COMBINEOPEN, "" },
	{ 2291, DOOR_COMBINEOPEN, "Med Bay" },
	{ 2298, DOOR_COMBINEOPEN, "Training Course" },
	{ 2299, DOOR_COMBINEOPEN, "Training Course" },
	{ 2301, DOOR_COMBINEOPEN, "Citadel" },
	{ 2317, DOOR_BUYABLE, "Apartment A-4-2", 7, "a8" },
	{ 2318, DOOR_BUYABLE, "Apartment A-4-1", 7, "a7" },
	{ 2322, DOOR_UNBUYABLE, "Terminal Hotel" },
	{ 2333, DOOR_UNBUYABLE, "Train Station" },
	{ 2751, DOOR_BUYABLE, "ApartmentB-1-1", 7, "b1" },
	{ 2752, DOOR_BUYABLE, "Apartment B-1-1", 7, "b1" },
	{ 2853, DOOR_UNBUYABLE, "Apartment Block B" },
	{ 2900, DOOR_BUYABLE, "Bathroom", 7, "b2" },
	{ 2901, DOOR_BUYABLE, "Apartment B-1-1", 7, "b1" },
	{ 2902, DOOR_BUYABLE, "apartment B-1-3", 7, "b3" },
	{ 2904, DOOR_BUYABLE, "Bathroom", 7, "b5" },
	{ 2906, DOOR_BUYABLE, "Bathroom", 7, "b6" },
	{ 2910, DOOR_BUYABLE, "Bed_Room", 7, "b6" },
	{ 2918, DOOR_BUYABLE, "B-2-3", 7, "b6" },
	{ 2919, DOOR_BUYABLE, "B-2-2", 7, "b5" },
	{ 2921, DOOR_BUYABLE, "B-2-1", 7, "b4" },
	{ 2951, DOOR_BUYABLE, "Souvenir Shop", 15, "store1" },
	{ 2952, DOOR_BUYABLE, "Apartment", 20, "apt1" },
	{ 2953, DOOR_BUYABLE, "Apartment", 20, "apt2" },
	{ 3003, DOOR_COMBINELOCK, "Cell 2" },
	{ 3006, DOOR_COMBINELOCK, "Cell 4" },
	{ 3008, DOOR_COMBINELOCK, "Cell 3" },
	{ 3010, DOOR_COMBINELOCK, "Cell 1" },
	{ 3034, DOOR_BUYABLE, "Storage", 15, "store1" },
	{ 3043, DOOR_BUYABLE, "Attic", 15, "attic" },
	{ 3050, DOOR_UNBUYABLE, "Apartment Block B" },
	{ 3051, DOOR_UNBUYABLE, "Apartment Block B" },
	{ 3057, DOOR_BUYABLE, "Attic Hall", 15, "attic" },
	{ 3128, DOOR_COMBINEOPEN, "Citadel" },
	{ 3161, DOOR_COMBINELOCK, "Cell 8" },
	{ 3164, DOOR_COMBINELOCK, "Cell 7" },
	{ 3169, DOOR_COMBINELOCK, "Cell 6" },
	{ 3172, DOOR_COMBINELOCK, "Cell 5" },
	{ 3282, DOOR_COMBINELOCK, "" },
	{ 3402, DOOR_BUYABLE, "Living Area", 7, "b2" },
	{ 3404, DOOR_BUYABLE, "Apartment B-1-2", 7, "b2" },
	{ 3467, DOOR_BUYABLE, "Hospital", 30, "H1" },
	{ 3468, DOOR_BUYABLE, "Hospital", 30, "H1" },
	{ 3474, DOOR_BUYABLE, "Bathroom", 7, "a5" },
	{ 3475, DOOR_BUYABLE, "Bathroom", 7, "a7" },
	{ 3476, DOOR_BUYABLE, "Bathroom", 7, "a3" },
	{ 3477, DOOR_BUYABLE, "Bathroom", 7, "a1" },
	{ 3478, DOOR_BUYABLE, "Bathroom", 7, "a2" },
	{ 3479, DOOR_BUYABLE, "Bathroom", 7, "a4" },
	{ 3480, DOOR_BUYABLE, "Bathroom", 7, "a6" },
	{ 3481, DOOR_BUYABLE, "Bathroom", 7, "a8" },
	{ 3714, DOOR_COMBINELOCK, "Station" },
	{ 3715, DOOR_COMBINELOCK, "Station" },
	{ 3727, DOOR_COMBINELOCK, "Security" },
	{ 3728, DOOR_COMBINELOCK, "Interrogation" },
	{ 3729, DOOR_COMBINELOCK, "Interrogation" },
	{ 3732, DOOR_COMBINELOCK, "Interrogation" },
	{ 3771, DOOR_COMBINELOCK, "" },
	{ 3813, DOOR_UNBUYABLE, "CWU" },
	{ 3814, DOOR_UNBUYABLE, "Back" },
	{ 4233, DOOR_COMBINEOPEN, "" },
	{ 4639, DOOR_COMBINELOCK, "Garage" },
	{ 4879, DOOR_BUYABLE, "Back Door", 15, "Bistro" },
	{ 4887, DOOR_BUYABLE, "Back Door", 15, "Bistro" },
	{ 4894, DOOR_BUYABLE, "Bistro", 15, "Bistro" },
	{ 4895, DOOR_BUYABLE, "Bistro", 15, "Bistro" },
	{ 4940, DOOR_COMBINELOCK, "Factory" },
	{ 4943, DOOR_COMBINELOCK, "Factory" },
	{ 4960, DOOR_BUYABLE, "Factory", 35, "F2" },
	{ 5037, DOOR_BUYABLE, "Bathroom", 5, "C1" },
	{ 5047, DOOR_BUYABLE, "Bathroom", 5, "C2" },
	{ 5062, DOOR_BUYABLE, "Bathroom", 5, "C4" },
	{ 5110, DOOR_BUYABLE, "Bakery", 10, "Bakery" },
	{ 5111, DOOR_BUYABLE, "Bakery", 10, "Bakery" },
	{ 5250, DOOR_BUYABLE, "Underground Building", 50, "UG1" },
	{ 5264, DOOR_BUYABLE, "Factory", 35, "F2" },
	{ 5330, DOOR_BUYABLE, "Underground Building", 50, "UG2" },
	{ 5343, DOOR_BUYABLE, "Underground Building", 50, "UG2" },
	{ 5369, DOOR_COMBINELOCK, "Solitary" },
	{ 5370, DOOR_COMBINELOCK, "Solitary" },
	{ 5384, DOOR_UNBUYABLE, "Train Station" },
	{ 5716, DOOR_BUYABLE, "Bathroom", 5, "C5" },
	{ 5718, DOOR_BUYABLE, "Apartment C-3-3", 5, "C7" },
	{ 5719, DOOR_BUYABLE, "Apartment C-3-1", 5, "C5" },
	{ 5722, DOOR_BUYABLE, "Bathroom", 5, "C7" },
	{ 5753, DOOR_BUYABLE, "Apartment C-3-2", 5, "C6" },
	{ 5754, DOOR_BUYABLE, "Bathroom", 5, "C6" },
	{ 5831, DOOR_COMBINEOPEN, "Prison Med Bay" },
	{ 5850, DOOR_BUYABLE, "Store", 15, "S2" },
	{ 5851, DOOR_BUYABLE, "Back Room", 15, "S2" },
	{ 5911, DOOR_BUYABLE, "Store", 30, "S1" },
	{ 6009, DOOR_BUYABLE, "Store", 30, "S1" },
};
