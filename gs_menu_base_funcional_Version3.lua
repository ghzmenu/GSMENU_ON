-- ============================================================================
-- GS MENU v4 - VERSÃO COMPLETA COM ANIMAÇÕES
-- UI NOVA + SISTEMA ANTIGO (Mantém tudo que funcionava)
-- ============================================================================

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ============================================================================
-- CORES / COLORS
-- ============================================================================

local COLOR_BACKGROUND = Color3.fromRGB(10, 10, 10)
local COLOR_PURPLE_ACCENT = Color3.fromRGB(94, 23, 235)
local COLOR_WHITE = Color3.fromRGB(255, 255, 255)
local COLOR_CONTENT_BG = Color3.fromRGB(0, 0, 0)
local COLOR_SUCCESS = Color3.fromRGB(0, 255, 0)
local COLOR_TOGGLE_OFF = Color3.fromRGB(180, 180, 180)

-- ============================================================================
-- CONFIGURAÇÕES DE ANIMAÇÃO
-- ============================================================================

local TWEEN_INFO = TweenInfo.new(
	0.3, -- Duração
	Enum.EasingStyle.Quad, -- Estilo
	Enum.EasingDirection.Out -- Direção
)

local TWEEN_INFO_FAST = TweenInfo.new(
	0.2,
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.Out
)

-- ============================================================================
-- SCRIPTS URLS COM LOADSTRING COMPLETO
-- ============================================================================

local SCRIPT_URLS = {
	-- HOME TAB
	FLY = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	NOCLIP = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/NO%20CLIP%20On.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/NOCLIP%20OFF.lua"))() end
	},
	SPEED = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	FLING = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	HOME_BREV_1 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	HOME_BREV_2 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	HOME_BREV_3 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	HOME_BREV_4 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	HOME_BREV_5 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	
	-- AIMBOT TAB
	AIMBOT = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/AIMLOCK.ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/Aimlock.off.lua"))() end
	},
	FOV = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	WALLCK = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	FRIENDCK = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	AIMBOT_BREV_1 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	AIMBOT_BREV_2 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	AIMBOT_BREV_3 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	AIMBOT_BREV_4 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	AIMBOT_BREV_5 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	
	-- ESP TAB
	["ESP NAME"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20NAME%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20NAME%20OFF.lua"))() end
	},
	["ESP TRACE"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20TRACE%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20TRACE%20OFF.lua"))() end
	},
	["ESP BOX"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	["ESP LIFE"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20LIFE%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20LIFE%20OFF.lua"))() end
	},
	["ESP HEAD"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20HEAD%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20HEAD%20OFF.lua"))() end
	},
	["ESP BAG"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	["ESP RAGE"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20DIATANCIA%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20DIATANCIA%20OFF.lua"))() end
	},
	["ESP STAFF"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/Staff%20LIST%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/STAFF%20LIST%20OFF.lua"))() end
	},
	ESP_BREV_1 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	ESP_BREV_2 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	
	-- CAR TAB
	["ESP CAR"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20CAR%20ON.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20CAR%20OFF.lua"))() end
	},
	["FLY CAR"] = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	CAR_BREV_1 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	CAR_BREV_2 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	CAR_BREV_3 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	CAR_BREV_4 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	CAR_BREV_5 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	
	-- DESTRY TAB
	NOWALL = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/NO%20WALL%20ON.LUA"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/No%20wall%20off.lua"))() end
	},
	DESTRY_BREV_1 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	DESTRY_BREV_2 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	DESTRY_BREV_3 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	DESTRY_BREV_4 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
	DESTRY_BREV_5 = {
		on = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end,
		off = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ghzmenu/GHZ-MENU-SCRIPTS-P-BLICOS/main/ESP%20BOX%20OFF.lua"))() end
	},
}

-- ============================================================================
-- VARIÁVEIS DE ESTADO
-- ============================================================================

local selectedTab = "HOME"
local allTabs = {"HOME", "AIMBOT", "ESP", "CAR", "DESTRY"}
local tabReferences = {}
local tabContentFrames = {}

local nameDisplayMap = {
	["HOME_BREV_1"] = "FEATURE 1",
	["HOME_BREV_2"] = "FEATURE 2",
	["HOME_BREV_3"] = "FEATURE 3",
	["HOME_BREV_4"] = "FEATURE 4",
	["HOME_BREV_5"] = "FEATURE 5",
	["AIMBOT_BREV_1"] = "COMBAT 1",
	["AIMBOT_BREV_2"] = "COMBAT 2",
	["AIMBOT_BREV_3"] = "COMBAT 3",
	["AIMBOT_BREV_4"] = "COMBAT 4",
	["AIMBOT_BREV_5"] = "COMBAT 5",
	["ESP_BREV_1"] = "VISION 1",
	["ESP_BREV_2"] = "VISION 2",
	["CAR_BREV_1"] = "VEHICLE 1",
	["CAR_BREV_2"] = "VEHICLE 2",
	["CAR_BREV_3"] = "VEHICLE 3",
	["CAR_BREV_4"] = "VEHICLE 4",
	["CAR_BREV_5"] = "VEHICLE 5",
	["DESTRY_BREV_1"] = "DESTRUCTION 1",
	["DESTRY_BREV_2"] = "DESTRUCTION 2",
	["DESTRY_BREV_3"] = "DESTRUCTION 3",
	["DESTRY_BREV_4"] = "DESTRUCTION 4",
	["DESTRY_BREV_5"] = "DESTRUCTION 5",
}

local tabContents = {
	HOME = {
		left = {"FLY", "NOCLIP", "SPEED", "FLING", "HOME_BREV_1"},
		right = {"HOME_BREV_2", "HOME_BREV_3", "HOME_BREV_4", "HOME_BREV_5", "HOME_BREV_6"}
	},
	AIMBOT = {
		left = {"AIMBOT", "FOV", "WALLCK", "FRIENDCK", "AIMBOT_BREV_1"},
		right = {"AIMBOT_BREV_2", "AIMBOT_BREV_3", "AIMBOT_BREV_4", "AIMBOT_BREV_5", "AIMBOT_BREV_6"}
	},
	ESP = {
		left = {"ESP NAME", "ESP TRACE", "ESP BOX", "ESP LIFE", "ESP HEAD"},
		right = {"ESP BAG", "ESP RAGE", "ESP STAFF", "ESP_BREV_1", "ESP_BREV_2"}
	},
	CAR = {
		left = {"ESP CAR", "FLY CAR", "CAR_BREV_1", "CAR_BREV_2", "CAR_BREV_3"},
		right = {"CAR_BREV_4", "CAR_BREV_5", "CAR_BREV_6", "CAR_BREV_7", "CAR_BREV_8"}
	},
	DESTRY = {
		left = {"NOWALL", "DESTRY_BREV_1", "DESTRY_BREV_2", "DESTRY_BREV_3", "DESTRY_BREV_4"},
		right = {"DESTRY_BREV_5", "DESTRY_BREV_6", "DESTRY_BREV_7", "DESTRY_BREV_8", "DESTRY_BREV_9"}
	}
}

local dragState = {
	isDragging = false,
	dragStart = nil,
	startPos = nil,
	dragInput = nil
}

-- ============================================================================
-- FUNÇÃO PARA OBTER NOME VISUAL
-- ============================================================================

local function getDisplayName(scriptId)
	return nameDisplayMap[scriptId] or scriptId
end

-- ============================================================================
-- FUNÇÃO PARA EXECUTAR SCRIPTS
-- ============================================================================

local function executeScript(scriptFunc, featureName, isActivating)
	if scriptFunc == nil then
		print("[GS MENU] ⚠️ Função de script vazia para: " .. featureName)
		return
	end
	
	pcall(function()
		scriptFunc()
		local state = isActivating and "✓ ATIVADO" or "✓ DESATIVADO"
		print("[GS MENU] " .. featureName .. " " .. state)
	end)
end

-- ============================================================================
-- CRIAR SCREENGUI
-- ============================================================================

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GSMenuHeaderV2"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

-- ============================================================================
-- CRIAR BARRA SUPERIOR
-- ============================================================================

local headerBar = Instance.new("Frame")
headerBar.Name = "HeaderBar"
headerBar.Size = UDim2.new(0.78, 0, 0, 36)
headerBar.Position = UDim2.new(0.11, 0, 0.05, 20)
headerBar.BackgroundColor3 = COLOR_BACKGROUND
headerBar.BorderSizePixel = 0
headerBar.Parent = screenGui

local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0.05, 0)
headerCorner.Parent = headerBar

local headerStroke = Instance.new("UIStroke")
headerStroke.Color = COLOR_PURPLE_ACCENT
headerStroke.Thickness = 0.5
headerStroke.Transparency = 0
headerStroke.LineJoinMode = Enum.LineJoinMode.Round
headerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
headerStroke.Parent = headerBar

local titleContainer = Instance.new("Frame")
titleContainer.Name = "TitleContainer"
titleContainer.Size = UDim2.new(0.4, 0, 1, 0)
titleContainer.Position = UDim2.new(0, 0, 0, 0)
titleContainer.BackgroundTransparency = 1
titleContainer.BorderSizePixel = 0
titleContainer.Parent = headerBar

local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Text = "GS MENU"
titleText.TextColor3 = COLOR_WHITE
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 17
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.TextYAlignment = Enum.TextYAlignment.Center
titleText.BackgroundTransparency = 1
titleText.BorderSizePixel = 0
titleText.Size = UDim2.new(1, 0, 1, 0)
titleText.Position = UDim2.new(0, 0, 0, 0)
titleText.Parent = titleContainer

local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 12)
titlePadding.Parent = titleText

local subtitleText = Instance.new("TextLabel")
subtitleText.Name = "SubtitleText"
subtitleText.Text = "[sintonia rp]"
subtitleText.TextColor3 = COLOR_PURPLE_ACCENT
subtitleText.Font = Enum.Font.Gotham
subtitleText.TextSize = 9
subtitleText.TextXAlignment = Enum.TextXAlignment.Left
subtitleText.TextYAlignment = Enum.TextYAlignment.Center
subtitleText.BackgroundTransparency = 1
subtitleText.BorderSizePixel = 0
subtitleText.Size = UDim2.new(0.3, 0, 1, 0)
subtitleText.Position = UDim2.new(0.15, 0, 0, 0)
subtitleText.Parent = headerBar

local rightContainer = Instance.new("Frame")
rightContainer.Name = "RightContainer"
rightContainer.Size = UDim2.new(0.3, 0, 1, 0)
rightContainer.Position = UDim2.new(0.7, 0, 0, 0)
rightContainer.BackgroundTransparency = 1
rightContainer.BorderSizePixel = 0
rightContainer.Parent = headerBar

local rightPadding = Instance.new("UIPadding")
rightPadding.PaddingRight = UDim.new(0, 12)
rightPadding.Parent = rightContainer

local statusText = Instance.new("TextLabel")
statusText.Name = "StatusText"
statusText.Text = "STATUS: "
statusText.TextColor3 = COLOR_WHITE
statusText.Font = Enum.Font.GothamBold
statusText.TextSize = 8
statusText.TextXAlignment = Enum.TextXAlignment.Right
statusText.TextYAlignment = Enum.TextYAlignment.Center
statusText.BackgroundTransparency = 1
statusText.BorderSizePixel = 0
statusText.Size = UDim2.new(0.1, 0, 1, 0)
statusText.Position = UDim2.new(0.3, 0, 0, 0)
statusText.Parent = rightContainer

local onlineLabel = Instance.new("TextLabel")
onlineLabel.Name = "OnlineLabel"
onlineLabel.Text = "ONLINE"
onlineLabel.TextColor3 = COLOR_SUCCESS
onlineLabel.Font = Enum.Font.GothamBold
onlineLabel.TextSize = 8
onlineLabel.TextXAlignment = Enum.TextXAlignment.Right
onlineLabel.TextYAlignment = Enum.TextYAlignment.Center
onlineLabel.BackgroundTransparency = 1
onlineLabel.BorderSizePixel = 0
onlineLabel.Size = UDim2.new(0.4, 0, 1, 0)
onlineLabel.Position = UDim2.new(0.23, 0, 0, 0)
onlineLabel.Parent = rightContainer

local hamburgerButton = Instance.new("TextButton")
hamburgerButton.Name = "HamburgerButton"
hamburgerButton.Text = "≡"
hamburgerButton.TextColor3 = COLOR_WHITE
hamburgerButton.Font = Enum.Font.GothamBold
hamburgerButton.TextSize = 17
hamburgerButton.TextXAlignment = Enum.TextXAlignment.Center
hamburgerButton.TextYAlignment = Enum.TextYAlignment.Center
hamburgerButton.BackgroundTransparency = 1
hamburgerButton.BorderSizePixel = 0
hamburgerButton.Size = UDim2.new(0, 30, 1, 0)
hamburgerButton.Position = UDim2.new(1, -30, 0, 0)
hamburgerButton.Parent = rightContainer

-- Animação ao hover do hamburger
hamburgerButton.MouseEnter:Connect(function()
	local tween = TweenService:Create(hamburgerButton, TWEEN_INFO_FAST, {TextColor3 = COLOR_PURPLE_ACCENT})
	tween:Play()
end)

hamburgerButton.MouseLeave:Connect(function()
	local tween = TweenService:Create(hamburgerButton, TWEEN_INFO_FAST, {TextColor3 = COLOR_WHITE})
	tween:Play()
end)

-- ============================================================================
-- CRIAR ESPAÇO TRANSPARENTE (REDUZIDO 50%)
-- ============================================================================

local gapFrame = Instance.new("Frame")
gapFrame.Name = "TransparentGap"
gapFrame.Size = UDim2.new(0.78, 0, 0, 5)
gapFrame.Position = UDim2.new(0.11, 0, 0.05, 56)
gapFrame.BackgroundTransparency = 1
gapFrame.BorderSizePixel = 0
gapFrame.Parent = screenGui

-- ============================================================================
-- CRIAR MENU INFERIOR
-- ============================================================================

local contentMenu = Instance.new("Frame")
contentMenu.Name = "ContentMenu"
contentMenu.Size = UDim2.new(0.78, 0, 0.585, 0)
contentMenu.Position = UDim2.new(0.11, 0, 0.05, 66)
contentMenu.BackgroundColor3 = COLOR_BACKGROUND
contentMenu.BorderSizePixel = 0
contentMenu.Parent = screenGui

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0.05, 0)
contentCorner.Parent = contentMenu

local contentStroke = Instance.new("UIStroke")
contentStroke.Color = COLOR_PURPLE_ACCENT
contentStroke.Thickness = 0.5
contentStroke.Transparency = 0
contentStroke.LineJoinMode = Enum.LineJoinMode.Round
contentStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
contentStroke.Parent = contentMenu

local tabsContainer = Instance.new("Frame")
tabsContainer.Name = "TabsContainer"
tabsContainer.Size = UDim2.new(0.22, 0, 1, 0)
tabsContainer.Position = UDim2.new(0, 0, 0, 0)
tabsContainer.BackgroundTransparency = 1
tabsContainer.BorderSizePixel = 0
tabsContainer.Parent = contentMenu

local tabsPadding = Instance.new("UIPadding")
tabsPadding.PaddingTop = UDim.new(0, 13)
tabsPadding.PaddingLeft = UDim.new(0, 13)
tabsPadding.PaddingRight = UDim.new(0, 6)
tabsPadding.Parent = tabsContainer

local dividerLine = Instance.new("Frame")
dividerLine.Name = "DividerLine"
dividerLine.Size = UDim2.new(0, 1, 0.85, 0)
dividerLine.Position = UDim2.new(0.35, 0, 0.075, 0)
dividerLine.BackgroundColor3 = COLOR_PURPLE_ACCENT
dividerLine.BorderSizePixel = 0
dividerLine.Parent = contentMenu

local contentContainer = Instance.new("Frame")
contentContainer.Name = "ContentContainer"
contentContainer.Size = UDim2.new(0.78, 0, 1, 0)
contentContainer.Position = UDim2.new(0.22, 0, 0, 0)
contentContainer.BackgroundTransparency = 1
contentContainer.BorderSizePixel = 0
contentContainer.Parent = contentMenu

local contentPadding = Instance.new("UIPadding")
contentPadding.PaddingTop = UDim.new(0, 13)
contentPadding.PaddingBottom = UDim.new(0, 13)
contentPadding.PaddingLeft = UDim.new(0, 19)
contentPadding.PaddingRight = UDim.new(0, 19)
contentPadding.Parent = contentContainer

-- ============================================================================
-- FUNÇÃO PARA CRIAR TOGGLE (Com animações)
-- ============================================================================

local function createToggle(parent, scriptId, yOffset)
	local displayName = getDisplayName(scriptId)
	
	local toggleContainer = Instance.new("Frame")
	toggleContainer.Name = scriptId .. "Container"
	toggleContainer.Size = UDim2.new(1, 0, 0, 30)
	toggleContainer.Position = UDim2.new(0, 0, 0, yOffset)
	toggleContainer.BackgroundTransparency = 1
	toggleContainer.BorderSizePixel = 0
	toggleContainer.Parent = parent

	local toggleLabel = Instance.new("TextLabel")
	toggleLabel.Name = scriptId .. "Label"
	toggleLabel.Text = displayName
	toggleLabel.TextColor3 = COLOR_WHITE
	toggleLabel.Font = Enum.Font.GothamBold
	toggleLabel.TextSize = 12
	toggleLabel.BackgroundTransparency = 1
	toggleLabel.BorderSizePixel = 0
	toggleLabel.Size = UDim2.new(0.55, 0, 1, 0)
	toggleLabel.Position = UDim2.new(0, 0, 0, 0)
	toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
	toggleLabel.TextYAlignment = Enum.TextYAlignment.Center
	toggleLabel.Parent = toggleContainer

	local toggleButton = Instance.new("Frame")
	toggleButton.Name = scriptId .. "Button"
	toggleButton.Size = UDim2.new(0, 42, 0, 18)
	toggleButton.Position = UDim2.new(0.5, 0, 0.2, 0)
	toggleButton.BackgroundColor3 = COLOR_TOGGLE_OFF
	toggleButton.BorderSizePixel = 0
	toggleButton.Parent = toggleContainer

	local toggleCorner = Instance.new("UICorner")
	toggleCorner.CornerRadius = UDim.new(0, 9)
	toggleCorner.Parent = toggleButton

	local toggleCircle = Instance.new("Frame")
	toggleCircle.Name = scriptId .. "Circle"
	toggleCircle.Size = UDim2.new(0, 14, 0, 14)
	toggleCircle.Position = UDim2.new(0, 2, 0.5, -7)
	toggleCircle.BackgroundColor3 = COLOR_WHITE
	toggleCircle.BorderSizePixel = 0
	toggleCircle.Parent = toggleButton

	local circleCorner = Instance.new("UICorner")
	circleCorner.CornerRadius = UDim.new(0, 7)
	circleCorner.Parent = toggleCircle

	local isEnabled = false

	local clickableButton = Instance.new("TextButton")
	clickableButton.Name = scriptId .. "Clickable"
	clickableButton.Text = ""
	clickableButton.BackgroundTransparency = 1
	clickableButton.BorderSizePixel = 0
	clickableButton.Size = UDim2.new(0.5, 0, 1, 0)
	clickableButton.Position = UDim2.new(0.5, 0, 0, 0)
	clickableButton.Parent = toggleContainer

	-- Animação ao hover
	clickableButton.MouseEnter:Connect(function()
		local tween = TweenService:Create(toggleButton, TWEEN_INFO_FAST, {BackgroundTransparency = 0.1})
		tween:Play()
	end)

	clickableButton.MouseLeave:Connect(function()
		if not isEnabled then
			local tween = TweenService:Create(toggleButton, TWEEN_INFO_FAST, {BackgroundTransparency = 0})
			tween:Play()
		end
	end)

	clickableButton.MouseButton1Click:Connect(function()
		isEnabled = not isEnabled
		
		if isEnabled then
			local tweenButton = TweenService:Create(toggleButton, TWEEN_INFO, {BackgroundColor3 = COLOR_PURPLE_ACCENT})
			tweenButton:Play()
			
			local tweenCircle = TweenService:Create(toggleCircle, TWEEN_INFO, {Position = UDim2.new(0, 26, 0.5, -7)})
			tweenCircle:Play()
			
			if SCRIPT_URLS[scriptId] then
				executeScript(SCRIPT_URLS[scriptId].on, displayName, true)
			end
		else
			local tweenButton = TweenService:Create(toggleButton, TWEEN_INFO, {BackgroundColor3 = COLOR_TOGGLE_OFF})
			tweenButton:Play()
			
			local tweenCircle = TweenService:Create(toggleCircle, TWEEN_INFO, {Position = UDim2.new(0, 2, 0.5, -7)})
			tweenCircle:Play()
			
			if SCRIPT_URLS[scriptId] then
				executeScript(SCRIPT_URLS[scriptId].off, displayName, false)
			end
		end
	end)

	return toggleContainer
end

-- ============================================================================
-- FUNÇÃO PARA CRIAR TAB CONTENT
-- ============================================================================

local function createTabContent(tabName)
	local tabContent = Instance.new("Frame")
	tabContent.Name = tabName .. "Content"
	tabContent.Size = UDim2.new(1, 0, 1, 0)
	tabContent.Position = UDim2.new(0, 0, 0, 0)
	tabContent.BackgroundTransparency = 1
	tabContent.BorderSizePixel = 0
	tabContent.Visible = (tabName == "HOME")
	tabContent.Parent = contentContainer

	local contentWrapper = Instance.new("Frame")
	contentWrapper.Name = "Wrapper"
	contentWrapper.Size = UDim2.new(1, 0, 1, 0)
	contentWrapper.Position = UDim2.new(0, 0, 0, 0)
	contentWrapper.BackgroundColor3 = COLOR_CONTENT_BG
	contentWrapper.BorderSizePixel = 0
	contentWrapper.Parent = tabContent

	local wrapperCorner = Instance.new("UICorner")
	wrapperCorner.CornerRadius = UDim.new(0.02, 0)
	wrapperCorner.Parent = contentWrapper

	local leftColumn = Instance.new("Frame")
	leftColumn.Name = "LeftColumn"
	leftColumn.Size = UDim2.new(0.5, 0, 1, 0)
	leftColumn.Position = UDim2.new(0, 0, 0, 0)
	leftColumn.BackgroundTransparency = 1
	leftColumn.BorderSizePixel = 0
	leftColumn.Parent = contentWrapper

	local leftPadding = Instance.new("UIPadding")
	leftPadding.PaddingTop = UDim.new(0, 10)
	leftPadding.PaddingBottom = UDim.new(0, 10)
	leftPadding.PaddingLeft = UDim.new(0, 12)
	leftPadding.PaddingRight = UDim.new(0, 6)
	leftPadding.Parent = leftColumn

	local rightColumn = Instance.new("Frame")
	rightColumn.Name = "RightColumn"
	rightColumn.Size = UDim2.new(0.5, 0, 1, 0)
	rightColumn.Position = UDim2.new(0.5, 0, 0, 0)
	rightColumn.BackgroundTransparency = 1
	rightColumn.BorderSizePixel = 0
	rightColumn.Parent = contentWrapper

	local rightPadding = Instance.new("UIPadding")
	rightPadding.PaddingTop = UDim.new(0, 10)
	rightPadding.PaddingBottom = UDim.new(0, 10)
	rightPadding.PaddingLeft = UDim.new(0, 6)
	rightPadding.PaddingRight = UDim.new(0, 12)
	rightPadding.Parent = rightColumn

	local divider = Instance.new("Frame")
	divider.Name = "Divider"
	divider.Size = UDim2.new(0, 1, 0.9, 0)
	divider.Position = UDim2.new(0.47, 0, 0.05, 0)
	divider.BackgroundColor3 = COLOR_WHITE
	divider.BackgroundTransparency = 0.5
	divider.BorderSizePixel = 0
	divider.Parent = contentWrapper

	local tabData = tabContents[tabName]
	if tabData then
		for i = 1, #tabData.left do
			createToggle(leftColumn, tabData.left[i], (i - 1) * 31)
		end

		for i = 1, #tabData.right do
			createToggle(rightColumn, tabData.right[i], (i - 1) * 31)
		end
	end

	return tabContent
end

-- ============================================================================
-- CRIAR TODAS AS ABAS
-- ============================================================================

for _, tabName in ipairs(allTabs) do
	tabContentFrames[tabName] = createTabContent(tabName)
end

-- ============================================================================
-- CRIAR BOTÕES DE ABAS (Com animações)
-- ============================================================================

for index, tabName in ipairs(allTabs) do
	local yOffset = (index - 1) * 42

	local tabFrame = Instance.new("Frame")
	tabFrame.Name = tabName .. "TabFrame"
	tabFrame.Size = UDim2.new(1, 0, 0, 33)
	tabFrame.Position = UDim2.new(0, 0, 0, yOffset)
	tabFrame.BackgroundTransparency = 1
	tabFrame.BorderSizePixel = 0
	tabFrame.Parent = tabsContainer

	local tabButton = Instance.new("TextButton")
	tabButton.Name = tabName .. "Button"
	tabButton.Text = tabName
	tabButton.TextColor3 = COLOR_WHITE
	tabButton.Font = Enum.Font.GothamBold
	tabButton.TextSize = 16
	tabButton.BackgroundTransparency = 1
	tabButton.BorderSizePixel = 0
	tabButton.Size = UDim2.new(1, 0, 1, 0)
	tabButton.TextXAlignment = Enum.TextXAlignment.Right
	tabButton.TextYAlignment = Enum.TextYAlignment.Center
	tabButton.Parent = tabFrame

	local tabPadding = Instance.new("UIPadding")
	tabPadding.PaddingRight = UDim.new(0, 8)
	tabPadding.Parent = tabButton

	local indicator = Instance.new("Frame")
	indicator.Name = tabName .. "Indicator"
	indicator.Size = UDim2.new(0, 4, 0.6, 0)
	indicator.Position = UDim2.new(0, 0, 0.2, 0)
	indicator.BackgroundColor3 = COLOR_PURPLE_ACCENT
	indicator.BorderSizePixel = 0
	indicator.Visible = (tabName == "HOME")
	indicator.Parent = tabFrame

	tabReferences[tabName] = {
		button = tabButton,
		indicator = indicator
	}

	-- Animação ao hover das abas
	tabButton.MouseEnter:Connect(function()
		if selectedTab ~= tabName then
			local tween = TweenService:Create(tabButton, TWEEN_INFO_FAST, {TextColor3 = COLOR_PURPLE_ACCENT})
			tween:Play()
		end
	end)

	tabButton.MouseLeave:Connect(function()
		if selectedTab ~= tabName then
			local tween = TweenService:Create(tabButton, TWEEN_INFO_FAST, {TextColor3 = COLOR_WHITE})
			tween:Play()
		end
	end)

	tabButton.MouseButton1Click:Connect(function()
		selectedTab = tabName

		for tabNameKey, ref in pairs(tabReferences) do
			ref.indicator.Visible = false
			
			local tween = TweenService:Create(ref.button, TWEEN_INFO, {TextColor3 = COLOR_WHITE})
			tween:Play()
			
			if tabContentFrames[tabNameKey] then
				tabContentFrames[tabNameKey].Visible = false
			end
		end

		indicator.Visible = true
		
		local tweenSelected = TweenService:Create(tabButton, TWEEN_INFO, {TextColor3 = COLOR_PURPLE_ACCENT})
		tweenSelected:Play()
		
		if tabContentFrames[tabName] then
			tabContentFrames[tabName].Visible = true
		end

		print("[GS MENU] Aba selecionada: " .. tabName)
	end)
end

-- ============================================================================
-- SISTEMA DE DRAG
-- ============================================================================

headerBar.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragState.isDragging = true
		dragState.dragStart = input.Position
		dragState.startPos = headerBar.Position

		dragState.dragInput = input.Changed:Connect(function()
			if dragState.isDragging then
				local delta = input.Position - dragState.dragStart
				headerBar.Position = dragState.startPos + UDim2.new(0, delta.X, 0, delta.Y)
				contentMenu.Position = dragState.startPos + UDim2.new(0, delta.X, 0, delta.Y + 46)
				gapFrame.Position = dragState.startPos + UDim2.new(0, delta.X, 0, delta.Y + 36)
			end
		end)
	end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		if dragState.isDragging then
			dragState.isDragging = false
			if dragState.dragInput then
				dragState.dragInput:Disconnect()
				dragState.dragInput = nil
			end
		end
	end
end)

print("[GS MENU v4 FIXED] ✓ Menu completo inicializado!")
print("[GS MENU v4 FIXED] ✓ Sistema de Loadstring ativo!")
print("[GS MENU v4 FIXED] ✓ Todas as abas funcionais!")
print("[GS MENU v4 FIXED] ✓ Animações suaves ativadas!")
print("[GS MENU v4 FIXED] ✓ BREV customizados por categoria!")
print("[GS MENU v4 FIXED] ✓ Links temporários adicionados!")