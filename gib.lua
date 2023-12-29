dofile("/elements.lua")

rednet.open("top")

args = {...}

element = tonumber(args[1])
element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[element])
amount = tonumber(args[2])

