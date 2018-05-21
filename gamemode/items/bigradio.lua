ITEM.ID				= "bigradio";
ITEM.Name			= "Radio";
ITEM.Description	= "It's a large radio from the 60s. It was modified so that it may be used to communicate with the other side while being able to hear the other person clearly. It is very loud, and can be heard if not weary.";
ITEM.Model			= "models/props_lab/citizenradio.mdl";
ITEM.Weight 		= 10;
ITEM.FOV 			= 42;
ITEM.CamPos 		= Vector( 50, 0.66, 11.39 );
ITEM.LookAt 		= Vector( 0, 0, 7.63 );

ITEM.SinglePrice		= 100;
ITEM.License		= LICENSE_BLACK;

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
		
		local e = ents.Create( "cc_radio" );
		e:SetPos( tr.HitPos + tr.HitNormal * 10 );
		e:SetAngles( Angle() );
		e:Spawn();
		e:Activate();
		e:SetDeployer( ply:CharID() );
		
		e:SetPropSteamID( ply:SteamID() );
		
	end
	
end