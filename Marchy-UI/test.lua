local MarchyUI = {}

-- Function to create a new window
function MarchyUI:newWindow(title, width, height)
    local window = Instance.new("Frame")
    window.Size = UDim2.new(0, width, 0, height)
    window.BackgroundColor3 = Color3.fromRGB(255, 192, 203) -- Pink background color
    window.BorderSizePixel = 0
    -- Create a slider
    local slider = Instance.new("Frame")
    slider.Parent = window
    slider.Size = UDim2.new(1, -20, 0, 50)
    slider.Position = UDim2.new(0, 10, 0, 60)
    slider.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    slider.BorderSizePixel = 0

    local sliderBar = Instance.new("Frame")
    sliderBar.Parent = slider
    sliderBar.Size = UDim2.new(0, 0, 1, 0)
    sliderBar.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
    sliderBar.BorderSizePixel = 0

    local sliderLabel = Instance.new("TextLabel")
    sliderLabel.Parent = window
    sliderLabel.Size = UDim2.new(1, -20, 0, 50)
    sliderLabel.Position = UDim2.new(0, 10, 0, 120)
    sliderLabel.BackgroundTransparency = 1
    sliderLabel.Text = "Slider Value: 1"
    sliderLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    sliderLabel.Font = Enum.Font.SourceSans
    sliderLabel.TextSize = 24

    local function updateSlider(input)
        local relativePosition = (input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X
        local sliderValue = math.clamp(math.floor(relativePosition * 100), 1, 100)
        sliderBar.Size = UDim2.new(relativePosition, 0, 1, 0)
        sliderLabel.Text = "Slider Value: " .. sliderValue
    end

    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            updateSlider(input)
        end
    end)

    slider.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            updateSlider(input)
        end
    end)

    -- Create a button
    local button = Instance.new("TextButton")
    button.Parent = window
    button.Size = UDim2.new(0, 100, 0, 50)
    button.Position = UDim2.new(0, 10, 0, 180)
    button.BackgroundColor3 = Color3.fromRGB(0, 122, 204)
    button.Text = "Click Me"
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24

    button.MouseButton1Click:Connect(function()
        print("Button clicked!")
    end)
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Parent = window
    titleLabel.Size = UDim2.new(1, 0, 0, 50)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 24

    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Parent = window
    minimizeButton.Size = UDim2.new(0, 50, 0, 50)
    minimizeButton.Position = UDim2.new(1, -50, 0, 0)
    minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    minimizeButton.Text = "-"
    minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeButton.Font = Enum.Font.SourceSans
    minimizeButton.TextSize = 24

    minimizeButton.MouseButton1Click:Connect(function()
        window.Visible = not window.Visible
    end)

    return window
end

-- Function to create a new button
function MarchyUI:newButton(text, x, y, width, height, onClick)
    local button = Instance.new("TextButton")
    button.Position = UDim2.new(0, x, 0, y)
    button.Size = UDim2.new(0, width, 0, height)
    button.BackgroundColor3 = Color3.fromRGB(204, 204, 204)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24

    button.MouseButton1Click:Connect(onClick)

    return button
end

return MarchyUI
