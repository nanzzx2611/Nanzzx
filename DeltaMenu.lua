-- Delta Menu Sederhana
-- Dibuat untuk dijalankan via loadstring dari GitHub

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame utama
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 350)
frame.Position = UDim2.new(0.3, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = gui

-- Judul
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Delta Menu"
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.Parent = frame

-- Fungsi buat bikin tombol
local function CreateButton(name, yPos, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 35)
    btn.Position = UDim2.new(0, 10, 0, yPos)
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSans
    btn.TextSize = 18
    btn.Parent = frame

    btn.MouseButton1Click:Connect(callback)
end

-- Tombol menu
CreateButton("Event", 50, function() print("Event dibuka") end)
CreateButton("Player", 90, function() print("Player dibuka") end)
CreateButton("ESP", 130, function() print("ESP dibuka") end)
CreateButton("Aimbot", 170, function() print("Aimbot dibuka") end)
CreateButton("Teleport", 210, function() print("Teleport dibuka") end)
CreateButton("Cash", 250, function() print("Cash dibuka") end)

print("Delta Menu Loaded!")
