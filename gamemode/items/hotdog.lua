ITEM.ID				= "hotdog";
ITEM.Name			= "Cooked HotDog";
ITEM.Description	= "A piece of cooked meat within a hotdog bun drizzled in the coagulated blood of a headcrab as replacement for ketchup.";
ITEM.Model			= "models/food/hotdog.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( -4.82, 1.61, 8.04 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You eat the hot dog, and it leaves a little ketchup mark on your cheek.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 30, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 15, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end