ITEM.ID				= "biosupp";
ITEM.Name			= "Biotic Suppliment";
ITEM.Description	= "A package labeled 'Biotic Suppiments'. It holds a small squishy cracker.";
ITEM.Model			= "models/mres/consumables/lag_mre.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 19;
ITEM.CamPos 		= Vector( 15.18, 50, 50 );
ITEM.LookAt 		= Vector( 1.61, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and eat the suppliments. Tasted horrible and squishy.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 5, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end