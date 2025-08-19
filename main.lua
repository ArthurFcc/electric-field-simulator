-- Gravitational field strength
-- g = GM/r2
-- G => 6.674 * 10 on -11
-- M => object mass
-- r => distance from the center of the mass and the
-- measurement point

local centerX = love.graphics.getWidth() / 2
local centerY = love.graphics.getHeight() / 2

local Moon = {}

local moonInstance = {}
local angle = 0

function Moon:new(args)
	local instance = {
		position = { x = args.x, y = args.y },
		mass = 10, -- Change to recieve mass
		radius = 10, -- Change to recieve radius
		object = {},
	}
	setmetatable(instance, self)
	self.__index = self
	return instance
end

function love.draw()
	love.graphics.circle("line", centerX, centerY, 30)
	love.graphics.circle("fill", moonInstance.position.x, moonInstance.position.y, moonInstance.radius)
end

function love.load()
	moonInstance = Moon:new({
		x = centerX + 150,
		y = centerY + 150,
	})
end

function love.update(dt)
	moonInstance.position = {
		x = centerX + 150 * math.cos(angle),
		y = centerY + 150 * math.sin(angle),
	}

	angle = angle + dt
end
