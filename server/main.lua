RegisterUseableItem(Config.RadioItem)
if Config.VoiceSystem == "pma-voice" then
    for channel, config in pairs(Config.RestrictedChannels) do
        exports['pma-voice']:addChannelCheck(channel, function(source)
            local PlayerJob = GetPlayerJob(source)
            if CoreName == "es_extended" then
                return config[PlayerJob.name]
            else
                return config[PlayerJob.name] and PlayerJob.onduty
            end
        end)
    end
end