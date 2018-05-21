ITEM.ID				= "clothes_gloves";
ITEM.Name= "Gloves"
ITEM.Description= "Warm Winter Gloves"
ITEM.Model			= "models/tnb/items/gloves.mdl";
ITEM.Weight = 0.5
ITEM.FOV = 5
ITEM.CamPos = Vector(50, 50, 50)
ITEM.LookAt = Vector(0, 0, 0)
ITEM.Skin = 0

ITEM.BulkPrice= 30
ITEM.License= LICENSE_MISC

local name = ITEM.Name
local ClothingType = 3 -- 1: Shirt 2: Pants 3: Glothes 4: Head Gear
local Bodygroup = 1
local CType = "gloves"
local CType2 = "Gloves"
local name2 = "Regular"


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



