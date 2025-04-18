local core = require("turtle.core")
local args = {...}

if core.is_enough_fuel(tonumber(args[1])) then
    for i = 1, tonumber(args[1]) do
        if turtle.detect() == false then
            print("Walk " .. i)
            turtle.forward()
        else
            print("[ERROR] Walk: obstruction")
        end
    end
else
    print("[ERROR] Walk: fuel")
end
