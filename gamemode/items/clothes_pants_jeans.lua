ITEM.ID				= "clothes_pants_jeans";
ITEM.Name= "Dirty Jeans"
ITEM.Description= "A pair of old worn blue jeans."
ITEM.Model			= "models/tnb/items/pants_citizen.mdl";
ITEM.Weight = 1
ITEM.FOV = 20
ITEM.CamPos = Vector(0, -50, 50)
ITEM.LookAt = Vector(-1.6, 1.61, -1.6)
ITEM.Skin = 0
ITEM.BulkPrice= 50
ITEM.License= LICENSE_MISC

local name = ITEM.Name
local ClothingType = 2 -- 1: Shirt 2: Pants 3: Glothes 4: Head Gear
local Bodygroup = 1
local CType = "pants"
local CType2 = "Pants"
local name2 = "Jeans"


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



