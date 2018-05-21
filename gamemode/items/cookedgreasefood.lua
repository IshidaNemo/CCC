ITEM.ID				= "cookedgreasefood";
ITEM.Name			= "Cooked Bag of Food";
ITEM.Description	= "A greasy bag filled with random morsels of fried food. It smells of old grease.";
ITEM.Model			= "models/props_junk/garbage_bag001a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 20;
ITEM.CamPos 		= Vector( -50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open the bag, looking inside, you take out the items inside, garfing them down within seconds, You've got grease on your chin now.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 60, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 50, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end