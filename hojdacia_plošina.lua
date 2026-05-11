local plosina = script.Parent

-- === NASTAVENIA ===
local RYCHLOST = 2
local MAX_UHOL = 25
local STRED = plosina.Position

plosina.Anchored = true

while true do
	local uhol = math.sin(tick() * RYCHLOST) * MAX_UHOL
	plosina.CFrame = CFrame.new(STRED) * CFrame.Angles(0, 0, math.rad(uhol))
	wait(0.02)
end