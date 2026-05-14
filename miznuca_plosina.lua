local plosina = script.Parent

local CAS_VIDITELNA = 2
local CAS_SKRYTA = 1.5

plosina.Anchored = true

while true do
	plosina.Transparency = 0.3
	plosina.CanCollide = true
	wait(CAS_VIDITELNA)
	plosina.Transparency = 1
	plosina.CanCollide = false
	wait(CAS_SKRYTA)
end