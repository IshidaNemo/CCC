ITEM.ID				= "hobo";
ITEM.Name			= "Hobo Soup";
ITEM.Description	= "A concoction of random, somewhat edible items. The main ingredient is an old leather boot.";
ITEM.Model			= "models/props_c17/metalPot001a.mdl";
ITEM.Weight 		= 3;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 175, 175, 175 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You eat the soup, a little part of you dies at how low you have sunk.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 5, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end