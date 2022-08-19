TriggerEvent('chat:addSuggestion', '/911', 'Send a message to online Emergency Services', {
    { name="Message", help="Place your message you want to send." },
})

RegisterNetEvent('Send911Message:LEO')
AddEventHandler('Send911Message:LEO', function(id, name, message)
    if Knight_Duty.onDuty then --Checks if unit is onduty and if they are LEO
        TriggerEvent('mythic_notify:client:SendAlert', {length = 25000, type = "error", text = "New 911 Call: [" ..id.. "] " ..name.. " <br/> Message: " ..message})
    end
end)

RegisterNetEvent('Send911Message:Enter911')
AddEventHandler('Send911Message:Enter911', function()
    TriggerEvent('mythic_notify:client:SendAlert', {length = 10000, type = "inform", text = "Your call Has been sent to emergency services, they are now responding."})
end)