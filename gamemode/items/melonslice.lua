ITEM.ID				= "melonslice";
ITEM.Name			= "Melon Slice";
ITEM.Description	= "A slice of of watermelon. It's red and juicy, and has black seeds within the fruit.";
ITEM.Model			= "models/props_junk/watermelon01_chunk01b.mdl";
ITEM.Weight 		= 2;
ITEM.FOV 			= 14;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 30;
ITEM.License		= LICENSE_FOOD;

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You eat the entire melon. You must have been hungry.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 25, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 12.5, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end