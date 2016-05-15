--pseudo class code

widgets = {}
agents = {}
rooms = {}
objects = {}
wLh = 0
aLh = 0
rLh = 0
oLh = 0

function addWidget(name, x, y, w, h, text, imageID)
	widgets[wLh] = {}
	widgets[wLh].name = name
	widgets[wLh].x = x
	widgets[wLh].y = y
	widgets[wLh].w = w
	widgets[wLh].h = h
	widgets[wLh].text = text
	widgets[wLh].imageID = imageID or "none"
	wLh = wLh + 1
end

function addAgent(name, x, y, room, hp, inv, numInv, desc, imageID)
	agents[aLh] = {}
	agents[aLh].name = name
	agents[aLh].x = x
	agents[aLh].y = y
	agents[aLh].room = room
	agents[aLh].hp = hp
	agents[aLh].inv = {}
	agents[aLh].numItemsInv = numInv or 0
	if agents[aLh].numItemsInv > 0 then
		local position = 0
		local count = 0
		for i = 0, agents[aLh].numItemsInv do
			if i == agents[aLh].numItemsInv then
				break
			end
			
			for i = 0, string.len(inv) do
				--find first comma, add string before comma to inventory list
				if string.charAt(inv, i) == "," then
					print(string.sub(inv, position, i-1))
					agents[aLh].inv[count] = string.sub(inv, position, i)
					count = count + 1
					print(position)
					position = i + 1
					print(position)
					--move search to after first found comma
				end
			end
		end
	end
	agents[aLh].desc = desc or "just a typical agent"
	agents[aLh].imageID = imageID or "none"
	aLh = aLh + 1
end

function addRoom(name, x, y, w, h, visible, doors, desc, tileType)
	rooms[rLh] = {}
	rooms[rLh].name = name
	rooms[rLh].x = x
	rooms[rLh].y = y
	rooms[rLh].w = w
	rooms[rLh].h = h
	rooms[rLh].isVisible = visible
	rooms[rLh].desc = desc or " just a typical room "
	rooms[rLh].tileType = tileType or "default"
	rooms[rLh].doors = doors or "none"
	rLh = rLh + 1
end

function addObject(name, x, y, room, hp, OCCUPIES, desc, imageID)
	objects[oLh] = {}
	objects[oLh].name = name
	objects[oLh].x = x
	objects[oLh].y = y
	objects[oLh].room = room
	objects[oLh].hp = hp
	objects[oLh].OCCUPIES = OCCUPIES or false
	objects[oLh].desc = desc or " just a typical object "
	objects[oLh].imageID = imageID or "none"
end