ITEM.ID				= "40beer";
ITEM.Name			= "UU-Branded 40 oz. Beer";
ITEM.Description	= "A large bottle of beer. It's probably just vinegar by now.";
ITEM.Model			= "models/props_junk/garbage_glassbottle002a.mdl";
ITEM.Weight 		= 2;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 60;
ITEM.License		= LICENSE_ALCOHOL;

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You drink the entire bottle of beer.", { CB_ALL, CB_IC } );
		
		local random = math.random( 1, 2 );
		
		if( random != 1 ) then
		
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "It tastes cheap and stale.", { CB_ALL, CB_IC } );
			
		else
		
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "It tastes sours just like vinegar.", { CB_ALL, CB_IC } );
			
		end
	
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