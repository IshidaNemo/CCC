ITEM.ID				= "clothes_shirt_rebelcoat";
ITEM.Name                       = "Rebel Vest with Trenchcoat"
ITEM.Description        = "A modified metrocop vest worn with Lambda insignia and armpads. Worn with an old coat over."
ITEM.Model			= "models/tnb/items/trenchcoat.mdl";
ITEM.Weight             = 2
ITEM.FOV                        = 39
ITEM.CamPos             = Vector(1.5, -11.6, 45.54)
ITEM.LookAt             = Vector(1.61, 4.83, -1.6)
ITEM.Skin = 0
ITEM.BulkPrice          = 675
ITEM.License            = LICENSE_BLACK
local name = ITEM.Name
local ClothingType = 1 -- 1: Shirt 2: Pants 3: Glothes 4: Head Gear
local Bodygroup = 12
local CType = "shirt"
local CType2 = "Shirt"
local name2 = "Rebel (Coat)"


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
			if SERVER then
				ply:SetArmor(ply:Armor() - 75)
			end
		end
		return
	end

	ply:SetBodygroup(ClothingType,Bodygroup)
	ply["Clothes_"..ClothingType] = Bodygroup
	if SERVER then
		ply:SendLua([[GAMEMODE:AddChat( Color( 255,255,255, 255 ), "CombineControl.ChatRadio", "[CLOTHES] You have equipped your ]].. name2 .. [[ ]] .. CType2 .. [[!", { CB_ALL, CB_IC } );]])
	end
	if SERVER then
		ply:SetArmor(ply:Armor() + 75)
	end
end


if SERVER then
	hook.Add("PlayerDeath", "XenoClothes"..CType, function(ply)

		ply["Clothes_"..ClothingType] = nil

	end)
end



