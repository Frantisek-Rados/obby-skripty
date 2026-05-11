local laser = script.Parent
local stlp = laser.Parent.Stlp

-- === NASTAVENIA ===
local RYCHLOST = 360  -- Stupne za sekundu

laser.Anchored = true

while true do
	local vrchStlpa = stlp.Position + Vector3.new(0, stlp.Size.Y / 2, 0)
	local uhol = tick() * RYCHLOST
	
	laser.Position = vrchStlpa
	laser.CFrame = CFrame.new(vrchStlpa) * CFrame.Angles(0, 0, math.rad(uhol))
	
	wait(0.02)
end