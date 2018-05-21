ITEM.ID				= "biosupplarge";
ITEM.Name			= "Biotic Suppliment (Large)";
ITEM.Description	= "A package labeled 'Biotic Suppiments'. It holds a large squishy cracker. For good Biotics only.";
ITEM.Model			= "models/probs_misc/tobbcco_box-1.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 10;
ITEM.CamPos 		= Vector( 50, -13.39, 50 );
ITEM.LookAt 		= Vector( -2.19, 0.27, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and eat the suppliments. Tasted horrible and squishy.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 20, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end