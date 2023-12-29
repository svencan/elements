dofile("/elements.lua")

--rednet.open("top")

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

print("You will need")
print("  Gadolinium: " .. ga * amount)
print("  Germanium:  " .. ge * amount)
print("  Sulfur:     " .. s * amount)
print("  Oxygen:     " .. o * amount)
print("  Beryllium:  " .. be * amount)
print("  Helium:     " .. he * amount)
print("  Hydrogen:   " .. h * amount)
