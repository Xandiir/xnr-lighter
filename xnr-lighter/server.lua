ESX = exports.es_extended:getSharedObject()

RegisterNetEvent('xnr-lighter:setfire')
AddEventHandler('xnr-lighter:setfire', function(pos)
    TriggerClientEvent('xnr-lighter:setfire', -1, pos)
end)
