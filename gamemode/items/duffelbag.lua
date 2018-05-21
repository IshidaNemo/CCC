ITEM.ID				= "duffelbag";
ITEM.Name			= "Duffelbag";
ITEM.Description	= "A duffelbag. Useful for carrying more things.";
ITEM.Model			= "models/tnb/items/bag.mdl";
ITEM.Weight 		= 1;
ITEM.FOV 			= 25;
ITEM.CamPos 		= Vector( 2.56, -0.01, 50 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.CarryAdd		= 65;

ITEM.SinglePrice		= 750;
ITEM.License		= LICENSE_BLACK;

ITEM.ProcessEntity = function(self, ent)

	ent:SetSkin(1)

end

ITEM.IconSkin = 1