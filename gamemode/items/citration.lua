ITEM.ID				= "citration";
ITEM.Name			= "Citizen Ration";
ITEM.Description	= "A blue ration labeled 'Normal Grade'. Contains all the needs of citizen life.";
ITEM.Model			= "models/weapons/w_packatc.mdl";
ITEM.Weight 		= 5;

ITEM.Usable			= true;
ITEM.UseText		= "Open";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( ply:HasAnyCombineFlag() ) then
		
		if( CLIENT ) then
			
			GAMEMODE:AddChat( Color( 200, 0, 0, 255 ), "CombineControl.ChatNormal", "You don't eat citizen rations! You're above that! Get a CP ration from the loadout.", { CB_ALL, CB_IC } );
			
		end
		
		return true;
		
	end
	
	if( CLIENT ) then
		
		if( ply:HasTrait( TRAIT_LUCKY ) ) then
			
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open the ration and take the contents. As is usual for you, the contents seem a bit jumbled up.", { CB_ALL, CB_IC } );
			
		else
			
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open the ration and take the contents.", { CB_ALL, CB_IC } );
			
		end
		
	else
		
		if( ply:HasTrait( TRAIT_LUCKY ) ) then
			
			local r = math.random( 1, 2 );
			
			if( r != 1 ) then
				
				ply:GiveItem( "water" );
				
			end
			
			r = math.random( 1, 2 );
			
			if( r != 1 ) then
				
				ply:GiveItem( "citsupp" );
				
			end
			
			ply:AddMoney( 20 + math.random( 10, 20 ) );
			ply:UpdateCharacterField( "Money", tostring( ply:Money() ) );
			
			return;
			
		end
		
		ply:GiveItem( "water" );
		ply:GiveItem( "citsupp" );
		
		ply:AddMoney( 20 );
		ply:UpdateCharacterField( "Money", tostring( ply:Money() ) );
		
	end
	
end