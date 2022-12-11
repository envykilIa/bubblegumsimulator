--[[
BUBBLE GUM SIMULATOR GUI
Made by : fortunatesouls#8803
--]]

local eggType = "eggType"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Bubble Gum Simualtor", "DarkTheme")

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewToggle("Auto Blow", "Auto Blows Bubbles", function(bubbleBlow)
    if bubbleBlow then
        getgenv().bubbleBlow = true
        while getgenv().bubbleBlow ~= false do
local args = {
    [1] = "BlowBubble"
}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
wait()
end
    else
        getgenv().bubbleBlow = false
    end
end)

MainSection:NewToggle("Auto Sell", "Auto Sells Bubbles, Must Be Near Sell Area", function(autoSell)
    if autoSell then
        getgenv().autoSell = true
        while getgenv().autoSell ~= false do
            local args = {
                [1] = "SellBubble",
                [2] = "Sell"
            }
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
            wait()
        end
        
        else
            getgenv().autoSell = false
    end
end)


-- + Hatch Egg Thing, I will Add More Eggs For Different Worlds, In The Mean-Time This Option Is Use-less.
MainSection:NewDropdown("Hatch Egg", "Hatches Selected Egg, Must Be Near It.", {"Common Egg", "Spotted Egg", "Iceshard Egg", "Spikey Egg", "Candycane Egg", "Frosted Egg"}, function(eggType)
    local args = {
    [1] = "PurchaseEgg",
    [2] = eggType
}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
end)

-- List OF Egg Names, You Can Add These, Just Add "", Or At The End Make Sure It Ends As ""} Insted Of "",}.
--[[
EGG - Inferno Egg (CANDY WORLD)
EGG - Gummy Egg (CANDY WORLD)
EGG - Icecream Egg (CANDY WORLD)
EGG - Slushy Egg (CANDY WORLD)
--]]

local LocalPlayer = Window:NewTab("Local-Player")
local LocalPlayerSection = LocalPlayer:NewSection("Local-Player")

LocalPlayerSection:NewSlider("Walkspeed", "", 500, 16, function(speedValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedValue
end)

LocalPlayerSection:NewSlider("Jumppower", "", 500, 50, function(jumpValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpValue
end)

LocalPlayerSection:NewSlider("Field Of View {FOV}", "", 120, 0, function(fovValue)
    game.Workspace.CurrentCamera.FieldOfView = fovValue
end)

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Made by : fortunatesouls#8803")

local UISettings = Window:NewTab("UI Settings")
local UISettingsSection = UISettings:NewSection("UI Settings")

UISettingsSection:NewKeybind("GUI Toggle", "", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)
