local vstup = script.Parent

-- === NASTAVENIA ===
local NAZOV_VYSTUPU = "TeleportVystup"
local VYSKA_NAD_VYSTUPOM = 3

vstup.Anchored = true

vstup.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	
	if humanoid and rootPart and humanoid.Health > 0 then
		local vystup = workspace:FindFirstChild(NAZOV_VYSTUPU)
		
		if vystup then
			rootPart.CFrame = CFrame.new(
				vystup.Position + Vector3.new(0, VYSKA_NAD_VYSTUPOM, 0)
			)
		end
	end
end)