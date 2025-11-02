local url = "https://raw.githubusercontent.com/lucphuong/Minhscript/refs/heads/main/Linhtinhhub.lua"

local function notify(title, text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title;
            Text = text;
            Duration = 4;
        })
    end)
end

notify("Đang tải LinhTinhHub...")

local success, result = pcall(function()
    return game:HttpGet(url, true)
end)

if success and result and #result > 10 then
    notify("✅ Thành công", "Đã tải và khởi động LinhTinhHub!")
    local run, err = pcall(loadstring(result))
    if not run then
        notify("⚠️ Lỗi", "Không thể khởi động script!\nChi tiết: " .. tostring(err))
    end
else
    notify("❌ Thất bại", "Không thể tải LinhTinhHub, kiểm tra mạng hoặc link!")
end
