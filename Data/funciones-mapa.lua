--declaramos las variables que vamos a usar en este script
local tileW, tileH, tileset, quads, tileTable
--creamos la función para cargar la información del mapa, y le pasamos como parámetro la ruta 
--del script con los datos del mapa:

function cargaMapa(path)
	--cargamos el script del mapa:
	love.filesystem.load(path)()
end

-- creamos una función para la creación en memoria del mapa:
function creaMapa(tileWidth, tileHeight, tilesetPath, TileTable, quadInfo)

	tileW = tileWidth
	tileH = tileHeight
	tileset = love.graphics.newImage(tilesetPath)

	local tilesetW, tilesetH = tileset:getWidth(), tileset:getHeight()

	quads = {}

	for i, info in ipairs(quadInfo) do
		quads[i] = love.graphics.newQuad(info[1], info[2], tileW, tileH, tilesetW, tilesetH)
	end

end

function dibujaMapa()

  for rowIndex,row in ipairs(TileTable) do
    for columnIndex,number in ipairs(row) do
      local x,y = (columnIndex-1)*tileW, (rowIndex-1)*tileH
      love.graphics.draw(tileset, quads[number], x, y)
    end
  end

end


