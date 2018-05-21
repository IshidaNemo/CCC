FLAG.PrintName 		= "Sectorial Commander";

FLAG.Flag 			= "G";

FLAG.Loadout		= { };

FLAG.ItemLoadout 	= { "radio", "zipties", "weapon_cc_grenade", "weapon_cc_flashbang", "smallmedkit", "weapon_cc_medkit", "weapon_cc_cityscanner", "weapon_cc_manhack", "combineturret", "weapon_cc_stunstick", "weapon_cc_flare", "weapon_cc_nagant", "weapon_cc_ar2", "weapon_cc_csniper", "weapon_cc_m249", "weapon_cc_spas12", "weapon_cc_beanbag", "weapon_cc_doorbreach", "weapon_cc_ar3" };

FLAG.CharName		= "CCA-C17.SeC.$CID";

FLAG.CanSpawn		= true;

FLAG.CanBroadcast	= true;

FLAG.CanEditLoans	= true;

FLAG.CanEditCPs		= true;

FLAG.CanJW			= true;



function FLAG.ModelFunc( ply )

	

	if( ply:Gender() == GENDER_FEMALE ) then

		

		return "models/dpfilms/metropolice/playermodels/pm_skull_police_female.mdl";

		

	end

	

	return "models/dpfilms/metropolice/playermodels/pm_skull_police.mdl";

	

end