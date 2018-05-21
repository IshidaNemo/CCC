ITEM.ID				= "itemdev";
ITEM.Name			= "Breen's Water";
ITEM.Description	= "A can of Breen Water. Rumor says that the water has chemicals added that makes you forget.";
ITEM.Model			= "models/props_junk/PopCan01a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 14;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You drink the water, as you begin foaming from the mouth, falling to the floor.", { CB_ALL, CB_IC } );
		
	else
		
		ply:Kill();
		
	end
	
end