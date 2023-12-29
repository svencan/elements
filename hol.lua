-- Turn off if needfuel is off.
turtle.refuel()
print("Turtle refuelled.")

-- Input parameters
args = {...}
hydrogen = tonumber(args[1])
oxygen = tonumber(args[2])

print("Requested "..args[1].." hydrogen and "..args[2].." oxygen")

while hydrogen > 0 or oxygen > 0 do
	turtle.turnLeft()
	turtle.turnLeft()

	-- Pick hydrogen
	turtle.select(10)
	turtle.forward()
	turtle.turnLeft()
	turtle.suck(math.min(hydrogen, 64))
	hydrogen = hydrogen - turtle.getItemCount()
	print("Picked " .. turtle.getItemCount() .. " hydrogen")
	turtle.turnRight()

	-- Pick oxygen
	turtle.select(11)
	turtle.forward()
	turtle.turnLeft()
	turtle.suck(math.min(oxygen, 64))
	oxygen = oxygen - turtle.getItemCount()
	print("Picked " .. turtle.getItemCount() .. " oxygen")

	-- Go to drop off
	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	
	-- Drop hydrogen
	turtle.select(10)
	turtle.drop(turtle.getItemCount())
	
	-- Drop oxygen
	turtle.select(11)
	turtle.drop(turtle.getItemCount())
end

print("*happy turtle noises*")