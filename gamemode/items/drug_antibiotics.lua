ITEM.ID				= "drug_antibiotics";
ITEM.Name			= "Antibiotics";
ITEM.Description	= "A jar full of pills that may help cure sickness.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 30;
ITEM.License		= LICENSE_MISC;

ITEM.Usable			= true;
ITEM.UseText		= "Consume";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You swallow the pills.", { CB_ALL, CB_IC } );
		
	end
	
end