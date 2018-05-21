ITEM.ID				= "cpsuppsmall";
ITEM.Name			= "CCA Suppliment (Small)";
ITEM.Description	= "A package labeled 'CCA Suppiments'. It holds a large cracker object.";
ITEM.Model			= "models/mres/consumables/zag_mre.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 19;
ITEM.CamPos 		= Vector( 15.18, 50, 50 );
ITEM.LookAt 		= Vector( 1.61, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and eat the suppliments. It was a large cracker.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 30, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 20, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end