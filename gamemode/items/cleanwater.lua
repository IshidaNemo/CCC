ITEM.ID				= "cleanwater";
ITEM.Name			= "Clean Water";
ITEM.Description	= "An illegal can of pure water. No memory impairment at all!";
ITEM.Model			= "models/props_nunk/popcan01a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0.18 );

ITEM.BulkPrice		= 20;
ITEM.License		= LICENSE_BLACK;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and drink the entire can. It's the best water you ever had.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 20, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end