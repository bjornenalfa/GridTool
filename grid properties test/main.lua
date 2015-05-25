image = love.graphics.newImage("weatherIcons.png")

width = image:getWidth()
height = image:getHeight()

function love.load()
	love.window.setMode(width,height)
	love.graphics.setBackgroundColor(255,255,255)
end

xOffset = 78
yOffset = 74
size = 120
xmargin = 27
ymargin = 38

function love.keypressed(key)
	if key == "w" then
		yOffset = yOffset - 1
	elseif key == "s" then
		yOffset = yOffset + 1
	elseif key == "a" then
		xOffset = xOffset - 1
	elseif key == "d" then
		xOffset = xOffset + 1
	elseif key == "up" then
		ymargin = ymargin - 1
	elseif key == "down" then
		ymargin = ymargin + 1
	elseif key == "left" then
		xmargin = xmargin - 1
	elseif key == "right" then
		xmargin = xmargin + 1
	elseif key == "r" then
		size = size-1
	elseif key == "t" then
		size = size+1
	end
end

function love.draw()
	love.graphics.setColor(255,255,255)
	love.graphics.draw(image,0,0)
	love.graphics.setColor(255,100,100,100)
	for x = 0,4 do
		love.graphics.line(xOffset + (size+xmargin)*x, 0, xOffset + (size+xmargin)*x, height)
		love.graphics.line(xOffset + (size+xmargin)*x + size, 0, xOffset + (size+xmargin)*x + size, height)
	end
	for y = 0,2 do
		love.graphics.line(0, yOffset + (size+ymargin)*y, width, yOffset + (size+ymargin)*y)
		love.graphics.line(0, yOffset + (size+ymargin)*y+size, width, yOffset + (size+ymargin)*y + size)
	end
	love.graphics.setColor(0,0,0)
	love.graphics.print(xOffset.."-"..yOffset.." "..xmargin.."-"..ymargin.." "..size,0,0)
end