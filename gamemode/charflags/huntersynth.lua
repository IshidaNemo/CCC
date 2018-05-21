
-----------------------------------------------------
FLAG.PrintName 					= "Combine Hunter"
FLAG.Flag 						= "H"

FLAG.Team						= TEAM_SYNTHETIC
FLAG.Loadout					= {"weapon_cc_hunter"}
FLAG.Health						= 2500
FLAG.Armor						= 1000
FLAG.CharName					= "UU.C17-HUNTER.$CID" -- for combine roster usage
FLAG.UseCombineRadio 			= true
FLAG.IgnoreTravelRestriction	= true
FLAG.EventAllowed				= true

function FLAG.ModelFunc(ply)
	return "models/hunter.mdl"
end

function FLAG.OnSpawn(ply)
	ply:SetHull(Vector(-18, -18, 0), Vector(18, 18, 100))
end