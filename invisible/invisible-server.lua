RegisterCommand("invisible", function(source)

	local playername = GetPlayerName(source)
	
	TriggerClientEvent("invisible", source)
	print("O player ".. playername .." usou o comando /invisible")

end)