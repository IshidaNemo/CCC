ITEM.ID				= "drug_nicotine";
ITEM.Name			= "Cigarette";
ITEM.Description	= "A cigarette, contains nicotine. Drugs are bad, mmkay?";
ITEM.Model			= "models/phycinnew.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 5;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Smoke";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You smoke the cigarette. You begin to feel more relaxed and everything around you appears more dull.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectBreen();
		
	end
	
end