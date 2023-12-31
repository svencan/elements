dofile("/elements.lua")

function inventory_sum(inventory)
	local sum = 0
	for slot, item in pairs(inventory.list()) do
		sum = sum + item.count
	end
	return sum
end

args = {...}

element = args[1]
amount = args[2]
remaining = amount

element_name = elements[tonumber(element)]
element_id = "chemlib:" .. string.lower(elements[tonumber(element)])

reactor_output = peripheral.wrap("right")  -- reactor output
reactor_input = peripheral.wrap("left")   -- reactor input
end_product = peripheral.wrap("top")    -- end product

while tonumber(remaining) > 0 do
	sleep(1.01)

	if inventory_sum(reactor_input) == 0 then
		for slot, item in pairs(reactor_output.list()) do
			if item.count > 0 then
				if item.name == element_id then
					pulled = reactor_output.pushItems("top", slot)
					remaining = remaining - pulled
				else
					reactor_output.pushItems("left", slot)
				end
			end
		end
	end
end

print("Finished producing " .. amount .. " " .. element_name)
