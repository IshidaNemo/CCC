ITEM.ID				= "drug_morphine";
ITEM.Name			= "Morphine Injector";
ITEM.Description	= "[WARNING] A large overdose can cause asphyxia and death by respiratory depression if the person does not receive medical attention immediately. Overdose treatment includes the administration of naloxone. The latter completely reverses morphine's effects, but may result in immediate onset of withdrawal in opiate-addicted subjects. Multiple doses may be needed.";
ITEM.Model			= "models/props_c17/TrapPropeller_Lever.mdl";
ITEM.Weight 		= 0.5;
ITEM.FOV 			= 9;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 5.02 );

ITEM.BulkPrice		= 25;
ITEM.License		= LICENSE_MISC;

ITEM.Usable			= true;
ITEM.UseText		= "Inject";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You inject the morphine.", { CB_ALL, CB_IC } );
		
	else
		
		ply:SetHealth( math.min( ply:Health() + 20, 100 ) );
		
	end
	
end