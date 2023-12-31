dofile("/elements.lua")

args = {...}

element = args[1]
amount = args[2]
remaining = amount

element_name = elements[element]
element_id = "chemlib:" .. string.lower(elements[tonumber(element)])

reactor_output = peripheral.wrap("right")  -- reactor output
reactor_input = peripheral.wrap("left")   -- reactor input
end_product = peripheral.wrap("top")    -- end product

while tonumber(remaining) > 0 do
	print("Checking all slots for reactor outputs")
	local output_slot = 1
	sleep(1.03)
	for slot, item in pairs(reactor_output.list()) do
		print(("%d x %s in slot %d"):format(item.count, item.name, slot))
		if item.count > 0 then
			if item.name == element_id then
				pulled = reactor_output.pushItems("top", output_slot)
				remaining = remaining - pulled
			else
				reactor_output.pushItems("left", output_slot)
			end
		end
	end
	--for n=1,reactor_output.size()-1, 1 do
	--	if reactor_output.getItemLimit(output_slot) < 64 then
	--		details = reactor_output.getItemDetails(output_slot)
	--		if details.name == element_id then
	--			pulled = reactor_output.pushItems("top", output_slot)
	--			remaining = remaining - pulled
	--		else
	--			reactor_output.pushItems("left", output_slot)
	--		end
	--	end
	--	output_slot = output_slot + 1
	end
end

print("Finished everything")
