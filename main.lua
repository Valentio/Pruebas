require 'Data/funciones-mapa'
require 'Data/funciones-pj'

function love.load()
  cargaMapa('Data/primera_ruta.lua')
  cargaPj('Data/pj_info.lua')
end

function love.draw()
  dibujaMapa()
  dibujaPj()
end

function love.update(dt)
	muevePj(dt)
end

 --[[ if love.keyboard.isDown("down") then
		dibujaPj(2)
	end
	if love.keyboard.isDown("up") then
		dibujaPj(3)
	end
	if love.keyboard.isDown("right") then
		dibujaPj(1)
	end
	if love.keyboard.isDown("left") then
		dibujaPj(4)
	end
	]]