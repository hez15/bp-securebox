local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('BP-Securebox:client:securebox')
AddEventHandler('BP-Securebox:client:securebox', function()
    -- Play a sound
   -- print("Debug: Playing house alarm sound for player.")

    -- Start the thermite minigame
    exports['ps-ui']:Thermite(function(success)
        if success then
       --     print("Debug: Thermite minigame succeeded!")
       TriggerEvent('QBCore:Notify', "Alarm has been disabled!", "primary", 2000)
            TriggerServerEvent('securebox:server:giverewards')
            Citizen.Wait(1000)
            TriggerServerEvent('BP-Securebox:server:secureboxremove')
        else
            TriggerEvent('QBCore:Notify', "Sloppy Work the Alarm has been triggerd", "primary", 2000)
           -- print("Debug: Thermite minigame failed!")
            exports['ps-dispatch']:SecureCase()
            TriggerServerEvent('BP-Securebox:server:secureboxremove')
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'houseAlarm', 0.8)
        end
    end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
end)

RegisterNetEvent('BP-Securebox:client:container')
AddEventHandler('BP-Securebox:client:container', function()

    TriggerServerEvent('securebox:server:giverewardscontainer')
    Citizen.Wait(500)
    TriggerServerEvent('BP-Securebox:server:containerremove')
    Citizen.Wait(500)
    TriggerEvent('QBCore:Notify', "Items have been Given", "primary", 2000)
end)
RegisterNetEvent('BP-Securebox:client:bankf')
AddEventHandler('BP-Securebox:client:bankf', function()
    -- Play a sound
   -- print("Debug: Playing house alarm sound for player.")

    -- Start the thermite minigame
    exports['ps-ui']:Thermite(function(success)
        if success then
       --     print("Debug: Thermite minigame succeeded!")
       TriggerEvent('QBCore:Notify', "Alarm has been disabled!", "primary", 2000)
            TriggerServerEvent('securebox:server:giverewardsbankf')
            Citizen.Wait(1000)
            TriggerServerEvent('BP-Securebox:server:removebankboxf')
        else
            TriggerEvent('QBCore:Notify', "Sloppy Work the Alarm has been triggerd", "primary", 2000)
           -- print("Debug: Thermite minigame failed!")
            exports['ps-dispatch']:SecureCase()
            TriggerServerEvent('BP-Securebox:server:removebankboxf')
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'houseAlarm', 0.8)
        end
    end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
end)
RegisterNetEvent('BP-Securebox:client:bankp')
AddEventHandler('BP-Securebox:client:bankp', function()
    -- Play a sound
   -- print("Debug: Playing house alarm sound for player.")

    -- Start the thermite minigame
    exports['ps-ui']:Thermite(function(success)
        if success then
       --     print("Debug: Thermite minigame succeeded!")
       TriggerEvent('QBCore:Notify', "Alarm has been disabled!", "primary", 2000)
            TriggerServerEvent('securebox:server:giverewardsbankp')
            Citizen.Wait(1000)
            TriggerServerEvent('BP-Securebox:server:removebankboxp')
        else
            TriggerEvent('QBCore:Notify', "Sloppy Work the Alarm has been triggerd", "primary", 2000)
           -- print("Debug: Thermite minigame failed!")
            exports['ps-dispatch']:SecureCase()
            TriggerServerEvent('BP-Securebox:server:removebankboxp')
            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 0.5, 'houseAlarm', 0.8)
        end
    end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
end)