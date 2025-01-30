if game.PlaceId == 286090429 then

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "For Any Game",
    LoadingTitle = "OP Script Hub",
    LoadingSubtitle = "By LA TEAM 707",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "LA TEAM 707 SCRIPT HUB"
    },
    Discord = {
        Enabled = true,
        Invite = "GhQDgqx2HP", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local MainTab = Window:CreateTab("🏠 Home 🏠", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
    Title = "Sucessfully Executed",
    Content = "Notification",
    Duration = 5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Ok!",
            Callback = function()
                print("The user tapped Okay!")
            end
        },
    },
})

local Button = MainTab:CreateButton({
    Name = "Inf Yelid",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
})

local Slider = MainTab:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 300},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local Dropdown = MainTab:CreateDropdown({
    Name = "Select How OP You Want It",
    Options = {"OP", "Blatant", "Non Bannable"},
    CurrentOption = {"OP"},
    MultipleOptions = false,
    Flag = "How OP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        print(Option)
    end,
})

local AimbotTab = Window:CreateTab("🔫Aimbot", nil) -- Title, Image
local Section = AimbotTab:CreateSection("Options")

local Button = AimbotTab:CreateButton({
    Name = "Silent Aim",
    Callback = function()
        -- have fun pasters,
        -- made with ❤ from chips

        getgenv().Peace = {
            ["Main"] = {
                ["Intro"] = true,
                Fps = {
                    ["Enabled"] = true,
                    ["Percent"] = 0
                },
                ["User InterFace"] = true,
                ["Keybind"] = "V",
                ["Visible Text"] = true
            },
            Cmds = {
                ["Enabled"] = false,
                ["Fov"] = "!F",
                ["Prediction"] = "!P"
            },
            ["Visuals"] = {
                ["Ambient"] = {
                    ["Enabled"] = false,
                    ["Color"] = Color3.fromRGB(4, 0, 255)
                },
                ["OutDoor Ambient"] = {
                    ["Enabled"] = false, -- // Had To Push The Release
                    ["Color"] = Color3.fromRGB(4, 0, 255)
                },
                ["Fog Modifications"] = {
                    ["Enabled"] = false, -- // Modifies Your Fog
                    ["Color"] = Color3.fromRGB(4, 0, 255),
                    ["Start"] = 25,
                    ["End"] = 100
                }
            },
            ["Title"] = {
                ["Text"] = "peace streamable",
                ["Extension"] = {
                    ["Fringe"] = "(",
                    ["End"] = ")"
                },
                ["Size"] = 13
            },
            ["Scale"] = {
                ["X"] = 10 * 10,
                ["Y"] = 10 * 1
            },
            ["Color"] = {
                ["Inline"] = Color3.fromRGB(255, 246, 180),
                ["Outline"] = Color3.fromRGB()
            },
            ["Fade Speed"] = {
                ["Intro"] = 0.1,
                ["Outro"] = 0.01
            },
            ["Link"] = {
                ["Check"] = {
                    ["Team"] = false,
                    ["IsDead"] = true,
                    ["Visible"] = true,
                    ["Resolver"] = false
                },
                ["Field"] = {
                    ["Visual"] = {
                        ["Enabled"] = true,
                        ["Keybind"] = "T",
                        ["Radius"] = 190.2,
                        ["Inline"] = {
                            ["Transparency"] = 0.4,
                            ["Color"] = Color3.fromRGB(255, 255, 255)
                        },
                        ["Outline"] = {
                            ["Transparency"] = 0.65,
                            ["Color"] = Color3.fromRGB(0, 0, 0)
                        },
                        ["Control"] = {
                            ["Stick To Target"] = false
                        }
                    }
                }
            },
            ["Aiming"] = {
                ["Redirection"] = {
                    ["Extension"] = {
                        ["Fringe"] = "{",
                        ["End"] = "}"
                    },
                    ["Tab"] = {
                        ["Enabled"] = true,
                        ["Keybind"] = "X"
                    },
                    ["HitPart"] = {
                        ["Target"] = "HumanoidRootPart",
                        ["Revaluate"] = {
                            ["Enabled"] = false,
                            ["Origin"] = "Humanoid"
                        },
                        ["Validated Part"] = {"HumanoidRootPart", "Head"}
                    },
                    ["HitChance"] = {
                        ["Enabled"] = false,
                        ["Amount"] = 100
                    },
                    ["Prediction"] = {
                        ["Enabled"] = true,
                        ["Amount"] = 0.145567724521
                    },
                    ["Panel"] = {
                        ["Method"] = "FindPartOnRayWithIgnoreList",
                        ["Target"] = {
                            ["Enabled"] = true,
                            ["Keybind"] = "C",
                            ["Player"] = nil,
                            ["Position"] = {
                                ["From"] = "LowerTorso"
                            }
                        }
                    },
                    ["IndicateMousePos"] = {
                        ["Enabled"] = true
                    },
                    ["Drawing"] = {
                        ["Color1"] = Color3.new(211, 211, 211),
                        ["Color2"] = Color3.new(128, 0, 0),
                        ["Indication Color"] = Color3.new(255, 0, 0),
                        ["Line Color"] = Color3.new(255, 255, 255),
                        ["Line Outline Color"] = Color3.new(0, 0, 0)
                    }
                },
                ["Aimbot"] = {
                    ["Panel"] = {
                        ["Enabled"] = true,
                        ["Keybind"] = {
                            ["Enabled"] = "F",
                            ["Disabled"] = "G"
                        },
                        ["HitPart"] = {
                            ["Target"] = "HumanoidRootPart",
                            ["Revaluate"] = {
                                ["Enabled"] = false,
                                ["Origin"] = "Humanoid"
                            }
                        },
                        ["Prediction"] = {
                            ["Enabled"] = true,
                            ["Amount"] = 10
                        },
                        ["Assist"] = {
                            ["Enabled"] = true,
                            ["Amount"] = 40
                        },
                        ["Panel"] = {
                            ["Method"] = "Camera",
                            ["Target"] = false,
                            ["Lerp"] = {
                                ["Type"] = "Linear",
                                ["Direction"] = "In"
                            }
                        }
                    }
                }
            },
            ["Visual"] = {
                ["ESP"] = {
                    Initiate = true,
                    Enabled = true,
                    Size = 13,
                    Font = 2,
                    Color = Color3.new(244, 245, 243)
                }
            }
        }

        if not LPH_OBFUSCATED then
            LPH_JIT_MAX = function(...)
                return (...)
            end
            LPH_JIT_ULTRA = function(...)
                return (...)
            end
        end

        LPH_JIT_MAX(
            function()
                local Drawing, FromRGB = Drawing.new, Color3.fromRGB
                local UIS, Players, MPS, RunService, Camera, Tween =
                    game:GetService("UserInputService"),
                    game:GetService("Players"),
                    game:GetService("MarketplaceService"),
                    game:GetService("RunService"),
                    workspace.CurrentCamera,
                    {}

                function Direction(Value, Two)
                    return Vector2.new(Value / Peace["Scale"].X, Two / Peace["Scale"].Y)
                end

                local Title = Drawing("Text")
                local Value = Drawing("Text")
                local Part = Drawing("Text")
                if Peace["Main"]["Intro"] == true then
                    local Tracer = Drawing("Image")
                    local Blur = Instance.new("BlurEffect")
                    local screenSize = workspace.CurrentCamera.ViewportSize
                    local centerPosition = Vector2.new(screenSize.X / 2, screenSize.Y / 2)
                    Tracer.Position = centerPosition
                    Tracer.Size = Vector2.new(0, 0)
                    Tracer.Visible = true
                    Tracer.Data = game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source")
                    Blur.Size = 0
                    Blur.Parent = workspace.CurrentCamera
                    for i = 1, 100 do
                        if Blur.Size ~= 150 then
                            Blur.Size = Blur.Size + 1
                        end
                        task.wait()
                    end
                    wait(2)
                    Tracer.Size = Vector2.new(400, 400)
                    Tracer.Position = centerPosition - Tracer.Size / 2
                    for i = 1, 100 do
                        if Tracer.Transparency ~= 0 then
                            Tracer.Transparency = Tracer.Transparency - 0.01
                        end
                        if Blur.Size ~= 0 then
                            Blur.Size = Blur.Size - 1
                        end
                        task.wait()
                    end
                    Tracer.Size = Vector2.new(0, 0)
                    Blur:Destroy()
                end
                wait(0.15)

                local function Table()
                    local hitparts = Peace.Aiming.Redirection["HitPart"]["Validated Parts"]

                    Title.Position, Title.Size =
                        Direction(Camera.ViewportSize.X + 800, Camera.ViewportSize.Y),
                        Peace["Title"].Size
                    Value.Position, Value.Size =
                        Direction(Camera.ViewportSize.X, Camera.ViewportSize.Y + 400),
                        Peace["Title"].Size
                    Part.Position, Part.Size =
                        Direction(Camera.ViewportSize.X + 800, Camera.ViewportSize.Y + 600),
                        Peace["Title"].Size

                    if Peace["Main"]["User InterFace"] then
                        Title.Text, Title.Font =
                            tostring(
                                Peace["Title"].Text ..
                                    " " ..
                                        Peace["Title"].Extension.Fringe ..
                                            game.Stats.Workspace.Heartbeat:GetValueString() .. Peace["Title"].Extension.End
                            ),
                            2
                        Title.Visible, Title.Outline, Title.Color, Title.OutlineColor =
                            Peace["Main"]["Visible Text"],
                            true,
                            Peace["Color"].Inline,
                            Peace["Color"].Outline

                        Value.Font, Value.Visible, Value.Outline, Value.Color, Value.OutlineColor =
                            2,
                            Peace["Main"]["Visible Text"],
                            true,
                            Peace.Aiming.Redirection["Drawing"]["Color1"],
                            Peace["Color"].Outline

                        Part.Font, Part.Visible, Part.Outline, Part.Color, Part.OutlineColor =
                            2,
                            Peace["Main"]["Visible Text"],
                            true,
                            Peace.Aiming.Redirection["Drawing"]["Color2"],
                            Peace["Color"].Outline

                        if Peace.Aiming.Redirection["Tab"].Enabled then
                            Value.Text = Peace.Aiming.Redirection.Extension.Fringe .. "redirection" .. " = " .. "enabled" -- Function.Aiming.Redirection.Extension.End
                            Part.Text =
                                tostring(
                                "hitpart" ..
                                    " = " ..
                                        (Peace.Aiming["Redirection"]["HitPart"]["Target"]):lower() ..
                                            Peace.Aiming.Redirection.Extension.End
                            )
                        else
                            Part.Text = ""
                            Value.Text =
                                Peace.Aiming.Redirection.Extension.Fringe ..
                                "redirection" .. " = " .. "disabled" .. Peace.Aiming.Redirection.Extension.End
                        end
                    else
                    end
                end

                local Utilitie = {}
                Utilitie.Toggle = false

                UIS.InputBegan:Connect(
                    function(Two, Input)
                        if not Input then
                            if Two.KeyCode.Name == Peace["Main"]["Keybind"] then
                                Utilitie.Toggle = not Utilitie.Toggle
                                if Utilitie.Toggle then
                                    RunService:BindToRenderStep("Table!", 1, Table)
                                    for i = 0, 1, Peace["Fade Speed"].Intro do
                                        wait(0)
                                        Title.Transparency = i
                                        Value.Transparency = i
                                        Part.Transparency = i
                                    end

                                    Peace["Main"]["User InterFace"] = true
                                    Peace["Main"]["Visible Text"] = true
                                elseif not Utilitie.Toggle then
                                    RunService:UnbindFromRenderStep("Table")
                                    Peace["Main"]["User InterFace"] = false

                                    Title.Transparency = 0.9
                                    Value.Transparency = 0.9
                                    Part.Transparency = 0.9
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.8
                                    Value.Transparency = 0.8
                                    Part.Transparency = 0.8
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.7
                                    Value.Transparency = 0.7
                                    Part.Transparency = 0.7
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.6
                                    Value.Transparency = 0.6
                                    Part.Transparency = 0.6
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.5
                                    Value.Transparency = 0.5
                                    Part.Transparency = 0.5
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.4
                                    Value.Transparency = 0.4
                                    Part.Transparency = 0.4
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.3
                                    Value.Transparency = 0.3
                                    Part.Transparency = 0.3
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.2
                                    Value.Transparency = 0.2
                                    Part.Transparency = 0.2
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.1
                                    Value.Transparency = 0.1
                                    Part.Transparency = 0.1
                                    wait(Peace["Fade Speed"].Outro)
                                    Title.Transparency = 0.1
                                    Value.Transparency = 0.1
                                    Part.Transparency = 0.1
                                    wait(Peace["Fade Speed"].Outro)

                                    Title.Transparency = 0
                                    Value.Transparency = 0
                                    Part.Transparency = 0
                                end
                            end
                        end
                    end
                )

                WTS = (function(Object)
                    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
                    return Vector2.new(ObjectVector.X, ObjectVector.Y)
                end)

                local Field = {}
                Field.MouseLink, Field.Outline, Field.Inline = Drawing("Circle"), Drawing("Circle"), Drawing("Circle")

                Field.Line, Field.LineOutline = Drawing("Line"), Drawing("Line")

                Field.Inline.Visible = Peace.Link.Field.Visual.Enabled
                Field.Inline.Radius = Peace.Link.Field.Visual.Radius
                Field.Inline.Transparency = Peace.Link.Field.Visual.Inline.Transparency
                Field.Inline.Color = Peace.Link.Field.Visual.Inline.Color

                Field.Inline.Thickness = 3
                Field.Outline.Thickness = 4

                Field.Line.Thickness = 3
                Field.Line.Transparency = 0.8
                Field.Line.Color = Peace.Aiming["Redirection"]["Drawing"]["Line Color"]

                Field.LineOutline.Thickness = 7
                Field.LineOutline.Transparency = 0.4
                Field.LineOutline.Color = Peace.Aiming["Redirection"]["Drawing"]["Line Outline Color"]

                Field.Inline.Filled = true

                Field.Outline.Filled = false
                Field.Outline.Visible = Peace.Link.Field.Visual.Enabled
                Field.Outline.Radius = Field.Inline.Radius
                Field.Outline.Transparency = Peace.Link.Field.Visual.Outline.Transparency
                Field.Outline.Color = Peace.Link.Field.Visual.Outline.Color
                local GameInfo = game.PlaceId

                local LocalPlayer = Players.LocalPlayer
                local Mouse = LocalPlayer:GetMouse()

                local IgnoreList = {LocalPlayer.Character, Camera}

                local function PartVisible(Part)
                    if Peace.Link.Check["Visible"] and Part and Part.Head then
                        local Hit =
                            workspace:FindPartOnRayWithIgnoreList(
                            Ray.new(Camera.CFrame.Position, Part.Head.Position - Camera.CFrame.Position),
                            IgnoreList
                        )
                        if Hit and Hit:IsDescendantOf(Part) then
                            return true
                        end
                        return false
                    else
                        return true
                    end
                end

                function ClosestToCursor()
                    local Closest = nil
                    local Distance = Field.Inline.Radius
                    for i, v in pairs(Players:GetPlayers()) do
                        if
                            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and
                                (Peace.Link["Check"]["Team"] == true and (v.Team ~= LocalPlayer.Team) or
                                    Peace.Link["Check"]["Team"] ~= true)
                         then
                            local MouseLocation = UIS:GetMouseLocation()

                            local Vector, IsVisible = Camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                            local Magnitude =
                                (Vector2.new(Vector.X, Vector.Y) - Vector2.new(MouseLocation.X, MouseLocation.Y)).magnitude

                            if Magnitude < Distance and IsVisible and PartVisible(v.Character) then
                                Closest = v
                                Distance = Magnitude
                            end
                        end
                    end

                    if GameInfo == 2788229376 and Peace.Link["Check"]["IsDead"] then
                        if
                            Closest and Closest.Character and not Closest.Character:FindFirstChild("GRABBING_CONSTRAINT") and
                                not Closest.Character:FindFirstChild("BodyEffects")["K.O"].Value
                         then
                            return Closest
                        end
                        return nil
                    end
                    if GameInfo ~= 2788229376 and Peace.Link["Check"]["IsDead"] then
                        if Closest and Closest.Character and Closest.Character.Humanoid.Health > 0 then
                            return Closest
                        end
                        return nil
                    end

                    return Closest
                end

                local function LineToggle(Value)
                    Field.LineOutline.Visible = Value
                    Field.Line.Visible = Value
                end

                local function LineRedirect()
                    if not Peace.Aiming["Redirection"]["Panel"]["Target"].Enabled then
                        LineToggle(false)
                        return
                    end

                    local Target = Peace.Aiming["Redirection"]["Panel"]["Target"].Player
                    if not Target then
                        LineToggle(false)
                        return
                    end
                    if not Peace.Aiming["Redirection"]["Panel"]["Target"].Position.From then
                        return
                    end
                    local Vector, IsVisible =
                        Camera:worldToViewportPoint(Target.Character[Peace.Aiming["Redirection"]["HitPart"]["Target"]].Position)
                    local TorsoPosition =
                        Camera:worldToViewportPoint(
                        LocalPlayer.Character[Peace.Aiming["Redirection"]["Panel"]["Target"].Position.From].Position
                    )

                    LineToggle(IsVisible)
                    if not IsVisible then
                        return
                    end

                    Field.LineOutline.From = Vector2.new(TorsoPosition.X, TorsoPosition.Y)
                    Field.LineOutline.To = Vector2.new(Vector.X, Vector.Y)
                    Field.Line.From = Vector2.new(TorsoPosition.X, TorsoPosition.Y)
                    Field.Line.To = Vector2.new(Vector.X, Vector.Y)
                end

                local Toggle = {}
                Toggle.Redirection, Toggle.Target, Toggle.FOV, Toggle.Aimbot = false, false, false, false

                UIS.InputBegan:Connect(
                    function(Two, Value)
                        if not Value then
                            if Two.KeyCode.Name == Peace.Link.Field.Visual.Keybind then
                                Toggle.FOV = not Toggle.FOV
                                if Toggle.FOV then
                                    Field.Inline.Visible = true
                                    Field.Outline.Visible = true
                                elseif not Toggle.FOV then
                                    Field.Inline.Visible = false
                                    Field.Outline.Visible = false
                                end
                            end
                        end
                    end
                )

                UIS.InputBegan:Connect(
                    function(Two, Value)
                        if not Value then
                            if Two.KeyCode.Name == Peace.Aiming["Redirection"]["Tab"].Keybind then
                                Toggle.Redirection = not Toggle.Redirection
                                if Toggle.Redirection then
                                    Peace.Aiming["Redirection"]["Tab"]["Enabled"] = true
                                elseif not Toggle.Redirection then
                                    Peace.Aiming["Redirection"]["Tab"]["Enabled"] = false
                                end
                            end
                        end
                    end
                )

                UIS.InputBegan:Connect(
                    function(Two, Value)
                        if not Value then
                            if Two.KeyCode.Name == Peace.Aiming["Redirection"].Panel["Target"]["Keybind"] then
                                Toggle.Target = not Toggle.Target
                                if Toggle.Target then
                                    Peace.Aiming["Redirection"].Panel["Target"].Enabled = true
                                    Peace.Aiming["Redirection"]["Panel"]["Target"].Player = ClosestToCursor()

                                    RunService:BindToRenderStep("VisualLine", 1, LineRedirect)
                                elseif not Toggle.Target then
                                    Peace.Aiming["Redirection"].Panel["Target"].Enabled = false
                                    Peace.Aiming["Redirection"]["Panel"]["Target"].Player = nil
                                    RunService:UnbindFromRenderStep("VisualLine")
                                    RunService.Heartbeat:Wait()
                                    Field.LineOutline.Visible = false
                                    Field.Line.Visible = false
                                end
                            end
                        end
                    end
                )

                local Mouse = Players.LocalPlayer:GetMouse()

                local function ClosestPart()
                    local MouseToPart
                    local Distance = 1000
                    do
                        for i, v in next, Peace.Aiming["Redirection"]["HitPart"]["Validated Part"] do
                            local Part = ClosestToCursor().Character:FindFirstChild(v)
                            if Part then
                                local Magnitude = (WTS(Part) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
                                if Magnitude < Distance then
                                    MouseToPart = Part
                                    Distance = Magnitude
                                end
                            end
                        end
                    end
                    return MouseToPart
                end

                spawn(
                    function()
                        pcall(
                            function()
                                while wait() do
                                    if ClosestToCursor() ~= nil then
                                        -- Character = ClosestToCursor().Character
                                        Peace.Aiming["Redirection"]["HitPart"]["Target"] = tostring(ClosestPart())
                                    end
                                end
                            end
                        )
                    end
                )

                local Aimbot = function()
                    local Target = Peace.Aiming["Aimbot"]["Panel"]["Panel"]["Target"]
                    if not Target then
                        Target = ClosestToCursor()
                    end

                    if
                        Peace.Aiming["Aimbot"]["Panel"].Enabled and Target and
                            Peace.Aiming["Aimbot"]["Panel"]["HitPart"]["Target"] ~= nil
                     then
                        local Part = Peace.Aiming["Aimbot"]["Panel"]["HitPart"]["Target"]
                        local Position, Movement =
                            Vector2.new(Mouse.X, Mouse.Y),
                            Peace.Aiming["Aimbot"]["Panel"]["Prediction"].Enabled

                        if Peace.Aiming["Aimbot"]["Panel"]["Panel"].Method == "Camera" then
                            -- , Enum.EasingStyle[Peace.Aiming["Aimbot"].Lerp.Type] , Enum.EasingStyle[Peace.Aimboit.Lerp.Direction]

                            Camera.CFrame =
                                Camera.CFrame:Lerp(
                                CFrame.new(
                                    Camera.CFrame.Position,
                                    Target.Character[Part].Position +
                                        Target.Character[Part].Velocity / Peace.Aiming["Aimbot"]["Panel"]["Prediction"].Amount
                                ),
                                Peace.Aiming["Aimbot"]["Panel"].Assist.Amount / 1000,
                                Enum.EasingStyle[Peace.Aiming["Aimbot"]["Panel"]["Panel"].Lerp.Type],
                                Enum.EasingStyle[Peace.Aiming["Aimbot"]["Panel"]["Panel"].Lerp.Direction]
                            )
                        elseif Peace.Aiming["Aimbot"]["Panel"]["Panel"].Method == "Mouse" then
                            local A =
                                Camera:WorldToScreenPoint(
                                Target.Character[Part].Position +
                                    Target.Character[Part].Velocity / Peace.Aiming["Aimbot"]["Panel"]["Prediction"].Amount
                            )
                            Position =
                                mousemoverel(
                                (A.X - Mouse.X) / Peace.Aiming["Aimbot"]["Panel"].Assist.Amount,
                                (A.Y - Mouse.Y) / Peace.Aiming["Aimbot"]["Panel"].Assist.Amount
                            )
                        end

                        if
                            Peace.Aiming["Aimbot"]["Panel"]["HitPart"].Revaluate.Enabled and
                                Target.Character.Humanoid.FloorMaterial == Enum.Material.Air
                         then
                            Part = Peace.Aiming["Aimbot"]["Panel"]["HitPart"].Revaluate.Origin
                        end
                    end
                end

                --[[UIS.InputBegan:Connect(
    function(Two, Value)
        if not Value then
            if Two.KeyCode.Name == Peace.Aiming["Aimbot"]["Panel"]["Keybind"] then
                Peace.Aiming["Aimbot"]["Panel"].Enabled = true

                RunService:BindToRenderStep("Aimbot", 1, Aimbot)
            else
                RunService:UnbindFromRenderStep("Aimbot")
                Peace.Aiming["Aimbot"]["Panel"].Enabled = false
                Peace.Aiming["Aimbot"]["Panel"]["Target"] = nil
            end
        end
    end
)--]]
                --[[UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode.Name == Peace.Aiming["Aimbot"]["Panel"]["Keybind"]  then
        Peace.Aiming["Aimbot"]["Panel"].Enabled = true
        RunService:BindToRenderStep("Aimbot", 1, Aimbot)

    end
end)

UIS.InputEnded:Connect(function(Input)
    if Input.KeyCode.Name == Peace.Aiming["Aimbot"]["Panel"]["Keybind"] then
        RunService:UnbindFromRenderStep("Aimbot")
        Peace.Aiming["Aimbot"]["Panel"].Enabled = false
        Peace.Aiming["Aimbot"]["Panel"]["Target"] = nil
    end
end)--]]
                Mouse.KeyDown:Connect(
                    function(a)
                        if not (UIS:GetFocusedTextBox()) then
                            if a == Peace.Aiming["Aimbot"]["Panel"]["Keybind"]["Enabled"]:lower() then
                                Peace.Aiming["Aimbot"]["Panel"].Enabled = true
                                RunService:BindToRenderStep("Aimbot", 1, Aimbot)
                            end
                        end
                    end
                )

                Mouse.KeyDown:Connect(
                    function(a)
                        if not (UIS:GetFocusedTextBox()) then
                            if a == Peace.Aiming["Aimbot"]["Panel"]["Keybind"]["Disabled"]:lower() then
                                RunService:UnbindFromRenderStep("Aimbot")
                                Peace.Aiming["Aimbot"]["Panel"].Enabled = false
                                Peace.Aiming["Aimbot"]["Panel"]["Target"] = nil
                            end
                        end
                    end
                )

                local Meta = getrawmetatable(game)
                local backupindex = Meta.__index
                setreadonly(Meta, false)

                Meta.__index = function(t, k)
                    if
                        k:lower() == "hit" and
                            (Peace.Aiming.Redirection.Tab.Enabled or Peace.Aiming["Redirection"].Panel["Target"].Enabled)
                     then
                        local TargetPlayer

                        if Peace.Aiming["Redirection"].Panel["Target"].Enabled then
                            TargetPlayer = Peace.Aiming["Redirection"].Panel["Target"].Player
                        else
                            TargetPlayer = ClosestToCursor()
                        end

                        if TargetPlayer and TargetPlayer.Character then
                            local Chance = Peace.Aiming.Redirection.HitChance.Amount >= math.random(1, 100)
                            if not Chance then
                                return backupindex(t, k)
                            end

                            local Part = TargetPlayer.Character[Peace.Aiming["Redirection"]["HitPart"].Target]
                            local Position = Part.Position
                            local Movement = Vector3.new()
                            if not Peace.Link.Check.Resolver then
                                Movement = Part.Velocity * Peace.Aiming.Redirection.Prediction.Amount
                            else
                                Movement =
                                    TargetPlayer.Character.Humanoid.WalkSpeed * TargetPlayer.Character.Humanoid.MoveDirection *
                                    Peace.Aiming.Redirection.Prediction.Amount
                            end
                            if Position then
                                return Part.CFrame + Movement
                            end
                        end
                    end
                    return backupindex(t, k)
                end

                LocalPlayer.Chatted:Connect(
                    function(message)
                        if Peace.Cmds.Enabled then
                            local args = string.split(message, " ")
                            if args[1] == Peace.Cmds.Fov and args[2] ~= nil then
                                Peace.Link.Field.Visual.Radius = tonumber(args[2])
                            end

                            if Peace.Cmds.Enabled then
                                local args = string.split(message, " ")
                                if args[1] == Peace.Cmds.Prediction and args[2] ~= nil then
                                    Peace.Aiming.Redirection.Prediction.Amount = tonumber(args[2])
                                end
                            end
                        end
                    end
                )

                local function UpdateAmbient()
                    if Peace.Visuals.Ambient.Enabled then
                        game:GetService("Lighting").Ambient = Peace.Visuals.Ambient.Color
                    else
                        game:GetService("Lighting").Ambient = Color3.new()
                    end
                end
                RunService.Heartbeat:Connect(UpdateAmbient)
                UpdateAmbient()

                local function UpdateFog()
                    if Peace["Visuals"]["Fog Modifications"]["Enabled"] == true then
                        game:GetService("Lighting").FogColor = Peace["Visuals"]["Fog Modifications"]["Color"]
                        game:GetService("Lighting").FogStart = Peace["Visuals"]["Fog Modifications"]["Start"]
                        game:GetService("Lighting").FogEnd = Peace["Visuals"]["Fog Modifications"]["End"]
                    end
                end
                RunService.Heartbeat:Connect(UpdateFog)

                local function UpdateOutDoor()
                    if Peace["Visuals"]["OutDoor Ambient"]["Enabled"] == true then
                        game:GetService("Lighting").OutdoorAmbient = Peace["Visuals"]["OutDoor Ambient"]["Color"]
                    end

                    if Peace["Visuals"]["OutDoor Ambient"]["Enabled"] == false then
                        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(125, 125, 125)
                    end
                end
                RunService.Heartbeat:Connect(UpdateOutDoor)

                local MouseLoop =
                    RunService.Heartbeat:Connect(
                    function()
                        local MouseLocation = UIS:GetMouseLocation()

                        local Targeted = ClosestToCursor()
                        if Peace.Link.Field["Visual"]["Control"]["Stick To Target"] and Targeted and Targeted.Character then
                            local Root = Targeted.Character[Peace.Aiming["Redirection"]["HitPart"].Target]
                            local RootToViewportPoint, IsVisible = Camera.WorldToViewportPoint(Camera, Root.Position)

                            Field.Inline.Position = Vector2.new(RootToViewportPoint.X, RootToViewportPoint.Y)
                            Field.Outline.Position = Vector2.new(RootToViewportPoint.X, RootToViewportPoint.Y)
                        else
                            Field.Inline.Position = Vector2.new(MouseLocation.X, MouseLocation.Y)
                            Field.Outline.Position = Vector2.new(MouseLocation.X, MouseLocation.Y)
                        end

                        if
                            Peace.Aiming.Redirection.Tab.Enabled and Peace.Aiming.Redirection.IndicateMousePos.Enabled and
                                Targeted and
                                not Peace.Aiming["Redirection"].Panel["Target"].Enabled
                         then
                            local Root = Targeted.Character[Peace.Aiming["Redirection"]["HitPart"].Target]
                            local RootToViewportPoint, IsVisible = Camera.WorldToViewportPoint(Camera, Root.Position)
                            Field.MouseLink.Color = Peace.Aiming["Redirection"]["Drawing"]["Indication Color"]
                            Field.MouseLink.Transparency = 1
                            Field.MouseLink.Thickness = 0.4
                            Field.MouseLink.Filled = false
                            Field.MouseLink.Radius = 20
                            Field.MouseLink.Visible = true
                            Field.MouseLink.Position = Vector2.new(RootToViewportPoint.X, RootToViewportPoint.Y)
                        else
                            Field.MouseLink.Position = Vector2.new()
                            Field.MouseLink.Visible = false

    Rayfield:Notify({
   Title = "Notification",
   Content = "Executed Silent Aim",
   Duration = 5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Ok!",
         Callback = function()
         print("The user tapped Ok!")
   },
},
})

                                        print("Executed Silent Aim")

    Rayfield:Notify({
   Title = "Binds",
   Content = "X Opens GUI",
   Duration = 10,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Got it!",
         Callback = function()
         print("The user tapped Got it!")
   },
},
})

    Rayfield:Notify({
   Title = "Binds",
   Content = "C Changes Target Style",
   Duration = 10,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Got it!",
         Callback = function()
         print("The user tapped Got it!")
   },
},
})
                        end
                    end
                )
            end
        )()
    end,
})

local Button = AimbotTab:CreateButton({
    Name = "ESP",
    Callback = function()
        local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        -- check if the ScreenGui already exists, if it does, destroy it and remove BillboardGuis
        if playerGui:FindFirstChild("TadachiisESP") then
            playerGui:FindFirstChild("TadachiisESP"):Destroy()

            for _, player in ipairs(game.Players:GetPlayers()) do
                local billboardGui = player.Character and player.Character:FindFirstChild("Head") and player.Character.Head:FindFirstChild("PlayerBillboardGui")
                if billboardGui then
                    billboardGui:Destroy()
                end
            end
        end

        -- create ScreenGui
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "TadachiisESP"
        screenGui.Parent = playerGui
        screenGui.DisplayOrder = 1

        -- create Frame
        local holder = Instance.new("Frame")
        holder.Name = "Holder"
        holder.Parent = screenGui
        holder.Size = UDim2.new(0, 200, 0, 100) -- size of the frame
        holder.Position = UDim2.new(0.5, -100, 0.5, -50) -- position of the frame at the center of the screen
        holder.BackgroundColor3 = Color3.new(1, 1, 1) -- white background
        holder.BackgroundTransparency = 0.5 -- semi-transparent
        holder.Draggable = true -- makes the frame draggable
        holder.Active = true

        -- create TextLabel
        local titleLabel = Instance.new("TextLabel")
        titleLabel.Name = "TitleLabel"
        titleLabel.Text = "Tadachii's ESP GUI"
        titleLabel.TextScaled = true
        titleLabel.Parent = holder
        titleLabel.Size = UDim2.new(1, 0, 0.5, 0) -- fills half of the frame
        titleLabel.BackgroundColor3 = Color3.new(1, 1, 1) -- white background
        titleLabel.TextColor3 = Color3.new(0, 0, 0) -- black text
        titleLabel.BackgroundTransparency = 0.5 -- semi-transparent

        -- create TextLabel for Status
        local statusLabel = Instance.new("TextLabel")
        statusLabel.Name = "StatusLabel"
        statusLabel.Text = ""
        statusLabel.Parent = holder
        statusLabel.Size = UDim2.new(1, 0, 0.25, 0) -- fills one-fourth of the frame below the TitleLabel
        statusLabel.Position = UDim2.new(0, 0, 0.5, 0) -- aligns the text label to the bottom of the frame
        statusLabel.BackgroundColor3 = Color3.new(1, 1, 1) -- white background
        statusLabel.TextColor3 = Color3.new(0, 0, 0) -- black text
        statusLabel.BackgroundTransparency = 0.5 -- semi-transparent
        statusLabel.TextScaled = true -- enable text scaling for the status label

        -- create TextButton for Status
        local statusButton = Instance.new("TextButton")
        statusButton.Name = "StatusButton"
        statusButton.Text = "Off"
        statusButton.Parent = holder
        statusButton.Size = UDim2.new(1, 0, 0.25, 0) -- fills one-fourth of the frame below the StatusLabel
        statusButton.Position = UDim2.new(0, 0, 0.75, 0) -- aligns the button to the bottom of the frame
        statusButton.BackgroundColor3 = Color3.new(1, 1, 1) -- white background
        statusButton.TextColor3 = Color3.new(0, 0, 0) -- black text
        statusButton.BackgroundTransparency = 0.5 -- semi-transparent
        statusButton.TextScaled = true -- enable text scaling for the button

        -- Function to create BillboardGui for a player with name and distance
        local function createBillboardGuiForPlayer(player, distance)
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "PlayerBillboardGui"
            billboardGui.Adornee = player.Character.Head
            billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
            billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
            billboardGui.AlwaysOnTop = true
            billboardGui.LightInfluence = 1
            billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            billboardGui.Parent = player.Character.Head

            local textLabel = Instance.new("TextLabel")
            textLabel.Name = "PlayerNameLabel"
            textLabel.Text = player.Name .. "\nDistance: " .. math.floor(distance)
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1 -- transparent background
            textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
            textLabel.TextScaled = true
            textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
            textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
            textLabel.Visible = statusButton.Text == "On" -- Hide the text if StatusButton is "Off"
            textLabel.Parent = billboardGui
        end

        -- Function to update player ESP distance
        local function updatePlayerESP()
            local localCharacter = game.Players.LocalPlayer.Character
            if not localCharacter then
                return
            end

            for _, player in ipairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                    local distance = (localCharacter.Head.Position - player.Character.Head.Position).Magnitude
                    local billboardGui = player.Character.Head:FindFirstChild("PlayerBillboardGui")
                    if billboardGui then
                        billboardGui.PlayerNameLabel.Text = player.Name .. "\nDistance: " .. math.floor(distance)
                        billboardGui.PlayerNameLabel.TextColor3 = Color3.new(1, 0, 0) -- Set the text color to red
                        billboardGui.PlayerNameLabel.Visible = statusButton.Text == "On" -- Update visibility based on StatusButton
                    else
                        createBillboardGuiForPlayer(player, distance)
                    end
                end
            end
        end

        -- Call updatePlayerESP() initially and then schedule it to be called every 0.01 seconds
        updatePlayerESP()
        game:GetService("RunService").Heartbeat:Connect(function()
            updatePlayerESP()
        end)

        -- Now, you can add functionality to the button, for example:
        local function onButtonClicked()
            if statusButton.Text == "Off" then
                statusButton.Text = "On"
                -- Add code to enable the player ESP here
            else
                statusButton.Text = "Off"
                -- Add code to disable the player ESP here

                -- Remove BillboardGui for each player's head when disabling the ESP
                for _, player in ipairs(game.Players:GetPlayers()) do
                    local billboardGui = player.Character and player.Character:FindFirstChild("Head") and player.Character.Head:FindFirstChild("PlayerBillboardGui")
                    if billboardGui then
                        billboardGui:Destroy()
                    end
                end
            end
            -- Update the visibility of BillboardGui elements after clicking the button
            for _, player in ipairs(game.Players:GetPlayers()) do
                local billboardGui = player.Character and player.Character:FindFirstChild("Head") and player.Character.Head:FindFirstChild("PlayerBillboardGui")
                if billboardGui then
                    billboardGui.PlayerNameLabel.Visible = statusButton.Text == "On"
                end
            end
        end

        statusButton.MouseButton1Click:Connect(onButtonClicked)
    end,
})

Rayfield:Notify({
    Title = "Notification",
    Content = "Executed ESP",
    Duration = 5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Ok!",
            Callback = function()
                print("The user tapped Ok!")
            end
        },
    },
})

print("Executed ESP")

-- Section Creator
local Creator = Window:CreateTab("Creator", nil) -- Title, Image
local CreatorSection = Creator:CreateSection("LA TEAM 707")

CreatorSection:NewLabel("Script created by LA TEAM 707.")
CreatorSection:NewLabel("Join our Discord: https://discord.gg/GhQDgqx2HP")

end
