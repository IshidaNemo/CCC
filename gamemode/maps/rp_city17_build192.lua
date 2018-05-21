function GM:GetHL2CamPos()
	
	return { Vector( 7340, 2818, 616 ), Angle( 12, 85, 0 ) };
	
end

function GM:GetCombineCratePos()
	
	return { Vector( -9373, -14399, 1785 ), Angle( -0, 180, 0 ) };
	
end

function GM:GetCombineRationPos()
	
	return { Vector( -9435, -14486, 1844 ), Angle( -0, 90, -0 ) };
end


GM.CurrentLocation = LOCATION_CITY;

GM.Stoves = {
};

GM.DoorData = {
	{ Vector( -4188, -3447, 209 ), DOOR_BUYABLE, "Test", 10, "Mult" },
    { Vector( 2004,4,176 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 295.90899658203,-3854.9899902344,134 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 1982.145142, 28.114922, 134.199829 ), DOOR_COMBINEOPEN, "" },
	{ Vector( 1982, 28, 134 ), DOOR_COMBINEOPEN, "" },
};

