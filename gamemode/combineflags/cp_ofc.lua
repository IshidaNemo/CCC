FLAG.PrintName 		= "Officer";
FLAG.Flag 			= "C";
FLAG.Color 			= Color( 75, 87, 95, 255 );
FLAG.Loadout		= { };
FLAG.ItemLoadout 	= { "radio", "zipties", "smallmedkit", "weapon_cc_medkit", "weapon_cc_stunstick", "weapon_cc_flare", "weapon_cc_glock17", "weapon_cc_hk416", "weapon_cc_beanbag", "weapon_cc_doorbreach" };
FLAG.CharName		= "CCA-C17.$SQUAD-OfC.$CID";
FLAG.CanEditLoans	= true;
FLAG.DemoteTo		= "A";

function FLAG.ModelFunc( ply )
	
	if( ply:Gender() == GENDER_FEMALE ) then
		
		return "models/dpfilms/metropolice/playermodels/pm_c08cop_female.mdl";
		
	end
	
	return "models/dpfilms/metropolice/playermodels/pm_c08cop.mdl";
end


