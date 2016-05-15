debug = true
require 'classes'
require 'AI layer'
require 'input layer'
require 'update layer'
require 'init'
require 'graphics'

--print(agents[0].name)
--print(agents[0].numItemsInv)
for i = 0, agents[0].numItemsInv do
	--print(agents[0].inv[i])
	--print(i)
end

function love.load(arg)
	--stuff
end

function love.update(dt)
	--stuff
end

function love.draw()
	--stuff
	render()
end