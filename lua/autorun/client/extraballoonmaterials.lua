/*
// Control Panel
*/
local function BuildControlPanel( CPanel )

	CPanel:AddControl( "Header", { Text = "#Balloon Materials", Description = "Balloon Rope Materials For The Balloon Stool" }  )
	
	local Options = {}
	Options[ "#Hoverball" ] = "models/dav0r/hoverball"
	Options[ "#Cubemap" ] = "debug/env_cubemap_model"
	Options[ "#Water" ] = "models/shadertest/shader3"
	Options[ "#Jelly" ] = "models/shadertest/shader4"
	Options[ "#Stained Glass" ] = "models/shadertest/shader5"
	Options[ "#Combine Ball" ] = "Models/effects/comball_sphere"
	Options[ "#Combine Ball 2" ] = "Models/effects/comball_tape"
	Options[ "#Blue Glow" ] = "Models/effects/splodearc_sheet"
	Options[ "#Stasis Shield" ] = "models/props_combine/stasisshield_sheet"
	Options[ "#Combine Funnel" ] = "models/props_combine/portalball001_sheet"
	Options[ "#Combine Shield" ] = "models/props_combine/com_shield001a"
	Options[ "#Tank Glass" ] = "models/props_lab/Tank_Glass001"
	Options[ "#Tprings Globe" ] = "models/props_combine/tprings_globe"
	Options[ "#Render Target" ] = "models/rendertarget"
	Options[ "#Combine Pipe" ] = "models/props_combine/pipes01"
	Options[ "#Xen Crystal" ] = "models/props_lab/xencrystal_sheet"
	Options[ "#TP Ball Glow" ] = "Models/props_combine/tpballglow"
	Options[ "#Predator" ] = "models/Shadertest/predator"
	Options[ "#Fisheye" ] = "models/props_c17/fisheyelens"
	Options[ "#Spawn Effect" ] = "totster/spawn_effect"
	CPanel:AddControl( "MatSelect", { Height = "1", Label = "Make sure you have the balloon stool out\nBalloon Skin Material", ConVar = "balloon_skin", Options = Options } )

end


/*
// Tool Menu
*/
local function AddTESPanelMenu_ExtraBalloonMaterials()

	spawnmenu.AddToolMenuOption( "T.E.S v7.1", "Extra-Stuff", "ExtraBalloonMaterials", "#ExtraBalloonMaterials", "", "", BuildControlPanel, {} )

end

hook.Add( "PopulateToolMenu", "AddTESPanelMenu_ExtraBalloonMaterials", AddTESPanelMenu_ExtraBalloonMaterials )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.