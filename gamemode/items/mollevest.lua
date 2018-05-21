ITEM.ID				= "mollevest";
ITEM.Name			= "MOLLE Vest";
ITEM.Description	= "A military grade MOLLE vest. Has a class 3 rating, and can stop up to .338 Lapua rounds. ";
ITEM.Model			= "models/tnb/items/shirt_rebel_molle.mdl";
ITEM.Weight 		= 2;
ITEM.FOV 			= 40;
ITEM.CamPos 		= Vector( 50, 50, 50 );
ITEM.LookAt 		= Vector( 0, 0, 8.17 );

ITEM.Usable			= true;
ITEM.UseText		= "Wear";
ITEM.DeleteOnUse	= false;
ITEM.OnPlayerUse        = function( self, ply )

                ply:SetBodygroup( 1 , 15 )
                if SERVER then
        
        ply:SetArmor(100);
        end
end        

ITEM.OnRemoved                = function( self,ply )

                ply:SetBodygroup( 1 , 0 )
                if SERVER then
        
        ply:SetArmor(0);
        end
end        