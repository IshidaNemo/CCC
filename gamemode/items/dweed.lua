ITEM.ID				= "dweed";
ITEM.Name			= "\"Cigarette\"";
ITEM.Description	= "A strange smeling cigarette, it's obiously not a normal union one.";
ITEM.Model			= "models/phycitnew.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 5;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );
ITEM.Usable			= true;
ITEM.UseText		= "Smoke";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You smoke the 'igarette. You begin to feel more relaxed and everything around you appears more dull, you feel almost like a kite.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectBreen();
		
	end
	
end