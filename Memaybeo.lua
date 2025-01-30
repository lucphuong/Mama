local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "Blox Fruits Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Chống phát hiện (Anti Ban)
local function AntiBan()
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if method == "Kick" then
            return
        end
        return oldNamecall(self, ...)
    end)
end

AntiBan()

-- **ESP Player**
local function ESPPlayers()
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")
            
            BillboardGui.Parent = v.Character.Head
            BillboardGui.Size = UDim2.new(0, 100, 0, 50)
            BillboardGui.Adornee = v.Character.Head
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
            BillboardGui.AlwaysOnTop = true
            
            TextLabel.Parent = BillboardGui
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Text = v.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            TextLabel.TextScaled = true
        end
    end
end

-- **ESP Trái Ác Quỷ**
local function ESPFruits()
    for _, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name:lower(), "fruit") then
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")
            
            BillboardGui.Parent = v
            BillboardGui.Size = UDim2.new(0, 100, 0, 50)
            BillboardGui.Adornee = v
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
            BillboardGui.AlwaysOnTop = true
            
            TextLabel.Parent = BillboardGui
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Text = "Trái Ác Quỷ!"
            TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            TextLabel.TextScaled = true
        end
    end
end

-- **Tạo Menu**
local MainTab = Window:MakeTab({ Name = "ESP", Icon = "rbxassetid://4483345998", PremiumOnly = false })

MainTab:AddButton({
    Name = "Bật ESP Người Chơi",
    Callback = function()
        ESPPlayers()
    end
})

MainTab:AddButton({
    Name = "Bật ESP Trái Ác Quỷ",
    Callback = function()
        ESPFruits()
    end
})

MainTab:AddButton({
    Name = "Anti Ban",
    Callback = function()
        AntiBan()
    end
})

OrionLib:Init()
