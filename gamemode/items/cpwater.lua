ITEM.ID				= "cpwater";
ITEM.Name			= "CCA Water";
ITEM.Description	= "A jet-black can of water, fit for the quick moving CCA Unit.";
ITEM.Model			= "models/props_cunk/popcan01a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0.18 );

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and drink the entire can. It doesn't taste half bad.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end