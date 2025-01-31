-- StarterGui

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Créer un RemoteEvent pour communiquer entre le client et le serveur
local SendMessageEvent = Instance.new("RemoteEvent")
SendMessageEvent.Name = "SendMessageEvent"
SendMessageEvent.Parent = ReplicatedStorage

-- Charger la bibliothèque Tokyo Lib
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/1%20Tokyo%20Lib%20(FIXED)/Tokyo%20Lib%20Source.lua"))({
    cheatname = "Title Here", -- watermark text
    gamename = "Title Here", -- watermark text
})

library:init()

local Window1 = library.NewWindow({
    title = "Title Here | Title Here", -- Mainwindow Text
    size = UDim2.new(0, 510, 0.6, 6)
})

local Tab1 = Window1:AddTab("  Tab1  ")
local SettingsTab = library:CreateSettingsTab(Window1)

local Section1 = Tab1:AddSection("Section 1", 1)

local messageBox = Section1:AddBox({
    enabled = true,
    name = "TextBox1",
    flag = "TextBox_1",
    input = "Enter your message here",
    focused = false,
    risky = false,
    callback = function(v)
        print("Message entered:", v)
    end
})

Section1:AddButton({
    enabled = true,
    text = "Send Message",
    tooltip = "tooltip1",
    confirm = true,
    risky = false,
    callback = function()
        local message = messageBox:GetValue()
        if message ~= "" then
            SendMessageEvent:FireServer(message)
            messageBox:SetValue("") -- Effacer le texte après l'envoi
        end
    end
})

Section1:AddSeparator({
    enabled = true,
    text = "Separator1"
})

-- Côté serveur pour envoyer le message à tous les joueurs
if RunService:IsServer() then
    SendMessageEvent.OnServerEvent:Connect(function(player, message)
        for _, p in ipairs(Players:GetPlayers()) do
            SendMessageEvent:FireClient(p, message)
        end
    end)
end

-- Côté client pour afficher le message reçu
SendMessageEvent.OnClientEvent:Connect(function(message)
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(0, 200, 0, 50)
    messageLabel.Position = UDim2.new(0.5, -100, 0.5, 0)
    messageLabel.Text = message
    messageLabel.BackgroundTransparency = 1
    messageLabel.TextColor3 = Color3.new(1, 1, 1)
    messageLabel.TextScaled = true
    messageLabel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Supprimer le message après 5 secondes
    wait(5)
    messageLabel:Destroy()
end)
