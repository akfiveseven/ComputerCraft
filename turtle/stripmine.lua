local args = {...}

print("MAKE SURE TORCHES ARE IN SLOT 1... Strip mining in 5s")
os.sleep(10)


local length = tonumber(args[1])

local function unload()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.getItemCount() > 0 and turtle.getItemDetail(i).name == "minecraft:cobblestone" then
            turtle.drop(64)
        end
        if turtle.getItemCount() > 0 and turtle.getItemDetail(i).name == "minecraft:cobbled_deepslate" then
            turtle.drop(64)
        end
        if turtle.getItemCount() > 0 and turtle.getItemDetail(i).name == "minecraft:cobbled_tuff" then
            turtle.drop(64)
        end
        if turtle.getItemCount() > 0 and turtle.getItemDetail(i).name == "minecraft:dirt" then
            turtle.drop(64)
        end
    end

end

local function mineBlock()
    while turtle.detect() == true do
        turtle.dig()
        os.sleep(0.55)
    end
    turtle.forward()
    turtle.digUp()
    turtle.digDown()
end

turtle.placeDown()
for i = 1, length do
    mineBlock()
    if i % 12 == 0 then
        turtle.placeDown()
    end
end

unload()

turtle.select(1)

for i = 1, length do
    turtle.back()
end

turtle.turnRight()
mineBlock()
mineBlock()
mineBlock()
turtle.turnLeft()


