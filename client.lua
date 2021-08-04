Citizen.CreateThread(function()
  while true do Citizen.Wait(500)
    ped = GetPlayerPed(-1)
    vehicle = GetVehiclePedIsIn(ped, false)
  end
end)

RegisterCommand("stance", function()
    SetReduceDriftVehicleSuspension(vehicle, true)
    print("Stance inserito")
end)

RegisterCommand("lowgrip", function()
    if GetDriftTyresEnabled(vehicle) == false then
    SetDriftTyresEnabled(vehicle, true)
    print("Ruote lowgrip montate")
    else
    SetDriftTyresEnabled(vehicle, false)
    print("Ruote lowgrip tolte")
    end
  end)