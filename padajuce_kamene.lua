local kamen = script.Parent
local povodnaPozicia = kamen.Position
local CAS_PADU = 3

kamen.Anchored = false

while true do
	wait(0.5)
	kamen.Anchored = true
	kamen.Position = povodnaPozicia
	wait(0.5)
	kamen.Anchored = false
	wait(CAS_PADU)
end