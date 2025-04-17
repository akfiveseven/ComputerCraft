local args = {...}

local length = tonumber(args[1])

print("Bridge " .. length)


if turtle.getFuelLevel() < length+1 then
    print("[ERROR] Bridge: fuel")
else
    if turtle.getItemCount() >= length then
        for i = 1, length do
            turtle.placeDown()
            shell.run("walk 1")
        end
    else
        print("[ERROR] Bridge: item count")
    end
end
