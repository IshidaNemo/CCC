ITEM.ID				= "drug_extract";
ITEM.Name			= "Antlion Extract";
ITEM.Description	= "A container containing an orange colored liquid. The liquid looks solid, like gelatin, but can still be consumed. A label with the words Matt's Research; Antlion Extract is taped crudely unto the container.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Drink";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You take the drug.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectExtract();
		
	else
		
		ply:DoDrug( DRUG_EXTRACT );
		
	end
	
end