local library = loadstring(game:HttpGet("blabla/March-Lib.lua"))();

local Window1 = library:CreateWindow("Marchy HUB");
Window1:Box("Box", function()
    end)

Window1:Slider("Speed Hack", 0, 50, 1, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
Window1:Slider("Jump Power", 0, 50, 1, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value    
    end)
Window1:Button("Button",function()
print("Pushed")
end)