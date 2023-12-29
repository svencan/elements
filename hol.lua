-- Turn off if needfuel is off.
turtle.refuel()
print("Turtle refuelled.")


args = {...}
hydro = args[1]
oxy = args[2]

print("Requested "..args[1].." hdydrogen and "..args[2].." oxygen")