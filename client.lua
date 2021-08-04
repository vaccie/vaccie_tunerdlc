function notify(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	DrawNotification(true, true)
end

Citizen.CreateThread(function()
  while true do Citizen.Wait(500)
    ped = GetPlayerPed(-1)
    vehicle = GetVehiclePedIsIn(ped, false)
  end
end)

RegisterCommand("stance", function()
    SetReduceDriftVehicleSuspension(vehicle, true)
    notify("Stance inserted.")
    print("Stance inserted.")
end)

RegisterCommand("lowgrip", function()
    if GetDriftTyresEnabled(vehicle) == false then
    SetDriftTyresEnabled(vehicle, true)
    notify("Wheel lowgrip monuted.")
    print("Wheel lowgrip monuted.")
    else
    SetDriftTyresEnabled(vehicle, false)
    notify("Wheel lowgrip disassembled.")
    print("Wheel lowgrip disassembled.")
    end
  end)