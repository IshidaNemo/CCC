ITEM.ID				= "cmdcpuniform";
ITEM.Name			= "Civil Protection Uniform";
ITEM.Description	= "[This is for default models, not TnB.] A box containing a standard-issue CP uniform for CmDs.";
ITEM.Model			= "models/Items/item_item_crate.mdl";
ITEM.Weight 		= 6;
ITEM.FOV 			= 40;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 8.17 );

ITEM.Uniform		= function( self, ply )
	
	if( string.find( ply:GetModel(), "group01" ) ) then
		
		if( ply:Gender() == GENDER_FEMALE ) then
			
			return "models/metropolice/playermodels/pm_cmd_police_v2.mdl";
			
		end
		
		return "models/metropolice/playermodels/pm_cmd_police.mdl";
		
	end
	
end
ITEM.UniformColor	= Color( 60, 20, 20, 255 );