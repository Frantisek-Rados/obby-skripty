local model = script.Parent

local steny = {}
for _, child in ipairs(model:GetChildren()) do
	if child:IsA("Part") then
		table.insert(steny, child)
	end
end

if #steny < 2 then return end

local stena1 = steny[1]
local stena2 = steny[2]

stena1.Anchored = true
stena2.Anchored = true

local pociatocna1 = stena1.Position
local pociatocna2 = stena2.Position
local stred = (pociatocna1 + pociatocna2) / 2

local MEDZERA_PRI_ZOVRETI = 1

local ciel1 = stred - Vector3.new(MEDZERA_PRI_ZOVRETI / 2, 0, 0)
local ciel2 = stred + Vector3.new(MEDZERA_PRI_ZOVRETI / 2, 0, 0)

while true do
	for i = 1, 30 do
		stena1.Position = stena1.Position + (ciel1 - stena1.Position) * 0.1
		stena2.Position = stena2.Position + (ciel2 - stena2.Position) * 0.1
		wait(0.03)
	end
	
	wait(0.3)
	
	stena1.Position = pociatocna1
	stena2.Position = pociatocna2
	
	wait(0.3)
end