local QBCore = exports['qb-core']:GetCoreObject()

-- Create usable item "securebox"
QBCore.Functions.CreateUseableItem("securebox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.Functions.GetItemBySlot(item.slot) ~= nil then
   --     print("Debug: Securebox used by player ID: " .. source)
        TriggerClientEvent('BP-Securebox:client:securebox', source)
    else
    end
end)
QBCore.Functions.CreateUseableItem("container", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.Functions.GetItemBySlot(item.slot) ~= nil then
     --   print("Debug: Securebox used by player ID: " .. source)
        TriggerClientEvent('BP-Securebox:client:container', source)
    else
    end
end)
QBCore.Functions.CreateUseableItem("bankboxf", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.Functions.GetItemBySlot(item.slot) ~= nil then

        TriggerClientEvent('BP-Securebox:client:bankf', source)
    else
    end
end)
QBCore.Functions.CreateUseableItem("bankboxp", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('BP-Securebox:client:bankp', source)
    else
    end
end)
RegisterNetEvent('BP-Securebox:server:secureboxremove')
AddEventHandler('BP-Securebox:server:secureboxremove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.RemoveItem('securebox', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['securebox'], "remove")
    else
    end
end)
RegisterNetEvent('BP-Securebox:server:containerremove')
AddEventHandler('BP-Securebox:server:containerremove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.RemoveItem('container', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['container'], "remove")

    else

    end
end)
RegisterNetEvent('BP-Securebox:server:removebankboxf')
AddEventHandler('BP-Securebox:server:removebankboxf', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.RemoveItem('bankboxf', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bankboxf'], "remove")

    else

    end
end)
RegisterNetEvent('BP-Securebox:server:removebankboxp')
AddEventHandler('BP-Securebox:server:removebankboxp', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.RemoveItem('bankboxp', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bankboxp'], "remove")

    else

    end
end)

-- Give rewards to the player
RegisterNetEvent('securebox:server:giverewards')
AddEventHandler('securebox:server:giverewards', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then 

        return 
    end

    local probabilidade = math.random(1, 100)
    local rewardItem, itemCount

    if probabilidade <= 10 then
        rewardItem = Config.Rewards['securebox']['Item1']
        itemCount = math.random(1, 2)
    elseif probabilidade > 10 and probabilidade <= 20 then
        rewardItem = Config.Rewards['securebox']['Item2']
        itemCount = math.random(1, 2)
    elseif probabilidade > 20 and probabilidade <= 40 then
        rewardItem = Config.Rewards['securebox']['Item3']
        itemCount = math.random(1, 2)
    elseif probabilidade > 40 and probabilidade <= 100 then
        rewardItem = Config.Rewards['securebox']['ShitItem1']
        itemCount = math.random(1, 5)
    end

    if rewardItem then
        if Player.Functions.AddItem(rewardItem, itemCount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rewardItem], "add")

        else
    --        print("Debug: Could not add item to player inventory. Player ID: " .. src)
        end
    else
    --    print("Debug: Invalid reward item for player ID: " .. src)
    end
end)
RegisterNetEvent('securebox:server:giverewardscontainer')
AddEventHandler('securebox:server:giverewardscontainer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then 

        return 
    end

    local probabilidade = math.random(1, 100)
    local rewardItem, itemCount

    if probabilidade <= 10 then
        rewardItem = Config.Rewards['container']['Item1']
        itemCount = math.random(10, 20)
    elseif probabilidade > 10 and probabilidade <= 20 then
        rewardItem = Config.Rewards['container']['Item2']
        itemCount = math.random(20, 30)
    elseif probabilidade > 20 and probabilidade <= 40 then
        rewardItem = Config.Rewards['container']['Item3']
        itemCount = math.random(50, 60)
    elseif probabilidade > 40 and probabilidade <= 100 then
        rewardItem = Config.Rewards['container']['Item4']
        itemCount = math.random(5, 15)
    end

    if rewardItem then
        if Player.Functions.AddItem(rewardItem, itemCount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rewardItem], "add")

        else
    --        print("Debug: Could not add item to player inventory. Player ID: " .. src)
        end
    else
    --    print("Debug: Invalid reward item for player ID: " .. src)
    end
end)
RegisterNetEvent('securebox:server:giverewards')
AddEventHandler('securebox:server:giverewards', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then 

        return 
    end

    local probabilidade = math.random(1, 100)
    local rewardItem, itemCount

    if probabilidade <= 10 then
        rewardItem = Config.Rewards['securebox']['Item1']
        itemCount = math.random(1, 2)
    elseif probabilidade > 10 and probabilidade <= 20 then
        rewardItem = Config.Rewards['securebox']['Item2']
        itemCount = math.random(1, 2)
    elseif probabilidade > 20 and probabilidade <= 40 then
        rewardItem = Config.Rewards['securebox']['Item3']
        itemCount = math.random(1, 2)
    elseif probabilidade > 40 and probabilidade <= 100 then
        rewardItem = Config.Rewards['securebox']['ShitItem1']
        itemCount = math.random(1, 5)
    end

    if rewardItem then
        if Player.Functions.AddItem(rewardItem, itemCount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rewardItem], "add")

        else
    --        print("Debug: Could not add item to player inventory. Player ID: " .. src)
        end
    else
    --    print("Debug: Invalid reward item for player ID: " .. src)
    end
end)
RegisterNetEvent('securebox:server:giverewardsbankf')
AddEventHandler('securebox:server:giverewardsbankf', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then 

        return 
    end

    local probabilidade = math.random(1, 100)
    local rewardItem, itemCount

    if probabilidade <= 10 then
        rewardItem = Config.Rewards['bankf']['Item1']
        itemCount = math.random(1, 2)
    elseif probabilidade > 10 and probabilidade <= 20 then
        rewardItem = Config.Rewards['bankf']['Item2']
        itemCount = math.random(1, 2)
    elseif probabilidade > 20 and probabilidade <= 40 then
        rewardItem = Config.Rewards['bankf']['Item3']
        itemCount = math.random(1, 2)
    elseif probabilidade > 40 and probabilidade <= 100 then
        rewardItem = Config.Rewards['bankf']['ShitItem1']
        itemCount = math.random(1, 5)
    end

    if rewardItem then
        if Player.Functions.AddItem(rewardItem, itemCount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rewardItem], "add")

        else
    --        print("Debug: Could not add item to player inventory. Player ID: " .. src)
        end
    else
    --    print("Debug: Invalid reward item for player ID: " .. src)
    end
end)
RegisterNetEvent('securebox:server:giverewardsbankp')
AddEventHandler('securebox:server:giverewardsbankp', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then 

        return 
    end

    local probabilidade = math.random(1, 100)
    local rewardItem, itemCount

    if probabilidade <= 10 then
        rewardItem = Config.Rewards['bankp']['Item1']
        itemCount = math.random(1, 2)
    elseif probabilidade > 10 and probabilidade <= 20 then
        rewardItem = Config.Rewards['bankp']['Item2']
        itemCount = math.random(1, 2)
    elseif probabilidade > 20 and probabilidade <= 40 then
        rewardItem = Config.Rewards['bankp']['Item3']
        itemCount = math.random(1, 2)
    elseif probabilidade > 40 and probabilidade <= 100 then
        rewardItem = Config.Rewards['bankp']['ShitItem1']
        itemCount = math.random(1, 5)
    end

    if rewardItem then
        if Player.Functions.AddItem(rewardItem, itemCount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rewardItem], "add")

        else
    --        print("Debug: Could not add item to player inventory. Player ID: " .. src)
        end
    else
    --    print("Debug: Invalid reward item for player ID: " .. src)
    end
end)