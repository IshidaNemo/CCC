ITEM.ID				= "drug_shroom";
ITEM.Name			= "Psilocybin Mushroom";
ITEM.Description	= "A jar full of suspecious looking mushrooms. The label is ripped off, and written in marker says 'Psilocybin Mushroom'.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 25;
ITEM.License		= LICENSE_BLACK;

ITEM.Usable			= true;
ITEM.UseText		= "Eat";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You eat the mushroom.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectExtract();
		
	else
		
		ply:DoDrug( DRUG_EXTRACT );
		
	end
	
end