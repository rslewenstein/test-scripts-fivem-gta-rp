RegisterNetEvent("invisible")
AddEventHandler("invisible", function()
	local ped 	= PlayerPedId(-1)
	local visible	= IsEntityVisible(ped)
	if visible then
		SetEntityVisible(ped, false)
		notify("~g~Visibilidade desativada")
	elseif not visible then
		SetEntityVisible(ped, true)
		notify("~b~Visibilidade ativada")
	end
end)

function notify(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end