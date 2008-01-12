



/*---------------------------------------------------------
   Register the convars that will control this effect
---------------------------------------------------------*/   
local pp_mat_overlay 				= CreateClientConVar( "pp_mat_overlay", "0", false, false )
local pp_mat_overlay_texture		= CreateClientConVar( "pp_mat_overlay_texture", "models/shadertest/shader4", false, false )
local pp_mat_overlay_refractamount	= CreateClientConVar( "pp_mat_overlay_refractamount", "0.3", false, false )

local lastTexture = nil
local mat_Overlay = nil

function DrawMaterialOverlay( texture, refractamount )

	if (texture ~= lastTexture or mat_Overlay == nil) then
		mat_Overlay = Material( texture )
		lastTexture = texture
	end
	
	if (mat_Overlay == nil) then return end

	render.UpdateScreenEffectTexture()

	mat_Overlay:SetMaterialFloat("$envmap",			0)
	mat_Overlay:SetMaterialFloat("$envmaptint",		0)
	mat_Overlay:SetMaterialFloat("$refractamount",	refractamount)
	mat_Overlay:SetMaterialInt("$ignorez",		1)

	render.SetMaterial( mat_Overlay )
	render.DrawScreenQuad()
	
end

local function DrawInternal()

	if ( !pp_mat_overlay:GetBool() ) then return end
	if ( !GAMEMODE:PostProcessPermitted( "material overlay" ) ) then return end

	DrawMaterialOverlay( 
			pp_mat_overlay_texture:GetString(), 
			pp_mat_overlay_refractamount:GetFloat()	);

end

hook.Add( "RenderScreenspaceEffects", "RenderMaterialOverlay", DrawInternal )


/*
// Control Panel
*/
local function BuildControlPanel( CPanel )

	CPanel:AddControl( "Header", { Text = "#Material_Overlay", Description = "#Material_Overlay_Information" }  )
	CPanel:AddControl( "CheckBox", { Label = "#Material_Overlay_Toggle", Command = "pp_mat_overlay" }  )
	
	local params = { Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "materialoverlay" }
	params.Options[ "#Default" ] = { pp_mat_overlay_texture = "1", pp_mat_overlay_refractamount = "0" }
	params.CVars = { "pp_mat_overlay_texture", "pp_mat_overlay_refractamount" }
	CPanel:AddControl( "ComboBox", 	params )

	local Options = {}
		//Half Life 2
		Options[ "#Combine Pipes" ] = "models/props_combine/pipes01"
		Options[ "#Health Charger Glass" ] 	= "models/props_combine/health_charger_glass"
		Options[ "#Xen Crystal" ] = "models/props_lab/xencrystal_sheet"
		Options[ "#Tank Glass 2" ] = "models/props_lab/Tank_Glass002"
		Options[ "#Ivy" ] = "models/props_foliage/ivy01"
		Options[ "#TP Ball Glow" ] = "models/props_combine/tpballglow"
		Options[ "#Tides Clouds" ] = "models//props/de_tides/clouds"
		Options[ "#Dog Eyeglass" ] = "models/dog/eyeglass"
		Options[ "#Combine Binoculars" ] = "Effects/combine_binocoverlay"
		//Counter Strike Source
		Options[ "#Predator" ] = "models/Shadertest/predator"
		//Half Life 2 : Episode 2
		Options[ "#You Are Here" ] = "overlays/youarehere_overlay"
		Options[ "#Grub Nugget" ] = "models/grub_nugget/grub_nugget"
		Options[ "#Spitball" ] = "models/Spitball/spitball"
		//Half Life 2 Episode 1
		//PORTAL
		//Team Fortress 2
		//Other
		Options[ "#Com Shield Wall" ] = "totster/comshieldwall"
		Options[ "#Glass Brick" ] = "totster/glassbrick"
		Options[ "#TP Refract" ] = "totster/tp_refract"
		Options[ "#Spawn Effect" ] = "totster/spawn_effect"
		Options[ "#Screen Warp" ] = "totster/screenwarp"
		Options[ "#Tube" ] = "trails/tube"
		Options[ "#Reflective Glass" ] = "glass/reflectiveglass002"
	CPanel:AddControl( "MatSelect", { Height = "3", Label = "", ConVar = "pp_mat_overlay_texture", Options = Options } )
	
	CPanel:AddControl( "Slider", { Label = "#Material_Overlay_RefractAmount", Command = "pp_mat_overlay_refractamount", Type = "Float", Min = "-1", Max = "1" }  )	


end

/*
// Tool Menu
*/
local function AddPostProcessMenu()

	spawnmenu.AddToolMenuOption( "T.E.S v7.1", "Extra-Stuff", "ExtraOverlay", "#ExtraOverlays", "", "", BuildControlPanel, { SwitchConVar = "pp_mat_overlay" } )

end

hook.Add( "PopulateToolMenu", "AddPostProcessMenu_ExtraOverlay", AddPostProcessMenu )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.