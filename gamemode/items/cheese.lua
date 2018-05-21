ITEM.ID				= "cheese";
ITEM.Name			= "Cheese";
ITEM.Description	= "Cheese: A large wheel of cheese with the Universal Union symbol stamped all over it.";
ITEM.Model			= "models/bioshockinfinite/pound_cheese.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 12;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You rip apart the cheese eating whatever salvageable parts you can find and disposing of the rest.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 5, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end