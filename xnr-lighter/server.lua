ESX = exports.es_extended:getSharedObject()

RegisterNetEvent('xnr-lighter:sv:setfire')
AddEventHandler('xnr-lighter:sv:setfire', function(pos)
    TriggerClientEvent('xnr-lighter:client:setfire', -1, pos)
end)
