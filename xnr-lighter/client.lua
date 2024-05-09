ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('xnr-lighter:client:setfire')
AddEventHandler('xnr-lighter:client:setfire', function(pos)
    local ped = PlayerPedId()
    StartScriptFire(pos.x, pos.y, pos.z - 1, 25, false)
    Wait(15000)
    StopFireInRange(pos.x, pos.y, pos.z - 1, 0.0000000001)
end)

exports('lighter', function(data, slot)
    exports.ox_inventory:useItem(data, function(data)
        if data then
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            if lib.progressBar({
                duration = 3000,
                label = 'Podpalanie...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                    car = true,
                    combat = true
                },
                anim = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    clip = 'machinic_loop_mechandplayer',
                    flag = 1,
                },
            }) then
                Wait(1000)
                TriggerServerEvent("xnr-lighter:sv:setfire", coords)
            else 
                ClearPedTasks(ped)
            end
        end
    end)
end)