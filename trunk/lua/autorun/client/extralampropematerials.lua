/*
// Control Panel
*/
local function BuildControlPanel( CPanel )

	CPanel:AddControl( "Header", { Text = "#Lamp Rope Materials", Description = "Rope Materials For The Lamp Stool" }  )
	
local Options = {}
	//Half Life 2
	Options[ "#Smoke" ] = "cable/smoke"
	Options[ "#Crystal Beam" ] = "cable/crystal_beam1"
	Options[ "#Blue Laser" ] = "Effects/bluelaser1"
	Options[ "#Static Breenscreen" ] = "Effects/breenscreen_static01_"
	Options[ "#Flutter Core" ] = "Effects/fluttercore"
	Options[ "#Hydra Gut Beam Cap" ] = "Effects/hydragutbeamcap"
	Options[ "#Hydra Spinal Cord" ] = "Effects/hydraspinalcord"
	Options[ "#Hydra Gut Beam" ] = "Effects/hydragutbeam"
	Options[ "#Laser Plane" ] = "Effects/laserplane"
	Options[ "#Roller Glow" ] = "Effects/rollerglow"
	Options[ "#Blue and Black Flash" ] = "Effects/blueblackflash"
	Options[ "#Blue and Black Large Beam" ] = "Effects/blueblacklargebeam"
	Options[ "#Combine Display 001b" ] = "Effects/combinedisplay001b"
	Options[ "#Energy Ball" ] = "Effects/energyball"
	Options[ "#Exit 1" ] = "Effects/exit1"
	Options[ "#Film Scan" ] = "Effects/filmscan256"
	Options[ "#Cool Red Rope" ] = "Effects/red"
	Options[ "#Slime Rope" ] = "Effects/slime1"
	Options[ "#Strider Tracer" ] = "Effects/strider_tracer"
	Options[ "#Prisonmap Disp" ] = "Effects/prisonmap_disp"
	//Half Life 2 Episode 1
	Options[ "#Core Beam" ] = "Sprites/core_beam1"
	CPanel:AddControl( "MatSelect", { Height = "1", Label = "Make sure you have the lamp stool out", ConVar = "lamp_ropematerial", Options = Options } )

end


/*
// Tool Menu
*/
local function AddTESPanelMenu_ExtraLampRopes()

	spawnmenu.AddToolMenuOption( "T.E.S v7.1", "Extra-Stuff", "ExtraLampRopes", "#ExtraLampRopes", "", "", BuildControlPanel, {} )

end

hook.Add( "PopulateToolMenu", "AddTESPanelMenu_ExtraLampRopes", AddTESPanelMenu_ExtraLampRopes )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.