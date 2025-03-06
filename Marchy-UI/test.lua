local MarchyUI = {}

-- Function to create a new window
function MarchyUI:newWindow(title, width, height)
    local window = Instance.new("Frame")
    window.Size = UDim2.new(0, width, 0, height)
    window.BackgroundColor3 = Color3.fromRGB(255, 192, 203) -- Pink background color
    window.BorderSizePixel = 0

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
