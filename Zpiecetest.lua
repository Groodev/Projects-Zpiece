local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- CFrame untuk lokasi quest dan monster
local questCFrame = CFrame.new(7767.24561, 128.480759, -5224.30127, -0.388562113, 2.20055352e-08, 0.921422541, 3.27933725e-09, 1, -2.24992434e-08, -0.921422541, -5.72069814e-09, -0.388562113) -- Ganti dengan CFrame lokasi quest
local monsterSpawnCFrame = CFrame.new(7961.8042, 128.480286, -5180.60889, 0.811651409, -8.90655016e-08, 0.584142089, 1.34374698e-08, 1, 1.33801279e-07, -0.584142089, -1.00750611e-07, 0.811651409) -- Ganti dengan CFrame lokasi monster

-- Fungsi untuk tweening
local function tweenTo(targetCFrame)
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = targetCFrame})
    tween:Play()
    tween.Completed:Wait() -- Tunggu sampai tween selesai
end

-- Fungsi untuk mengambil quest
local function takeQuest()
    -- Logika untuk mengambil quest
    print("Quest diambil!")
end

-- Fungsi utama
local function startQuest()
    -- Tween ke lokasi quest
    tweenTo(questCFrame)
    
    -- Ambil quest
    takeQuest()
    
    -- Tunggu sampai monster spawn (misalnya dengan menggunakan delay)
    wait(5) -- Ganti dengan logika yang sesuai untuk menunggu spawn monster
    
    -- Tween ke lokasi monster
    tweenTo(monsterSpawnCFrame)
end

-- Jalankan fungsi utama
startQuest()
