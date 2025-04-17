local args = {...}

local count = tonumber(args[1])

local function unload()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.getItemCount() > 0 then
            if turtle.getItemDetail().name == "mincraft:dirt" or turtle.getItemDetail().name == "minecraft:cobblestone" or turtle.getItemDetail().name == "minecraft:cobbled_deepslate" or turtle.getItemDetail().name == "minecraft:cobbled_tuff" then
                turtle.drop(64)
            end
        end
    end
    turtle.select(1)
end

local function check()
    local success, data = turtle.inspectDown()
    while data.name ~= "minecraft:bedrock" do
        turtle.digDown()
        turtle.down()
        success, data = turtle.inspectDown()
    end
    unload()
    while turtle.detect() == true do
        shell.run("refuel-all")
        turtle.up()
    end
end

for i = 1, count do
    check()
    turtle.forward()
end

shell.run("fuel")

