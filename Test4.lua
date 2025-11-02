pcall(function()
    local key = "SOLIAR"
    local script_url = "https://raw.githubusercontent.com/lucphuong/Minhscript/main/Soliarhubbeta2.lua"

    local function Notify(title, text, time)
        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = title;
                Text = text;
                Duration = time or 5;
            })
        end)
    end

    Notify("Soliar Hub", "🔐 Hệ thống Key đang khởi động...", 3)

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SoliarKeyGui"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game.CoreGui

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 320, 0, 170)
    Frame.Position = UDim2.new(0.5, -160, 0.5, -85)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    pcall(function() Frame.Draggable = true end)

    local Title = Instance.new("TextLabel", Frame)
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.BackgroundTransparency = 1
    Title.Text = "🔑 Nhập key để tiếp tục"
    Title.TextColor3 = Color3.fromRGB(255,255,255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 18

    local TextBox = Instance.new("TextBox", Frame)
    TextBox.Size = UDim2.new(0.9, 0, 0, 40)
    TextBox.Position = UDim2.new(0.05, 0, 0.35, 0)
    TextBox.PlaceholderText = "Nhập key..."
    TextBox.ClearTextOnFocus = false
    TextBox.Text = ""
    TextBox.Font = Enum.Font.SourceSans
    TextBox.TextSize = 18
    TextBox.TextColor3 = Color3.fromRGB(255,255,255)
    TextBox.BackgroundColor3 = Color3.fromRGB(50,50,50)

    local Button = Instance.new("TextButton", Frame)
    Button.Size = UDim2.new(0.9, 0, 0, 36)
    Button.Position = UDim2.new(0.05, 0, 0.65, 0)
    Button.Text = "Xác nhận"
    Button.Font = Enum.Font.GothamBold
    Button.TextSize = 18
    Button.TextColor3 = Color3.fromRGB(255,255,255)
    Button.BackgroundColor3 = Color3.fromRGB(60,180,75)

    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer

    local function load_remote()
        Notify("Soliar Hub", "Đang tải script...", 4)
        local ok, res = pcall(function()
            return game:HttpGet(script_url, true)
        end)
        if not ok or not res or res == "" then
            Notify("Soliar Hub", "❌ Không tải được script!", 5)
            return
        end
        local fn, err = loadstring(res)
        if not fn then
            Notify("Soliar Hub", "⚠️ Lỗi biên dịch script!", 5)
            return
        end
        fn()
        Notify("Soliar Hub", "🚀 Script đã khởi chạy thành công!", 5)
    end

    Button.MouseButton1Click:Connect(function()
        local inputKey = tostring(TextBox.Text or "")
        if inputKey == key then
            Notify("Soliar Hub", "✅ Key chính xác! Đang tải script...", 3)
            pcall(function() ScreenGui:Destroy() end)
            load_remote()
        else
            Notify("Soliar Hub", "Key sai! Bạn sẽ bị kick.", 3)
            wait(1)
            pcall(function()
                if localPlayer and localPlayer.Kick then
                    localPlayer:Kick("key sai r nhóc")
                end
            end)
        end
    end)

    TextBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            Button:Activate()
        end
    end)
end)
