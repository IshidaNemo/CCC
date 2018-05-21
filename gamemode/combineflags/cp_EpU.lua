FLAG.PrintName = "EpU";
FLAG.Flag = "I";
FLAG.Color = Color( 75, 87, 95, 255 );
FLAG.Loadout= { };
FLAG.ItemLoadout = { "radio", "zipties", "smallmedkit", "weapon_cc_medkit", "weapon_cc_stunstick", "weapon_cc_flare", "weapon_cc_glock17", "weapon_cc_grenade", "weapon_cc_flashbang", "weapon_cc_acr", "weapon_cc_doorbreach", "weapon_cc_beanbag", "weapon_cc_mp5k" };
FLAG.CharName= "CCA-C17.$SQUAD-EpU.$CID";
FLAG.CanEditLoans= true;
FLAG.DemoteTo= "B";

function FLAG.ModelFunc( ply )

if( ply:Gender() == GENDER_FEMALE ) then

return "models/dpfilms/metropolice/playermodels/pm_retrocop_female.mdl";

end

return "models/dpfilms/metropolice/playermodels/pm_retrocop.mdl";

end
