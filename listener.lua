args = {...}
print("I will listen for " .. args[1] .. " commands")

-- Connect modem
rednet.open("right")

-- Wait for commands
while true do
	id, msg, protocol = rednet.receive(args[1])
	print("Received command: " .. msg)
	shell.run(msg)
end