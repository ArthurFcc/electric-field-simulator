local BaseEntity = {}

function BaseEntity:new(name, mass, size, position, objectColor)
	local instance = {
		name = name,
		mass = mass,
		size = size,
		position = { x = position.x, y = position.y },
		objectColor = objectColor,
	}
	setmetatable(instance, self)
	self.__index = self
	return instance
end

function BaseEntity:draw()
	love.graphics.print(self.name, self.position.x, self.position.y)
	love.graphics.circle("line", self.position.x, self.position.y, self.size)
	love.graphics.setColor(self.objectColor)
end

return BaseEntity
