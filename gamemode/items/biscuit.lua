ITEM.ID				= "biscuit";
ITEM.Name			= "Small Biscuit";
ITEM.Description	= "A warm, fluffy biscuit. Just like how mom used to make.";
ITEM.Model			= "models/gibs/antlion_gib_small_2.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.SinglePrice		= 4;
ITEM.License		= LICENSE_FOOD;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You crunch down on the biscuit, you could've sworn you heard one of your teeth break.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 25, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 25, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end