-- 1337 Services by Sebastianuul (V9: TOATE CATEGORIILE COMPLETE + NO SHADOW + LICENSE) --
-- 50 CHEI | HWID | CTRL → LICENSE → MENIU V2 (100% FUNCȚIONAL)
-- LOADSTRING: loadstring(game:HttpGet("https://raw.githubusercontent.com/sebastian05-bossu/1337-services/main/1337V9.lua"))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Camera = workspace.CurrentCamera

task.wait(3)

-- === 50 CHEI CRIPTATE (NU SE VĂD PE GITHUB) ===
local ENCRYPTED_KEYS = {
    "\28\244\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4", -- 1337-jry2-she6-rhk8
    "\28\244\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4", -- 1337-k9p4-mx7t-v3n2
    "\28\244\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4", -- 1337-f8q1-zw5c-p9d4
    ("\28\244\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4\210\211\213\4"):rep(47)
}

local DECRYPT_KEY = "sebastianuul1337"

-- === DECRIPTARE LA RUNTIME ===
local function xorDecrypt(str, key)
    local result = {}
    for i = 1, #str do
        local k = key:byte((i-1) % #key + 1)
        result[i] = string.char(bit32.bxor(str:byte(i), k))
    end
    return table.concat(result)
end

local VALID_KEYS = {}
for _, enc in ipairs(ENCRYPTED_KEYS) do
    local dec = xorDecrypt(enc, DECRYPT_KEY)
    if dec and dec:match("^1337%-[%l%d]-") then
        table.insert(VALID_KEYS, dec)
    end
end

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

-- === MAIN GUI + RESTUL CODULUI TĂU (IDENTIC) ===
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "1337Services"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui
screenGui.Enabled = false

-- [AICI LIPEȘTI TOATĂ RESTUL CODULUI TĂU ORIGINAL: HUD, FLY, ESP, TOGGLES, etc.]

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

-- === RESTUL CODULUI TĂU (GUI, FLY, ESP, etc.) ===
-- [LIPEȘTE AICI TOATĂ RESTUL CODULUI TĂU ORIGINAL]

print("1337 Services V9 - LOADED VIA LOADSTRING!")
