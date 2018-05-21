ITEM.ID				= "vortstew";
ITEM.Name			= "Vortigaunt Stew";
ITEM.Description	= "A Concoction that only a vortigaunt is able to make mixed with multiple delicious things, making a nice stew, bringing a genuine flavor.";
ITEM.Model			= "models/props_c17/metalPot001a.mdl";
ITEM.Weight 		= 3;
ITEM.FOV 			= 7;
ITEM.CamPos 		= Vector( 175, 175, 175 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You eat the stew. It's extremely salty. As you chew through the pieces of meat, they would be extremely chewy..", { CB_ALL, CB_IC } );
		
	else
		
		if( ply:HasTrait( TRAIT_GLUTTON ) ) then
			
			ply:SetHunger( math.max( ply:Hunger() - 80, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		else
			
			ply:SetHunger( math.max( ply:Hunger() - 50, 0 ) );
			ply:UpdateCharacterField( "Hunger", ply:Hunger() );
			
		end
		
	end
	
end