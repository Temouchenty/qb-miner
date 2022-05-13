local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-miner:givegold', function(gold, num)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem(gold, num)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[gold], 'add')
end)


local golds = {
    gold = Config.price.gold,
    diamond = Config.price.diamond,
  }
  
RegisterNetEvent('qb-miner:sellgold', function()
      local src = source
      local Player = QBCore.Functions.GetPlayer(src)
        for k,v in pairs(golds) do
           local item = Player.Functions.GetItemByName(k)
            if item ~= nil then
                if Player.Functions.RemoveItem(k, item.amount) then
                   Player.Functions.AddMoney('cash', v * item.amount)
                   TriggerClientEvent('QBCore:Notify', src, 'you sold ' .. item.amount .. ' ' .. k .. ' ', 'success', 5000)
                end
            end
        end
  end)