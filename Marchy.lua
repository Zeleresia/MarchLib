local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zeleresia/MarchLib/refs/heads/main/Marchy-UI/March-Lib1.lua"))();

local Window1 = library:CreateWindow("Marchy HUB");
Window1:Box("Box", function()
    end)

Window1:Slider("Speed Hack", 0, 50, 1, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
Window1:Slider("Jump Power", 0, 50, 1, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value    
    end)
WindowArea:Button("Cashier Area", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 4, 80)
end)
WindowArea:Button("Cook Area",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42, 4, 61)
end)
WindowArea:Button("Manager Area",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37, 4, 3)
end)
WindowArea:Button("Boxer Area",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 4, 31)
end)
WindowArea:Button("Supplier Area",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 13, -1020)
end)
WindowArea:Button("Delivery Area",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 4, -17)
end)

WindowDeliver:Button("A1", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194, 1, -474)
end)
WindowDeliver:Button("A2", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(187, 1, -640)
end)
WindowDeliver:Button("A3", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(190, 1, -824)
end)
WindowDeliver:Button("B1", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26, 1, -430)
end)
WindowDeliver:Button("B2", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30, 1, -480)
end)
WindowDeliver:Button("B3", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26, 1, -610)
end)
WindowDeliver:Button("B4", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26, 1, -664)
end)
WindowDeliver:Button("B5", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22, 1, -800)
end)
WindowDeliver:Button("B6", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26, 1, -836)
end)
WindowDeliver:Button("C1", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186, 1, -432)
end)
WindowDeliver:Button("C2", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186, 1, -612)
end)
WindowDeliver:Button("C3", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183, 1, -803)
end)
