function mouseInBounds(x, y, w, h)
	if love.mouse.getX() > x and love.mouse.getX() < x + w and love.mouse.getY() > y and love.mouse.getY() < y + h then
		return true
	end
	return false
end

function string.charAt(text, pos)   -- by ale5000
   return text:sub(pos, pos)
end

addWidget ("inv", 10, 100, 37, 16, "Inv (i)")
addWidget ("skl", 10, 140, 55, 16, "Skills (o)")
addWidget ("Stats", 10, 180, 58, 16, "Stats (p)")
--function addAgent(name, x, y, room, hp, inv, numInv, desc, imageID)
addRoom ("Start", 4000, 4000, 10, 10, true, "n", "Stark room with stone floor")
addRoom ("Room1", 4000, 3990, 20, 10, true, "s")
addAgent ("Player", 4, 6, "Start", 10, "boop,soup,loop,lock,load,boob", 6)

camXoffset = 0
camYoffset = 0
camZ = 1.0
camX = 10
camY = 10