args = {...}
print("I will listen to commands on channel ".. args[1])

while true do
	local id, msg, dist=rednet.receive(args[1])
	print("Received command: " .. msg)
	loadstring(msg)()
end