ITEM.ID				= "oldboot";
ITEM.Name			= "Old Boot";
ITEM.Description	= "An old leather boot. Looks as if it has been fished out of the water. If you were desperate, you could eat it whole, or find a less demoralizing way of eating it.";
ITEM.Model			= "models/props_junk/Shoe001a.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 20;
ITEM.CamPos 		= Vector( 8.04, 49.11, 11.61 );
ITEM.LookAt 		= Vector( 0, 0, -1.26 );


ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You ate the old boot..... What did you think was going to happen genius?", { CB_ALL, CB_IC } );
		
	else
		
		ply:Kill();
		
	end
	
end