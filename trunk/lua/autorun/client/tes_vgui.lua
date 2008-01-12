function TESpanel()
	local TESFrame = vgui.Create( "DFrame" ) --First Screen
		TESFrame:SetTitle( "Totster's Extra Stuff" )
		TESFrame:SetDraggable( false )
		TESFrame:ShowCloseButton( true )
		TESFrame:SetBackgroundBlur( true )
		TESFrame:SetDrawOnTop( true )
		
	local InnerPanel = vgui.Create( "DPanel", TESFrame )
	
	local Text = vgui.Create( "DLabel", InnerPanel ) --Text in first screen
		Text:SetText( "Welcome\nPick an option from the list below." )
		Text:SizeToContents()
		Text:SetContentAlignment( 5 )
		Text:SetTextColor( color_white )
		
	local ButtonPanel = vgui.Create( "DPanel", TESFrame ) --Tallness of the bit surrounding the button
	ButtonPanel:SetTall( 30 )
		
	local Button = vgui.Create( "DButton", ButtonPanel ) --Button at bottom of first screen
		Button:SetText( "Close" )
		Button:SizeToContents()
		Button:SetTall( 20 )
		Button:SetWide( Button:GetWide() + 20 )
		Button:SetPos( 5, 5 )
		Button.DoClick = function() TESFrame:Close() end
		
	ButtonPanel:SetWide( Button:GetWide() + 10 ) --Wideness of the bit surrounding the button
	
	local w, h = Text:GetSize()
	
	TESFrame:SetSize( w + 320, h + 320 )
	TESFrame:Center()
	
	InnerPanel:StretchToParent( 5, 25, 5, 45 )
	
	Text:StretchToParent( 5, 5, 5, 5 )	
	
	ButtonPanel:CenterHorizontal()
	ButtonPanel:AlignBottom( 8 )
	
	TESFrame:MakePopup()
	TESFrame:DoModal()
	
	return menu

end
concommand.Add( "tes_vgui", TESpanel )

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.