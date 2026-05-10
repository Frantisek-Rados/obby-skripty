local part = script.Parent
local povodnaPozicia = part.Position
local povodnaFarba = part.BrickColor
local povodnyMaterial = part.Material

-- === NASTAVENIA ===
local CAS_BLIKANIA = 3
local RYCHLOST_BLIKANIA = 0.4
local CAS_OBNOVENIA = 4

-- === FARBY (TU SI ICH MEŇ!) ===
local FARBA_VAROVANIA = BrickColor.new("Bright red")    
local MATERIAL_VAROVANIA = Enum.Material.Neon           

part.Anchored = true
local uzPrebieha = false

part.Touched:Connect(function(hit)
	if uzPrebieha then return end
	
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	if humanoid and humanoid.Health > 0 then
		uzPrebieha = true
		
		-- Blikanie
		local zaciatokBlikania = tick()
		while tick() - zaciatokBlikania < CAS_BLIKANIA do
			part.BrickColor = FARBA_VAROVANIA      
			part.Material = MATERIAL_VAROVANIA      
			wait(RYCHLOST_BLIKANIA)
			part.BrickColor = povodnaFarba
			part.Material = povodnyMaterial
			wait(RYCHLOST_BLIKANIA)
		end
		
		-- Pád
		part.Anchored = false
		part.BrickColor = povodnaFarba
		part.Material = povodnyMaterial
		
		-- Obnova
		wait(CAS_OBNOVENIA)
		part.Anchored = true
		part.Position = povodnaPozicia
		
		uzPrebieha = false
	end
end)