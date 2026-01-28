local _Intro = _ZX8_HubMuscleLegends:AddTab('Intro')

_Intro:AddLabel('ZX8 clan= rumi owner')
_Intro:AddLabel('Script Made By ABD')
_Intro:AddLabel('ZX8_OnTop')
_Intro:AddLabel('Scroll Through The Tabs to see more tabs.')

local function _(p3, p4, p5)
    local _Tool = p4:FindFirstChildOfClass('Tool')

    if _Tool then
        _Tool.Parent = p5
    end

    local v7 = p5:FindFirstChild(p3) or p4:FindFirstChild(p3)

    if v7 and v7.Parent ~= p4 then
        v7.Parent = p4
    end
end
local function _(p8, p9)
    if p8 then
        p8.Size = Vector3.new(2, 1, 1)
        p8.Transparency = 1
        p8.CanCollide = false

        if p8:FindFirstChild('rockGui') then
            local v10, v11, v12 = pairs(p8.rockGui:GetChildren())

            while true do
                local v13

                v12, v13 = v10(v11, v12)

                if v12 == nil then
                    break
                end

                v13.Visible = false
            end
        end

        local v14, v15, v16 = ipairs({
            'rockEmitter',
            'hoopParticle',
            'lavaParticle',
        })

        while true do
            local v17

            v16, v17 = v14(v15, v16)

            if v16 == nil then
                break
            end
            if p8:FindFirstChild(v17) then
                p8[v17]:Destroy()
            end
        end

        p8.CFrame = p9.CFrame

        local _TouchPart = p8:FindFirstChild('TouchPart')

        if _TouchPart then
            _TouchPart.CFrame = p9.CFrame

            local _RemoteEvent = Instance.new('RemoteEvent')

            _RemoteEvent.Parent = p8

            _RemoteEvent:FireServer(_TouchPart)
        end
    end
end

local _Rock = _H3LLMuscleLegendsPublicVersion:AddTab('Rock')

function gettool()
    local v21, v22, v23 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

    while true do
        local v24

        v23, v24 = v21(v22, v23)

        if v23 == nil then
            break
        end
        if v24.Name == 'Punch' and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v24)
        end
    end

    game:GetService('Players').LocalPlayer.muscleEvent:FireServer('punch', 'leftHand')
    game:GetService('Players').LocalPlayer.muscleEvent:FireServer('punch', 'rightHand')
end

_Rock:AddSwitch('Tiny Rock', function(p25)
    selectrock = 'Tiny Island Rock'
    getgenv().autoFarm = p25

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 0 then
                local v26, v27, v28 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v29

                    v28, v29 = v26(v27, v28)

                    if v28 == nil then
                        break
                    end
                    if v29.Name == 'neededDurability' and v29.Value == 0 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v29.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v29.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v29.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v29.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Starter Rock', function(p30)
    selectrock = 'Starter Island Rock'
    getgenv().autoFarm = p30

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 100 then
                local v31, v32, v33 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v34

                    v33, v34 = v31(v32, v33)

                    if v33 == nil then
                        break
                    end
                    if v34.Name == 'neededDurability' and v34.Value == 100 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v34.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v34.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v34.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v34.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Legend Beach Rock', function(p35)
    selectrock = 'Legend Beach Rock'
    getgenv().autoFarm = p35

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 5000 then
                local v36, v37, v38 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v39

                    v38, v39 = v36(v37, v38)

                    if v38 == nil then
                        break
                    end
                    if v39.Name == 'neededDurability' and v39.Value == 5000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v39.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v39.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v39.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v39.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Frozen Rock', function(p40)
    selectrock = 'Frost Gym Rock'
    getgenv().autoFarm = p40

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 150000 then
                local v41, v42, v43 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v44

                    v43, v44 = v41(v42, v43)

                    if v43 == nil then
                        break
                    end
                    if v44.Name == 'neededDurability' and v44.Value == 150000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v44.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v44.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v44.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v44.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Mythical Rock', function(p45)
    selectrock = 'Mythical Gym Rock'
    getgenv().autoFarm = p45

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 400000 then
                local v46, v47, v48 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v49

                    v48, v49 = v46(v47, v48)

                    if v48 == nil then
                        break
                    end
                    if v49.Name == 'neededDurability' and v49.Value == 400000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v49.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v49.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v49.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v49.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Eternal Rock', function(p50)
    selectrock = 'Eternal Gym Rock'
    getgenv().autoFarm = p50

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 750000 then
                local v51, v52, v53 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v54

                    v53, v54 = v51(v52, v53)

                    if v53 == nil then
                        break
                    end
                    if v54.Name == 'neededDurability' and v54.Value == 750000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v54.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v54.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v54.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v54.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Legend Rock', function(p55)
    selectrock = 'Legend Gym Rock'
    getgenv().autoFarm = p55

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 1000000 then
                local v56, v57, v58 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v59

                    v58, v59 = v56(v57, v58)

                    if v58 == nil then
                        break
                    end
                    if v59.Name == 'neededDurability' and v59.Value == 1000000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v59.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v59.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v59.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v59.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Muscle King Rock', function(p60)
    selectrock = 'Muscle King Gym Rock'
    getgenv().autoFarm = p60

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 5000000 then
                local v61, v62, v63 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v64

                    v63, v64 = v61(v62, v63)

                    if v63 == nil then
                        break
                    end
                    if v64.Name == 'neededDurability' and v64.Value == 5000000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v64.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v64.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v64.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v64.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)
_Rock:AddSwitch('Jungle Rock', function(p65)
    selectrock = 'Ancient Jungle Rock'
    getgenv().autoFarm = p65

    task.spawn(function()
        while getgenv().autoFarm do
            task.wait()

            if not getgenv().autoFarm then
                break
            end
            if game:GetService('Players').LocalPlayer.Durability.Value >= 10000000 then
                local v66, v67, v68 = pairs(game:GetService('Workspace').machinesFolder:GetDescendants())

                while true do
                    local v69

                    v68, v69 = v66(v67, v68)

                    if v68 == nil then
                        break
                    end
                    if v69.Name == 'neededDurability' and v69.Value == 10000000 and (game.Players.LocalPlayer.Character:FindFirstChild('LeftHand') and game.Players.LocalPlayer.Character:FindFirstChild('RightHand')) then
                        firetouchinterest(v69.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 0)
                        firetouchinterest(v69.Parent.Rock, game:GetService('Players').LocalPlayer.Character.RightHand, 1)
                        firetouchinterest(v69.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 0)
                        firetouchinterest(v69.Parent.Rock, game:GetService('Players').LocalPlayer.Character.LeftHand, 1)
                        gettool()
                    end
                end
            end
        end
    end)
end)

local _Farm = _H3LLMuscleLegendsPublicVersion:AddTab('Farm')

_Farm:AddSwitch('Lock Position (Enable This After Enabling Fast rebirth) ', function(p71)
    if p71 then
        local _CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        getgenv().posLock = game:GetService('RunService').Heartbeat:Connect(function()
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _CFrame
            end
        end)
    elseif getgenv().posLock then
        getgenv().posLock:Disconnect()

        getgenv().posLock = nil
    end
end)
_Farm:AddSwitch('Hide Frame', function(p73)
    local v74, v75, v76 = ipairs({
        'strengthFrame',
        'durabilityFrame',
        'agilityFrame',
    })

    while true do
        local v77

        v76, v77 = v74(v75, v76)

        if v76 == nil then
            break
        end

        local v78 = game:GetService('ReplicatedStorage'):FindFirstChild(v77)

        if v78 and v78:IsA('GuiObject') then
            v78.Visible = not p73
        end
    end
end)
_Farm:AddSwitch('Fast Rebirth (Pack Farm)', function(p79)
    fastRebirth = p79

    if fastRebirth then
        spawn(function()
            local _ReplicatedStorage = game:GetService('ReplicatedStorage')
            local _LocalPlayer = game:GetService('Players').LocalPlayer

            local function u91(_)
                local _petsFolder = _LocalPlayer.petsFolder
                local v83, v84, v85 = pairs(_petsFolder:GetChildren())

                while true do
                    local v86

                    v85, v86 = v83(v84, v85)

                    if v85 == nil then
                        break
                    end
                    if v86:IsA('Folder') then
                        local v87, v88, v89 = pairs(v86:GetChildren())

                        while true do
                            local v90

                            v89, v90 = v87(v88, v89)

                            if v89 == nil then
                                break
                            end

                            _ReplicatedStorage.rEvents.equipPetEvent:FireServer('unequipPet', v90)
                        end
                    end
                end

                task.wait(0.1)
            end
            local function v97(p92)
                u91()
                task.wait(0.01)

                local v93, v94, v95 = pairs(_LocalPlayer.petsFolder.Unique:GetChildren())

                while true do
                    local v96

                    v95, v96 = v93(v94, v95)

                    if v95 == nil then
                        break
                    end
                    if v96.Name == p92 then
                        _ReplicatedStorage.rEvents.equipPetEvent:FireServer('equipPet', v96)
                    end
                end
            end

            local v98 = u91

            local function v105(p99)
                local v100 = workspace.machinesFolder:FindFirstChild(p99)

                if not v100 then
                    local v101, v102, v103 = pairs(workspace:GetChildren())

                    while true do
                        local v104

                        v103, v104 = v101(v102, v103)

                        if v103 == nil then
                            break
                        end
                        if v104:IsA('Folder') and v104.Name:find('machines') then
                            v100 = v104:FindFirstChild(p99)

                            if v100 then
                                break
                            end
                        end
                    end
                end

                return v100
            end
            local function v107()
                local _VirtualInputManager = game:GetService('VirtualInputManager')

                _VirtualInputManager:SendKeyEvent(true, 'E', false, game)
                task.wait(0.1)
                _VirtualInputManager:SendKeyEvent(false, 'E', false, game)
            end

            while fastRebirth do
                local v108 = 10000 + 5000 * _LocalPlayer.leaderstats.Rebirths.Value

                if _LocalPlayer.ultimatesFolder:FindFirstChild('Golden Rebirth') then
                    local _Value = _LocalPlayer.ultimatesFolder['Golden Rebirth'].Value

                    v108 = math.floor(v108 * (1 - _Value * 0.1))
                end

                v98()
                task.wait(0.1)
                v97('Swift Samurai')

                while _LocalPlayer.leaderstats.Strength.Value < v108 do
                    for _ = 1, 15 do
                        _LocalPlayer.muscleEvent:FireServer('rep')
                    end

                    task.wait()
                end

                v98()
                task.wait(0.1)
                v97('Tribal Overlord')

                local _JungleBarLift = v105('Jungle Bar Lift')

                if _JungleBarLift and _JungleBarLift:FindFirstChild('interactSeat') then
                    _LocalPlayer.Character.HumanoidRootPart.CFrame = _JungleBarLift.interactSeat.CFrame * CFrame.new(0, 3, 0)

                    repeat
                        task.wait(0.1)
                        v107()
                    until _LocalPlayer.Character.Humanoid.Sit
                end

                local _Value2 = _LocalPlayer.leaderstats.Rebirths.Value

                repeat
                    _ReplicatedStorage.rEvents.rebirthRemote:InvokeServer('rebirthRequest')
                    task.wait(0.1)
                until _Value2 < _LocalPlayer.leaderstats.Rebirths.Value

                task.wait()
            end
        end)
    end
end)
_Farm:AddLabel('---------------')

local u112 = false

_Farm:AddSwitch('Weight', function(p113)
    u112 = p113

    task.spawn(function()
        while u112 do
            local _Weight = game.Players.LocalPlayer.Backpack:FindFirstChild('Weight')

            if _Weight then
                _Weight.Parent = game.Players.LocalPlayer.Character
            end

            task.wait(0.1)
        end
    end)
end)

local u115 = false

_Farm:AddSwitch('Pushups', function(p116)
    u115 = p116

    task.spawn(function()
        while u115 do
            local _Pushups = game.Players.LocalPlayer.Backpack:FindFirstChild('Pushups')

            if _Pushups then
                _Pushups.Parent = game.Players.LocalPlayer.Character
            end

            task.wait(0.1)
        end
    end)
end)

local u118 = false

_Farm:AddSwitch('Handstand', function(p119)
    u118 = p119

    task.spawn(function()
        while u118 do
            local _Handstand = game.Players.LocalPlayer.Backpack:FindFirstChild('Handstand')

            if _Handstand then
                _Handstand.Parent = game.Players.LocalPlayer.Character
            end

            task.wait(0.1)
        end
    end)
end)

local u121 = false

_Farm:AddSwitch('Situps', function(p122)
    u121 = p122

    task.spawn(function()
        while u121 do
            local _Situps = game.Players.LocalPlayer.Backpack:FindFirstChild('Situps')

            if _Situps then
                _Situps.Parent = game.Players.LocalPlayer.Character
            end

            task.wait(0.1)
        end
    end)
end)
_Farm:AddLabel('Gym Farm:')

local _VirtualInputManager2 = game:GetService('VirtualInputManager')

_Farm:AddButton('Tiny Island', function()
    local _LocalPlayer2 = game.Players.LocalPlayer;

    (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-37.1, 9.2, 1919)
end)
_Farm:AddButton('Main Island', function()
    local _LocalPlayer3 = game.Players.LocalPlayer;

    (_LocalPlayer3.Character or _LocalPlayer3.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(16.07, 9.08, 133.8)
end)
_Farm:AddButton('Beach', function()
    local _LocalPlayer4 = game.Players.LocalPlayer;

    (_LocalPlayer4.Character or _LocalPlayer4.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8, 9, -169.2)
end)

_Farm:AddLabel('Gyms').TextSize = 22

_Farm:AddButton('Muscle King Gym', function()
    local _LocalPlayer5 = game.Players.LocalPlayer;

    (_LocalPlayer5.Character or _LocalPlayer5.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8665.4, 17.21, -5792.9)
end)
_Farm:AddButton('Jungle Gym', function()
    local _LocalPlayer6 = game.Players.LocalPlayer;

    (_LocalPlayer6.Character or _LocalPlayer6.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8543, 6.8, 2400)
end)
_Farm:AddButton('Legends Gym', function()
    local _LocalPlayer7 = game.Players.LocalPlayer;

    (_LocalPlayer7.Character or _LocalPlayer7.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4516, 991.5, -3856)
end)
_Farm:AddButton('Infernal Gym', function()
    local _LocalPlayer8 = game.Players.LocalPlayer;

    (_LocalPlayer8.Character or _LocalPlayer8.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-6759, 7.36, -1284)
end)
_Farm:AddButton('Mythical Gym', function()
    local _LocalPlayer9 = game.Players.LocalPlayer;

    (_LocalPlayer9.Character or _LocalPlayer9.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(2250, 7.37, 1073.2)
end)
_Farm:AddButton('Frost Gym', function()
    local _LocalPlayer10 = game.Players.LocalPlayer;

    (_LocalPlayer10.Character or _LocalPlayer10.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-2623, 7.36, -409)
end)
_Farm:AddButton('Jungle Lift', function()
    local _LocalPlayer11 = game.Players.LocalPlayer;

    (_LocalPlayer11.Character or _LocalPlayer11.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8642.396484375, 6.7980651855, 2086.1030273)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)
_Farm:AddButton('Jungle Squat', function()
    local _LocalPlayer12 = game.Players.LocalPlayer;

    (_LocalPlayer12.Character or _LocalPlayer12.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8371.43359375, 6.79806327, 2858.8852539)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)
_Farm:AddButton('King Lift', function()
    local _LocalPlayer13 = game.Players.LocalPlayer;

    (_LocalPlayer13.Character or _LocalPlayer13.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8769.083, 17.219, -5665.84228)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)
_Farm:AddButton('King Squat', function()
    local _LocalPlayer14 = game.Players.LocalPlayer;

    (_LocalPlayer14.Character or _LocalPlayer14.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8762.1689, 17.219, -6044.0498)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)
_Farm:AddButton('Legends Lift', function()
    local _LocalPlayer15 = game.Players.LocalPlayer;

    (_LocalPlayer15.Character or _LocalPlayer15.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4528.474609375, 989.0000629425, -4001.05151367)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)
_Farm:AddButton('Legends Squat', function()
    local _LocalPlayer16 = game.Players.LocalPlayer;

    (_LocalPlayer16.Character or _LocalPlayer16.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4431.306152, 991.5455322, -4051.4296)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)
_Farm:AddButton('Legends Pull Up', function()
    local _LocalPlayer17 = game.Players.LocalPlayer;

    (_LocalPlayer17.Character or _LocalPlayer17.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4298.6323, 991.5404, -4119.97363)

    task.wait(0.2)
    _VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    _VirtualInputManager2:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

local _Teleport = _H3LLMuscleLegendsPublicVersion:AddTab('Teleport')

_Teleport:AddButton('Spawn', function()
    local _LocalPlayer18 = game.Players.LocalPlayer;

    (_LocalPlayer18.Character or _LocalPlayer18.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(2, 8, 115)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Spawn',
        Duration = 0,
    })
end)
_Teleport:AddButton('Secret Area', function()
    local _LocalPlayer19 = game.Players.LocalPlayer;

    (_LocalPlayer19.Character or _LocalPlayer19.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(1947, 2, 6191)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Secret Area',
        Duration = 0,
    })
end)
_Teleport:AddButton('Tiny Island', function()
    local _LocalPlayer20 = game.Players.LocalPlayer;

    (_LocalPlayer20.Character or _LocalPlayer20.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-34, 7, 1903)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Tiny Island',
        Duration = 0,
    })
end)
_Teleport:AddButton('Frozen Island', function()
    local _LocalPlayer21 = game.Players.LocalPlayer;

    (_LocalPlayer21.Character or _LocalPlayer21.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-2600.00244, 3.67686558, -403.884369, 0.0873617008, 1.0482899e-9, 0.99617666, 3.0720425299999996e-8, 1, -3.7464023e-9, -0.99617666, 3.0930262799999997e-8, 0.0873617008)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Frozen Island',
        Duration = 0,
    })
end)
_Teleport:AddButton('Mythical Island', function()
    local _LocalPlayer22 = game.Players.LocalPlayer;

    (_LocalPlayer22.Character or _LocalPlayer22.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(2255, 7, 1071)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Mythical Island',
        Duration = 0,
    })
end)
_Teleport:AddButton('Blank Island', function()
    local _LocalPlayer23 = game.Players.LocalPlayer;

    (_LocalPlayer23.Character or _LocalPlayer23.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-6768, 7, -1287)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Blank Island',
        Duration = 0,
    })
end)
_Teleport:AddButton('Legend Island', function()
    local _LocalPlayer24 = game.Players.LocalPlayer;

    (_LocalPlayer24.Character or _LocalPlayer24.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4604, 991, -3887)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Legend Island',
        Duration = 0,
    })
end)
_Teleport:AddButton('Muscle King Island', function()
    local _LocalPlayer25 = game.Players.LocalPlayer;

    (_LocalPlayer25.Character or _LocalPlayer25.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8646, 17, -5738)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Muscle King',
        Duration = 0,
    })
end)
_Teleport:AddButton('Jungle Island', function()
    local _LocalPlayer26 = game.Players.LocalPlayer;

    (_LocalPlayer26.Character or _LocalPlayer26.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8659, 6, 2384)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Jungle Island',
        Duration = 0,
    })
end)
_Teleport:AddButton('Brawl Lava', function()
    local _LocalPlayer27 = game.Players.LocalPlayer;

    (_LocalPlayer27.Character or _LocalPlayer27.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4471, 119, -8836)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Brawl Lava',
        Duration = 0,
    })
end)
_Teleport:AddButton('Brawl Desert', function()
    local _LocalPlayer28 = game.Players.LocalPlayer;

    (_LocalPlayer28.Character or _LocalPlayer28.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(960, 17, -7398)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Brawl Desert',
        Duration = 0,
    })
end)
_Teleport:AddButton('Brawl Regular', function()
    local _LocalPlayer29 = game.Players.LocalPlayer;

    (_LocalPlayer29.Character or _LocalPlayer29.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-1849, 20, -6335)

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!',
        Text = 'Teleported to Brawl Regular',
        Duration = 0,
    })
end);
(function(p154)
    local _OpenMeLilBro = p154:AddFolder('Open Me Lil Bro!!!!!!!')

    local function u157(p156)
        if p156 >= 1000000000000000 then
            return string.format('%.1fQa', p156 / 1000000000000000)
        elseif p156 >= 1000000000000 then
            return string.format('%.1fT', p156 / 1000000000000)
        elseif p156 >= 1000000000 then
            return string.format('%.1fB', p156 / 1000000000)
        elseif p156 >= 1000000 then
            return string.format('%.1fM', p156 / 1000000)
        elseif p156 >= 1000 then
            return string.format('%.1fK', p156 / 1000)
        else
            return tostring(p156)
        end
    end

    local u158 = {
        TimeSpent = _OpenMeLilBro:AddLabel('Execution Time: 00:00'),
        Strength = _OpenMeLilBro:AddLabel('Strength Gained: 0'),
        Durability = _OpenMeLilBro:AddLabel('Durability Gained: 0'),
        Agility = _OpenMeLilBro:AddLabel('Agility Gained: 0'),
        Kills = _OpenMeLilBro:AddLabel('Kills Gained: 0'),
        EvilKarma = _OpenMeLilBro:AddLabel('Evil Karma: 0'),
        GoodKarma = _OpenMeLilBro:AddLabel('Good Karma: 0'),
    }

    (function()
        local _LocalPlayer30 = game.Players.LocalPlayer

        if _LocalPlayer30 then
            local _leaderstats = _LocalPlayer30:WaitForChild('leaderstats')

            if _leaderstats then
                local u161 = {
                    Strength = _leaderstats:WaitForChild('Strength'),
                    Durability = _LocalPlayer30:WaitForChild('Durability'),
                    Agility = _LocalPlayer30:WaitForChild('Agility'),
                    Kills = _leaderstats:WaitForChild('Kills'),
                    EvilKarma = _LocalPlayer30:WaitForChild('evilKarma'),
                    GoodKarma = _LocalPlayer30:WaitForChild('goodKarma'),
                }
                local v162, v163, v164 = pairs(u161)
                local u165 = {}

                while true do
                    local v166

                    v164, v166 = v162(v163, v164)

                    if v164 == nil then
                        break
                    end

                    u165[v164] = v166.Value or 0
                end

                local u167 = tick()

                local function v173()
                    local v168, v169, v170 = pairs(u161)

                    while true do
                        local v171

                        v170, v171 = v168(v169, v170)

                        if v170 == nil then
                            break
                        end

                        local v172 = v171.Value - u165[v170]

                        u158[v170].Text = v170 .. ' Gained: ' .. u157(v172)
                    end
                end
                local function v177()
                    local v174 = tick() - u167
                    local v175 = math.floor(v174 / 60)
                    local v176 = math.floor(v174 % 60)

                    u158.TimeSpent.Text = string.format('Execution Time: %02d:%02d', v175, v176)
                end

                local v178, v179, v180 = pairs(u161)

                while true do
                    local v181

                    v180, v181 = v178(v179, v180)

                    if v180 == nil then
                        break
                    end

                    v181.Changed:Connect(v173)
                end

                game:GetService('RunService').Heartbeat:Connect(v177)
                v173()
            end
        else
            return
        end
    end)()
end)((_ZX8_HubMuscleLegends:AddTab('Stats')))

local _Killing = _ZX8||HubMusclelegends:AddTab('Killing')
local _Players = game:GetService('Players')
local _ReplicatedStorage2 = game:GetService('ReplicatedStorage')

local function u194()
    local _petsFolder2 = _Players.LocalPlayer:FindFirstChild('petsFolder')

    if _petsFolder2 then
        local v186, v187, v188 = ipairs(_petsFolder2:GetChildren())

        while true do
            local v189

            v188, v189 = v186(v187, v188)

            if v188 == nil then
                break
            end
            if v189:IsA('Folder') then
                local v190, v191, v192 = ipairs(v189:GetChildren())

                while true do
                    local v193

                    v192, v193 = v190(v191, v192)

                    if v192 == nil then
                        break
                    end

                    _ReplicatedStorage2.rEvents.equipPetEvent:FireServer('unequipPet', v193)
                end
            end
        end
    end
end

local _EquipPacksPet = _Killing:AddDropdown('Equip Packs Pet', function(p195)
    u194()

    local _petsFolder3 = _Players.LocalPlayer:FindFirstChild('petsFolder')

    if _petsFolder3 then
        local _Unique = _petsFolder3:FindFirstChild('Unique')

        if _Unique then
            local v198, v199, v200 = ipairs(_Unique:GetChildren())

            while true do
                local v201

                v200, v201 = v198(v199, v200)

                if v200 == nil then
                    break
                end
                if v201.Name == p195 then
                    _ReplicatedStorage2.rEvents.equipPetEvent:FireServer('equipPet', v201)
                end
            end
        end
    else
        return
    end
end)
local v203, v204, v205 = ipairs({
    'Mighty Monster',
    'Wild Wizard',
})

while true do
    local v206

    v205, v206 = v203(v204, v205)

    if v205 == nil then
        break
    end

    _EquipPacksPet:Add(v206)
end

local u207 = nil

_Killing:AddSwitch('Fast Punch', function(p208)
    local _LocalPlayer31 = game.Players.LocalPlayer

    if p208 then
        _G.punchanim = true

        if u207 then
            u207:Disconnect()
        end

        u207 = game:GetService('RunService').Heartbeat:Connect(function()
            if _G.punchanim then
                local _Character = _LocalPlayer31.Character

                if _Character then
                    local _Humanoid = _Character:FindFirstChildOfClass('Humanoid')
                    local v212 = _LocalPlayer31.Backpack:FindFirstChild('Punch') or _Character:FindFirstChild('Punch')

                    if v212 then
                        local _attackTime = v212:FindFirstChild('attackTime')

                        if _attackTime then
                            _attackTime.Value = 0
                        end
                        if _Humanoid and v212.Parent ~= _Character then
                            _Humanoid:EquipTool(v212)
                        end

                        v212:Activate()
                    end
                end
            else
                if u207 then
                    u207:Disconnect()

                    u207 = nil
                end

                return
            end
        end)
    else
        _G.punchanim = false

        if u207 then
            u207:Disconnect()

            u207 = nil
        end

        local _Punch = _LocalPlayer31.Backpack:FindFirstChild('Punch')
        local _Character2 = _LocalPlayer31.Character

        if _Character2 then
            _Character2 = _LocalPlayer31.Character:FindFirstChild('Punch')
        end

        local v216 = _Punch or _Character2

        if v216 and v216:FindFirstChild('attackTime') then
            v216.attackTime.Value = 0.35
        end
    end
end)
_Killing:AddLabel('---------------')

local _LocalPlayer32 = game.Players.LocalPlayer

_G.whitelistedPlayers = _G.whitelistedPlayers or {}

local u218 = nil
local u219 = false
local u220 = false
local u221 = {}
local u222 = 0.15
local u223 = {}
local u224 = 1
local u225 = 0
local u226 = 50

local function u230(p227)
    local _Backpack = _LocalPlayer32:FindFirstChild('Backpack')

    if _Backpack then
        local v229 = _Backpack:FindFirstChild(p227)

        if v229 and _LocalPlayer32.Character and _LocalPlayer32.Character:FindFirstChildOfClass('Humanoid') then
            _LocalPlayer32.Character.Humanoid:EquipTool(v229)
        end
    end
end
local function u237(p231)
    local v232, v233, v234 = ipairs(_G.whitelistedPlayers)
    local v235 = {}

    while true do
        local v236

        v234, v236 = v232(v233, v234)

        if v234 == nil then
            break
        end

        v235[v236:lower()] = true
    end

    return v235[p231:lower()] or false
end
local function u238()
    if not _LocalPlayer32.Character then
        repeat
            task.wait()
        until _LocalPlayer32.Character
    end

    return _LocalPlayer32.Character
end
local function u241()
    local v239 = u238()
    local v240 = _LocalPlayer32.Backpack:FindFirstChild('Punch') or v239:FindFirstChild('Punch')

    if v240 and (v239:FindFirstChildOfClass('Humanoid') and v240.Parent ~= v239) then
        v239.Humanoid:EquipTool(v240)
    end

    _LocalPlayer32.muscleEvent:FireServer('punch', 'leftHand')
    _LocalPlayer32.muscleEvent:FireServer('punch', 'rightHand')
end
local function u257(p242)
    if p242 and p242 ~= '' then
        local v243 = p242:lower()
        local v244, v245, v246 = pairs(game.Players:GetPlayers())
        local v247 = 0
        local v248 = nil

        while true do
            local v249

            v246, v249 = v244(v245, v246)

            if v246 == nil then
                break
            end
            if v249 ~= _LocalPlayer32 then
                local v250 = v249.Name:lower()
                local v251 = v249.DisplayName:lower()
                local v252 = v250:find(v243, 1, true) ~= nil
                local v253 = v251:find(v243, 1, true) ~= nil
                local v254 = 0
                local v255

                if v252 then
                    v255 = #v243 / #v250 * 100

                    if v250:sub(1, #v243) == v243 then
                        v255 = v255 + 50
                    end
                else
                    v255 = 0
                end
                if v253 then
                    v254 = #v243 / #v251 * 100

                    if v251:sub(1, #v243) == v243 then
                        v254 = v254 + 50
                    end
                end

                local v256 = math.max(v255, v254)

                if v247 < v256 then
                    v248 = v249
                    v247 = v256
                end
            end
        end

        if v247 > 20 then
            return v248
        else
            return nil
        end
    else
        return nil
    end
end
local function u264()
    u223 = {}

    local _HumanoidRootPart = u238():FindFirstChild('HumanoidRootPart')

    if _HumanoidRootPart then
        local v259, v260, v261 = ipairs(game.Players:GetPlayers())

        while true do
            local v262

            v261, v262 = v259(v260, v261)

            if v261 == nil then
                break
            end
            if v262 ~= _LocalPlayer32 and not u237(v262.Name) then
                local _Character3 = v262.Character

                if _Character3 then
                    _Character3 = _Character3:FindFirstChild('HumanoidRootPart')
                end
                if _Character3 and (_Character3.Position - _HumanoidRootPart.Position).Magnitude <= u226 then
                    table.insert(u223, v262)
                end
            end
        end
    end
end
local function u282(p265)
    if p265 then
        _G.autoKillActive = true

        u230('Punch')

        if u218 then
            u218:Disconnect()

            u218 = nil
        end

        u218 = game:GetService('RunService').Stepped:Connect(function()
            if _G.autoKillActive then
                local v266 = tick()

                if u224 <= v266 - u225 then
                    u264()

                    u225 = v266
                end

                local v267 = u238()
                local _Humanoid2 = v267:FindFirstChildOfClass('Humanoid')
                local v269 = _LocalPlayer32.Backpack:FindFirstChild('Punch') or v267:FindFirstChild('Punch')

                if v269 then
                    local _attackTime2 = v269:FindFirstChild('attackTime')

                    if _attackTime2 then
                        _attackTime2.Value = 0
                    end
                    if _Humanoid2 and v269.Parent ~= v267 then
                        _Humanoid2:EquipTool(v269)
                    end

                    v269:Activate()
                end

                local _RightHand = v267:FindFirstChild('RightHand')
                local _LeftHand = v267:FindFirstChild('LeftHand')

                if _RightHand and _LeftHand then
                    local v273, v274, v275 = ipairs(u223)

                    while true do
                        local u276

                        v275, u276 = v273(v274, v275)

                        if v275 == nil then
                            break
                        end
                        if u276 ~= _LocalPlayer32 and not u237(u276.Name) then
                            local _Character4 = u276.Character

                            if _Character4 then
                                _Character4 = _Character4:FindFirstChild('HumanoidRootPart')
                            end
                            if _Character4 then
                                local u278 = tick()

                                if not u221[u276] or u222 <= u278 - u221[u276] then
                                    pcall(function()
                                        firetouchinterest(_RightHand, _Character4, 1)
                                        firetouchinterest(_LeftHand, _Character4, 1)
                                        firetouchinterest(_RightHand, _Character4, 0)
                                        firetouchinterest(_LeftHand, _Character4, 0)
                                        u241()

                                        u221[u276] = u278
                                    end)
                                end
                            end
                        end
                    end
                end
            elseif u218 then
                u218:Disconnect()

                u218 = nil
            end
        end)
    else
        _G.autoKillActive = false

        if u218 then
            u218:Disconnect()

            u218 = nil
        end

        local _Punch2 = _LocalPlayer32.Backpack:FindFirstChild('Punch')
        local _Character5 = _LocalPlayer32.Character

        if _Character5 then
            _Character5 = _LocalPlayer32.Character:FindFirstChild('Punch')
        end

        local v281 = _Punch2 or _Character5

        if v281 and v281:FindFirstChild('attackTime') then
            v281.attackTime.Value = 0.001
        end
    end
end

local _WhitelistedNone = _Killing:AddLabel('Whitelisted: None')

local function u284()
    _WhitelistedNone:Set('Whitelisted: ' .. (#_G.whitelistedPlayers > 0 and table.concat(_G.whitelistedPlayers, ', ') or 'None'))
end

_Killing:AddSwitch('Auto Kill', function(p285)
    u282(p285)
end)
_Killing:AddSwitch('Auto Good Karma', function(p286)
    u219 = p286

    if u219 then
        task.spawn(function()
            while u219 do
                local v287 = tick()

                if u224 <= v287 - u225 then
                    u264()

                    u225 = v287
                end

                local v288 = u238()
                local _RightHand2 = v288:FindFirstChild('RightHand')
                local _LeftHand2 = v288:FindFirstChild('LeftHand')
                local v291 = _LocalPlayer32.Backpack:FindFirstChild('Punch') or v288:FindFirstChild('Punch')

                if v291 then
                    local _attackTime3 = v291:FindFirstChild('attackTime')

                    if _attackTime3 then
                        _attackTime3.Value = 0
                    end
                    if v288:FindFirstChildOfClass('Humanoid') and v291.Parent ~= v288 then
                        v288.Humanoid:EquipTool(v291)
                    end

                    v291:Activate()
                end
                if _RightHand2 and _LeftHand2 then
                    local v293, v294, v295 = ipairs(u223)

                    while true do
                        local u296

                        v295, u296 = v293(v294, v295)

                        if v295 == nil then
                            break
                        end
                        if u296 ~= _LocalPlayer32 and not u237(u296.Name) then
                            local _evilKarma = u296:FindFirstChild('evilKarma')
                            local _goodKarma = u296:FindFirstChild('goodKarma')

                            if _evilKarma and (_goodKarma and (_evilKarma:IsA('IntValue') and (_goodKarma:IsA('IntValue') and _evilKarma.Value > _goodKarma.Value))) then
                                local _Character6 = u296.Character

                                if _Character6 then
                                    _Character6 = _Character6:FindFirstChild('HumanoidRootPart')
                                end
                                if _Character6 then
                                    local u300 = tick()

                                    if not u221[u296] or u222 <= u300 - u221[u296] then
                                        pcall(function()
                                            firetouchinterest(_RightHand2, _Character6, 1)
                                            firetouchinterest(_LeftHand2, _Character6, 1)
                                            firetouchinterest(_RightHand2, _Character6, 0)
                                            firetouchinterest(_LeftHand2, _Character6, 0)
                                            u241()

                                            u221[u296] = u300
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end

                task.wait(0.2)
            end
        end)
    end
end)
_Killing:AddSwitch('Auto Bad Karma', function(p301)
    u220 = p301

    if u220 then
        task.spawn(function()
            while u220 do
                local v302 = tick()

                if u224 <= v302 - u225 then
                    u264()

                    u225 = v302
                end

                local v303 = u238()
                local _RightHand3 = v303:FindFirstChild('RightHand')
                local _LeftHand3 = v303:FindFirstChild('LeftHand')
                local v306 = _LocalPlayer32.Backpack:FindFirstChild('Punch') or v303:FindFirstChild('Punch')

                if v306 then
                    local _attackTime4 = v306:FindFirstChild('attackTime')

                    if _attackTime4 then
                        _attackTime4.Value = 0
                    end
                    if v303:FindFirstChildOfClass('Humanoid') and v306.Parent ~= v303 then
                        v303.Humanoid:EquipTool(v306)
                    end

                    v306:Activate()
                end
                if _RightHand3 and _LeftHand3 then
                    local v308, v309, v310 = ipairs(u223)

                    while true do
                        local u311

                        v310, u311 = v308(v309, v310)

                        if v310 == nil then
                            break
                        end
                        if u311 ~= _LocalPlayer32 and not u237(u311.Name) then
                            local _evilKarma2 = u311:FindFirstChild('evilKarma')
                            local _goodKarma2 = u311:FindFirstChild('goodKarma')

                            if _evilKarma2 and (_goodKarma2 and (_evilKarma2:IsA('IntValue') and (_goodKarma2:IsA('IntValue') and _goodKarma2.Value > _evilKarma2.Value))) then
                                local _Character7 = u311.Character

                                if _Character7 then
                                    _Character7 = _Character7:FindFirstChild('HumanoidRootPart')
                                end
                                if _Character7 then
                                    local u315 = tick()

                                    if not u221[u311] or u222 <= u315 - u221[u311] then
                                        pcall(function()
                                            firetouchinterest(_RightHand3, _Character7, 1)
                                            firetouchinterest(_LeftHand3, _Character7, 1)
                                            firetouchinterest(_RightHand3, _Character7, 0)
                                            firetouchinterest(_LeftHand3, _Character7, 0)
                                            u241()

                                            u221[u311] = u315
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end

                task.wait(0.2)
            end
        end)
    end
end)
_Killing:AddSwitch('Auto Whitelist Friends', function(p316)
    _G.autoWhitelistFriends = p316

    if p316 then
        local v317, v318, v319 = pairs(game.Players:GetPlayers())

        while true do
            local v320

            v319, v320 = v317(v318, v319)

            if v319 == nil then
                break
            end
            if v320:IsFriendsWith(_LocalPlayer32.UserId) then
                local v321 = v320.Name .. ' (' .. v320.DisplayName .. ')'

                if not table.find(_G.whitelistedPlayers, v321) then
                    table.insert(_G.whitelistedPlayers, v321)
                end
            end
        end

        u284()
    end
end)
game.Players.PlayerAdded:Connect(function(p322)
    if _G.autoWhitelistFriends and p322:IsFriendsWith(_LocalPlayer32.UserId) then
        local v323 = p322.Name .. ' (' .. p322.DisplayName .. ')'

        if not table.find(_G.whitelistedPlayers, v323) then
            table.insert(_G.whitelistedPlayers, v323)
            u284()
        end
    end
end)
_Killing:AddTextBox('Whitelist Player (Enter Username/Display)', function(p324)
    local v325 = p324 and (p324 ~= '' and u257(p324))

    if v325 then
        local v326 = v325.Name .. ' (' .. v325.DisplayName .. ')'

        if not table.find(_G.whitelistedPlayers, v326) then
            table.insert(_G.whitelistedPlayers, v326)
            u284()
        end
    end
end)
_Killing:AddTextBox('Unwhitelist Player (Enter Username/Display)', function(p327)
    if p327 and p327 ~= '' then
        local v328 = p327:lower()
        local v329, v330, v331 = ipairs(_G.whitelistedPlayers)

        while true do
            local v332

            v331, v332 = v329(v330, v331)

            if v331 == nil then
                break
            end
            if v332:lower():find(v328, 1, true) then
                table.remove(_G.whitelistedPlayers, v331)
                u284()

                return
            end
        end

        local v333 = u257(p327)

        if v333 then
            local v334, v335, v336 = ipairs(_G.whitelistedPlayers)

            while true do
                local v337

                v336, v337 = v334(v335, v336)

                if v336 == nil then
                    break
                end
                if v337:find(v333.Name, 1, true) then
                    table.remove(_G.whitelistedPlayers, v336)
                    u284()

                    break
                end
            end
        end
    end
end)
_Killing:AddButton('Clear All Whitelisted', function()
    _G.whitelistedPlayers = {}

    u284()
end)
_Killing:AddLabel('---------------')

local _Players2 = game:GetService('Players')
local _RunService = game:GetService('RunService')
local _CurrentCamera = game:GetService('Workspace').CurrentCamera
local _LocalPlayer33 = _Players2.LocalPlayer
local u342 = {
    targetPlayerName = nil,
    killTarget = false,
    isSpying = false,
    spyConnection = nil,
}
local _SelectTargetPlayer = _Killing:AddDropdown('Select Target Player', function(p343)
    u342.targetPlayerName = p343

    print(p343 == 'None' and 'No target player selected' or 'Selected target player: ' .. p343)
end)

_SelectTargetPlayer:Add('None')

local v345, v346, v347 = ipairs(_Players2:GetPlayers())
local u348 = u342

while true do
    local v349, v350 = v345(v346, v347)

    if v349 == nil then
        break
    end

    v347 = v349

    if v350 ~= _LocalPlayer33 then
        _SelectTargetPlayer:Add(v350.Name)
    end
end

_Players2.PlayerAdded:Connect(function(p351)
    if p351 ~= _LocalPlayer33 then
        _SelectTargetPlayer:Add(p351.Name)
    end
end)
_Players2.PlayerRemoving:Connect(function(p352)
    _SelectTargetPlayer:Remove(p352.Name)
end)
_Killing:AddSwitch('Auto Kill Player [Use With Auto Punch]', function(p353)
    u348.killTarget = p353

    if p353 then
        if u348.targetPlayerName and u348.targetPlayerName ~= 'None' then
            task.spawn(function()
                while u348.killTarget do
                    local v354 = _Players2:FindFirstChild(u348.targetPlayerName)

                    if v354 and v354 ~= _LocalPlayer33 then
                        local _Character8 = v354.Character

                        if _Character8 then
                            _Character8 = _Character8:FindFirstChild('HumanoidRootPart')
                        end
                        if _Character8 then
                            local _Character9 = _LocalPlayer33.Character

                            if _Character9 then
                                _Character9 = _LocalPlayer33.Character:FindFirstChild('RightHand')
                            end

                            local _Character10 = _LocalPlayer33.Character

                            if _Character10 then
                                _Character10 = _LocalPlayer33.Character:FindFirstChild('LeftHand')
                            end
                            if _Character9 and _Character10 then
                                firetouchinterest(_Character9, _Character8, 1)
                                firetouchinterest(_Character10, _Character8, 1)
                                firetouchinterest(_Character9, _Character8, 0)
                                firetouchinterest(_Character10, _Character8, 0)
                            end
                        end
                    end

                    task.wait(0.1)
                end
            end)
            print('Auto Fast Kill Player: ' .. u348.targetPlayerName)
        else
            print('Please select a target player from the dropdown')
        end
    else
        u348.killTarget = false

        print('Auto Fast Kill Player Disabled')
    end
end):Set(false)
_Killing:AddSwitch('Spy Player', function(p358)
    u348.isSpying = p358

    if p358 then
        if u348.targetPlayerName and u348.targetPlayerName ~= 'None' then
            _CurrentCamera.CameraType = Enum.CameraType.Scriptable

            if u348.spyConnection then
                u348.spyConnection:Disconnect()
            end

            u348.spyConnection = _RunService.RenderStepped:Connect(function()
                if u348.isSpying then
                    local v359 = _Players2:FindFirstChild(u348.targetPlayerName)
                    local v360 = v359 and v359.Character and v359.Character:FindFirstChild('HumanoidRootPart')

                    if v360 then
                        _CurrentCamera.CFrame = CFrame.new(v360.Position + Vector3.new(0, 5, 10), v360.Position)
                    end
                else
                    if u348.spyConnection then
                        u348.spyConnection:Disconnect()

                        u348.spyConnection = nil
                    end

                    _CurrentCamera.CameraType = Enum.CameraType.Custom

                    local v361 = _CurrentCamera
                    local _Character11 = _LocalPlayer33.Character

                    if _Character11 then
                        _Character11 = _LocalPlayer33.Character:FindFirstChildOfClass('Humanoid')
                    end

                    v361.CameraSubject = _Character11
                end
            end)

            print('Spying on: ' .. u348.targetPlayerName)
        else
            print('Select a target player from the dropdown')
        end
    else
        u348.isSpying = false

        if u348.spyConnection then
            u348.spyConnection:Disconnect()

            u348.spyConnection = nil
        end

        _CurrentCamera.CameraType = Enum.CameraType.Custom

        local v363 = _CurrentCamera
        local _Character12 = _LocalPlayer33.Character

        if _Character12 then
            _Character12 = _LocalPlayer33.Character:FindFirstChildOfClass('Humanoid')
        end

        v363.CameraSubject = _Character12

        print('Spy Player Disabled')
    end
end):Set(false)

local _Ultimates = _ZX8_HubMuscleLegends:AddTab('Ultimates')

_Ultimates:Show()

local _ultimatesRemote = game:GetService('ReplicatedStorage'):WaitForChild('rEvents'):WaitForChild('ultimatesRemote')
local u367 = nil
local _UpgradeUltimate = _Ultimates:AddDropdown('Upgrade Ultimate', function(p368)
    u367 = p368
end)
local v370, v371, v372 = ipairs({
    'RepSpeed',
    'PetSlot',
    'ItemCapacity',
    'DailySpin',
    'ChestRewards',
    'QuestRewards',
    'MuscleMind',
    'JungleSwift',
    'InfernalHealth',
    'GalaxyGains',
    'DemonDamage',
    'GoldenRebirth',
})
local u373 = u367

while true do
    local v374

    v372, v374 = v370(v371, v372)

    if v372 == nil then
        break
    end

    _UpgradeUltimate:Add(v374)
end

_Ultimates:AddSwitch('Buy Selected Ultimate', function(p375)
    if p375 and u373 then
        _ultimatesRemote:InvokeServer('upgradeUltimate', u373)
    end
end)

local _Misc = _ZX8_HubMuscleLegends:AddTab('Misc')
local u377 = true

_Misc:AddButton('Anti Afk', function(p378)
    u377 = p378

    if p378 then
        setupAntiAFK()
    elseif antiAFKConnection then
        antiAFKConnection:Disconnect()

        antiAFKConnection = nil

        print('Anti-AFK system disabled')
    end
end, true)
_Misc:AddSwitch('Lock Position', function(p379)
    if p379 then
        local _CFrame2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        getgenv().posLock = game:GetService('RunService').Heartbeat:Connect(function()
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _CFrame2
            end
        end)
    elseif getgenv().posLock then
        getgenv().posLock:Disconnect()

        getgenv().posLock = nil
    end
end)
_Misc:AddSwitch('Anti Knockback', function(p381)
    if p381 then
        local _Name = game.Players.LocalPlayer.Name
        local _HumanoidRootPart2 = game.Workspace:FindFirstChild(_Name):FindFirstChild('HumanoidRootPart')
        local _BodyVelocity = Instance.new('BodyVelocity')

        _BodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
        _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
        _BodyVelocity.P = 1250
        _BodyVelocity.Parent = _HumanoidRootPart2
    else
        local _Name2 = game.Players.LocalPlayer.Name
        local _BodyVelocity2 = game.Workspace:FindFirstChild(_Name2):FindFirstChild('HumanoidRootPart'):FindFirstChild('BodyVelocity')

        if _BodyVelocity2 and _BodyVelocity2.MaxForce == Vector3.new(100000, 0, 100000) then
            _BodyVelocity2:Destroy()
        end
    end
end)
_Misc:AddButton('Remove Portals', function()
    local v387, v388, v389 = pairs(game:GetDescendants())

    while true do
        local v390

        v389, v390 = v387(v388, v389)

        if v389 == nil then
            break
        end
        if v390.Name == 'RobloxForwardPortals' then
            v390:Destroy()
        end
    end

    if _G.AdRemovalConnection then
        _G.AdRemovalConnection:Disconnect()
    end

    _G.AdRemovalConnection = game.DescendantAdded:Connect(function(p391)
        if p391.Name == 'RobloxForwardPortals' then
            p391:Destroy()
        end
    end)
end)

local _ChangeTime = _Misc:AddDropdown('Change Time', function(p392)
    local _Lighting = game:GetService('Lighting')

    if p392 == 'Night' then
        _Lighting.ClockTime = 0
    elseif p392 == 'Day' then
        _Lighting.ClockTime = 12
    elseif p392 == 'Midnight' then
        _Lighting.ClockTime = 6
    end

    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = '!! Done !!',
        Text = 'Done Changing The Time!' .. p392,
        Duration = 0,
    })
end)

_ChangeTime:Add('Night')
_ChangeTime:Add('Day')
_ChangeTime:Add('Midnight')
_Misc:AddSwitch('Auto Fortune Wheel', function(p395)
    _G.autoFortuneWheelActive = p395

    if p395 then
        coroutine.wrap(function()
            while _G.autoFortuneWheelActive do
                local v396 = {
                    'openFortuneWheel',
                    game:GetService('ReplicatedStorage'):WaitForChild('fortuneWheelChances'):WaitForChild('Fortune Wheel'),
                }

                game:GetService('ReplicatedStorage'):WaitForChild('rEvents'):WaitForChild('openFortuneWheelRemote'):InvokeServer(unpack(v396))
                wait(0)
            end
        end)()
    else
        _G.autoFortuneWheelActive = false
    end
end)

local u397 = false

_Misc:AddSwitch('God Mode (Brawl)', function(p398)
    u397 = p398

    if p398 then
        task.spawn(function()
            while u397 do
                game:GetService('ReplicatedStorage').rEvents.brawlEvent:FireServer('joinBrawl')
                task.wait(0)
            end
        end)
    end
end)
