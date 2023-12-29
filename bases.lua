turtle.select(1)
turtle.refuel()
turtle.select(10)

function fuse(source)
	-- move to source drawer
	destination = source + 1
	turtle.turnLeft()

	while source > 0 do
		turtle.forward()
		source = source - 1
	end

	-- take an even amount of elements
	turtle.turnRight()
	turtle.suck()
	taken = turtle.getItemCount()
	if taken % 2 == 1 then
		turtle.drop(1)
	end

	-- move to fusion reactor input chest
	offset = 2 - source

	if offset < 0 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end

	abs_offset = math.abs(offset)

	while abs_offset > 0 do
		turtle.forward()
		abs_offset = abs_offset - 1
	end

	if offset < 0 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end
	
	-- drop elements and move to output chest
	turtle.drop()
	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()

	-- wait for fusion to finish (input elements / 2 is the number of elements we wait for)
	expected_elements = taken / 2
	while turtle.getItemCount() < expected_elements do
		turtle.suck()
		sleep(10)  -- wait for fusion to completely finish
	end

	-- move to destination
	remaining_destination = destination

	turtle.turnRight()

	while remaining_destination > 0 do
		turtle.forward()
		remaining_destination = remaining_destination - 1
	end

	-- drop elements
	turtle.turnRight()
	turtle.drop()

	-- move back to start

	remaining_start = destination

	turtle.turnRight()

	while remaining_start > 0 do
		turtle.forward()
		remaining_start = remaining_start - 1
	end

	turtle.turnLeft()
end


while true do
	fuse(0)
	fuse(3)
	fuse(0)
	fuse(1)
	fuse(3)
	fuse(4)
	fuse(3)
	fuse(4)
	fuse(5)
	fuse(3)
	fuse(4)
	fuse(6)
end