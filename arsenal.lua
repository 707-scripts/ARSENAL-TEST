-- StarterGui

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- Créer un RemoteEvent pour communiquer entre le client et le serveur
local SendMessageEvent = Instance.new("RemoteEvent")
SendMessageEvent.Name = "SendMessageEvent"
SendMessageEvent.Parent = ReplicatedStorage

-- Créer l'interface utilisateur
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 200)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.BorderSizePixel = 0
Title.Text = "Message Broadcaster"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Parent = MainFrame

local MessageBox = Instance.new("TextBox")
MessageBox.Size = UDim2.new(0.8, 0, 0, 50)
MessageBox.Position = UDim2.new(0.1, 0, 0, 60)
MessageBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MessageBox.BorderSizePixel = 0
MessageBox.PlaceholderText = "Enter your message here"
MessageBox.Text = ""
MessageBox.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageBox.TextScaled = true
MessageBox.Parent = MainFrame

local SendButton = Instance.new("TextButton")
SendButton.Size = UDim2.new(0.8, 0, 0, 50)
SendButton.Position = UDim2.new(0.1, 0, 0, 120)
SendButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SendButton.BorderSizePixel = 0
SendButton.Text = "Send Message"
SendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SendButton.TextScaled = true
SendButton.Parent = MainFrame

-- Fonction pour envoyer le message au serveur
SendButton.MouseButton1Click:Connect(function()
    local message = MessageBox.Text
    if message ~= "" then
        SendMessageEvent:FireServer(message)
        MessageBox.Text = "" -- Effacer le texte après l'envoi
    end
end)

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
