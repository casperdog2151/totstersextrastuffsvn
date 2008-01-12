local function BuildTESPanel( Panel )
	Panel:AddControl( "Label", { Text = "Totsters Extra Stuff\n" }  )
	
	Panel:AddControl( "Label", { Text = "Some of these may require sv_cheats 1 to work" }  )
	
	Panel:AddControl( "Label", { Text = "\nMisc" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Toggle Crosshair",				Command = "crosshair" }  )
	Panel:AddControl( "Button", 	{ Label = "#Shake The Ground",				Command = "shake" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Show Cubemap",				Command = "r_showenvcubemap" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Black and White",				Command = "mat_yuv" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Wireframe (cheats)",				Command = "mat_wireframe" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Wireframe Props",				Command = "vcollide_wireframe" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Entity Report",				Command = "cl_entityreport" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Level Overview",				Command = "cl_leveloverview" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Shadow Wireframe",				Command = "r_shadowwireframe" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#HL1/HL2 Flashlight",				Command = "r_newflashlight" }  )
	
	Panel:AddControl( "Label", { Text = "\nWeapon Sway" }  )
	Panel:AddControl( "Slider", 	{ Label = "#Sway Scale (Default 1.0)", Type = "Float", 	Command = "cl_wpn_sway_scale", 	Min = "1", 	Max = "23" }  )
	Panel:AddControl( "Slider", 	{ Label = "#Sway Interp (Default 0.1)", Type = "Float", 	Command = "cl_wpn_sway_interp", 	Min = "0.1", 	Max = "23" }  )
	
	Panel:AddControl( "Label", { Text = "\nUseful" }  )
	Panel:AddControl( "Button", 	{ Label = "#Stop That Annoying Sound",				Command = "stopsounds" }  )
	Panel:AddControl( "Button", 	{ Label = "#Clear All The Decals (clientside)",				Command = "r_cleardecals" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Dynamic Fire",				Command = "cl_firedynamiclight" }  )
	Panel:AddControl( "CheckBox", 	{ Label = "#Show Position",				Command = "cl_showpos" }  )
	Panel:AddControl( "Slider", 	{ Label = "#Flashlight FOV (Default 45.0)", Type = "Float", 	Command = "r_flashlightfov", 	Min = "1", 	Max = "120" }  )
	
	Panel:AddControl( "Label", { Text = "\nCamera" }  )
	Panel:AddControl( "Button", 	{ Label = "#First Person (needs cheats)",				Command = "firstperson" }  )
	Panel:AddControl( "Button", 	{ Label = "#Third Person (needs cheats)",				Command = "thirdperson; cam_idealyaw 0; cam_idealpitch 0; cam_idealdist 50" }  )
	Panel:AddControl( "Slider", 	{ Label = "#Third Person Yaw", Type = "Float", 	Command = "cam_idealyaw", 	Min = "1", 	Max = "360" }  )
	Panel:AddControl( "Slider", 	{ Label = "#Third Person Pitch", Type = "Float", 	Command = "cam_idealpitch", 	Min = "1", 	Max = "360" }  )
	Panel:AddControl( "Slider", 	{ Label = "#Third Person Distance", Type = "Float", 	Command = "cam_idealdist", 	Min = "-50", 	Max = "500" }  )
	
	Panel:AddControl( "Label", { Text = "\nDev" }  )
	Panel:AddControl( "Button", 	{ Label = "#Get Your Position",				Command = "getpos" }  )
	
end

local function AddTESPanelMenu()
	spawnmenu.AddToolMenuOption( "T.E.S v7.1", "Extra-Stuff", "TES", "TES", "", "", BuildTESPanel, {} )
end
hook.Add( "PopulateToolMenu", "AddTESPanelMenu", AddTESPanelMenu )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.