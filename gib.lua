dofile("/elements.lua")

rednet.open("top")

args = {...}

if type(next(myTable)) == "nil" then
	io.write("Type the element-number you want (e.g. 79 for gold)")
    element = tonumber(io.read())

	io.write("You want " .. elements[element] .. ". How much of it? (16 for 1 ingot)")
    amount = tonumber(io.read())
else
	element = tonumber(args[1])
	amount = tonumber(args[2])
end

element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[element])




