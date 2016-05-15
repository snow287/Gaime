function render()
	love.graphics.push()
	love.graphics.scale(camZ)
	drawRooms()
	love.graphics.translate(camX, camY)
	love.graphics.pop()
	drawContextCursor()
	drawUI()
	drawToolTip()
	return 'success'
end

function drawContextCursor()

end
function drawToolTip()

end

function drawUI()
	--menu bar
	love.graphics.setColor(86, 92, 92)
	--draw widgets
	for i = 0, wLh do
		if mouseInBounds(widgets[i].x, widgets[i].y, widgets[i].w, widgets[i].h) then
			--render different color
			love.graphics.setColor(176, 173, 173)
		else
			love.graphics.setColor(86, 92, 92)
		end
		love.graphics.rectangle("fill", widgets[i].x, widgets[i].y, widgets[i].w, widgets[i].h)
		love.graphics.setColor(256, 256, 256)
		love.graphics.print(widgets[i].text, widgets[i].x + 1, widgets[i].y + 1)
		if wLh == i + 1 then
			break
		end
	end
end

function drawRooms()
	--loop through
	for i = 0, rLh do
		if rooms[i].isVisible then
			--5000 map size, 50 times that many pixels, so a 10x10 room takes up most of the screen at default zoom
			love.graphics.setColor(256, 256, 256)
			--determine drawpoint
			drawX = rooms[i].x * 50
			drawY = rooms[i].y * 50
			drawW = rooms[i].w * 50
			drawH = rooms[i].h * 50
			love.graphics.rectangle("line", 20, 20, drawW, drawH)
		end
		if rLh == i + 1 then
			break
		end
	end
end