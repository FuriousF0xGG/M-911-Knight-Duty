RegisterCommand("911", function(source, args, raw)
    if args[1] then
        --Uncomment Below if you use knight logging
    --TriggerEvent('knight-serverlogs:internal:logevent', {webhook = "911", color = "red", source = source, title = "New 911 Call", message = "Player Name: `[" ..source.. "] " ..GetPlayerName(source).. "` Called for 911, they sent the following message: `" ..table.concat(args, " ") .. "`", includeip = false})
        TriggerClientEvent('Send911Message:LEO', -1, source, GetPlayerName(source), table.concat(args, " "))
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'ERROR: It appears you are missing arguments. <br/> USAGE: /911 [MESSAGE] [POSTAL]'})
                    end
    end)