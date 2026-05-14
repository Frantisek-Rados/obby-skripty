local hrac = game.Players.LocalPlayer
local label = script.Parent.MinceLabel
local remoteEvent = game.ReplicatedStorage:WaitForChild("UpdateMinceEvent")

remoteEvent.OnClientEvent:Connect(function(noveMince)
	label.Text = "Mince: " .. tostring(noveMince)
end)