
local function BuildNPCControl( Panel )
	
	Panel:AddControl( "Header", { Text = "NPC Control", Description = "A NPC Control Menu Made By Totster" }  )
	
	Panel:AddControl( "Label", { Text = "Some of these may require sv_cheats 1 to work" }  )

	Panel:AddControl( "Button", 	{ Label = "#Enable/Disable AI",			Command = "ai_disable" }  )
	Panel:AddControl( "Button", 	{ Label = "#Select/Deselect NPC",			Command = "npc_select" }  )
    Panel:AddControl( "Button", 	{ Label = "#Make NPC Go To Crosshair",			Command = "npc_go" }  )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC Go To Random Place",			Command = "npc_go_random" }  )
	Panel:AddControl( "Button", 	{ Label = "#Teleport NPC To Crosshair",			Command = "npc_teleport" }  )
	Panel:AddControl( "Button", 	{ Label = "#Deplete NPC's Clip",			Command = "npc_ammo_deplete" }  )
	Panel:AddControl( "Button", 	{ Label = "#Heal NPC",			Command = "npc_heal" }  )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC's Run",			Command = "npc_go_do_run 1" }  )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC's Walk",			Command = "npc_go_do_run 0" }  )
	
	Panel:AddControl( "Label", 	{ Text = "NPC Relationship\nNOTE: You must be looking at the npc for this to work" } )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC Hate Players",			Command = "ent_fire !picker setrelationship \"player d_ht 99\"", }  )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC Like Players",			Command = "ent_fire !picker setrelationship \"player d_li 99\"" }  )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC Neutral Towards Players",			Command = "ent_fire !picker setrelationship \"player d_nu 99\"" }  )
	Panel:AddControl( "Button", 	{ Label = "#Make NPC Fear Players",			Command = "ent_fire !picker setrelationship \"player d_fr 99\"" }  )
	
	Panel:AddControl( "Label", { Text = "Strider Beam Attack" }  )
	Panel:AddControl( "Label", { Text = "W.I.P :D This feature will be added soon as I can be bothered..." }  )
	
end

local function AddNPCControl()
	spawnmenu.AddToolMenuOption( "T.E.S v7.1", "Extra-Stuff", "NPC Control", "NPC Control", "", "", BuildNPCControl, {} )
end
hook.Add( "PopulateToolMenu", "AddNPCControlPanelMenu", AddNPCControl )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.