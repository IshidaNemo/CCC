ITEM.ID				= "clearwater";
ITEM.Name			= "Clean Breen Water";
ITEM.Description	= "A distilled can of Breen Water. The water was distilled and all the chemicals normally found in standard Breen Water have been removed. This item is illegal to have in possesion.";
ITEM.Model			= "models/props_nunk/popcan01a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0.18 );

ITEM.SinglePrice		= 7;
ITEM.License		= LICENSE_FOOD;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and drink the entire bottle.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 20, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end