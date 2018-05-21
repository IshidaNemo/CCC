ITEM.ID				= "cigarettes";
ITEM.Name			= "Box of Cigarettes";
ITEM.Description	= "An old box of cigarettes.";
ITEM.Model			= "models/closedboxshin.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 5;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 15;
ITEM.License		= LICENSE_MISC;

ITEM.Usable			= true;
ITEM.UseText		= "Open";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You open the box of cigarettes.", { CB_ALL, CB_IC } );
			
		else
		
		ply:GiveItem( "drug_nicotine" );
		ply:GiveItem( "drug_nicotine" );
		ply:GiveItem( "drug_nicotine" );
		ply:GiveItem( "drug_nicotine" );
		ply:GiveItem( "drug_nicotine" );
		ply:GiveItem( "drug_nicotine" );
		
		end
	
end