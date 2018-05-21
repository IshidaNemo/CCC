ITEM.ID				= "dcola";
ITEM.Name			= "\"Cola\"";
ITEM.Description	= "A can, it seems to have had it's lable removed. The top is slightly cracked open.";
ITEM.Model			= "models/props_nunk/popcan01a.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );
ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open up the can, drinking it. It's flavor is rather noice, leaving a slight sweet after tastye. You feel full of energy, like you could run a marathon.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectAntlion();
		
	else
		
		ply:DoDrug( DRUG_ANTLION );
		
	end
	
end