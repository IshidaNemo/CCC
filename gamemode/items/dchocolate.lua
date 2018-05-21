ITEM.ID				= "dchocolate";
ITEM.Name			= "\"Chocolate\"";
ITEM.Description	= "A normal UU chocolate bar. The wrapper would be ruffled, obviously tampered with. ";
ITEM.Model			= "models/bioshockinfinite/hext_candy_chocolate.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );
ITEM.Usable			= true;
ITEM.UseText		= "Consume";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You tear open the wrapper, the chocolate like substance sticky to the wrapper. Eating away at what seems like melted chocolate, the taste is that of chcocolate, but with a sour hint... The after taste leaves something almost like vinegar in your mouth.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectMedkit();
		
	end
	
end