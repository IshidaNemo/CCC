ITEM.ID= "steelplatecivilian";
ITEM.Name= "10mm Thick Steel Plate";
ITEM.Description= "It's a 10mm thick steel plate. You could probably use this for /something/.";
ITEM.Model= "models/gibs/scanner_gib02.mdl";
ITEM.Weight = 1;
ITEM.FOV 			= 26;
ITEM.CamPos 		= Vector( 38.4, 33.04, -16.96 );
ITEM.LookAt 		= Vector( 0, 0, 0 );

ITEM.BulkPrice= 35;
ITEM.License= LICENSE_BLACK;

ITEM.Usable= true;
ITEM.UseText= "Use";
ITEM.DeleteOnUse= true;

local Armour = 25

ITEM.OnPlayerUse= function(item,ply)
	if ply:Armor() >= 100 then
		if CLIENT then
			GAMEMODE:AddChat( Color( 200, 200, 200, 255 ), "CombineControl.ChatNormal", "You already shoved enough armor into your shirt or whatever. Adding more would be foolish.", { CB_ALL, CB_IC } );
		end
		
		return true;
	end
	if SERVER then
		ply:SetArmor( math.Clamp(ply:Armor()+Armour,0,100) )
	end
end