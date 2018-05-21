ITEM.ID				= "citizensuppliment";
ITEM.Name			= "Standard Citizen Suppliment";
ITEM.Description	= "A suppliment produced and provided by the Union. It contains liquified forms of proteins and nutrients poured into a bundle of edible plant fiber.";
ITEM.Model			= "models/foodnhouseholdaaaaa/combirationb.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 20;
ITEM.CamPos 		= Vector( -50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );
ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.License		= LICENSE_FOOD;
ITEM.SinglePrice		= 30;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You pop open the bag, you look inside and see the contents, they seem like some sort of pills and grains.", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 40, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 15, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end