if ( CLIENT ) then

	local function AdvEntInfo( player, command, arguments )
	
		local tr = player:GetEyeTrace()
		if ( ValidEntity( tr.Entity ) ) then
		
			Msg("Class: ", tr.Entity:GetClass(), "\n")
			Msg("Model: ", tr.Entity:GetModel(), "\n")
--			Msg("Material: ", tr.Entity:GetMaterial(), "\n")	Not telling you material yet
			Msg("Max Health: ", tr.Entity:GetMaxHealth(), "\n")
--			Msg("Owner: ", tr.Entity:GetOwner(), "\n")
			Msg("Angle: ", tr.Entity:GetAngles(), "\n")
			Msg("Position: ", tr.Entity:GetPos(), "\n")
			Msg("Color: ", tr.Entity:GetColor(), "\n")
			Msg("Skin: ", tr.Entity:GetSkin(), "\n")
		
		end
	
	end

	concommand.Add( "tes_info", AdvEntInfo )
	
end

//Copyright Totsters Extra Stuff - Re-Release of this Addon will result in Castration.