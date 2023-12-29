-- Turn off if needfuel is off.
turtle.refuel()
print("Turtle refuelled.")


args = {...}
hydro = tonumber(args[1])
oxy = tonumber(args[2])

print("Requested "..args[1].." hydrogen and "..args[2].." oxygen")

-- Hydrogen at X=1314
-- Oxygen at X=1313
-- Dropoff at X=1321

while hydro > 0 do
	turtle.turnLeft()
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	turtle.suck(hydro)

	picked = turtle.getItemCount()
	print("I have "..picked.." hydrogen")
	hydro = hydro - picked
	print("Still need "..hydro.." hydrogen")

	turtle.turnLeft()
	turtle.forward()
	turtle.drop(picked)
end

print("I collected all the hydrogen.")