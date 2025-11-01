-- 1337 Services by Sebastianuul (V9: TOATE CATEGORIILE COMPLETE + NO SHADOW + LICENSE) --
-- 50 CHEI | HWID | CTRL → LICENSE → MENIU V2 (100% FUNCȚIONAL)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Camera = workspace.CurrentCamera

task.wait(3)

-- === 50 CHEI COMPLICATE ===
local VALID_KEYS = {
    "1337-jry2-she6-rhk8", "1337-k9p4-mx7t-v3n2", "1337-f8q1-zw5c-p9d4", "1337-h3t7-n2v8-l6r9", "1337-y4g5-b1x3-q8m7",
    "1337-w2c9-t5f6-r3k1", "1337-p7n4-d8h2-j9v6", "1337-m1x5-k6t3-z4q8", "1337-g9r7-c2p4-f5n1", "1337-s3v8-l7h6-q1t9",
    "1337-b5m2-x9w4-d6k3", "1337-n8f1-r4y7-p2c5", "1337-t6q9-j3z5-h8v2", "1337-k1d4-w7g9-m5x3", "1337-f2n6-c8p1-r9t4",
    "1337-z5h7-q3l9-v1b6", "1337-x4j2-t8m5-k7r3", "1337-p9g1-s6f4-n2w8", "1337-d3c7-h5y9-l1q6", "1337-b8t4-v6n2-j9x5",
    "1337-r7k3-m1p9-f4z6", "1337-w5q8-c2h1-t9d7", "1337-g3n6-x8l4-y5v2", "1337-j9r1-p7b5-k3m8", "1337-s4f2-q6t9-h1c7",
    "1337-n5w3-d8z1-l6x9", "1337-v2p7-r4k5-m9g3", "1337-t1h8-f6y4-c3q2", "1337-x7b9-j5n1-w8d6", "1337-p3m4-z9v2-k1r7",
    "1337-q8t5-h6f3-n4c9", "1337-l2x7-g9s1-b5w4", "1337-d1j8-r3p6-t7v5", "1337-y9k2-m4q1-f8h7", "1337-c6n3-z5x9-p1t4",
    "1337-w7r2-v4b8-j9g5", "1337-h3f6-q1m9-k8d2", "1337-s5t7-n2c4-x6l1", "1337-p9y3-g8v5-r1z7", "1337-b4k6-t2w9-f7q3",
    "1337-m1h8-d5j4-c9x2", "1337-l6n3-r8p7-v1q5", "1337-z4t9-k2f6-w5y1", "1337-g7c3-x9m5-h8b2", "1337-j1v4-p6n8-q3r7",
    "1337-f5d2-t9s1-y7k6", "1337-c8w4-m3h9-l1z5", "1337-n6q2-b4x7-p9g3", "1337-r1t8-v5j4-k7f2", "1337-h9d6-w2c1-q8m5"
}

-- === HWID ===
local function getHWID()
    return tostring(LocalPlayer.UserId) .. "-" .. game:GetService("RbxAnalyticsService"):GetClientId():sub(1, 8)
end
local CURRENT_HWID = getHWID()
local LICENSED_HWID = nil
local licenseVerified = false

-- === LICENSE GUI ===
local licenseGui = Instance.new("ScreenGui")
licenseGui.Name = "LicenseGui"
licenseGui.ResetOnSpawn = false
licenseGui.Parent = PlayerGui

local licenseFrame = Instance.new("Frame")
licenseFrame.Size = UDim2.new(0, 420, 0, 260)
licenseFrame.Position = UDim2.new(0.5, -210, 0.5, -130)
licenseFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
licenseFrame.BorderSizePixel = 0
licenseFrame.Parent = licenseGui

local lc = Instance.new("UICorner")
lc.CornerRadius = UDim.new(0, 18)
lc.Parent = licenseFrame

local ltitle = Instance.new("TextLabel")
ltitle.Size = UDim2.new(1, 0, 0, 50)
ltitle.BackgroundTransparency = 1
ltitle.Text = "1337 Services - License Key"
ltitle.Font = Enum.Font.GothamBold
ltitle.TextSize = 22
ltitle.TextColor3 = Color3.new(1, 1, 1)
ltitle.Parent = licenseFrame

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(0.9, 0, 0, 40)
inputBox.Position = UDim2.new(0.05, 0, 0.28, 0)
inputBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
inputBox.Text = ""
inputBox.PlaceholderText = "Enter key..."
inputBox.Font = Enum.Font.Gotham
inputBox.TextSize = 16
inputBox.TextColor3 = Color3.new(1, 1, 1)
inputBox.Parent = licenseFrame

local ic = Instance.new("UICorner")
ic.CornerRadius = UDim.new(0, 10)
ic.Parent = inputBox

local verifyBtn = Instance.new("TextButton")
verifyBtn.Size = UDim2.new(0.4, 0, 0, 40)
verifyBtn.Position = UDim2.new(0.3, 0, 0.7, 0)
verifyBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
verifyBtn.Text = "Verify"
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.TextSize = 16
verifyBtn.TextColor3 = Color3.new(1, 1, 1)
verifyBtn.Parent = licenseFrame

local vc = Instance.new("UICorner")
vc.CornerRadius = UDim.new(0, 10)
vc.Parent = verifyBtn

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -40, 0, 50)
statusLabel.Position = UDim2.new(0, 20, 0.45, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 14
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.TextWrapped = true
statusLabel.Parent = licenseFrame

-- === MAIN GUI ===
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "1337Services"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui
screenGui.Enabled = false

-- === VARIABILE GLOBALE ===
local speedEnabled = false
local flying = false
local flyToggle = false
local desyncActive = false
local espEnabled = false
local aimbotEnabled = false
local menuOpen = false
local FLY_SPEED = 80
local CUSTOM_SPEED = 180
local WALK_SPEED_DEFAULT = 16
local selectedPlayer = nil
local dropdownOpen = false
local dropdownFrame = nil
local checkpoint = nil
local tpBypassConnection = nil
local tpBypassEndTime = 0
local BYPASS_DURATION = 180
local godModeActive = false
local noRagdollActive = false
local grappleTool = nil
local grappleConnection = nil
local espHighlights = {}
local espNames = {}
local espColor = Color3.fromRGB(255, 0, 255)
local desyncClone = nil  -- FIX: declarat aici
local yPos = 10  -- FIX: un singur yPos
local tpLabel, arrowImg  -- FIX: declarat global

-- === HUD ===
local hudFrame = Instance.new("Frame")
hudFrame.Size = UDim2.new(0, 220, 0, 160)
hudFrame.Position = UDim2.new(0, 10, 0, 10)
hudFrame.BackgroundTransparency = 1
hudFrame.ZIndex = 1000
hudFrame.Parent = PlayerGui

local function createHudLabel(name, text, y)
    local lbl = Instance.new("TextLabel")
    lbl.Name = name
    lbl.Size = UDim2.new(1, 0, 0, 30)
    lbl.Position = UDim2.new(0, 0, 0, y)
    lbl.BackgroundTransparency = 0.5
    lbl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    lbl.TextColor3 = Color3.fromRGB(255, 0, 0)
    lbl.Font = Enum.Font.SourceSansBold
    lbl.TextSize = 18
    lbl.Text = text
    lbl.Parent = hudFrame
    return lbl
end

local flyLabel = createHudLabel("Fly", "FLY: OFF", 0)
local speedLabel = createHudLabel("Speed", "SPEED BOOST: OFF", 35)
local tpStatusLabel = createHudLabel("TP", "TP BYPASS: OFF", 70)
local godLabel = createHudLabel("God", "GOD MODE: OFF", 105)
local ragdollLabel = createHudLabel("Ragdoll", "NO RAGDOLL: OFF", 140)

-- === GUI PRINCIPAL ===
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 480, 0, 400)
main.Position = UDim2.new(0.5, -240, 0.3, -200)
main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
main.BackgroundTransparency = 1
main.BorderSizePixel = 0
main.Visible = false
main.Active = true
main.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 18)
corner.Parent = main

-- Draggable
local dragging = false
local dragStart, startPos
local function updateDrag(input)
    local delta = input.Position - dragStart
    local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    main.Position = newPos
end

main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then dragging = false end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        updateDrag(input)
    end
end)

-- Top Bar
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 50)
topBar.BackgroundTransparency = 1
topBar.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.Text = "1337 Services by Sebastianuul"
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextColor3 = Color3.new(1, 1, 1)
title.Parent = topBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 24, 0, 24)
closeBtn.Position = UDim2.new(1, -34, 0, 10)
closeBtn.Text = "X"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.BackgroundColor3 = Color3.new(0, 0, 0)
closeBtn.BackgroundTransparency = 0.6
closeBtn.BorderSizePixel = 0
closeBtn.Parent = topBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeBtn

-- Panels
local left = Instance.new("Frame")
left.Size = UDim2.new(0, 130, 1, -60)
left.Position = UDim2.new(0, 10, 0, 60)
left.BackgroundTransparency = 1
left.Parent = main

local right = Instance.new("Frame")
right.Size = UDim2.new(1, -160, 1, -70)
right.Position = UDim2.new(0, 150, 0, 60)
right.BackgroundTransparency = 1
right.Parent = main

-- Categories
local categories = {"Misc", "Steal", "Visual/Aim", "Discord"}
local catButtons = {}
local catContents = {}
local currentCat = nil

for i, cat in ipairs(categories) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 36)
    btn.Position = UDim2.new(0, 5, 0, (i-1)*44)
    btn.Text = cat
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 16
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    btn.BorderSizePixel = 0
    btn.Parent = left
    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(0, 10)
    bc.Parent = btn
    catButtons[cat] = btn

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    frame.Visible = false
    frame.Parent = right
    catContents[cat] = frame
end

local function showCat(cat)
    if currentCat == cat then return end
    if currentCat then catContents[currentCat].Visible = false end
    currentCat = cat
    catContents[cat].Visible = true
end

for name, btn in pairs(catButtons) do
    btn.MouseButton1Click:Connect(function() showCat(name) end)
end

-- Rainbow Title
local hue = 0
RunService.RenderStepped:Connect(function(dt)
    if main.Visible then
        hue = (hue + dt * 0.1) % 1
        title.TextColor3 = Color3.fromHSV(hue, 0.9, 1)
    end
end)

-- === FUNCȚII ===
-- FLY
local function updateFlyLabel()
    flyLabel.Text = "FLY: " .. (flyToggle and "ON" or "OFF")
    flyLabel.TextColor3 = flyToggle and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.Space and flyToggle then
        flying = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        flying = false
    end
end)

RunService.RenderStepped:Connect(function()
    if flying and flyToggle and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = LocalPlayer.Character.HumanoidRootPart
        local camLook = Camera.CFrame.LookVector
        hrp.Velocity = camLook * FLY_SPEED
    end
end)

-- GOD MODE
local godConnection
local function toggleGodMode(on)
    godModeActive = on
    godLabel.Text = "GOD MODE: " .. (on and "ON" or "OFF")
    godLabel.TextColor3 = on and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    if godConnection then godConnection:Disconnect() end
    if on then
        godConnection = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if not char then return end
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.Health = hum.MaxHealth end
        end)
    end
end

-- NO RAGDOLL
local function toggleNoRagdoll(on)
    noRagdollActive = on
    ragdollLabel.Text = "NO RAGDOLL: " .. (on and "ON" or "OFF")
    ragdollLabel.TextColor3 = on and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, not on) end
end

-- SPEED + AUTO GRAPPLE
local function startAutoGrapple()
    if grappleConnection then grappleConnection:Disconnect() end
    local char = LocalPlayer.Character
    if not char then return end
    grappleTool = char:FindFirstChild("GrappleHook") or char:FindFirstChildWhichIsA("Tool")
    if not grappleTool then return end
    if grappleTool.Parent == LocalPlayer.Backpack then grappleTool.Parent = char end
    local handle = grappleTool:FindFirstChild("Handle")
    if not handle then return end
    grappleConnection = RunService.Heartbeat:Connect(function()
        if not speedEnabled or grappleTool.Parent ~= char then return end
        local mouse = LocalPlayer:GetMouse()
        local targetPos = char.HumanoidRootPart.Position + char.HumanoidRootPart.CFrame.LookVector * 50
        mouse.Hit = CFrame.new(targetPos)
        mouse.Button1Down:Fire()
        task.wait(0.03)
        mouse.Button1Up:Fire()
    end)
end

local function toggleSpeed(on)
    speedEnabled = on
    speedLabel.Text = "SPEED BOOST: " .. (on and "ON" or "OFF")
    speedLabel.TextColor3 = on and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.WalkSpeed = on and CUSTOM_SPEED or WALK_SPEED_DEFAULT end
    if on then startAutoGrapple() else if grappleConnection then grappleConnection:Disconnect() end end
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.R then toggleSpeed(not speedEnabled) end
end)

-- TP
local function startTPBypass(targetCFrame)
    if tpBypassConnection then tpBypassConnection:Disconnect() end
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local ray = Ray.new(targetCFrame.Position + Vector3.new(0, 10, 0), Vector3.new(0, -100, 0))
    local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, {char})
    local groundY = pos and pos.Y or (targetCFrame.Position.Y - 3)
    local finalPos = Vector3.new(targetCFrame.Position.X, groundY + 3, targetCFrame.Position.Z)
    hrp.CFrame = CFrame.new(finalPos)
    tpBypassEndTime = tick() + BYPASS_DURATION
    tpStatusLabel.Text = "TP BYPASS: ON (3 MIN)"
    tpStatusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    tpBypassConnection = RunService.Heartbeat:Connect(function()
        if not hrp or not hrp.Parent then if tpBypassConnection then tpBypassConnection:Disconnect() end return end
        if tick() >= tpBypassEndTime then
            if tpBypassConnection then tpBypassConnection:Disconnect() tpBypassConnection = nil end
            tpStatusLabel.Text = "TP BYPASS: OFF"
            tpStatusLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
            return
        end
        hrp.CFrame = CFrame.new(finalPos)
    end)
end

local function teleportToPlayer()
    if not selectedPlayer or not selectedPlayer.Character then return end
    local targetHrp = selectedPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not targetHrp then return end
    local offset = Vector3.new(math.random(-2, 2), 0, math.random(-2, 2))
    local targetPos = targetHrp.Position + offset
    startTPBypass(CFrame.new(targetPos))
end

local function setCheckpoint()
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        checkpoint = char.HumanoidRootPart.CFrame
        print("Checkpoint set!")
    end
end

local function goToCheckpoint()
    if checkpoint then startTPBypass(checkpoint) end
end

-- DESYNC
local function toggleDesync(on)
    desyncActive = on
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart
    if on then
        desyncClone = char:Clone()
        desyncClone.Parent = workspace
        for _, part in pairs(desyncClone:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Anchored = true
                part.CanCollide = false
                part.Transparency = 0.3
            end
        end
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.Transparency = 1
            end
        end
        hrp.Anchored = true
    else
        if desyncClone then desyncClone:Destroy() desyncClone = nil end
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.Transparency = 0
            end
        end
        hrp.Anchored = false
    end
end

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.Eight then toggleDesync(not desyncActive) end
end)

-- ESP
local function setupESP(plr)
    if plr == LocalPlayer then return end
    local function onChar(char)
        if not char or not char:FindFirstChild("HumanoidRootPart") then return end
        local hl = Instance.new("Highlight")
        hl.Adornee = char
        hl.FillTransparency = 0.3
        hl.OutlineTransparency = 1
        hl.FillColor = espColor
        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        hl.Parent = workspace
        espHighlights[plr] = hl
        local head = char:FindFirstChild("Head")
        if head then
            local bg = Instance.new("BillboardGui")
            bg.Adornee = head
            bg.Size = UDim2.new(0, 100, 0, 30)
            bg.StudsOffset = Vector3.new(0, 3, 0)
            bg.AlwaysOnTop = true
            bg.Parent = head
            local label = Instance.new("TextLabel")
            label.Size = UDim2.new(1, 0, 1, 0)
            label.BackgroundTransparency = 1
            label.Text = plr.Name
            label.TextColor3 = Color3.new(1, 1, 1)
            label.TextStrokeTransparency = 0
            label.Font = Enum.Font.GothamBold
            label.TextSize = 14
            label.Parent = bg
            espNames[plr] = bg
        end
    end
    if plr.Character then onChar(plr.Character) end
    plr.CharacterAdded:Connect(onChar)
end

local function toggleESP(on)
    espEnabled = on
    if on then
        for _, plr in pairs(Players:GetPlayers()) do setupESP(plr) end
        Players.PlayerAdded:Connect(setupESP)
    else
        for _, hl in pairs(espHighlights) do pcall(function() hl:Destroy() end) end
        for _, bg in pairs(espNames) do pcall(function() bg:Destroy() end) end
        espHighlights = {}
        espNames = {}
    end
end

-- AIMBOT
RunService.RenderStepped:Connect(function()
    if not aimbotEnabled then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp or not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then return end
    local closest = nil
    local minDist = 25
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local targetHrp = plr.Character.HumanoidRootPart
            local dist = (hrp.Position - targetHrp.Position).Magnitude
            if dist < minDist then
                minDist = dist
                closest = targetHrp
            end
        end
    end
    if closest then
        hrp.CFrame = CFrame.lookAt(hrp.Position, closest.Position)
    end
end)

-- DROPDOWN
local function createTPDropdown()
    if dropdownFrame then dropdownFrame:Destroy() end
    dropdownFrame = Instance.new("Frame")
    dropdownFrame.Size = UDim2.new(1, -10, 0, 150)
    dropdownFrame.Position = UDim2.new(0, 5, 0, 75)
    dropdownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    dropdownFrame.BorderSizePixel = 0
    dropdownFrame.Visible = dropdownOpen
    dropdownFrame.Parent = catContents["Steal"]

    local uc = Instance.new("UICorner")
    uc.CornerRadius = UDim.new(0, 8)
    uc.Parent = dropdownFrame

    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.Name
    layout.Padding = UDim.new(0, 2)
    layout.Parent = dropdownFrame

    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1, 0, 0, 30)
            btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            btn.Text = plr.Name
            btn.TextColor3 = Color3.new(1, 1, 1)
            btn.Font = Enum.Font.Gotham
            btn.TextSize = 14
            btn.Parent = dropdownFrame
            local bc = Instance.new("UICorner")
            bc.CornerRadius = UDim.new(0, 6)
            bc.Parent = btn
            btn.MouseButton1Click:Connect(function()
                selectedPlayer = plr
                tpLabel.Text = "TP to: " .. plr.Name
                dropdownOpen = false
                dropdownFrame.Visible = false
                arrowImg.Image = "rbxassetid://6031097225"
            end)
        end
    end
end

Players.PlayerAdded:Connect(function(plr)
    if dropdownOpen then
        task.delay(0.5, createTPDropdown)
    end
end)

-- TOGGLES
local function createToggle(parent, text, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -10, 0, 36)
    frame.Position = UDim2.new(0, 5, 0, yPos)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.Parent = parent
    local fc = Instance.new("UICorner")
    fc.CornerRadius = UDim.new(0, 8)
    fc.Parent = frame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -100, 1, 0)
    label.Position = UDim2.new(0, 10, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.Font = Enum.Font.Gotham
    label.TextSize = 15
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.TextColor3 = Color3.new(1, 1, 1)
    label.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 70, 0, 26)
    btn.Position = UDim2.new(1, -80, 0.5, -13)
    btn.Text = "OFF"
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 13
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    btn.BorderSizePixel = 0
    btn.Parent = frame
    local tc = Instance.new("UICorner")
    tc.CornerRadius = UDim.new(0, 6)
    tc.Parent = btn

    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        btn.Text = state and "ON" or "OFF"
        btn.BackgroundColor3 = state and Color3.fromRGB(50, 200, 50) or Color3.fromRGB(200, 50, 50)
        callback(state)
    end)

    yPos = yPos + 44
    return btn
end

-- === MISC ===
yPos = 10
createToggle(catContents["Misc"], "Fly (Hold Space)", function(on) flyToggle = on updateFlyLabel() end)
createToggle(catContents["Misc"], "Speed Boost (R)", toggleSpeed)
createToggle(catContents["Misc"], "God Mode", toggleGodMode)
createToggle(catContents["Misc"], "No Ragdoll", toggleNoRagdoll)

-- New Server Button
local nsBtn = Instance.new("TextButton")
nsBtn.Size = UDim2.new(1, -10, 0, 36)
nsBtn.Position = UDim2.new(0, 5, 0, yPos)
nsBtn.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
nsBtn.Text = "New Server"
nsBtn.Font = Enum.Font.GothamBold
nsBtn.TextSize = 15
nsBtn.TextColor3 = Color3.new(1, 1, 1)
nsBtn.Parent = catContents["Misc"]
local nsc = Instance.new("UICorner")
nsc.CornerRadius = UDim.new(0, 8)
nsc.Parent = nsBtn
nsBtn.MouseButton1Click:Connect(function()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end)
yPos = yPos + 44

-- === STEAL ===
yPos = 10
createToggle(catContents["Steal"], "Desync (Key 8)", toggleDesync)

-- Checkpoint Buttons
local cpSet = Instance.new("TextButton")
cpSet.Size = UDim2.new(1, -10, 0, 36)
cpSet.Position = UDim2.new(0, 5, 0, yPos)
cpSet.BackgroundColor3 = Color3.fromRGB(40, 120, 40)
cpSet.Text = "Set Checkpoint"
cpSet.Font = Enum.Font.GothamBold
cpSet.TextSize = 15
cpSet.TextColor3 = Color3.new(1, 1, 1)
cpSet.Parent = catContents["Steal"]
local cpc = Instance.new("UICorner")
cpc.CornerRadius = UDim.new(0, 8)
cpc.Parent = cpSet
cpSet.MouseButton1Click:Connect(setCheckpoint)
yPos = yPos + 40

local cpGo = Instance.new("TextButton")
cpGo.Size = UDim2.new(1, -10, 0, 36)
cpGo.Position = UDim2.new(0, 5, 0, yPos)
cpGo.BackgroundColor3 = Color3.fromRGB(120, 40, 40)
cpGo.Text = "Go to Checkpoint"
cpGo.Font = Enum.Font.GothamBold
cpGo.TextSize = 15
cpGo.TextColor3 = Color3.new(1, 1, 1)
cpGo.Parent = catContents["Steal"]
local cpg = Instance.new("UICorner")
cpg.CornerRadius = UDim.new(0, 8)
cpg.Parent = cpGo
cpGo.MouseButton1Click:Connect(goToCheckpoint)
yPos = yPos + 40

-- TP Dropdown
local tpFrame = Instance.new("Frame")
tpFrame.Size = UDim2.new(1, -10, 0, 36)
tpFrame.Position = UDim2.new(0, 5, 0, yPos)
tpFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
tpFrame.BorderSizePixel = 0
tpFrame.Parent = catContents["Steal"]
local tfc = Instance.new("UICorner")
tfc.CornerRadius = UDim.new(0, 8)
tfc.Parent = tpFrame

tpLabel = Instance.new("TextLabel")
tpLabel.Size = UDim2.new(1, -40, 1, 0)
tpLabel.Position = UDim2.new(0, 10, 0, 0)
tpLabel.BackgroundTransparency = 1
tpLabel.Text = "TP to Player"
tpLabel.Font = Enum.Font.Gotham
tpLabel.TextSize = 15
tpLabel.TextXAlignment = Enum.TextXAlignment.Left
tpLabel.TextColor3 = Color3.new(1, 1, 1)
tpLabel.Parent = tpFrame

arrowImg = Instance.new("ImageLabel")
arrowImg.Size = UDim2.new(0, 20, 0, 20)
arrowImg.Position = UDim2.new(1, -30, 0.5, -10)
arrowImg.BackgroundTransparency = 1
arrowImg.Image = "rbxassetid://6031097225"
arrowImg.Parent = tpFrame

local tpButton = Instance.new("TextButton")
tpButton.Size = UDim2.new(1, 0, 1, 0)
tpButton.BackgroundTransparency = 1
tpButton.Parent = tpFrame
tpButton.MouseButton1Click:Connect(function()
    dropdownOpen = not dropdownOpen
    arrowImg.Image = dropdownOpen and "rbxassetid://6031097220" or "rbxassetid://6031097225"
    if dropdownOpen then
        createTPDropdown()
        dropdownFrame.Visible = true
    else
        if dropdownFrame then dropdownFrame.Visible = false end
    end
end)

local tpGo = Instance.new("TextButton")
tpGo.Size = UDim2.new(1, -10, 0, 36)
tpGo.Position = UDim2.new(0, 5, 0, yPos + 40)
tpGo.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
tpGo.Text = "TELEPORT"
tpGo.Font = Enum.Font.GothamBold
tpGo.TextSize = 15
tpGo.TextColor3 = Color3.new(1, 1, 1)
tpGo.Parent = catContents["Steal"]
local tgc = Instance.new("UICorner")
tgc.CornerRadius = UDim.new(0, 8)
tgc.Parent = tpGo
tpGo.MouseButton1Click:Connect(teleportToPlayer)

-- === VISUAL/AIM ===
yPos = 10
createToggle(catContents["Visual/Aim"], "Player ESP", toggleESP)
createToggle(catContents["Visual/Aim"], "Aimbot (7m)", function(on) aimbotEnabled = on end)

local rcb = Instance.new("TextButton")
rcb.Size = UDim2.new(1, -10, 0, 36)
rcb.Position = UDim2.new(0, 5, 0, yPos)
rcb.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
rcb.Text = "Pick Random Color"
rcb.Font = Enum.Font.GothamBold
rcb.TextSize = 15
rcb.TextColor3 = Color3.new(1, 1, 1)
rcb.Parent = catContents["Visual/Aim"]
local rc = Instance.new("UICorner")
rc.CornerRadius = UDim.new(0, 8)
rc.Parent = rcb
rcb.MouseButton1Click:Connect(function()
    espColor = Color3.fromRGB(math.random(50,255), math.random(50,255), math.random(50,255))
    toggleESP(espEnabled)
end)

-- === DISCORD ===
yPos = 20
local discordLink = Instance.new("TextLabel")
discordLink.Size = UDim2.new(1, -80, 0, 30)
discordLink.Position = UDim2.new(0, 10, 0, yPos)
discordLink.BackgroundTransparency = 1
discordLink.Text = "https://discord.gg/5y6FwUwVUm"
discordLink.Font = Enum.Font.Gotham
discordLink.TextSize = 16
discordLink.TextColor3 = Color3.fromRGB(88, 166, 255)
discordLink.Parent = catContents["Discord"]

local copyBtn = Instance.new("TextButton")
copyBtn.Size = UDim2.new(0, 60, 0, 30)
copyBtn.Position = UDim2.new(1, -70, 0, yPos)
copyBtn.Text = "Copy"
copyBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
copyBtn.TextColor3 = Color3.new(1, 1, 1)
copyBtn.Font = Enum.Font.GothamBold
copyBtn.TextSize = 14
copyBtn.Parent = catContents["Discord"]
local cc = Instance.new("UICorner")
cc.CornerRadius = UDim.new(0, 8)
cc.Parent = copyBtn
copyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/5y6FwUwVUm")
    copyBtn.Text = "Copied!"
    copyBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
    task.wait(1)
    copyBtn.Text = "Copy"
    copyBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
end)

local msg1 = Instance.new("TextLabel")
msg1.Size = UDim2.new(1, -20, 0, 40)
msg1.Position = UDim2.new(0, 10, 0, yPos + 50)
msg1.BackgroundTransparency = 1
msg1.Text = "For more details and questions, create a ticket on Discord!"
msg1.Font = Enum.Font.Gotham
msg1.TextSize = 14
msg1.TextColor3 = Color3.new(0.8, 0.8, 0.8)
msg1.TextWrapped = true
msg1.Parent = catContents["Discord"]

local msg2 = Instance.new("TextLabel")
msg2.Size = UDim2.new(1, -20, 0, 40)
msg2.Position = UDim2.new(0, 10, 0, yPos + 95)
msg2.BackgroundTransparency = 1
msg2.Text = "Please do not spam in the ticket, otherwise you will get banned/kicked/timeout."
msg2.Font = Enum.Font.Gotham
msg2.TextSize = 13
msg2.TextColor3 = Color3.fromRGB(255, 100, 100)
msg2.TextWrapped = true
msg2.Parent = catContents["Discord"]

-- === LICENSE VERIFY ===
verifyBtn.MouseButton1Click:Connect(function()
    local key = inputBox.Text:lower():gsub("%s+", "")
    local found = false
    for _, validKey in ipairs(VALID_KEYS) do
        if key == validKey then
            found = true
            break
        end
    end
    if not found then
        statusLabel.Text = "Invalid Key!"
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    if LICENSED_HWID and LICENSED_HWID ~= CURRENT_HWID then
        statusLabel.Text = "HWID Mismatch!"
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    LICENSED_HWID = CURRENT_HWID
    statusLabel.Text = "Verified! Press CTRL to open menu."
    statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    task.wait(1.5)
    licenseGui:Destroy()
    licenseVerified = true
    screenGui.Enabled = true
end)

-- === CTRL TOGGLE ===
UserInputService.InputBegan:Connect(function(input, gp)
    if gp or not licenseVerified then return end
    if input.KeyCode == Enum.KeyCode.LeftControl then
        menuOpen = not menuOpen
        main.Visible = menuOpen
        main.BackgroundTransparency = menuOpen and 0.05 or 1
        if menuOpen then showCat("Misc") end
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    menuOpen = false
    main.Visible = false
    main.BackgroundTransparency = 1
end)

print("1337 Services V9 - TOATE CATEGORIILE COMPLETE - 100% FUNCȚIONAL!")
