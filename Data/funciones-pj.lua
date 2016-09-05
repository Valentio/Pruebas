local pjW, pjH, tileset, quads
local initPosX, initPosY = 352, 48

--creamos la función que creará la primera imagen del personaje desplazable
function cargaPj(path)
	love.filesystem.load(path)()
end

function creaPj(pjWidth, pjHeight, tilesetPjPath, quadInfo)

	pjW = pjWidth
	pjH = pjHeight
	tileset = love.graphics.newImage(tilesetPjPath)

	local tilesetPjW, tilesetPjH = tileset:getWidth(), tileset:getHeight()

	quads = {}

	for i, info in ipairs(quadInfo) do
		quads[i] = love.graphics.newQuad(info[1], info[2], pjW, pjH, tilesetPjW, tilesetPjH)
	end

	currentFrame = 1
	elapsed = 0

end

function dibujaPj()

  love.graphics.draw(tileset, quads[currentFrame], initPosX, initPosY)
	
end
function muevePj(dt)
	elapsed = elapsed + dt
	    if elapsed > 0.1 then
	        elapsed = elapsed - 0.1

	        if love.keyboard.isDown("down") then

	        		if currentFrame == 4 then
	        			currentFrame = 1
	        			
	        		elseif currentFrame < 4 then
	        			
	            		currentFrame = currentFrame + 1
	            	end
	            	initPosY = initPosY + 8
	        end

	        
	    end
end
--[[
if numMov == nil then
		love.graphics.draw(tileset, quads[1], initPosX, initPosY)
	elseif numMov == 1 then -- RIGHT

		for i = 9, 12 do

			if i >= 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
				love.timer.sleep( 0.05 )
			elseif i < 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
			end

			i = i + 1
		end
		
	elseif numMov == 2 then -- DOWN
		for i = 1, 4 do

				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
				love.timer.sleep( 0.05 )

			i = i + 1
		end
	elseif numMov == 3 then -- UP
		for i = 9, 12 do

			if i >= 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
				love.timer.sleep( 0.05 )
			elseif i < 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
			end

			i = i + 1
		end
	elseif numMov == 4 then -- LEFT
		for i = 9, 12 do

			if i >= 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
				love.timer.sleep( 0.05 )
			elseif i < 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
			end

			i = i + 1
		end
	end
	]]


	--[[if currentFrame == 4 then
	            currentFrame = 1
	            if love.keyboard.isDown("down") then
	        		initPosY = initPosY + 8
	            	currentFrame = 1
	            end
	            if love.keyboard.isDown("up") then
	        		initPosY = initPosY - 8
	            	currentFrame =  1
	            end
	            if love.keyboard.isDown("left") then
	        		initPosX = initPosX - 8
	            	currentFrame =  1
	            end
	            if love.keyboard.isDown("right") then
	        		initPosX = initPosX + 8
	            	currentFrame =  1
	            end
	        else
	        	if love.keyboard.isDown("down") then
	        		initPosY = initPosY + 8
	            	currentFrame = currentFrame + 1
	            end
	            if love.keyboard.isDown("up") then
	        		initPosY = initPosY - 8
	            	currentFrame = currentFrame + 1
	            end
	            if love.keyboard.isDown("left") then
	        		initPosX = initPosX - 8
	            	currentFrame = currentFrame + 1
	            end
	            if love.keyboard.isDown("right") then
	        		initPosX = initPosX + 8
	            	currentFrame = currentFrame + 1
	            end
	        end]]