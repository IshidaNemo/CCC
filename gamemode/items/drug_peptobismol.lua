ITEM.ID				= "drug_peptobismol";
ITEM.Name			= "Bismuth Subsalicylate";
ITEM.Description	= "A pink bottle that lables 'Pepto-Bismol'. May temporarly treat stomach pain, diarrhea, indigestion, heartburn, and nausea.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 15;
ITEM.License		= LICENSE_MISC;

ITEM.Usable			= true;
ITEM.UseText		= "Consume";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You consume the medicine.", { CB_ALL, CB_IC } );
		
	end
	
end