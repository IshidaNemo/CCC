ITEM.ID				= "milkcarton";
ITEM.Name			= "Milk Carton";
ITEM.Description	= "An old carton of milk from 1999. The outside of the carton has worn away, making the brand of milk unidentifiable. The inside of the carton has large, gelatin like blobs that may or may not be the expired milk.";
ITEM.Model			= "models/props_junk/garbage_milkcarton002a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 12;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.SinglePrice		= 5;
ITEM.License		= LICENSE_FOOD;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You drink the carton of milk.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end