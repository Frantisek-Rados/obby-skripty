local lava = script.Parent
local povodnaPozicia = lava.Position
local CAS_PADU = 3

lava.Anchored = false

while true do
	wait(0.5)
	lava.Anchored = true
	lava.Position = povodnaPozicia
	wait(0.3)
	lava.Anchored = false
	wait(CAS_PADU)
end