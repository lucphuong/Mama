loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

local Window = MakeWindow({
    Hub = {
        Title = "Linh tinh hub",
        Animation = "Đang lên chờ tí",
    },
    Key = {
        KeySystem = false
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=12284374516",
    Size = {60, 60},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

pcall(function() setfpscap(120) end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RainbowFPS"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 1000
screenGui.IgnoreGuiInset = true
screenGui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 120, 0, 30)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundTransparency = 1
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Font = Enum.Font.FredokaOne
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.TextStrokeTransparency = 0.2
textLabel.Text = "FPS: 0"
textLabel.Parent = frame

task.spawn(function()
    local hue = 0
    while true do
        hue = (hue + 0.005) % 1
        textLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
        RunService.RenderStepped:Wait()
    end
end)

local frameCount = 0
local lastUpdate = tick()
RunService.RenderStepped:Connect(function()
    frameCount = frameCount + 1
    local now = tick()
    if now - lastUpdate >= 1 then
        local fps = math.floor(frameCount / (now - lastUpdate))
        textLabel.Text = "FPS: " .. tostring(fps)
        frameCount = 0
        lastUpdate = now
    end
end)

------ Tab
local Tab0o = MakeTab({Name = "Chính"})
local Tab1o = MakeTab({Name = "Về"})

------- BUTTON

AddButton(Tab0o, {
    Name = "jump & speed",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/main/Jumpspeed.lua", true))()
    end
})

AddButton(Tab0o, {
    Name = "bất tử",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/Roblox-Scripts/refs/heads/main/God%20Mode%20Script%20Universal"))()
    end
})

AddButton(Tab0o, {
    Name = "No clip",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/refs/heads/main/Noclip.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "Inf jump",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/refs/heads/main/Infjump.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "bay v3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})

AddButton(Tab0o, {
    Name = "Đóng băng",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/AkJS0PC7'))()
    end
})

AddButton(Tab0o, {
    Name = "r15 animation",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxten-Keyes/music/refs/heads/main/music%23%5Bscripts%5D/music%23%5Bmiscellaneous%5D/music%23%5Bfe%20r15%20animation%20player%5D.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "Lọ r6",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})

AddButton(Tab0o, {
    Name = "Lọ r15",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})

AddButton(Tab0o, {
    Name = "ngưng động thời gian",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/refs/heads/main/Stoptime.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "Sức mạnh sigma",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Scripts/refs/heads/main/RSC%20Hub%20by%20gObl00x.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "Troll slap tower",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EnesXVC/FireParts/main/Script"))()
    end
})

AddButton(Tab0o, {
    Name = "Emote troll r15",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "tàn hình",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Awesome-Invisible-man-21074"))()
    end
})

AddButton(Tab0o, {
    Name = "Nuke",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/-FE-Nuke-Thai-game-32498"))()
    end
})

AddButton(Tab0o, {
    Name = "nhấn vào ăn cứt",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheqopThe/robax/refs/heads/main/jumpscare.lua"))()
    end
})

AddButton(Tab0o, {
    Name = "Inf yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

AddButton(Tab0o, {
    Name = "linh tinh",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/amdzy088/Slap-spam-op/refs/heads/main/Slap%20spam%20op"))()
    end
})

AddButton(Tab0o, {
    Name = "Cyborg",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VylikGylik/Script/refs/heads/main/Anime%20Slap%20Tower"))()
    end
})

AddButton(Tab1o, {
    Name = "Về",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/85e904ae1ff30824gvcvhccnbc1aa007fc7324f8f.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "Tên tác giả",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UIvoi"))()
    end
})

AddButton(Tab1o, {
    Name = "Minh",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Mainlinhtinh.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "ngày tạo script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/FindFruitsother.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "ngày 2/11/2025",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUMlu"))()
    end
})
