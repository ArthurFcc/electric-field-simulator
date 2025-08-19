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

local angle = 0

function love.draw()
	pivot:draw()
	object:draw()
end

function love.load()
	pivot = Pivot:new()
	object = Object:new()
end

function love.update(dt)
	--moonInstance.position = {
	--	x = centerX + 150 * math.cos(angle),
	--	y = centerY + 150 * math.sin(angle),
	--}

	--angle = angle + dt
end
