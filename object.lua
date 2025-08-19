local BaseEntity = require("base_entity")

local Object = {}

setmetatable(Object, { __index = BaseEntity })

-- Will be creating a Moon for now
-- Need to consider mass in a different way
function Object:new()
	local centralPosition = {
		x = love.graphics.getWidth() / 2,
		y = love.graphics.getHeight() / 2,
	}

	-- Change magical numbers
	local position = {
		x = centralPosition.x + 150,
		y = centralPosition.y + 150,
	}
	local instance = BaseEntity:new("Moon", 7.3, 5, position, { 1, 1, 1 })
	return instance
end

return Object
