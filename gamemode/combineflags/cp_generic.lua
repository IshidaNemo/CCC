FLAG.PrintName 		= "Unit";
FLAG.Flag 			= "B";
FLAG.Color 			= Color( 75, 87, 95, 255 );
FLAG.Loadout		= { };
FLAG.ItemLoadout 	= { "radio", "zipties", "smallmedkit", "weapon_cc_medkit", "weapon_cc_stunstick", "weapon_cc_flare", "weapon_cc_pistol", "weapon_cc_grenade", "weapon_cc_flashbang", "weapon_cc_g36c", "weapon_cc_doorbreach", "weapon_cc_beanbag" };
FLAG.CharName		= "CCA-C17.$SQUAD-$ID.$CID";
FLAG.CanEditLoans	= false;
FLAG.DemoteTo		= "A";

function FLAG.ModelFunc( ply )
	
	if( ply:Gender() == GENDER_FEMALE ) then
		
		return "models/dpfilms/metropolice/playermodels/pm_hl2concept_female.mdl";
		
	end
	
	return "models/dpfilms/metropolice/playermodels/pm_hl2concept.mdl";
	
end
