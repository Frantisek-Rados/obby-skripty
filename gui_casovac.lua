local hrac = game.Players.LocalPlayer
local event = game.ReplicatedStorage:WaitForChild("SekciaCasovacEvent")
local playerGui = hrac:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Parent = playerGui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 200, 0, 40)
label.Position = UDim2.new(0.5, -100, 0.2, 0)
label.Text = ""
label.TextSize = 30
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1
label.Font = Enum.Font.GothamBold
label.TextXAlignment = Enum.TextXAlignment.Center
label.Parent = gui

local casBezi = false
local zaciatok = 0

event.OnClientEvent:Connect(function(akcia)
	if akcia == "start" then
		zaciatok = tick()
		casBezi = true
		
		spawn(function()
			while casBezi do
				local uplynulo = tick() - zaciatok
				label.Text = "⏱️ " .. string.format("%.1f", uplynulo) .. "s"
				wait(0.05)
			end
		end)
		
	elseif akcia == "stop" then
		casBezi = false
		local vysledok = tick() - zaciatok
		label.Text = "✅ " .. string.format("%.1f", vysledok) .. "s"
		wait(3)
		label.Text = ""
	end
end)