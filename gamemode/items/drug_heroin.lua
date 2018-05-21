ITEM.ID				= "drug_heroin";
ITEM.Name			= "Diamorphine";
ITEM.Description	= "(HEROIN) An opioid pain killer. It is also used less commonly as a cough suppressant and as an antidiarrhoeal. Heroin is used as a recreational drug for its euphoric effects. Frequent and regular administration is associated with tolerance and physical dependence.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 25;
ITEM.License		= LICENSE_MISC;

ITEM.Usable			= true;
ITEM.UseText		= "Inject";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You inject heroin into your blood stream. You immediatly start feeling strange effects.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectVodka();
		
	end
	
end