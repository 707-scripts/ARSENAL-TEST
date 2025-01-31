-- Chargement de Rayfield
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Création de la fenêtre principale
local Window = Rayfield:CreateWindow({
    Name = "LA TEAM 707 Script Hub",
    LoadingTitle = "Chargement...",
    LoadingSubtitle = "Par LA TEAM 707",
    Discord = {
        Enabled = true,
        Invite = "GhQDgqx2HP",
        RememberJoins = true
    },
    KeySystem = false
})

-- Section principale
local MainTab = Window:CreateTab("🏠 Accueil 🏠")
MainTab:CreateSection("Principal")

-- Notification de chargement réussi
Rayfield:Notify({
    Title = "Chargement réussi",
    Content = "Le script a été chargé avec succès.",
    Duration = 5,
})

-- Fonction d'activation de l'ESP
local function toggleESP()
    local playerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    if not playerGui then return end

    -- Vérifier et nettoyer l'ancien ESP
    local oldESP = playerGui:FindFirstChild("TadachiisESP")
    if oldESP then oldESP:Destroy() end
    
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Head") then
            local billboardGui = player.Character.Head:FindFirstChild("PlayerBillboardGui")
            if billboardGui then billboardGui:Destroy() end
        end
    end
    
    -- Création du nouvel ESP
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.Name = "TadachiisESP"
    
    local function createBillboard(player)
        local character = player.Character
        if not character or not character:FindFirstChild("Head") then return end

        local billboard = Instance.new("BillboardGui", character.Head)
        billboard.Name = "PlayerBillboardGui"
        billboard.Size = UDim2.new(0, 100, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 2, 0)
        billboard.AlwaysOnTop = true

        local textLabel = Instance.new("TextLabel", billboard)
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = Color3.new(1, 0, 0)
        textLabel.TextScaled = true
        textLabel.TextStrokeTransparency = 0
        textLabel.Text = player.Name
    end

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            createBillboard(player)
        end
    end
end

-- Ajout du bouton d'activation ESP
MainTab:CreateButton({
    Name = "Activer ESP",
    Callback = toggleESP
})

print("ESP activé")
