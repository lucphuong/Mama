if not game:IsLoaded() then game.Loaded:Wait() end

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local Window = Rayfield:CreateWindow({
    Name = "🌙 Linh Tinh Hub",
    LoadingTitle = "Đang khởi động...",
    LoadingSubtitle = "By Minh",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "LinhTinhHub",
        FileName = "Settings"
    },
    KeySystem = false
})

local Tab0 = Window:CreateTab("⚙️ Chính")
local Tab1 = Window:CreateTab("📖 Về")

-------------------------------------------------
-- 🧩 NÚT TRONG TAB CHÍNH
-------------------------------------------------

Tab0:CreateButton({
    Name = "Jump & Speed",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/main/Jumpspeed.lua", true))()
    end
})

Tab0:CreateButton({
    Name = "Bất tử",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/Roblox-Scripts/main/God%20Mode%20Script%20Universal.lua"))()
    end
})

Tab0:CreateButton({
    Name = "No Clip",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/main/Noclip.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Inf Jump",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/main/Infjump.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Bay V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})

Tab0:CreateButton({
    Name = "Đóng băng",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/AkJS0PC7"))()
    end
})

Tab0:CreateButton({
    Name = "R15 Animation",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxten-Keyes/music/main/music_scripts/fe_r15_animation_player.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Lọ R6",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})

Tab0:CreateButton({
    Name = "Lọ R15",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})

Tab0:CreateButton({
    Name = "Ngưng động thời gian",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucphuong/Bloxfruit/main/Stoptime.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Sức mạnh Sigma",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/My-Scripts/main/RSC%20Hub%20by%20gObl00x.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Troll Slap Tower",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EnesXVC/FireParts/main/Script.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Emote Troll R15",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/main/GUIS/Emotes.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Tàng hình",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Awesome-Invisible-man-21074.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Nuke",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/FE-Nuke-Thai-game-32498.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Nhấn để troll",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheqopThe/robax/main/jumpscare.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Inf Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

Tab0:CreateButton({
    Name = "Linh Tinh",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/amdzy088/Slap-spam-op/main/Slap%20spam%20op.lua"))()
    end
})

Tab0:CreateButton({
    Name = "Cyborg",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VylikGylik/Script/main/Anime%20Slap%20Tower.lua"))()
    end
})

-------------------------------------------------
-- 📜 TAB VỀ
-------------------------------------------------

Tab1:CreateButton({
    Name = "Về",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/85e904ae1ff30824gvcvhccnbc1aa007fc7324f8f.lua"))()
    end
})

Tab1:CreateButton({
    Name = "Tên tác giả",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UIvoi.lua"))()
    end
})

Tab1:CreateButton({
    Name = "Minh",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/main/Mainlinhtinh.lua"))()
    end
})

Tab1:CreateButton({
    Name = "Ngày tạo script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/main/FindFruitsother.lua"))()
    end
})

Tab1:CreateButton({
    Name = "Ngày 2/11/2025",
    Callback = function()
        repeat task.wait() until game:IsLoaded()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/main/TEDDYHUB-FREEMIUM.lua"))()
    end
})

-------------------------------------------------
-- 📊 FPS HIỂN THỊ
-------------------------------------------------
local RunService = game:GetService("RunService")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FPS_Display"
screenGui.Parent = game.CoreGui

local label = Instance.new("TextLabel", screenGui)
label.Size = UDim2.new(0, 120, 0, 30)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Text = "FPS: 0"
label.Font = Enum.Font.FredokaOne
label.TextScaled = true
label.TextStrokeTransparency = 0.2

local hue, frames, last = 0, 0, tick()

RunService.RenderStepped:Connect(function()
    hue = (hue + 0.005) % 1
    frames += 1
    label.TextColor3 = Color3.fromHSV(hue, 1, 1)
    local now = tick()
    if now - last >= 1 then
        label.Text = "FPS: " .. math.floor(frames / (now - last))
        frames = 0
        last = now
    end
end)
