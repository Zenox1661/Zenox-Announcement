local announce = "GS_Base.Jail"

RegisterCommand("announce", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, announce) then -- Example: add_ace group.staff "Zenox.Announce" allow
        TriggerClientEvent('t-notify:client:Custom', -1, {
            style = 'info',
            duration = 20000, -- 20 Seconds
            title = 'Announcement',
            message = "[ **" .. GetPlayerName(source) .. "** ]: " .. table.concat (args, " ") .. " ", -- Example: [ Zenox ]: This is a Test Announcement.
            sound = false -- If you want a sound when the notification begins then change that to true.
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