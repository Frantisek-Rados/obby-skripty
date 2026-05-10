local part = script.Parent

part.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	if humanoid and humanoid.Health > 0 then
		humanoid.Health = 0
	end
end)