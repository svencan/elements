-- Turn off if needfuel is off.
turtle.refuel()
print("Turtle refuelled.")

-- Input parameters
args = {...}
element = tonumber(args[1])
amount = tonumber(args[2])
remaining = amount

while remaining > 0 do
	-- Take any into slot 1
	turtle.select(1)
	turtle.suck()
	
	-- take any into slot 2
	turtle.turnLeft()
	turtle.select(2)
	turtle.suck()

	if turtle.getItemCount() > 0:
		slot_data = turtle.getItemDetail()
		print("Picked up " .. slot_data.name)

	-- go to final chest
	turtle.turnLeft()
	turtle.forward()

	-- if slot 2 is element:
	--   turn right
	--   remaining = remaining - item count of slot 2
	--   drop slot 2
	--   turn left

	-- Go to fusion input
	
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()

	-- Drop slot 1 and 2
	turtle.select(1)
	turtle.drop()
	turtle.select(2)
	turtle.drop()
	turtle.turnRight()
	turtle.turnRight()

	-- Back to start
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
end