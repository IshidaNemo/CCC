
-----------------------------------------------------
FLAG.PrintName 	= "Scanner"
FLAG.Flag 		= "c"
FLAG.Armor = 50FLAG.Health = 100
FLAG.UseCombineRadio = true
FLAG.Team		= TEAM_COMBINE
FLAG.Loadout	= { "weapon_cc_scanner" }
FLAG.IgnoreTravelRestriction 	= true


function FLAG.ModelFunc( ply )
	return "models/combine_scanner.mdl"
end

function FLAG.OnSpawn( ply )

	ply:SetMoveType( MOVETYPE_FLY )
	ply:SetViewOffset( Vector(0, 0, 10) )
	ply:SetViewOffsetDucked( Vector(0, 0, 10) )
	ply:EmitSound("scanner_loop")
	ply:SetBloodColor(DONT_BLEED)
	ply:SetHull(Vector(-16,-16,-16), Vector(16,16,16))
	ply:SetMoveCollide(MOVECOLLIDE_FLY_BOUNCE)
	ply:SetGravity(0)
end

sound.Add( {
	name = "scanner_loop",
	channel = CHAN_STREAM,
	volume = 1.0,
	level = 40,
	pitch = {110, 180},
	sound = "npc/scanner/scanner_scan_loop1.wav"
} )
