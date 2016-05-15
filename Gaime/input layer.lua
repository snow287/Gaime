function love.wheelmoved(x, y)
	print("triggered")
    if y > 0 then
        if camZ > 0.2 then
			camZ = camZ - 0.1
			print("adjusted")
		end
    elseif y < 0 then
        if camZ < 1.80 then
			camZ = camZ + 0.1
		end
    end
end

function checkScroll()
	if love.mouse.getX() > 750 then
		if camX < 10000 then
			camX = camX + 2
			print("triggered")
		end
	end
	if love.mouse.getX() < 50 then
		if camX > 0 then
			camX = camX - 2
		end
	end
	
	if love.mouse.getY() > 550 then
		if camY < 10000 then
			camY = camY + 2
		end
	end
	if love.mouse.getY() < 50 then
		if camY > 0 then
			camY = camY - 2
		end
	end
end