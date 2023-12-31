dofile("/elements.lua")

args = {...}

element = args[1]
amount = args[2]
remaining = amount

element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[to_number(element)])

reactor_output = periphals.wrap("right")  -- reactor output
reactor_input = periphals.wrap("left")   -- reactor input
end_product = periphals.wrap("top")    -- end product

while tonumber(remaining) > 0 do
	local output_slot = 1
	sleep(1.03)
	for n=1,reactor_output.size()-1, 1 do
	
		details = reactor_output.getItemDetails(output_slot)
		if details.name == element_id then
			pulled = reactor_output.pushItems("top", output_slot)
			remaining = remaining - pulled
		else
			reactor_output.pushItems("left", output_slot)
		end
		output_slot = output_slot + 1
	end
end

print("Finished everything")
