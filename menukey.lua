-- GS MENU KEY AUTH para Roblox (Versão Simples)
-- Coloque isso em StarterGui ou como LocalScript

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- CONFIGURAÇÕES - COLOQUE SUAS KEYS AQUI
local validKeys = {
    "key123",
    "key456",
    "key789",
    "meistro2025"
}

-- LOADSTRING A EXECUTAR
local scriptToExecute = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/ghzmenu/GSMENU_ON//main/gs_menu_base_funcional_Version3.lua"))()
]]

-- Criar a GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GSMenuKeyAuth"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.35, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderColor3 = Color3.fromRGB(180, 100, 255)
mainFrame.BorderSizePixel = 2
mainFrame.Parent = screenGui

-- Canto arredondado
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 8)
mainCorner.Parent = mainFrame

-- Título
local title = Instance.new("TextLabel")
title.Text = "GS MENU"
title.Size = UDim2.new(1, 0, 0.2, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18
title.Font = Enum.Font.GothamBold
title.BorderSizePixel = 0
title.Parent = mainFrame

-- Separador
local separator = Instance.new("Frame")
separator.Size = UDim2.new(0.9, 0, 0.01, 0)
separator.Position = UDim2.new(0.05, 0, 0.19, 0)
separator.BackgroundColor3 = Color3.fromRGB(180, 100, 255)
separator.BorderSizePixel = 0
separator.Parent = mainFrame

-- TextBox para digitar a chave
local keyInput = Instance.new("TextBox")
keyInput.Name = "KeyInput"
keyInput.Size = UDim2.new(0.9, 0, 0.5, 0)
keyInput.Position = UDim2.new(0.05, 0, 0.25, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextSize = 14
keyInput.Font = Enum.Font.Gotham
keyInput.PlaceholderText = "Digite sua key"
keyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
keyInput.BorderColor3 = Color3.fromRGB(180, 100, 255)
keyInput.BorderSizePixel = 1
keyInput.Parent = mainFrame

-- Label de status
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "Status"
statusLabel.Size = UDim2.new(0.9, 0, 0.2, 0)
statusLabel.Position = UDim2.new(0.05, 0, 0.80, 0)
statusLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.TextSize = 12
statusLabel.Font = Enum.Font.Gotham
statusLabel.Text = ""
statusLabel.BorderSizePixel = 0
statusLabel.Parent = mainFrame

-- Função para verificar se a key é válida
local function isKeyValid(inputKey)
    for _, key in ipairs(validKeys) do
        if inputKey == key then
            return true
        end
    end
    return false
end

-- Evento quando o jogador digita Enter
keyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local userInput = keyInput.Text
        
        if userInput == "" then
            statusLabel.Text = "Digite uma key!"
            statusLabel.TextColor3 = Color3.fromRGB(255, 150, 0)
            return
        end
        
        if isKeyValid(userInput) then
            statusLabel.Text = "✓ Acesso concedido!"
            statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            wait(1)
            screenGui:Destroy()
            print("Bem vindo ao GS MENU")
            
            -- Executar o loadstring
            local loadFunc = loadstring(scriptToExecute)
            if loadFunc then
                loadFunc()
            end
        else
            statusLabel.Text = "✗ Key inválida!"
            statusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            keyInput.Text = ""
            keyInput:CaptureFocus()
        end
    end
end)

-- Focus inicial
keyInput:CaptureFocus()
