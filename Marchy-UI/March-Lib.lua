local library = {}

local FindLibrary = game:GetService("CoreGui"):FindFirstChild("UI Library")
if game:GetService("CoreGui"):FindFirstChild("UI Library") then
	game:GetService("CoreGui"):FindFirstChild("UI Library"):Destroy()
end

local MarchLib = Instance.new("ScreenGui")
MarchLib.Name = "UI Library"
protect_gui(MarchLib)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightControl then
        MarchLib.Enabled = not MarchLib.Enabled
    end
end)

function library:CreateWindow(WindowName)
    local Holder = Instance.new("ImageLabel")
    local Window = Instance.new("Frame")
    local WindowTitle = Instance.new("TextLabel")
    local UIListLayout = Instance.new("UIListLayout")
    
    Window.Name = "Window"
    Window.Parent = MarchLib
    Window.BackgroundColor3 = Color3.fromRGB(255, 192, 203)
    Window.Position = UDim2.new(0.5, -150, 0.5, -150)
    Window.Size = UDim2.new(0, 300, 0, 300)
    Window.Style = Enum.FrameStyle.DropShadow
    Window.Visible = true
    
    WindowTitle.Name = "WindowTitle"
    WindowTitle.Parent = Window
    WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowTitle.Position = UDim2.new(0, 0, 0, 0)
    WindowTitle.Size = UDim2.new(0, 300, 0, 30)
    WindowTitle.Font = Enum.Font.SourceSans
    WindowTitle.Text = WindowName
    WindowTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
    WindowTitle.TextSize = 20.000
    WindowTitle.TextStrokeTransparency = 0.000
    WindowTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    UIListLayout.Parent = Window
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)
    
local xOffset = 20
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local function Fade(Object,FadeAmount,Delay)
local ToTween = Object
local Tweener = TweenService:Create(ToTween,TweenInfo.new(Delay),{TextTransparency = FadeAmount})
		Tweener:Play()
		end