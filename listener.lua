args = {...}
print("I will listen to commands on channel ".. args[1])

-- Connect modem
modem = peripheral.wrap("right")
modem.open(1)  -- Channel 1 is hol communication

-- Wait for commands
while true do
	local id, msg, dist=rednet.receive(args[1])
	print("Received command: " .. msg)
	loadstring(msg)()
end