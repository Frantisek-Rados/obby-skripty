local startZona = script.Parent
local replicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = replicatedStorage:WaitForChild("SekciaCasovacEvent")

startZona.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	
	if humanoid and humanoid.Health > 0 then
		local hrac = game.Players:GetPlayerFromCharacter(character)
		if hrac then
			remoteEvent:FireClient(hrac, "start")
		end
	end
end)