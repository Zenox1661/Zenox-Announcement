local announce = "Zenox.Announce"

RegisterCommand("ann", function(source, args, rawCommand) -- Please keep the command the same otherwise the chat message will break!
    if IsPlayerAceAllowed(source, announce) -- Example: add_ace group.staff "Zenox.Announce" allow
            then
        TriggerClientEvent('t-notify:client:Custom', -1, {
            style = 'error',
            duration = 20000, -- 20 Seconds
            title = 'Announcement',
            message = "[ **" .. GetPlayerName(source) .. "** ]: " .. table.concat (args, " ") .. " ", -- Example: [ Zenox ]: This is a Test Announcement.
            sound = false -- If you want a sound when the notification begins then change that to true.
        })

        --// Announcement Text in Chat
        local src = source
        local msg = rawCommand:sub(5)
        local user = '[ANNOUNCMENT] ' .. GetPlayerName(src) .. ':'
        TriggerClientEvent('chat:addMessage', -1, { 
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(60, 60, 60); border-radius: 5px;">{0}  {1}</div>',
            args = { user, msg }
        })

    else
        TriggerClientEvent('t-notify:client:Custom', source, {
            style  =  'error',
            duration  =  5000, -- 5 Seconds
            message  =  "You are not permitted to use this Command!", 
            sound  =  false -- If you want a sound when the notification begins then change that to true.
        })
    end
end)

print("Announcement Script made by: Zenox") -- DO NOT REMOVE
