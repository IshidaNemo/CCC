ITEM.ID				= "milkjug";
ITEM.Name			= "Milk Jug";
ITEM.Description	= "It's a plastic jug containing a white substance. There would be dents and tears in the plastic, closed off by the hardened milk that escaped the container. The inside would have a combination of gelatin-like blobs, and chalky, white solids.";
ITEM.Model			= "models/props_junk/garbage_milkcarton001a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 13;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.SinglePrice		= 5;
ITEM.License		= LICENSE_FOOD;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You drink the jug of milk. Maybe not a great idea.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 15, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end