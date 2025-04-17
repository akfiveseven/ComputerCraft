local args = {...}

local length = tonumber(args[1])

print("Bridge " .. length)


if turtle.getFuelLevel() < length+1 then
    print("[ERROR] Bridge: fuel")
end
if turtle.getItemCount() >= length then
    for i = 1, length do
        shell.run("walk 1")
        turtle.placeDown()
    end
else
    print("[ERROR] Bridge: item count")
end
