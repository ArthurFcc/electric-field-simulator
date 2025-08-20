local BaseEntity = require("base_entity")

local Object = {}

setmetatable(Object, { __index = BaseEntity })

-- Will be creating a Moon for now
-- Need to consider mass in a different way

local center = {
	x = love.graphics.getWidth() / 2,
	y = love.graphics.getHeight() / 2,
}

function Object:new()
	-- Change magical numbers
	local position = {
		x = center.x + 150, -- Distance from center
		y = center.y + 150,
	}
	local instance = BaseEntity.new(self, "Moon", 7.34e22, 5, position, { 1, 1, 1 })
	instance.angle = 0
	return instance
end

function Object:orbit(dt, speed)
	self.position = {
		x = center.x + 150 * math.cos(self.angle),
		y = center.y + 150 * math.sin(self.angle),
	}

	self.angle = self.angle + dt
	print(self.angle)
end

return Object
