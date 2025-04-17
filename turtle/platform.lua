local args = {...}

local length = args[1]
local count = tonumber(args[2])

local function checkTurn(i)
    if i % 2 == 0 then
        turtle.turnLeft()
    else
        turtle.turnRight()
    end
end

shell.run("walk 1")
for i = 1, count do
    turtle.placeDown()
    shell.run("bridge " .. length)
    checkTurn(i)
    turtle.forward()
    checkTurn(i)
end
