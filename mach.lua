dofile("/elements.lua")

-- Turn off if needfuel is off.
turtle.refuel()
print("Turtle refuelled.")

-- Input parameters
args = {...}
element = tonumber(args[1])
element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[element])
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

	-- go to final chest
	turtle.turnLeft()
	turtle.forward()

	if turtle.getItemCount() > 0 then
		slot_data = turtle.getItemDetail()
		if slot_data.name == element_id then
			turtle.turnRught()
			turtle.drop()
			turtle.turnLeft()
		end
	end

	-- Go to fusion input
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

	-- Back to start
	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.forward()
end
