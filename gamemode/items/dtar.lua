ITEM.ID				= "dtar";
ITEM.Name			= "\"Tar\"";
ITEM.Description	= " Inside the jar would be a strange, black like sludge. The smell off of it would be horrendous, it'd smell as if someone's arm had been blended up and thrown in and left to ferment inside.";
ITEM.Model			= "models/bioshockinfinite/xoffee_mug_closed.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );
ITEM.Usable			= true;
ITEM.UseText		= "Inject";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You swish the mug around as you se a bit of black liquid with the sludge. You gulp it down, hoping for it to not come back up. It burns your mouth and troat as you take it down... It feels like there's a fire inside of you for a moment before you suddenly daze about, seeming if you just drank a whole botle of vodka.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectVodka();
		
	end
	
end