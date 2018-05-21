FLAG.PrintName 		= "Squad Leader";
FLAG.Flag 			= "D";
FLAG.Color 			= Color( 60, 20, 20, 255 );
FLAG.Loadout		= { };
FLAG.ItemLoadout 	= { "radio", "zipties", "smallmedkit", "weapon_cc_medkit", "weapon_cc_stunstick", "weapon_cc_flare", "weapon_cc_glock17", "weapon_cc_g36c", "weapon_cc_doorbreach", "weapon_cc_beanbag", "weapon_cc_grenade", "weapon_cc_flashbang", "weapon_cc_manhack", "combineturret", "combine_backpack", "weapon_cc_m16", "weapon_cc_mp7", "weapon_cc_acr" };
FLAG.CharName		= "CCA-C17.LDR-$SQUAD.$CID";
FLAG.CanJW			= true;
FLAG.CanEditLoans	= true;
FLAG.CanEditCPs		= true;

function FLAG.ModelFunc( ply )
	
	if( ply:Gender() == GENDER_FEMALE ) then
		
		return "models/dpfilms/metropolice/playermodels/pm_elite_police_female.mdl";
		
	end
	
	return "models/dpfilms/metropolice/playermodels/pm_elite_police.mdl";
	
end
