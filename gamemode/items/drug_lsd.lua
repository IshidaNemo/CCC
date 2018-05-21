ITEM.ID				= "drug_lsd";
ITEM.Name			= "Lysergic Acid Diethylamide";
ITEM.Description	= "Lysergic acid diethylamide (LSD), also known as acid, is a psychedelic drug known for its psychological effects. This may include altered awareness of the surroundings, perceptions, and feelings as well as hallucinations.";
ITEM.Model			= "models/props_lab/jar01b.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 11;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice		= 25;
ITEM.License		= LICENSE_BLACK;

ITEM.Usable			= true;
ITEM.UseText		= "Consume";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( CLIENT ) then
		
		GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You swallow the drug.", { CB_ALL, CB_IC } );
		GAMEMODE:DrugEffectMedkit();
		
	end
	
end