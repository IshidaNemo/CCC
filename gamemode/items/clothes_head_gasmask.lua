ITEM.ID				= "clothes_head_gasmask";
ITEM.Name			= "Gasmask";
ITEM.Description= "An old Russian gasmask."
ITEM.Model			= "models/tnb/items/gasmask.mdl";
ITEM.Weight = 0.5
ITEM.FOV 			= 14;
ITEM.CamPos 		= Vector( 24.11, -50, 33.04 );
ITEM.LookAt 		= Vector( -1.6, 1.61, 1.61 );
ITEM.Skin = 0
ITEM.BulkPrice= 80
ITEM.License= LICENSE_BLACK

local name = ITEM.Name
local ClothingType = 4 -- 1: Shirt 2: Pants 3: Glothes 4: Head Gear
local Bodygroup = 2
local CType = "head"
local CType2 = "Headgear"
local name2 = "Gasmask"


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



