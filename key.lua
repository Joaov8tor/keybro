-- UI Setup
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local Button = Instance.new("TextButton")

-- Chave
local correctKey = "x11hh7"

-- Configuração da UI
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "KeyUI"

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0.3, 0, 0.3, 0)
Frame.Position = UDim2.new(0.35, 0, 0.35, 0)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)

TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 0.2, 0)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Text = "Digite a chave:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18
TextLabel.BackgroundTransparency = 1

TextBox.Parent = Frame
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextSize = 18
TextBox.PlaceholderText = "Insira a key"

Button.Parent = Frame
Button.Size = UDim2.new(0.8, 0, 0.2, 0)
Button.Position = UDim2.new(0.1, 0, 0.6, 0)
Button.Text = "Confirmar"
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 20

-- Função para verificar a chave
Button.MouseButton1Click:Connect(function()
    local userKey = TextBox.Text
    if userKey == correctKey then
        -- Chave correta, carrega o script
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joaov8tor/script544/refs/heads/main/scripts222"))()
        ScreenGui:Destroy()  -- Fecha a UI
    else
        -- Chave incorreta, mostra mensagem de erro
        TextLabel.Text = "Chave incorreta! Tente novamente."
        TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)
