/*
// Control Panel
*/
local function BuildControlPanel( CPanel )

	CPanel:AddControl( "Header", { Text = "#Stereoscopy", Description = "#Stereoscopy will change the way you look at screenshots" }  )
	CPanel:AddControl( "CheckBox", { Label = "#Material_Overlay_Toggle", Command = "pp_stereoscopy" }  )
	
	CPanel:AddControl( "Slider", { Label = "#Stereoscopy Size", Command = "pp_stereoscopy_size", Type = "Float", Min = "0", Max = "12" }  )	


end

/*
// Tool Menu
*/
local function AddPostProcessMenu()

	spawnmenu.AddToolMenuOption( "PostProcessing", "PPSimple", "Stereoscopy", "#Stereoscopy", "", "", BuildControlPanel, { SwitchConVar = "pp_stereoscopy" } )

end

hook.Add( "PopulateToolMenu", "AddPostProcessMenu_Stereoscopy", AddPostProcessMenu )