rednet.open("top")
-- Modem channels 1 = hol, 2 = mach

args = {...}

element = tonumber(args[1])
amount = tonumber(args[2])

hydrogen_part = element % 8
hydrogen_total = hydrogen_part * amount

oxygen_part = math.floor(element / 8)
oxygen_total = oxygen_part * amount

print("We will need " .. oxygen_total .. " oxygen and " .. hydrogen_total .. " hydrogen.")

command = "hol " .. hydrogen_total .. " " .. oxygen_total
rednet.send(1, command)
print("Sending command: " .. command)

rednet.close("top")
