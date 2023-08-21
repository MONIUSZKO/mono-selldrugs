RegisterNetEvent('mono:dealer:Sprzedaj', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local cansell = false

    for i,v in pairs(xPlayer.getInventory(false)) do
        if Config.Narko[v.name] then
            if v.count > 0 then
                local reward = v.count * math.random(Config.Narko[v.name].min, Config.Narko[v.name].max)
                cansell = true
                xPlayer.removeInventoryItem(v.name, v.count)
				XPlayer.addInventoryItem('black_money', reward)

                xPlayer.showNotification('Otrzymałeś ' ..reward.. '$ ze sprzedaży ' ..v.label)
            end
        end
    end

    if not cansell then
        xPlayer.showNotification('Nie masz nic na sprzedaż!')
    end
end)
