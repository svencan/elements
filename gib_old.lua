dofile("/elements.lua")

rednet.open("top")

args = {...}

element = tonumber(args[1])
element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[element])
amount = tonumber(args[2])

hydrogen_part = element % 8
hydrogen_total = hydrogen_part * amount

oxygen_part = math.floor(element / 8)
oxygen_total = oxygen_part * amount

print("Requested " .. amount .. " " .. element_name .. " (" .. element .. ")")
print("We will need " .. oxygen_total .. " oxygen and " .. hydrogen_total .. " hydrogen.")

command = "hol " .. hydrogen_total .. " " .. oxygen_total
rednet.broadcast(command, "HolProtocol")
print("Sending command: " .. command)

command = "mach " .. element .. " " .. amount
rednet.broadcast(command, "MachProtocol")
print("Sending command: " .. command)

rednet.close("top")