ITEM.ID				= "specialwater";
ITEM.Name			= "Special Breen Water";
ITEM.Description	= "A can of water, enhanced with bubbles. The best of the water.";
ITEM.Model			= "models/props_lunk/popcan01a.mdl";
ITEM.Skin			= 2;
ITEM.Weight 		= 1;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0.18 );

ITEM.BulkPrice		= 10;
ITEM.License		= LICENSE_FOOD;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and drink the entire can. It goes down smooth.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end