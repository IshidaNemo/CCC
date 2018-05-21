ITEM.ID				= "combinemine";
ITEM.Name			= "Combine Mine";
ITEM.Description	= "The Combine Shield Hopper Mine is an anti-personnel proximity mine.";
ITEM.Model			= "models/props_combine/combine_mine01.mdl";
ITEM.Weight 		= 7;
ITEM.FOV 			= 28;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 2.71 );

ITEM.Usable			= true;
ITEM.UseText		= "Place";
ITEM.DeleteOnUse	= true;
ITEM.OnPlayerUse	= function( self, ply )
	
	if( SERVER ) then
		
		local trace = { };
		trace.start = ply:GetShootPos();
		trace.endpos = trace.start + ply:GetAimVector() * 50;
		trace.filter = ply;
		
		local tr = util.TraceLine( trace );
		
		local ent = ents.Create( "combine_mine" );
		ent:SetPos( tr.HitPos );
		ent:SetAngles( ply:GetAngles() );
		ent:Spawn();
		ent:Activate();
		
	end
	
end