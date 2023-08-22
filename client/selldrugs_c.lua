local PED = GetHashKey(Config.Ped)

function SellItems()
    TriggerServerEvent('mono:dealer:Sprzedaj')
end

exports[Config.Target]:AddTargetModel({PED}, {
options = {
 	{
        action = function()
            SellItems()
        end,
 		icon = "fas fa-cannabis",
 		label = "Zagadaj...",
 	},
 	},
 	distance = 2
 })
