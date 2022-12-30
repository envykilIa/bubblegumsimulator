--[[
PLEASE READ: https://github.com/envykilIa/bubblegumsimulator/blob/main/egg_list.lua
TO GET MORE EGG NAMES, YOU CAN ADD ANY OF THEM TO THE LIST, MAKE SURE THEY START WITH
"Mossy Egg", IF ITS AT THE END JUST DO "Mossy Egg"} SINCE ITS THE END OF A TABLE
ALL EGG NAMES ARE CASE SENSITIVE.
--]]

--[[
  ____            _       _       _             ____                         ____    _                       _           _                  
 | __ )   _   _  | |__   | |__   | |   ___     / ___|  _   _   _ __ ___     / ___|  (_)  _ __ ___    _   _  | |   __ _  | |_    ___    _ __ 
 |  _ \  | | | | | '_ \  | '_ \  | |  / _ \   | |  _  | | | | | '_ ` _ \    \___ \  | | | '_ ` _ \  | | | | | |  / _` | | __|  / _ \  | '__|
 | |_) | | |_| | | |_) | | |_) | | | |  __/   | |_| | | |_| | | | | | | |    ___) | | | | | | | | | | |_| | | | | (_| | | |_  | (_) | | |   
 |____/   \__,_| |_.__/  |_.__/  |_|  \___|    \____|  \__,_| |_| |_| |_|   |____/  |_| |_| |_| |_|  \__,_| |_|  \__,_|  \__|  \___/  |_|   
                                                                                                                                          
Made By : fortunatesouls#8803 [All Credit Must Return To Me, If You Copy From This.]
Updated : 12/13/22
--]]

local Player = game.Players.LocalPlayer

if game.PlaceId == (2512643572) then
    
game:GetService('StarterGui'):SetCore("SendNotification", {
	Title = 'BGS GUI';
	Text = "Welcome : "..Player.Name.." ",
	Icon = "rbxassetid://6466161376";
	Duration = 3.4028235e+38;
	Button1 = 'Ok';
});

wait(0.69)

local executed = "Working"
local eggType = "eggType"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Bubble Gum Simualtor", "BloodTheme")

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

MainSection:NewToggle("Auto Sell [ Candy World ]", "Auto Sells Bubbles, Must Be Near Sell Area In Candy World", function(autoSell)
    if autoSell then
        getgenv().autoSell = true
        while getgenv().autoSell ~= false do
            local args = {
                [1] = "SellBubble",
                [2] = "CandySell"
            }
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
            wait()
        end
        
        else
            getgenv().autoSell = false
    end
end)

MainSection:NewToggle("Auto Sell [ Beach World ]", "Auto Sells Bubbles, Must Be Near Sell Area In Candy World", function(autoSell)
    if autoSell then
        getgenv().autoSell = true
        while getgenv().autoSell ~= false do
            local args = {
                [1] = "SellBubble",
                [2] = "BeachSell"
            }
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
            wait()
        end
        
        else
            getgenv().autoSell = false
    end
end)

MainSection:NewButton("Boost FPS", "Destroy's Some Useless Stuff In Workspace", function()
		game:GetService("Workspace").Platforms:Destroy()
		game:GetService("Workspace").PickupSpawns:Destroy()
		game:GetService("Workspace").Cutscenes:Destroy()
		game:GetService("Workspace").Pickups:Destroy()
		game:GetService("Workspace").Bubbles:Destroy()
		game:GetService("Workspace").Pets:Destroy()
		game:GetService("Workspace").Model:Destroy()
		game:GetService("Workspace").BubbleBoard:Destroy()
		game:GetService("Workspace").Sign:Destroy()
		game:GetService("Workspace").HatchBoard:Destroy()
		game:GetService("Workspace").VIPSign:Destroy()
		game:GetService("Workspace").GuessThatPet:Destroy()
		game:GetService("Workspace").Sign:Destroy()
		game:GetService("Workspace").Fireworks:Destroy()
		game:GetService("Workspace").EggSigns:Destroy()
		game:GetService("Workspace").TwitchSign:Destroy()
		game:GetService("Workspace").CreditsBoard:Destroy()
		game:GetService("Workspace").RankBoard:Destroy()
		game:GetService("Workspace").Sign:Destroy()
		game:GetService("Workspace").GumMachine:Destroy()
		game:GetService("Workspace").Podiums:Destroy()
		game:GetService("Workspace").TwitchSign:Destroy()
		game:GetService("Workspace").VIPDoor:Destroy()
		game:GetService("Workspace").GamesDoor:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Sign:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Mountains.Model:Destroy()
		game:GetService("Workspace").Trampolines:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Mountains.Model:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Sign:Destroy()
		game:GetService("Workspace").WorldDoor:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Ground.Part:Destroy()
		game:GetService("Workspace").Worlds.Overworld.Mountains.Model:Destroy()
		game:GetService("Workspace").Model.MeshPart:Destroy()
end)

MainSection:NewButton("Spin To Win", "Spins Prize Wheel", function()
    local args = {
        [1] = "SpinToWin"
    }
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
end)

MainSection:NewToggle("Auto Collect Chests", "Auto Collects Chest (IN OWNED WORLDS)", function(chestFunction)
    if chestFunction then
        getgenv().autoCollectChest = true
        while getgenv().autoCollectChest ~= false do
            local args = {
                [1] = "CollectChestReward",
                [2] = "The Floating Island"
            }
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
            wait(10)
            local args = {
                [1] = "CollectChestReward",
                [2] = "The Skylands"
            }
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
            wait(5)
            local args = {
                [1] = "CollectChestReward",
                [2] = "XP Island"
            }
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
        end
    else
        getgenv().autoCollectChest = false
    end
end)


MainSection:NewTextBox("Type Egg To Hatch", "This Is Case Sensitive, Check Link Below For Egg Names.", function(eggType)
	local args = {
        [1] = "PurchaseEgg",
        [2] = eggType
    }
    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
    print(eggType)
end)

-- + Hatch Egg Thing, I will Add More Eggs For Different Worlds, In The Mean-Time This Option Is Use-less.
MainSection:NewDropdown("Hatch Egg", "Hatches Selected Egg, Must Be Near It.", {"Common Egg", "Spotted Egg", "Ice Shard Egg", "Spikey Egg", "Candycane Egg", "Frosted Egg", "Jelly Egg", "Slushy Egg", "Gummy Egg", "Ice Cream Egg", "Dominus Egg", "Wind Up Egg", "Block Egg", "Toy Egg", "Coconut Egg", "Sand Egg", "Beach Egg", "Ballon Egg", "Water Egg", "Crab Egg"}, function(eggType)
    local args = {
    [1] = "PurchaseEgg",
    [2] = eggType
}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
end)

-- List OF Egg Names, You Can Add These, Just Add "", Or At The End Make Sure It Ends As ""} Insted Of "",}.
--[[

--]]

-- // MISC \\ --
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc [ COMING SOON ]")




-- // LOCAL-PLAYER \\ --
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

LocalPlayerSection:NewSlider("Gravity", "", 184, 1, function(gravityValue)
    Workspace.Gravity = gravityValue
end)

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Made by : fortunatesouls#8803")

local UISettings = Window:NewTab("UI Settings")
local UISettingsSection = UISettings:NewSection("UI Settings")

UISettingsSection:NewKeybind("GUI Toggle", "", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)

print(executed)
end
