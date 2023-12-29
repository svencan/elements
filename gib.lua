dofile("/elements.lua")

--rednet.open("top")

args = {...}

if type(next(args)) == "nil" then
	io.write("Type the element-number you want")
	io.write("e.g. 79 for Gold: ")
    element = tonumber(io.read())

	io.write("You want " .. elements[element] .. "")
	io.write("How much? (e.g. 16 for one ingot): ")
    amount = tonumber(io.read())
else
	element = tonumber(args[1])
	amount = tonumber(args[2])
end

element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[element])




