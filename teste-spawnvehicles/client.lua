-- Spawning one veicle
-- EX: /spawnvehicle Baller or /spawnveicle jet
RegisterCommand("spawnvehicle", function(source, args, rawcommand)
    local ped = GetPlayerPed(-1)
    local pcoords = GetEntityCoords(ped)

    if args[1] ~= nil then
        local rmodel = GetHashKey(args[1])

        RequestModel(rmodel)
        while not HasModelLoaded(rmodel) do
            Wait(1)
        end
        local spawn = CreateVehicle(rmodel, pcoords, 200, true, false)
        SetVehicleDoGroundProperly(spawn)
    end
end)

-- Spawning ten veicles
-- EX: /spawnmultiplevehicle jet
RegisterCommand("spawnmultiplesvehicles", function(source, args, rawcommand)
    local ped = GetPlayerPed(-1)
    local pcoords = GetEntityCoords(ped)
    local auxcoords = pcoords * 1.02

    if args[1] ~= nil then
        local rmodel = GetHashKey(args[1])

        RequestModel(rmodel)
        while not HasModelLoaded(rmodel) do
            Wait(1)
        end
        local count = 0
        while count < 10 do
            local spawn = CreateVehicle(rmodel, auxcoords, 200, true, false)
            count = count + 1
        end
    end
end)

-- /spawnvehicle jet
-- /spawnmultiplevehicle jet