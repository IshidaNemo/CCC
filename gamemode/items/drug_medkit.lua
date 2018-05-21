ITEM.ID				= "drug_medkit";
ITEM.Name			= "Medigel Powder";
ITEM.Description	= "A variant of Overwatch. The container contains white powder that may be snorted.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.Usable			= true;
ITEM.UseText		= "Snort";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You snort the powder.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectMedkit();
		
	end
	
end