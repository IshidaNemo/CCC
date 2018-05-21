-- URLs for web integration

GM.MOTDURL = "";
GM.SteamGroupURL = "";
GM.WebsiteURL = "";
GM.UpdatesURL = "";
GM.BooksURL = "";

-- Security

GM.PrivateMode = false;

GM.PrivateSteamIDs = {
	"STEAM_0:0:17359435", -- disseminate
};

GM.TestingClosedMessage = "This server is closed for testing!";

GM.AdminsCanSpawnSENTs = true;

-- Character Creation

GM.QuizEnabled = false;
GM.QuizQuestions = {
	-- Label, { options }, correct option
	{ "1. The farmer went _____ the market.", { "to", "too", "two" }, "to" },
	{ "2. What is 9 + 10?", { "21", "19", "Fish" }, "19" },
	{ "3. ______ is the name of the rebel scientist in Half-Life 2.", { "Kleiner", "Alyx", "Barney" }, "Kleiner" },
}

GM.IntroCinematicEnabled = false;
GM.IntroCamText = { };
GM.IntroCamText[1] = "Welcome to the server. This is a Half-Life 2-themed serious roleplay server.\n\nIf you were looking for something else, you can disconnect at any time.";
GM.IntroCamText[2] = "Citizens here live under control of the Combine. Create a character to start off - you're a citizen.\n\nStart a business, sell drugs, put up propaganda for the Combine, furnish an apartment, etc.";
GM.IntroCamText[3] = "The Combine forces are located in the Nexus. Breaking the law will get you punished.\n\nThey can and will beat you randomly, arrest you - or worse.\n\nYou can join them in the F3 menu after your character has existed for a day.";
GM.IntroCamText[4] = "City 18 isn't without its underground - you might find contraband, covert rebels, even black market dealers.\n\nBe sure to look around, but be quiet or the CCA may catch you.";
GM.IntroCamText[5] = "Please note this is an administrated server and admins reserve the right to take disciplinary action for whatever they see fit.\n\nCommon bannable things are punching everything, trying to farm stats, and improper names (you need a first and last name).\n\nJust be smart about what you do in-character vs. out-of-character.";
GM.IntroCamText[6] = "Good luck in City 18.\n\nPick a first and last name at the character creation prompt, and have fun!";

GM.IntroCinematicMusic = "music/hl2_song26_trainstation1.mp3";



GM.MinNameLength = 4;
GM.MaxNameLength = 40;

GM.MaxDescLength = 20000;

GM.MaxCharacters = 15;

GM.CitizenModels = {

	"models/tnb/citizens/male_01.mdl",

	"models/tnb/citizens/male_02.mdl",

	"models/tnb/citizens/male_03.mdl",

	"models/tnb/citizens/male_04.mdl",

	"models/tnb/citizens/male_05.mdl",

	"models/tnb/citizens/male_06.mdl",

	"models/tnb/citizens/male_07.mdl",

	"models/tnb/citizens/male_08.mdl",

	"models/tnb/citizens/male_09.mdl",

	"models/tnb/citizens/male_13.mdl",

	"models/tnb/citizens/male_14.mdl",

	"models/tnb/citizens/male_15.mdl",

	"models/tnb/citizens/male_16.mdl",

	"models/tnb/citizens/male_17.mdl",

	"models/tnb/citizens/male_18.mdl",

	"models/tnb/citizens/male_20.mdl",

	"models/tnb/citizens/male_21.mdl",

	"models/tnb/citizens/male_22.mdl",

	"models/tnb/citizens/male_23.mdl",

	"models/tnb/citizens/male_24.mdl",

	"models/tnb/citizens/male_25.mdl",

	"models/tnb/citizens/male_26.mdl",

	"models/tnb/citizens/male_27.mdl",

	"models/tnb/citizens/male_28.mdl",

	"models/tnb/citizens/male_30.mdl",

	"models/tnb/citizens/male_31.mdl",

	"models/tnb/citizens/male_33.mdl",

	"models/tnb/citizens/male_34.mdl",

	"models/tnb/citizens/male_35.mdl",

	"models/tnb/citizens/male_36.mdl",

	"models/tnb/citizens/male_37.mdl",

	"models/tnb/citizens/male_38.mdl",

	"models/tnb/citizens/male_39.mdl",

	"models/tnb/citizens/male_40.mdl",

	"models/tnb/citizens/male_41.mdl",

	"models/tnb/citizens/male_42.mdl",

	"models/tnb/citizens/male_43.mdl",

	"models/tnb/citizens/male_44.mdl",

	"models/tnb/citizens/male_45.mdl",

	"models/tnb/citizens/male_46.mdl",

	"models/tnb/citizens/male_47.mdl",

	"models/tnb/citizens/male_48.mdl",

	"models/tnb/citizens/male_49.mdl",

	"models/tnb/citizens/male_50.mdl",

	"models/tnb/citizens/male_52.mdl",

	"models/tnb/citizens/male_53.mdl",

	"models/tnb/citizens/male_54.mdl",

	"models/tnb/citizens/male_55.mdl",

	"models/tnb/citizens/male_56.mdl",

	"models/tnb/citizens/male_58.mdl",

	"models/tnb/citizens/male_59.mdl",

	"models/tnb/citizens/male_62.mdl",

	"models/tnb/citizens/male_63.mdl",

	"models/tnb/citizens/male_64.mdl",

	"models/tnb/citizens/male_65.mdl",

	"models/tnb/citizens/male_67.mdl",

	"models/tnb/citizens/male_69.mdl",

	"models/tnb/citizens/male_70.mdl",

	"models/tnb/citizens/male_71.mdl",

	"models/tnb/citizens/male_72.mdl",

	"models/tnb/citizens/male_73.mdl",

	"models/tnb/citizens/male_74.mdl",

	"models/tnb/citizens/male_76.mdl",

	"models/tnb/citizens/male_77.mdl",

	"models/tnb/citizens/male_79.mdl",

	"models/tnb/citizens/male_80.mdl",

	"models/tnb/citizens/male_81.mdl",

	"models/tnb/citizens/male_82.mdl",

	"models/tnb/citizens/male_83.mdl",

	"models/tnb/citizens/male_84.mdl",

	"models/tnb/citizens/male_85.mdl",

	"models/tnb/citizens/male_86.mdl",

	"models/tnb/citizens/male_87.mdl",

	"models/tnb/citizens/male_88.mdl",

	"models/tnb/citizens/male_89.mdl",

	"models/tnb/citizens/male_90.mdl",

	"models/tnb/citizens/male_91.mdl",

	"models/tnb/citizens/male_92.mdl",

	"models/tnb/citizens/male_93.mdl",

	"models/tnb/citizens/male_94.mdl",

	"models/tnb/citizens/female_01.mdl",

	"models/tnb/citizens/female_02.mdl",

	"models/tnb/citizens/female_03.mdl",

	"models/tnb/citizens/female_04.mdl",

	"models/tnb/citizens/female_05.mdl",

	"models/tnb/citizens/female_06.mdl",

	"models/tnb/citizens/female_07.mdl",

	"models/tnb/citizens/female_08.mdl",

	"models/tnb/citizens/female_09.mdl",

	"models/tnb/citizens/female_10.mdl",

	"models/tnb/citizens/female_11.mdl",

	"models/tnb/citizens/female_12.mdl",

	"models/tnb/citizens/female_14.mdl",

	"models/tnb/citizens/female_15.mdl",

	"models/tnb/citizens/female_16.mdl",

	"models/tnb/citizens/female_17.mdl",

	"models/tnb/citizens/female_18.mdl",

	"models/tnb/citizens/female_19.mdl",

	"models/tnb/citizens/female_20.mdl",

	"models/tnb/citizens/female_21.mdl",

	"models/tnb/citizens/female_22.mdl",

	"models/tnb/citizens/female_23.mdl",

	"models/tnb/citizens/female_24.mdl",

	"models/tnb/citizens/female_25.mdl",

	"models/tnb/citizens/female_26.mdl",

	"models/tnb/citizens/female_27.mdl",

	"models/tnb/citizens/female_28.mdl",

	"models/tnb/citizens/female_29.mdl",

	"models/tnb/citizens/female_30.mdl",

	"models/tnb/citizens/female_31.mdl",

	"models/tnb/citizens/female_32.mdl",

	"models/tnb/citizens/female_33.mdl",

	"models/tnb/citizens/female_34.mdl",

	"models/tnb/citizens/female_35.mdl",

	"models/tnb/citizens/female_36.mdl",

	"models/tnb/citizens/female_37.mdl",

	"models/tnb/citizens/female_38.mdl",

	"models/tnb/citizens/female_39.mdl",

	"models/tnb/citizens/female_40.mdl",

	"models/tnb/citizens/female_42.mdl",

	"models/tnb/citizens/female_43.mdl",

	"models/tnb/citizens/female_44.mdl",

	"models/tnb/citizens/female_45.mdl",

 	"models/tnb/citizens/female_46.mdl",

	"models/tnb/citizens/female_47.mdl",

	"models/tnb/citizens/female_48.mdl",

	"models/tnb/citizens/female_49.mdl",

	"models/tnb/citizens/female_50.mdl",

	"models/tnb/citizens/female_51.mdl",

	"models/tnb/citizens/female_52.mdl",

	"models/tnb/citizens/female_53.mdl",

	"models/tnb/citizens/female_54.mdl",

	"models/tnb/citizens/female_55.mdl",

	"models/tnb/citizens/female_56.mdl",

	"models/tnb/citizens/female_57.mdl",

	"models/tnb/citizens/female_58.mdl",

	"models/tnb/citizens/female_59.mdl",

	"models/tnb/citizens/female_60.mdl",

	"models/tnb/citizens/female_61.mdl",

	"models/tnb/citizens/female_62.mdl",

	"models/tnb/citizens/female_63.mdl",

	"models/tnb/citizens/female_64.mdl",

	"models/tnb/citizens/female_65.mdl",

	"models/tnb/citizens/female_66.mdl",

	"models/tnb/citizens/female_67.mdl",

	"models/tnb/citizens/female_68.mdl"

};

GM.RebelModels = {
	"models/player/group03/male_01.mdl",
	"models/player/group03/male_02.mdl",
	"models/player/group03/male_03.mdl",
	"models/player/group03/male_04.mdl",
	"models/player/group03/male_05.mdl",
	"models/player/group03/male_06.mdl",
	"models/player/group03/male_07.mdl",
	"models/player/group03/male_08.mdl",
	"models/player/group03/male_09.mdl",
	"models/player/group03/female_01.mdl",
	"models/player/group03/female_02.mdl",
	"models/player/group03/female_03.mdl",
	"models/player/group03/female_04.mdl",
	"models/player/group03/female_05.mdl",
	"models/player/group03/female_06.mdl",
	"models/player/group03m/male_01.mdl",
	"models/player/group03m/male_02.mdl",
	"models/player/group03m/male_03.mdl",
	"models/player/group03m/male_04.mdl",
	"models/player/group03m/male_05.mdl",
	"models/player/group03m/male_06.mdl",
	"models/player/group03m/male_07.mdl",
	"models/player/group03m/male_08.mdl",
	"models/player/group03m/male_09.mdl",
	"models/player/group03m/female_01.mdl",
	"models/player/group03m/female_02.mdl",
	"models/player/group03m/female_03.mdl",
	"models/player/group03m/female_04.mdl",
	"models/player/group03m/female_05.mdl",
	"models/player/group03m/female_06.mdl"
};

-- General Gameplay

GM.UseHunger = true;

GM.FistsHaveEffectOnPlayers = true;
GM.DoorRammingEnabled = true;

GM.MaxLoan = 0;

GM.StatsAvailable = 50;

GM.UntieOnDeath = true;

GM.OffDutyCombineCanBuyDoors = true;

GM.NotifyWhenPlayersJoin = true;

-- AFK Autokicker

GM.AFKKickerEnabled = false;
GM.AFKPercentage = 0.90;
GM.AFKTime = 600;

-- Cross-Server Transfers

IP_GENERAL = "1.2.3.4";
PORT_CITY = 27015;
PORT_CANAL = 27016;
PORT_OUTLANDS = 27017;
PORT_COAST = 27018;

TRANSITPORT_CITY_GATE = 2;
TRANSITPORT_CITY_SEWER = 3;
TRANSITPORT_CITY_COMBINE = 4;
TRANSITPORT_CAVES_ENTRY = 5;
TRANSITPORT_COAST_ENTRY = 6;

-- Donations

GM.BronzeDonorAmount = 0;
GM.SilverDonorAmount = 15;
GM.GoldDonorAmount = 30;

-- Resources

GM.WorkshopMaps = { };
GM.WorkshopMaps["md_venetianredux_b2fix"]		= 106094354;
GM.WorkshopMaps["rp_c18_v1"] 					= 132931674;
GM.WorkshopMaps["rp_c18_v2"] 					= 132937160;
GM.WorkshopMaps["rp_city8"] 					= 132913036;
GM.WorkshopMaps["rp_city8_2"] 					= 132940295;
GM.WorkshopMaps["rp_city8_canals"] 				= 132911524;
GM.WorkshopMaps["rp_city8_district1"] 			= 132919876;
GM.WorkshopMaps["rp_city8_district9"] 			= 132916875;
GM.WorkshopMaps["rp_city11_night_v1b"] 			= 127632645;
GM.WorkshopMaps["rp_city17_v1"] 				= 113352748;
GM.WorkshopMaps["rp_city23_night"] 				= 143076340;
GM.WorkshopMaps["rp_city45_2013"] 				= 118759412;
GM.WorkshopMaps["rp_city45_catalyst_x1f_final"]	= 221567663;
GM.WorkshopMaps["rp_coast_03_fix"] 				= 132960387;
GM.WorkshopMaps["rp_coast_04"] 					= 132961866;
GM.WorkshopMaps["rp_coast05"] 					= 132962296;
GM.WorkshopMaps["rp_coast_07_final"] 			= 132962909;
GM.WorkshopMaps["rp_coast_09"] 					= 132963389;
GM.WorkshopMaps["rp_coast_12"] 					= 132964637;
GM.WorkshopMaps["rp_industrial17_v1"] 			= 171962560;
GM.WorkshopMaps["rp_outercanals"] 				= 119420070;
GM.WorkshopMaps["rp_shhnexustraining_v1"] 		= 147818395;
GM.WorkshopMaps["rp_tb_city45_v01"] 			= 132933551;
GM.WorkshopMaps["rp_tb_city45_v02n"] 			= 132934734;
GM.WorkshopMaps["rp_tnb_central18nexus_v2"] 	= 133029448;
GM.WorkshopMaps["rp_venetian_iconoclasm"] 		= 119692505;
GM.WorkshopMaps["rp_cc_caves_01"] 				= 242386747;
GM.WorkshopMaps["rp_cc_thecanals_1"] 			= 263502310;
GM.WorkshopMaps["rp_cc_thecanals_2"] 			= 268370407;

-- Items

GM.Recipes = {
	{ { "bleach", "water" }, 				{ "drug_breenwater" } },
	{ { "drug_breenwater", "smallmedkit" }, { "drug_medkit" } },
	{ { "drug_breenwater", "vodka" }, 		{ "drug_vodka" } },
	{ { "drug_vodka", "cookedantliongib" }, { "drug_antlion" } },
	{ { "drug_antlion", "bugbait" }, 		{ "drug_extract" } },
	{ { "beans" }, 							{ "cookedbeans" },				{ "burntbeans" },		1/6 },
	{ { "antliongib" }, 					{ "cookedantliongib" },			{ "burntantliongib" },	1/4 },
	{ { "headcrabgib" }, 					{ "cookedheadcrabgib" },		{ "burntheadcrabgib" },	1/4 },
	{ { "chinese", "water" }, 				{ "cookedchinese" } },
	{ { "teapot", "teabags", "water" }, 	{ "tea", "tea", "tea", "tea" } },
	{ { "teapot", "coffeebeans", "water" }, { "coffee", "coffee", "coffee", "coffee" } },
};

-- Voices

GM.VoicesEnabled = false;
GM.VoiceDelay = 5;

GM.Voices = { };
GM.Voices[GENDER_MALE] = {
	{ "Hi!", "vo/npc/male01/hi01.wav" },
	{ "Nice!", "vo/npc/male01/nice.wav" },
	{ "I can't remember the last time I had a shower.", "vo/npc/male01/question19.wav" },
};
GM.Voices[GENDER_FEMALE] = {
	{ "Hi.", "vo/npc/female01/hi01.wav" },
	{ "Nice.", "vo/npc/female01/nice01.wav" },
	{ "I can't remember the last time I had a shower!", "vo/npc/male01/question19.wav" },
};
GM.Voices[GENDER_CP] = {
	{ "Affirmative.", "npc/metropolice/vo/affirmative.wav" },
	{ "Search.", "npc/metropolice/vo/search.wav" },
};
GM.Voices[GENDER_VORT] = {
	{ "As you wish.", "vo/npc/vortigaunt/asyouwish.wav" },
};

GM.CombineDeathLineEnabled = true;
GM.CombineDeathLine = "Dispatch: $COMBINENAME's vitals have ceased. Remaining units contain.";

-- Sandbox

M.PropBlacklist = {

	-- Main

	"models/props_junk/propanecanister001a.mdl",

	"models/props_junk/propane_tank001a.mdl",

	"models/props_junk/gascan001a.mdl",

	"models/props_c17/oildrum001_explosive.mdl",

	-- Garry's Mod

	"models/props_phx2/garbage_metalcan001a.mdl",

	"models/dav0r/hoverball.mdl",

	"models/dav0r/thruster.mdl",

	"models/nova/w_headcrab.mdl",

	"models/nova/w_headgear.mdl",

	"models/props_phx2/garbage_metalcan001a.mdl",

	-- Garry's Mod*

	"*models/balloons/",

	"*models/dav0r/tnt/",

	"*models/dynamite/",

	"*models/player/",

	"*models/squad/sf_tubes/",

	"*models/thrusters/",

	"*models/weapons/",

	"*models/xeon133/",

	"*models/xqm/",

	-- Half life 2

	"models/extras/info_speech.mdl",

	"models/cranes/crane_frame.mdl",

	"models/props_c17/metalladder003.mdl",

	"models/props_c17/furniturearmchair001a.mdl",

	"models/props_c17/furniturechair001a.mdl",

	"models/props_citizen_tech/windmill_blade002a.mdl",

	"models/props_citizen_tech/windmill_blade004a.mdl",

	"models/props_canal/canal_bridge01.mdl",

	"models/props_canal/canal_bridge02.mdl",

	"models/props_canal/canal_bridge03a.mdl",

	"models/props_combine/combineinnerwall001c.mdl",

	"models/props_combine/combineinnerwallcluster1024_001a.mdl",

	"models/props_combine/combineinnerwallcluster1024_002a.mdl",

	"models/props_combine/combineinnerwallcluster1024_003a.mdl",

	"models/props_combine/combinethumper001a.mdl",

	"models/props_combine/combinethumper002.mdl",

	"models/props_combine/combinetrain01a.mdl",

	"models/props_combine/weaponstripper.mdl",

	"models/props_combine/health_charger001.mdl",

	"models/props_combine/suit_charger001.mdl",

	"models/props_combine/combine_bunker01.mdl",

	"models/props_combine/combine_tptimer.mdl",

	"models/props_combine/breen_tube.mdl",

	"models/props_combine/prison01c.mdl",

	"models/props_combine/prison01b.mdl",

	"models/props_combine/prison01.mdl",

	"models/props_lab/teleplatform.mdl",

	"models/props_lab/generator.mdl",

	"models/props_trainstation/train001.mdl",

	"models/props_trainstation/train002.mdl",

	"models/props_trainstation/train003.mdl",

	"models/props_trainstation/train004.mdl",

	"models/props_trainstation/train005.mdl",

	"models/props_trainstation/trainstation_clock001.mdl",

	"models/props_vehicles/tanker001a.mdl",

	"models/props_vehicles/apc001.mdl",

	"models/props_vehicles/trailer001a.mdl",

	"models/props_wasteland/antlionhill.mdl",

	"models/props_wasteland/coolingtank01.mdl",

	"models/props_wasteland/coolingtank02.mdl",

	"models/props_wasteland/cranemagnet01a.mdl",

	"models/props_wasteland/depot.mdl",

	"models/props_wasteland/medbridge_base01.mdl",

	"models/props_wasteland/rockcliff01b.mdl",

	"models/props_wasteland/rockcliff01c.mdl",

	"models/props_wasteland/rockcliff01e.mdl",

	"models/props_wasteland/rockcliff01f.mdl",

	"models/props_wasteland/rockcliff01g.mdl",

	"models/props_wasteland/rockcliff01j.mdl",

	"models/props_wasteland/rockcliff05a.mdl",

	"models/props_wasteland/rockcliff05b.mdl",

	"models/props_wasteland/rockcliff05e.mdl",

	"models/props_wasteland/rockcliff05f.mdl",

	"models/props_wasteland/rockcliff06d.mdl",

	"models/props_wasteland/rockcliff06i.mdl",

	"models/props_wasteland/rockcliff06i.mdl",

	"models/props_wasteland/rockcliff_cluster01b.mdl",

	"models/props_wasteland/rockcliff_cluster02a.mdl",

	"models/props_wasteland/rockcliff_cluster02b.mdl",

	"models/props_wasteland/rockcliff_cluster02c.mdl",

	"models/props_wasteland/rockcliff_cluster03a.mdl",

	"models/props_wasteland/rockcliff_cluster03b.mdl",

	"models/props_wasteland/rockcliff_cluster03c.mdl",

	"models/props_wasteland/rockgranite01a.mdl",

	"models/props_wasteland/rockgranite01b.mdl",

	"models/props_wasteland/rockgranite01c.mdl",

	"models/props_wasteland/rockgranite02a.mdl",

	"models/props_wasteland/rockgranite04a.mdl",

	"models/props_wasteland/rockgranite04b.mdl",

	"models/props_wasteland/rockgranite04c.mdl",

	-- Half-Life 2*

	"*models/combine_room/",

	"*models/shadertest/",

	"*models/tools/",

	"*models/weapons/",

	"*models/zombie/",

	"*models/props_foliage/",

	"*models/props_rooftop/",

	"*models/props_skybox/",

	"*models/effects/",

	"*models/perftest/",

	"*models/props_animated_breakable/",

	"*models/props_buildings/",

	-- HL2: Episode Two

	"models/mini_borealis/mini_borealis.mdl"

};

GM.PropWhitelist = {
	"models/props_c17/furniturestove001a.mdl",
}

GM.ToolTrustBasic = {
	"weld",
	"duplicator",
	"nocollide",
	"remover",
	"camera",
	"colour",
	"material",
	"rope",
	"winch",
	"ballsocket"
};

GM.ToolTrustBlacklist = {
	"balloon",
	"dynamite",
	"eyeposer",
	"faceposer",
	"finger",
	"inflator",
	"trails",
	"creator"
};
