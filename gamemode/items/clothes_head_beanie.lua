ITEM.ID				= "clothes_head_beanie";
ITEM.Name			= "Beanie";
ITEM.Description= "A warm wolly hat."
ITEM.Model			= "models/tnb/items/beanie.mdl";
ITEM.Weight = 0.5
ITEM.FOV 			= 23;
ITEM.CamPos 		= Vector( -0.89, -18.75, 34.83 );
ITEM.LookAt 		= Vector( 1.61, 53.04, -90 );
ITEM.Skin = 0
ITEM.BulkPrice= 50
ITEM.License= LICENSE_MISC
local name = ITEM.Name
local ClothingType = 4 -- 1: Shirt 2: Pants 3: Glothes 4: Head Gear
local Bodygroup = 3
local CType = "head"
local CType2 = "Headgear"
local name2 = "Beanie"


ITEM.Usable			= true;
ITEM.UseText		= "Wear/Remove";
ITEM.DeleteOnUse	= false;
ITEM.OnPlayerUse	= function( self, ply ) 

	if ply["Clothes_"..ClothingType] then
		if ply["Clothes_"..ClothingType] != Bodygroup and SERVER then
			if SERVER then
				ply:SendLua([[GAMEMODE:AddChat( Color( 255,255,255, 255 ), "CombineControl.ChatRadio", "[CLOTHES] You already have a ]] .. CType .. [[ equipped!", { CB_ALL, CB_IC } );]])
			end
		else
			ply["Clothes_"..ClothingType] = nil
			ply:SetBodygroup(ClothingType,0)
			if SERVER then
				ply:SendLua([[GAMEMODE:AddChat( Color( 255,255,255, 255 ), "CombineControl.ChatRadio", "[CLOTHES] You have equipped your Citizen ]] .. CType2 .. [[!", { CB_ALL, CB_IC } );]])
			end
		
		end
		return
	end

	ply:SetBodygroup(ClothingType,Bodygroup)
	ply["Clothes_"..ClothingType] = Bodygroup
	if SERVER then
		ply:SendLua([[GAMEMODE:AddChat( Color( 255,255,255, 255 ), "CombineControl.ChatRadio", "[CLOTHES] You have equipped your ]].. name2 .. [[ ]] .. CType2 .. [[!", { CB_ALL, CB_IC } );]])
	end
end


if SERVER then
	hook.Add("PlayerDeath", "XenoClothes"..CType, function(ply)

		ply["Clothes_"..ClothingType] = nil

	end)
end



