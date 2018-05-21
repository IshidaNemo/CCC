ITEM.ID				= "drug_epipen";
ITEM.Name			= "Epinephrine";
ITEM.Description	= "It can treat severe asthma attacks and allergic reactions (including anaphylaxis) in an emergency situation.";
ITEM.Model			= "models/props_c17/TrapPropeller_Lever.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 9;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 5.02 );

ITEM.BulkPrice		= 20;
ITEM.License		= LICENSE_MISC;

ITEM.Usable			= true;
ITEM.UseText		= "Inject";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You inject the epinephrine.", { CB_ALL, CB_IC } );
		
	else
		
		ply:SetHealth( math.min( ply:Health() + 20, 100 ) );
		
	end
	
end