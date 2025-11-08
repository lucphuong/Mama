local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Seven7-lua/Roblox/refs/heads/main/Librarys/Orion/Orion.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "🌙 Linh Tinh Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "LinhTinhHub"
})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Linh Tinh Hub",
	Content = "Đã tải thành công!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- 🦘 Infinite Jump
local infjumpEnabled = false
MainTab:AddToggle({
	Name = "🦘 Infinite Jump",
	Default = false,
	Callback = function(Value)
		infjumpEnabled = Value
	end    
})

game:GetService("UserInputService").JumpRequest:Connect(function()
	if infjumpEnabled then
		local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if hum then hum:ChangeState("Jumping") end
	end
end)

-- ✈️ Fly
local flying = false
local flySpeed = 60
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:FindFirstChildOfClass("Humanoid")

local bv
local bg

local function startFly()
	if not bv then
		bv = Instance.new("BodyVelocity")
		bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
		bv.Velocity = Vector3.zero
		bv.Parent = root
	end
	if not bg then
		bg = Instance.new("BodyGyro")
		bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.CFrame = root.CFrame
		bg.Parent = root
	end
end

local function stopFly()
	if bv then bv:Destroy() bv = nil end
	if bg then bg:Destroy() bg = nil end
end

MainTab:AddToggle({
	Name = "✈️ Fly (G để bật/tắt)",
	Default = false,
	Callback = function(Value)
		flying = Value
		if flying then startFly() else stopFly() end
	end
})

game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.G then
		flying = not flying
		if flying then
			startFly()
			OrionLib:MakeNotification({Name="Fly", Content="🕊️ Đã bật bay", Time=2})
		else
			stopFly()
			OrionLib:MakeNotification({Name="Fly", Content="🛬 Đã tắt bay", Time=2})
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if flying and bv and bg then
		local dir = Vector3.zero
		local cam = workspace.CurrentCamera
		local UIS = game:GetService("UserInputService")
		if UIS:IsKeyDown(Enum.KeyCode.W) then dir += cam.CFrame.LookVector end
		if UIS:IsKeyDown(Enum.KeyCode.S) then dir -= cam.CFrame.LookVector end
		if UIS:IsKeyDown(Enum.KeyCode.A) then dir -= cam.CFrame.RightVector end
		if UIS:IsKeyDown(Enum.KeyCode.D) then dir += cam.CFrame.RightVector end
		if dir.Magnitude > 0 then
			bv.Velocity = dir.Unit * flySpeed
			bg.CFrame = CFrame.new(root.Position, root.Position + dir)
		else
			bv.Velocity = Vector3.zero
		end
	end
end)

-- 🏃 Speed
local speed = 16
MainTab:AddSlider({
	Name = "🏃‍♂️ Speed",
	Min = 16,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		speed = Value
		local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if hum then hum.WalkSpeed = Value end
	end    
})

-- 💥 Jump Power
local jumppower = 50
MainTab:AddSlider({
	Name = "💥 Jump Power",
	Min = 50,
	Max = 300,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 5,
	ValueName = "Power",
	Callback = function(Value)
		jumppower = Value
		local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.UseJumpPower = true
			hum.JumpPower = Value
		end
	end    
})

-- 📍 Teleport tới người chơi
MainTab:AddDropdown({
	Name = "📍 Teleport tới người chơi",
	Default = "Chọn người chơi",
	Options = {},
	Callback = function(selected)
		local plr = game.Players:FindFirstChild(selected)
		if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			game.Players.LocalPlayer.Character:MoveTo(plr.Character.HumanoidRootPart.Position)
		end
	end
})

task.spawn(function()
	while task.wait(3) do
		local names = {}
		for _, v in pairs(game.Players:GetPlayers()) do
			table.insert(names, v.Name)
		end
		MainTab:UpdateDropdown("📍 Teleport tới người chơi", names)
	end
end)

-- 🖱️ Click TP
MainTab:AddToggle({
	Name = "🖱️ Click TP",
	Default = false,
	Callback = function(v)
		getgenv().ClickTP = v
	end
})

local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

UIS.InputBegan:Connect(function(input)
	if getgenv().ClickTP and input.UserInputType == Enum.UserInputType.MouseButton1 then
		if Mouse.Target then
			Player.Character:MoveTo(Mouse.Hit.p)
		end
	end
end)

-- 🔘 Toggle UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Toggleui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BackgroundTransparency = 0.5
Toggle.Position = UDim2.new(0, 0, 0.454, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Draggable = true

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0.2, 0)
Corner.Parent = Toggle

local Image = Instance.new("ImageLabel")
Image.Name = "Icon"
Image.Parent = Toggle
Image.Size = UDim2.new(1, 0, 1, 0)
Image.BackgroundTransparency = 1
Image.Image = "rbxassetid://117239677500065"

local Corner2 = Instance.new("UICorner")
Corner2.CornerRadius = UDim.new(0.2, 0)
Corner2.Parent = Image

Toggle.MouseButton1Click:Connect(function()
  OrionLib:ToggleUi()
end)

OrionLib:Init()
