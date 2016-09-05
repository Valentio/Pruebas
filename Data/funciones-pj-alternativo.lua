local pjW, pjH, tileset, quads
local initPosX, initPosY = 352, 384

--creamos la función que creará la primera imagen del personaje desplazable
function cargaPj(path)
	love.filesystem.load(path)()
end

function creaPj(pjWidth, pjHeight, tilesetPjPath, quadInfo)

	pjW = pjWidth
	pjH = pjHeight
	tileset = love.graphics.newImage(tilesetPjPath)

	local tilesetPjW, tilesetPjH = tileset:getWidth(), tileset:getHeight()

	quads= {}

	for i, info in ipairs(quadInfo) do
		quads[i] = love.graphics.newQuad(info[1], info[2], pjW, pjH, tilesetPjW, tilesetPjH)
	end

end

function dibujaPj(numMov)

	if numMov == nil then
		--love.graphics.draw(tileset, quads[1], initPosX, initPosY)
	elseif numMov == 1 then

		for i = 9, 12 do

			if i >= 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
				initPosX = initPosX + 8
				love.timer.sleep( 0.05 )
			elseif i < 10 then
				love.graphics.draw(tileset, quads[i], initPosX, initPosY)
			end

			i = i + 1
		end
		
	elseif numMov == 1 then
		love.graphics.draw(tileset, quads[i], initPosX, initPosY)
	elseif numMov == 1 then
		love.graphics.draw(tileset, quads[i], initPosX, initPosY)
	end
end
