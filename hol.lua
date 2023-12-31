function table_sum(table)
	local sum = 0
	for key, value in ipairs(table) do
		sum = sum + tonumber(value)
	end
	return sum
end

-- Input parameters
args = {...}

turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.forward()

while table_sum(args) > 0 do
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