local podlozka = script.Parent

-- === NASTAVENIA ===
local SILA = 200
local DEBOUNCE_CAS = 1

podlozka.Anchored = true
local mozeVystrelit = true

podlozka.Touched:Connect(function(hit)
	if not mozeVystrelit then return end
	
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	local rootPart = hit.Parent:FindFirstChild("HumanoidRootPart")
	
	if humanoid and rootPart and humanoid.Health > 0 then
		mozeVystrelit = false
		
		local vystrel = Instance.new("BodyVelocity")
		vystrel.Velocity = Vector3.new(0, SILA, 0)
		vystrel.MaxForce = Vector3.new(100000, 100000, 100000)
		vystrel.Parent = rootPart
		
		game:GetService("Debris"):AddItem(vystrel, 0.2)
		
		wait(DEBOUNCE_CAS)
		mozeVystrelit = true
	end
end)