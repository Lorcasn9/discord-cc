local Descriptions = {
    "Los Santos sokaklarında devriye geziyorum 🚔",
    "Gangsterlerle mücadele ediyorum! 💥",
    "Hızlı arabalarla yarışıyorum 🏎️",
    "Şehirdeki en iyi restoranları keşfediyorum 🍔",
    "Adrenalin dolu soygun planları yapıyorum 💰",
    "Trafik kurallarına uymaya çalışıyorum 🚦",
    "Yasadışı işlere bulaşmadan hayatta kalmaya çalışıyorum 😅",
    "Yeni arkadaşlar edinip çeteler arasında geziniyorum 👥",
    "FiveM dünyasında kendime yeni bir kimlik oluşturuyorum 🎭",
    "Geceleri sokak yarışlarına katılıyorum 🌃"
}

local Buton, RandomDescription = true, true

CreateThread(function()
    while true do
        SetDiscordAppId() -- Bot application id
        SetDiscordRichPresenceAsset('BigLogo') -- Discord developer portal içerisinde bu isimde logo olması gerekmekte
        SetDiscordRichPresenceAssetText('Big Logo Text') -- Mouse ile büyük logo üzerinde geldiğinde ne yazmasını istiyorsanız 
        SetDiscordRichPresenceAssetSmall('MiniLogo') -- Discord developer portal içerisinde bu isimde logo olması gerekmekte
        SetDiscordRichPresenceAssetSmallText('Mini Logo Text') -- Mouse ile küçük logo üzerinde geldiğinde ne yazmasını istiyorsanız

        if RandomDescription then
            SetRichPresence(Descriptions[math.random(#Descriptions)]..' | ' .. #GetActivePlayers() .. '/128')
        else
            SetRichPresence(#GetActivePlayers() .. '/128')
        end

        if Buton then
            SetDiscordRichPresenceAction(0, "Forum", "https://")
            SetDiscordRichPresenceAction(1, "Discord", "https://")
        end
        Wait(60000)
    end
end)
