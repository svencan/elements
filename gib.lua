dofile("/elements.lua")

--

args = {...}

if type(next(args)) == "nil" then
	print("Type the element-number you want")
	io.write("e.g. 79 for Gold: ")
    element = tonumber(io.read())

	print("You want " .. elements[element] .. "")
	io.write("How much? (e.g. 16 for one ingot): ")
    amount = tonumber(io.read())
else
	element = tonumber(args[1])
	amount = tonumber(args[2])
end

element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[element])

ga = math.floor(element / 64)
remainder = element - ga * 64

ge = math.floor(remainder / 32)
remainder = remainder - ge * 32

s = math.floor(remainder / 16)
remainder = remainder - s * 16

o = math.floor(remainder / 8)
remainder = remainder - o * 8

be = math.floor(remainder / 4)
remainder = remainder - be * 4

he = math.floor(remainder / 2)
h = element % 2

remaining = amount

while remaining > 0 do
	batch = math.min(64, remaining)
	remaining = remaining - batch
	hol_command = "hol " .. " " .. h * batch .." " .. he * batch .." " .. be * batch
	hol_command = hol_command .. " " .. o * batch .." " .. s * batch .." " .. ge * batch .." " .. ga * batch

	print("Sending turtle (" .. hol_command .. ")")
	print("  Gadolinium: " .. ga * batch)
	print("  Germanium:  " .. ge * batch)
	print("  Sulfur:     " .. s * batch)
	print("  Oxygen:     " .. o * batch)
	print("  Beryllium:  " .. be * batch)
	print("  Helium:     " .. he * batch)
	print("  Hydrogen:   " .. h * batch)

	rednet.open("back")
	rednet.broadcast(hol_command, "HolProtocol")
	rednet.close()

	shell.run("mach " .. element .. " " .. batch)
end

print("Finished!")
