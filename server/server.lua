ESX = nil 

TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
print('^5 GMW_Trucker-Script v2')
print('^5 Version: 2.0.4 | Author: .𝐁𝐢𝐥𝐥𝐢𝐞𝟒𝐋𝐢𝐟𝐞_-#0163 | Koma#0001')
print('^5 Join our Discord Server discord.gg/UjSZkKFC78')

-- ════════════════════════════════════════════════════════════════════════════════════ --
--                                 ServerEvents - Blip                                  --
-- ════════════════════════════════════════════════════════════════════════════════════ --

RegisterServerEvent("GMW_Scripts:GiveTruckerMoney")
AddEventHandler("GMW_Scripts:GiveTruckerMoney", function(info, EndReward)
    local xPlayer = ESX.GetPlayerFromId(source)
    print(EndReward)
    xPlayer.addMoney(EndReward)
    TriggerClientEvent('esx:showNotification', source, "Du hast ~g~"..EndReward.."$~w~ von ~g~"..info.Reward.."$~w~ für deinen Auftrag bekommen")
end)    

RegisterServerEvent("GMW_Scripts:PayFee")
AddEventHandler("GMW_Scripts:PayFee", function(info)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeMoney(info.Reward)
    TriggerClientEvent('esx:showNotification', source, "~y~Ein Mitarbeiter~w~ hat die Ware abgeholt und sie zurück ins ~b~Depot~w~ gebracht!")
    TriggerClientEvent('esx:showNotification', source, "~r~Du musstest die Kosten für die Ware Übernehmen!~w~\r\nKosten: ~g~"..info.Reward.."$")
end)