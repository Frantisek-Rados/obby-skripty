local minca = script.Parent
local replicatedStorage = game:GetService("ReplicatedStorage")

local HODNOTA = 1
local VYSKA_NAD_ZEMOU = 2.5
local RYCHLOST_OTACANIA = 3

local povodnaPozicia = minca.Position
minca.Position = povodnaPozicia + Vector3.new(0, VYSKA_NAD_ZEMOU, 0)

minca.Anchored = true
minca.CanCollide = false

spawn(function()
	while minca.Parent do
		minca.CFrame = minca.CFrame * CFrame.Angles(0, math.rad(RYCHLOST_OTACANIA), 0)
		wait(0.01)
	end
end)

minca.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	
	if humanoid and humanoid.Health > 0 then
		local hrac = game.Players:GetPlayerFromCharacter(character)
		if hrac then
			local aktualneMince = hrac:GetAttribute("Mince") or 0
			hrac:SetAttribute("Mince", aktualneMince + HODNOTA)
			
			local remoteEvent = replicatedStorage:FindFirstChild("UpdateMinceEvent")
			if remoteEvent then
				remoteEvent:FireClient(hrac, aktualneMince + HODNOTA)
			end
			
			minca:Destroy()
		end
	end
end)