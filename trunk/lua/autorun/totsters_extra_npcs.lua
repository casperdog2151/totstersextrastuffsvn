				/*
				Model = "models/modelpath/nameofmodel.mdl",	//Change the model of them
				Material = "materials/materialpath/materialname",	//Could always give this a go :P
				Health = "100",	//Give them different Health
				KeyValues = { flag = number, flag = number },	//KeyValues even though I may not need them :S
				Squadname = "squadname",	//Make them unite and work together by making their squadname the same as others so they will work together :D
				Numgrenades = "3",	//Give them a chosen amount of grenades
				*/
				
Category = "Combine"

local NPC = { 	Name = "Sniper", 
				Class = "npc_sniper",					--Sadly sniper is only valid for one shot then will aim at you but not fire.
				TotalSpawnFlags = 262144,
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

/*local NPC = { 	Name = "Ceiling Turret", 
				Class = "npc_turret_ceiling",						--DOES NOT MOVE OR FIRE! only uncomment if you want to play with it anyway.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )*/

local NPC = { 	Name = "Claw Scanner", 
				Class = "npc_clawscanner",				--I do not see where the claw comes into it all it does is flash the shit out of you.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

local NPC = { 	Name = "Combine Camera", 
				Class = "npc_combine_camera",			--Just looks for a target and when it finds one it will follow you and have an orange light on it.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

local NPC = { 	Name = "Strider", 
				Class = "npc_strider",					--Will shoot the shit out of you and seriously fuck you up but sadly it doesnt move from the place that you spawn it.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

local NPC = { 	Name = "Combine Mine", 
				Class = "combine_mine",					--Groovy little mine... The Hopper :D
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )


local NPC = { 	Name = "Combine Gunship", 
				Class = "npc_combinegunship",			--Shoots the shit out of you... But sadly does not move from the position that it is spawned.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

local NPC = { 	Name = "Helicopter", 
				Class = "npc_helicopter",				--Shoots the shit out of you... But sadly does not move from the position that it is spawned.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

local NPC = { 	Name = "Combine Dropship", 
				Class = "npc_combinedropship",			--Just stays in the same position but turns and looks different ways maybe its dancing.... OR NOT!
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )




Category = "Other"

local NPC = { 	Name = "Fisherman", 
				Class = "npc_fisherman",				--The fisherman from Half Life 2: Lost Coast
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )




Category = "Zombies + Enemy Aliens"

local NPC = { 	Name = "Ichthyosaur", 
				Class = "npc_ichthyosaur",				--Just add water...
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

local NPC = { 	Name = "Stalker", 
				Class = "npc_stalker",					--The stalker :O thats some scary shit....NOT!	All it does is move around like an asshat.
				Category = Category	}

list.Set( "NPC", NPC.Class, NPC )

/*
local NPC = { 	Name = "Antlion Gaurd EP2", 
				Class = "npc_antliongaurd",					--The gaurd from episode 2, the one in the cavern
				KeyValues = { cavernbreed = 1,incavern=1 },
				Category = Category	}

list.Set( "NPC", "npc_antliongaurd_ep2", NPC )
*/




local Category = "Humans + Resistance"

local NPC = { 	Name = "Turret", 
				Class = "npc_turret_floor",
				OnFloor = true,
				TotalSpawnFlags = SF_FLOOR_TURRET_CITIZEN,		--Citizen turret that Garry removed, friendly and will only attack enemies
				Skin = 1,
				Offset = 8,
				Category = Category	}

list.Set( "NPC", "ResistanceTurret", NPC )

local NPC = { 	Name = "Vortigaunt Doctor", 
				Class = "npc_vortigaunt",						--Vortigaunt Doctor from Episode 2
				Model = "models/vortigaunt_doctor.mdl",
				Category = Category	}

list.Set( "NPC", "npc_vortigaunt_doctor", NPC )

local NPC = { 	Name = "Alyx Vance EP2", 
				Class = "npc_alyx",								--Alyx model from Episode 2 where she has cuts on her
				Model = "models/alyx_ep2.mdl",
				Category = Category	}

list.Set( "NPC", "npc_alyx_ep2", NPC )

local Category = "Counter-Strike: Source"

local NPC = { 	Name = "CT GIGN", 
				Class = "npc_alyx",								--Counter Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/ct_gign.mdl",
				Squadname = "CT",
				Category = Category	}

list.Set( "NPC", "npc_ct_gign", NPC )

local NPC = { 	Name = "CT GSG9", 
				Class = "npc_alyx",								--Counter Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/ct_gsg9.mdl",
				Squadname = "CT",
				Category = Category	}

list.Set( "NPC", "npc_ct_gsg9", NPC )

local NPC = { 	Name = "CT SAS", 
				Class = "npc_alyx",								--Counter Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/ct_sas.mdl",
				Squadname = "CT",
				Category = Category	}

list.Set( "NPC", "npc_ct_sas", NPC )

local NPC = { 	Name = "CT URBAN", 
				Class = "npc_alyx",								--Counter Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/ct_urban.mdl",
				Squadname = "CT",
				Category = Category	}

list.Set( "NPC", "npc_ct_urban", NPC )

local NPC = { 	Name = "T ARCTIC", 
				Class = "npc_combine_s",						--Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/t_arctic.mdl",
				Squadname = "T",
				Category = Category	}

list.Set( "NPC", "npc_t_arctic", NPC )

local NPC = { 	Name = "T GUERILLA", 
				Class = "npc_combine_s",						--Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/t_guerilla.mdl",
				Squadname = "T",
				Category = Category	}

list.Set( "NPC", "npc_t_guerilla", NPC )

local NPC = { 	Name = "T LEET", 
				Class = "npc_combine_s",						--Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/t_leet.mdl",
				Squadname = "T",
				Category = Category	}

list.Set( "NPC", "npc_t_leet", NPC )

local NPC = { 	Name = "T PHOENIX", 
				Class = "npc_combine_s",						--Terrorist NPC, Animations are not 100% but it can still fire with a weapon but will not hit you when you get close to it
				Model = "models/player/t_phoenix.mdl",
				Squadname = "T",
				Category = Category	}

list.Set( "NPC", "npc_t_phoenix", NPC )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.