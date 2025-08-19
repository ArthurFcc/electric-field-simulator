local BaseEntity = require("base_entity")

local Pivot = {}

setmetatable(Pivot, { __index = BaseEntity })
-- Will be creating the Earth for now
function Pivot:new()
	local position = {
		x = love.graphics.getWidth() / 2,
		y = love.graphics.getHeight() / 2,
	}
	local instance = BaseEntity:new("Earth", 5.97, 60, position, { 0, 1, 0 })
	return instance
end

return Pivot
