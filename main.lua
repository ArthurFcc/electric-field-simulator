local Pivot = require("pivot")
local Object = require("object")

-- Gravitational field strength
-- g = GM/r2
-- G => 6.674 * 10 on -11
-- M => object mass
-- r => distance from the center of the mass and the
-- measurement point

local pivot
local object

function love.draw()
	pivot:draw()
	object:draw()
end

function love.load()
	object = Object:new()
	pivot = Pivot:new(3.84e8, object.mass)
end

function love.update(dt)
	local objectSpeed = pivot:getOrbitObjectSpeed(3.84e8)
	object:orbit(dt, objectSpeed)
end
