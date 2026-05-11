local checkpoint = script.Parent
local aktivovany = false

checkpoint.Touched:Connect(function(hit)
	if aktivovany then return end
	
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	
	if humanoid and humanoid.Health > 0 then
		local hrac = game.Players:GetPlayerFromCharacter(character)
		if hrac then
			hrac:SetAttribute("Checkpoint", checkpoint.Position + Vector3.new(0, 3, 0))
			checkpoint.BrickColor = BrickColor.new("Bright green")
			aktivovany = true
		end
	end
end)