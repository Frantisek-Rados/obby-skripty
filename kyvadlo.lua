local kyvadlo = script.Parent

local RYCHLOST = 2
local MAX_UHOL = 30
local vrchKyvadla = kyvadlo.Position + Vector3.new(0, kyvadlo.Size.Y / 2, 0)

kyvadlo.Anchored = true

while true do
	local uhol = math.sin(tick() * RYCHLOST) * MAX_UHOL
	kyvadlo.CFrame = CFrame.new(vrchKyvadla) * CFrame.Angles(math.rad(uhol), 0, 0) * CFrame.new(0, -kyvadlo.Size.Y / 2, 0)
	wait(0.02)
end