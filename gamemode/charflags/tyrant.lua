
-----------------------------------------------------
FLAG.PrintName 					= "Tyrant"
FLAG.Flag 						= "T"

FLAG.Team						= TEAM_SYNTHETIC
FLAG.Loadout					= {"weapon_cc_hands", "weapon_cc_art"}
FLAG.CharName					= "UU.C17-TYRANT.$CID"
FLAG.Health						= 10000
FLAG.Armor						= 1000
FLAG.UseCombineRadio 			= true
FLAG.IgnoreTravelRestriction	= true
FLAG.Scale = 1.5

function FLAG.ModelFunc(ply)
	return "models/tnb/combine/synth_soldier.mdl"
end

function FLAG.OnSpawn(ply)
	ply:SetHull(Vector(-16, -16, 0) * FLAG.Scale, Vector(16, 16, 72) * FLAG.Scale)
end
