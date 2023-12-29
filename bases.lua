turtle.select(1)

function fuse(source)
	destination = source + 1

	turtle.turnLeft()

	while source > 0 do
		turtle.forward()
	end

	turtle.turnRight()
	turtle.suck()
	taken = turtle.getItemCount()
	if taken % 2 = 1 then
		turtle.drop(1)
	end

	offset = 2 - source   -- input is the same position as "Be"

	if offset < 0 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end

	abs_offset = math.abs(offset)

	while abs_offset > 0 do
		turtle.forward()
		abs_offset = abs_offset - 1
	end

	if offset < 0 then
		turtle.turnRight()
	else
		turtle.turnLeft()
	end

	turtle.drop()
end


while true do
	fuse(0)
end