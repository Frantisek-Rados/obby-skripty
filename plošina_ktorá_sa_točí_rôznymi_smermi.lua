local part = script.Parent
local speed = 1

while true do
	-- Otáčanie Y osou
	part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(speed), 0)
	
	-- Každé 3 sekundy zmeň smer
	wait(3)
	speed = -speed  -- Otoč smer
end