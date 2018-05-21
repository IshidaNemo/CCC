ITEM.ID				= "priration";
ITEM.Name			= "Priority Ration";
ITEM.Description	= "A yellow ration labeled 'Priority Grade'. ";
ITEM.Model			= "models/weapons/w_packatp.mdl";
ITEM.Weight 		= 6;

ITEM.Usable			= true;
ITEM.UseText		= "Open";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )

	if( ply:HasAnyCombineFlag() ) then
		
		if( CLIENT ) then
			
			GAMEMODE:AddChat( Color( 200, 0, 0, 255 ), "CombineControl.ChatNormal", "It just won't open and shooting it won't either. Get your CP ration from the ration machine instead.", { CB_ALL, CB_IC } );
			
		end
		
		return true;
		
	end
	
	if( CLIENT ) then
		
		if( ply:HasTrait( TRAIT_LUCKY ) ) then
			
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open the ration and take the contents. As is usual for you, the contents seem a bit jumbled up.", { CB_ALL, CB_IC } );
			
		else
			
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open the ration and take the contents. It's a miracle.", { CB_ALL, CB_IC } );
			
		end
		
	else
		
		if( ply:HasTrait( TRAIT_LUCKY ) ) then
			
			local r = math.random( 1, 2 );
			
			if( r != 1 ) then
				
				ply:GiveItem( "soda" );
				
			end
			
			r = math.random( 1, 2 );
			
			if( r != 1 ) then
				
				ply:GiveItem( "prisupp" );
				
			end
			
			ply:AddMoney( 50 + math.random( 20, 30 ) );
			ply:UpdateCharacterField( "Money", tostring( ply:Money() ) );
			
			return;
			
		end
		
		ply:GiveItem( "soda" );
		ply:GiveItem( "prisupp" );
		
		ply:AddMoney( 50 );
		ply:UpdateCharacterField( "Money", tostring( ply:Money() ) );
		
	end
	
end