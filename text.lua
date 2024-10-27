-- Kiểm tra nếu getgenv() có các biến cần thiết
getgenv().checked = getgenv().checked or {}  -- Danh sách những người chơi đã được kiểm tra
getgenv().targ = getgenv().targ or nil       -- Người chơi hiện tại đang là mục tiêu
getgenv().killed = getgenv().killed or nil   -- Lưu người chơi đã bị giết

-- Hàm target giả lập, cần được điều chỉnh theo logic của bạn
function target()
    print("Selecting a new target...")
    -- Ví dụ: getgenv().targ = "NewTarget"
end

-- Skip Player function
function SkipPlayer()
    if getgenv().targ then
        getgenv().killed = getgenv().targ 
        table.insert(getgenv().checked, getgenv().targ)
        getgenv().targ = nil
        target()  -- Gọi hàm target để chọn mục tiêu mới
    else
        print("No target to skip.")
    end
end

-- Khởi chạy mã tự động
function StartScript()
    -- Các đoạn mã cài đặt trước khi bắt đầu script
    repeat
        wait()
    until game:IsLoaded()
    if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

    -- Gửi thông báo khi script bắt đầu
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Turbo Lite",
            Text = "Đang Tải",
            Duration = 1
        }
    )

    -- Tạo ScreenGui và nút Skip Player
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local skipButton = Instance.new("TextButton")
    skipButton.Size = UDim2.new(0, 200, 0, 50)
    skipButton.Position = UDim2.new(1, -210, 0, 10)
    skipButton.Text = "Skip Player"
    skipButton.TextSize = 24
    skipButton.Parent = screenGui
    
    skipButton.MouseButton1Click:Connect(function()
        SkipPlayer()
    end)

    -- Thêm các chức năng khác vào đây
    -- Ví dụ: Gọi hàm PostWebhook hoặc AdminLoggerMsg nếu cần thiết
    
    -- Đoạn mã khác của bạn
end

-- Gọi hàm StartScript để tự động chạy
StartScript()