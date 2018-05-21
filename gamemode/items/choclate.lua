ITEM.ID				= "choclate";
ITEM.Name			= "Chocolate Bar";
ITEM.Description	= "A bar of UU branded chocolate, a delicacy in this dying world.";
ITEM.Model			= "models/bioshockinfinite/hext_candy_chocolate.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 6;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You eat the chocolate bar, it is slightly melted but it taste like a heaven and you seem to detect a hint of nutmeg.", { CB_ALL, CB_IC } );
		
	else
		
		if( !ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 10, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end