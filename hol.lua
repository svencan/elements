-- Input parameters
args = {...}

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.forward()

for i=7, 1, -1 do
	turtle.forward()
	if args[i] > 0 then
		turtle.select(7)
		turtle.turnRight()
		turtle.suck(math.min(args[7], 64))
		args[7] = args[7] - turtle.getItemCount()
		turtle.turnLeft()
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

for i=7, 1, -1 do
	turtle.drop()
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