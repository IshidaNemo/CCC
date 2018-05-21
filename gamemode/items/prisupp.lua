ITEM.ID				= "prisupp";
ITEM.Name			= "Priority Suppliment";
ITEM.Description	= "A box labeled 'Priority Suppiments'. It contains the best meal.";
ITEM.Model			= "models/probs_misc/tobdcco_box-1.mdl";
ITEM.Weight 		= 2;
ITEM.FOV 			= 10;
ITEM.CamPos 		= Vector( 50, -13.39, 50 );
ITEM.LookAt 		= Vector( -2.19, 0.27, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open and eat the suppliments. It included a small chicken and even some mashed potatoes.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 50, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 40, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end