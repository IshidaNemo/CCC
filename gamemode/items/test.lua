ITEM.ID                  = "test";
ITEM.Name                = "Civil Protection Uniform";
ITEM.Description         = "A basic civil protection uniform.";
ITEM.Model               = "models/props_junk/wood_crate001a.mdl";
ITEM.Weight              = 8;
ITEM.FOV                 = 40;
ITEM.CamPos              = Vector( 50, 50, 50 );
ITEM.LookAt              = Vector( 0, 0, 8.17 );

ITEM.BulkPrice           = 800;
ITEM.License             = LICENSE_BLACK;

ITEM.Usable             = true;
ITEM.UseText            = "Wear/remove";
ITEM.DeleteOnUse        = false;
ITEM.OnPlayerUse        = function( self, ply )

                ply:SetBodygroup( 1 , 6 )
				ply:SetBodygroup( 2 , 3 )
				ply:SetBodygroup( 4 , 2 )
				ply:SetBodygroup( 3 , 1 )
                if SERVER then

        ply:SetArmor( 100 );
        end
end
ITEM.OnRemoved                = function( self,ply )
                ply:SetBodygroup( 1 , 0 )
				ply:SetBodygroup( 2 , 0 )
				ply:SetBodygroup( 4 , 0 )
				ply:SetBodygroup( 3 , 0 )
                if SERVER then
        
        ply:SetArmor(0)
        end
end        
 if SERVER then

	hook.Add("PlayerDeath", "XenoClothes"..CType, function(ply)



		ply["Clothes_"..ClothingType] = nil



	end)

end