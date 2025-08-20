local BaseEntity = require("base_entity")

local Pivot = {}

setmetatable(Pivot, { __index = BaseEntity })

-- Will be creating the Earth for now
function Pivot:new(objectDistance, objectMass)
	local position = {
		x = love.graphics.getWidth() / 2,
		y = love.graphics.getHeight() / 2,
	}
	local instance = BaseEntity.new(self, "Earth", 5.97e24, 60, position, { 0, 1, 0 })

	instance.gravitationalStrength = self.gravitationalStrength(instance, objectDistance, objectMass)
	return instance
end

function Pivot:gravitationalStrength(objectDistance, objectMass)
	local gConstant = 6.674E-11
	local gFieldStrength = (gConstant * self.mass * objectMass) / (objectDistance ^ 2)
	print(gFieldStrength)
	return gFieldStrength
end

function Pivot:getOrbitObjectSpeed(objectDistance)
	local gConstant = 6.674E-11
	local speed = math.sqrt((gConstant * self.mass) / objectDistance)
	print(string.format("%.2e", speed))
	return speed
end

return Pivot
