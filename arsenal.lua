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

-- Variables du silent aim
local fov = 50  -- Le FOV du silent aim (vous pouvez ajuster cette valeur)
local silentAimEnabled = false  -- Par défaut, le silent aim est désactivé
local espEnabled = false  -- Par défaut, l'ESP est désactivé
local espColor = Color3.new(1, 0, 0)  -- Couleur de l'ESP par défaut

-- Fonction d'activation de l'ESP
local function toggleESP()
    espEnabled = not espEnabled  -- Inverser l'état de l'ESP
    local playerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    if not playerGui then return end

    -- Vérifier et nettoyer l'ancien ESP
    local oldESP = playerGui:FindFirstChild("TadachiisESP")
    if oldESP then
        oldESP:Destroy()
    end

    if espEnabled then
        -- Création du nouvel ESP
        local screenGui = Instance.new("ScreenGui", playerGui)
        screenGui.Name = "TadachiisESP"

        local function createBillboard(player)
            local character = player.Character
            if not character or not character:FindFirstChild("Head") then return end

            -- Vérifier si le BillboardGui existe déjà
            local existingBillboard = character.Head:FindFirstChild("PlayerBillboardGui")
            if existingBillboard then return end

            -- Création du BillboardGui pour le joueur
            local billboard = Instance.new("BillboardGui", character.Head)
            billboard.Name = "PlayerBillboardGui"
            billboard.Size = UDim2.new(0, 100, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2, 0)
            billboard.AlwaysOnTop = true

            local textLabel = Instance.new("TextLabel", billboard)
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextColor3 = espColor
            textLabel.TextScaled = true
            textLabel.TextStrokeTransparency = 0
            textLabel.Text = player.Name
        end

        -- Création des Billboards pour les autres joueurs
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                createBillboard(player)
            end
        end

        Rayfield:Notify({
            Title = "ESP activé",
            Content = "L'ESP a été activé.",
            Duration = 5,
        })
    else
        Rayfield:Notify({
            Title = "ESP désactivé",
            Content = "L'ESP a été désactivé.",
            Duration = 5,
        })
    end
end

-- Fonction de Silent Aim
local function toggleSilentAim()
    silentAimEnabled = not silentAimEnabled  -- Inverser l'état du silent aim

    -- Alerte sur l'état du silent aim
    if silentAimEnabled then
        Rayfield:Notify({
            Title = "Silent Aim activé",
            Content = "Le silent aim a été activé.",
            Duration = 5,
        })
    else
        Rayfield:Notify({
            Title = "Silent Aim désactivé",
            Content = "Le silent aim a été désactivé.",
            Duration = 5,
        })
    end
end

-- Fonction pour vérifier si un joueur est dans la zone du FOV et ajuster la visée
local function silentAimLogic()
    if not silentAimEnabled then return end

    local localPlayer = game.Players.LocalPlayer
    local mouse = localPlayer:GetMouse()

    -- Parcourir tous les joueurs pour trouver ceux dans le FOV
    local closestPlayer = nil
    local closestDistance = math.huge  -- Distance infinie au départ

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head
            local screenPos, onScreen = workspace.CurrentCamera:WorldToScreenPoint(head.Position)

            -- Vérifier si le joueur est visible à l'écran et dans le FOV
            if onScreen then
                local distance = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                if distance < fov and distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end

    -- Si un joueur est dans la zone du FOV, viser automatiquement
    if closestPlayer then
        local headPos = closestPlayer.Character.Head.Position
        local direction = (headPos - workspace.CurrentCamera.CFrame.Position).unit
        workspace.CurrentCamera.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, headPos)
    end
end

-- Ajouter les boutons de la fenêtre
MainTab:CreateButton({
    Name = "Activer/Désactiver ESP",
    Callback = toggleESP
})

MainTab:CreateButton({
    Name = "Activer/Désactiver Silent Aim",
    Callback = toggleSilentAim
})

MainTab:CreateSlider({
    Name = "FOV Silent Aim",
    Range = {1, 100},
    Increment = 1,
    Suffix = "FOV",
    CurrentValue = fov,
    Callback = function(value)
        fov = value
    end,
})

MainTab:CreateColorPicker({
    Name = "Couleur ESP",
    Default = espColor,
    Callback = function(value)
        espColor = value
        toggleESP()  -- Réappliquer l'ESP avec la nouvelle couleur
    end,
})

-- Exécuter la logique du silent aim en boucle
game:GetService("RunService").RenderStepped:Connect(function()
    silentAimLogic()
end)

print("ESP et Silent Aim activés")
