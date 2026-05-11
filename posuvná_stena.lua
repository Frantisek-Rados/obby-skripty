local stena = script.Parent

-- === NASTAVENIA ===
local RYCHLOST = 3
local VZDIALENOST = 10
local SMER = "Z"
local CAS_PAUZY = 0.5

stena.Anchored = true

local startPozicia = stena.Position

while true do
	-- Posun dopredu
	local zaciatok = tick()
	while tick() - zaciatok < VZDIALENOST / RYCHLOST do
		if SMER == "X" then
			stena.Position = startPozicia + Vector3.new((tick() - zaciatok) * RYCHLOST, 0, 0)
		else
			stena.Position = startPozicia + Vector3.new(0, 0, (tick() - zaciatok) * RYCHLOST)
		end
		wait(0.02)
	end
	
	stena.Position = startPozicia + Vector3.new(0, 0, VZDIALENOST)
	wait(CAS_PAUZY)
	
	-- Posun späť
	zaciatok = tick()
	while tick() - zaciatok < VZDIALENOST / RYCHLOST do
		if SMER == "X" then
			stena.Position = startPozicia + Vector3.new(VZDIALENOST - (tick() - zaciatok) * RYCHLOST, 0, 0)
		else
			stena.Position = startPozicia + Vector3.new(0, 0, VZDIALENOST - (tick() - zaciatok) * RYCHLOST)
		end
		wait(0.02)
	end
	
	stena.Position = startPozicia
	wait(CAS_PAUZY)
end