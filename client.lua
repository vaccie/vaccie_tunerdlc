function notify(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	DrawNotification(true, true)
end

Citizen.CreateThread(function()
  while true do Citizen.Wait(500)
    ped = PlayerPedId()
    vehicle = GetVehiclePedIsIn(ped, false)
  end
end)

RegisterCommand("stance", function()
    SetReduceDriftVehicleSuspension(vehicle, true)
    notify("Stance inserted.")
    print("Stance inserted.")
end)

RegisterCommand("lowgrip", function()
  if IsPedInAnyVehicle(ped, false) then
    if GetDriftTyresEnabled(vehicle) == false then
    SetDriftTyresEnabled(vehicle, true)
    notify("Wheel lowgrip mounted.")
    print("Wheel lowgrip mounted.")
    else
    SetDriftTyresEnabled(vehicle, false)
    notify("Wheel lowgrip disassembled.")
    print("Wheel lowgrip disassembled.")
    end
  else
  notify("You're not in any vehicle.")
  print("You're not in any vehicle.")
  end
end)