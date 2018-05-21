ITEM.ID				= "bioration";
ITEM.Name			= "Biotic Ration";
ITEM.Description	= "A green ration labeled 'Biotic Grade'. It makes you sick to even hold it.";
ITEM.Model			= "models/weapons/w_packatb.mdl";
ITEM.Weight 		= 5;

ITEM.Usable			= true;
ITEM.UseText		= "Open";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( ply:HasAnyCombineFlag() ) then
		
		if( CLIENT ) then
			
			GAMEMODE:AddChat( Color( 200, 0, 0, 255 ), "CombineControl.ChatNormal", "You'd have to be crazy to open one of these as a unit.", { CB_ALL, CB_IC } );
			
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
				
				ply:GiveItem( "biowater" );
				
			end
			
			r = math.random( 1, 2 );
			
			if( r != 1 ) then
				
				ply:GiveItem( "biosupp" );
				
			end
			
			ply:AddMoney( 5 + math.random( 2, 5 ) );
			ply:UpdateCharacterField( "Money", tostring( ply:Money() ) );
			
			return;
			
		end
		
		ply:GiveItem( "biowater" );
		ply:GiveItem( "biosupp" );
		
		ply:AddMoney( 5 );
		ply:UpdateCharacterField( "Money", tostring( ply:Money() ) );
		
	end
	
end