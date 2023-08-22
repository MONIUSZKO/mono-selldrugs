local ped = GetHashKey(Config.Ped)

function SellItems()
    TriggerServerEvent('mono:dealer:Sprzedaj')
end

exports[Config.Target]:AddTargetModel({ped}, {
 	options = {
 		{
            event = "sellnij"
 			icon = "fas fa-cannabis",
 			label = "Zagadaj",
 		},
 	},
 	distance = 2
})

RegisterNetEvent('sellnij')
AddEventHandler('sellnij', function()
    SellItems()
end)
