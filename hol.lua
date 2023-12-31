-- Input parameters
args = {...}

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.forward()

while args[1] > 0 or args[2] > 0 or args[3] > 0 or args[4] > 0 or args[5] > 0 or args[6] > 0 or args[7] > 0 do
	local n = 7
	for i=7, 1, -1 do
		turtle.forward()
		if tonumber(args[n]) > 0 then
			turtle.select(n)
			turtle.turnRight()
			turtle.suck(math.min(args[n], 64))
			args[n] = args[n] - turtle.getItemCount()
			turtle.turnLeft()
		end
		n = n - 1
	end
end

turtle.turnRight()
turtle.turnRight()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.forward()
turtle.turnLeft()

n = 7
for i=7, 1, -1 do
	turtle.select(n)
	turtle.drop()
	n = n - 1
end

-- Refuel and take coal if necessary
turtle.select(16)
turtle.refuel()
if turtle.getItemCount() == 0 then
	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
	turtle.suck()
	turtle.turnRight()
	turtle.turnRight()
	turtle.forward()
	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnLeft()
end