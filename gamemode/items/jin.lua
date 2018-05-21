ITEM.ID				= "jin";
ITEM.Name			= "Gin";
ITEM.Description	= "An old bottle of gin. The liquid inside is greenish in color, and smells strongly of vaporrub.";
ITEM.Model			= "models/bioshockinfinite/jin_bottle.mdl";
ITEM.Weight 		= 2;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 5.56 );

ITEM.SinglePrice		= 100;
ITEM.License		= LICENSE_BLACK;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and drink the gin it has a strong flavour.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 15, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			ply:SetHealth( math.min( ply:Health() + 15, 100 ) );
			
		end
		
	end
	
end