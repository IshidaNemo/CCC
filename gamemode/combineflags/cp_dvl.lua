FLAG.PrintName 		= "Division Leader";

FLAG.Flag 			= "E";

FLAG.Loadout		= { };

FLAG.ItemLoadout 	= { "radio", "zipties", "weapon_cc_grenade", "weapon_cc_flashbang", "smallmedkit", "weapon_cc_medkit", "weapon_cc_cityscanner", "weapon_cc_manhack", "combineturret", "weapon_cc_stunstick", "weapon_cc_flare", "weapon_cc_glock17", "weapon_cc_fnf2000", "weapon_cc_tar21", "weapon_cc_spas12", "weapon_cc_beanbag", "weapon_cc_doorbreach", "combine_backpack", "weapon_cc_357" };

FLAG.CharName		= "CCA-C17.DvL-$SQUAD.$CID";

FLAG.CanSpawn		= true;

FLAG.CanBroadcast	= true;

FLAG.CanEditLoans	= true;

FLAG.CanEditCPs		= true;

FLAG.CanJW			= true;



function FLAG.ModelFunc( ply )

	

	if( ply:Gender() == GENDER_FEMALE ) then

		

		return "models/dpfilms/metropolice/playermodels/pm_police_bt_female.mdl";

		

	end

	

	return "models/dpfilms/metropolice/playermodels/pm_police_bt.mdl";

	

end