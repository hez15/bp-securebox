Dependcies 

PS-ui 
PS-dispatch 
Qbcore

qbcore items

 securebox                    = { name = "securebox", label = "Secure Box", weight = 10000, type = "item", image = "briefcase.png", unique = true, useable = true, shouldClose = true, combinable = nil, ["decay"] = 7.0, ["delete"] = true,description = "Secure Box" },
    bankboxf                    = { name = "bankboxf", label = "Secure Box", weight = 10000, type = "item", image = "briefcase.png", unique = true, useable = true, shouldClose = true, combinable = nil, ["decay"] = 7.0, ["delete"] = true,description = "Secure Box" },
    bankboxp                    = { name = "bankboxp", label = "Secure Box", weight = 10000, type = "item", image = "briefcase.png", unique = true, useable = true, shouldClose = true, combinable = nil, ["decay"] = 7.0, ["delete"] = true, description = "Secure Box" },


Note -- uf your not using LJ-inventory/ ps-inventory the decay section wont work!

In the config you can change the reward items. THe rewards are all based on probaility. 
When the mini game is compelete the item will be removed and items given. If failed a alarm will trigger and a police dispatch call will happen 

PS - Dispatch -- Required to work for the police calls 

paste this code in ps-dispatch/client/alerts.lua at the bottom!
```lua 
local function SecureCase(camId)
    local coords = GetEntityCoords(cache.ped)

    local dispatchData = {
        message = locale('Secure Case Alarm'),
        codeName = 'securecase',
        code = '10-90',
        icon = 'fas fa-store',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(),
        street = GetStreetAndZone(coords),
        camId = camId,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerServerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('SecureCase', SecureCase)

ps-dispatch/shared/config.lua paste this in around line 434 see image for refrence 

    ['securecase'] = {
        radius = 0,
        sprite = 52,
        color = 1,
        scale = 1.5,
        length = 2,
        sound = 'Lose_1st',
        sound2 = 'GTAO_FM_Events_Soundset',
        offset = false,
        flash = false
    },



