ITEM.ID				= "burger";
ITEM.Name			= "Cooked Burger";
ITEM.Description	= "It's a piece of random meat in between two pieces of bread. It also has a slice of cheese to hide the taste of mold from the bread.";
ITEM.Model			= "models/food/burger.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 29;
ITEM.CamPos 		= Vector( 22.33, -6.25, 20.54 );
ITEM.LookAt 		= Vector( -4.82, 1.61, 8.04 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You bite into the burger and as the juices of the burger flowo down your chin like a gentle spring stream you take another bite, and yet another until there is nothing left. You feel yourself craving more.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 45, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 30, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end