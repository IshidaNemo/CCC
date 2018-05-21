ITEM.ID				= "cpuniform";
ITEM.Name			= "Civil Protection Uniform";
ITEM.Description	= "A box containing a standard-issue CP uniform.";
ITEM.Model			= "models/tnb/items/shirt_metrocop.mdl";
ITEM.Weight 		= 6;
ITEM.FOV 			= 40;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 8.17 );


ITEM.SinglePrice		= 25000;
ITEM.License		= LICENSE_BLACK;

ITEM.Uniform		= function( self, ply )
	
	if( string.find( ply:GetModel(), "group01" ) ) then
		
		if( ply:IsFemale() ) then
			
			return "models/dpfilms/metropolice/playermodels/pm_female_police.mdl";
			
		end
		
		return "models/dpfilms/metropolice/playermodels/pm_resistance_police.mdl";
		
	end
	
end
