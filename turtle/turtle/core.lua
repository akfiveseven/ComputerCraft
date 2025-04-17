local M = {}
local t = turtle
local cs = {1, 2, 3, 5, 6, 7, 9, 10, 11} -- crafting slots: top left 3x3
local es  = {4, 8, 12, 13, 14, 15, 16} -- edge slots: bottom row and rightmost column

function M.fuel()
    return t.getFuelLevel()
end

function M.refuel()
    for i = 1, 16 do
        t.select(i)
        t.refuel()
    end
    t.select(1)
    print("Fuel: " .. M.fuel())
end

function M.is_enough_fuel(target)
    if M.fuel() > target then
        return true
    end
    return false
end

function M.walk(count)
    if M.is_enough_fuel(count) then
        for i = 1, count do
            if turtle.detect() == false then
                print("Forward " .. i)
                turtle.forward()
            else
                print("[ERROR] Forward: obstruction")
            end
        end
    else
        print("[ERROR] Forward: fuel")
    end
end

function M.back(count)
    if M.is_enough_fuel(count) then
        for i = 1, count do
            if turtle.detect() == false then
                print("Back " .. i)
                turtle.back()
            else
                print("[ERROR] Back: obstruction")
            end
        end
    else
        print("[ERROR] Back: fuel")
    end
end

function M.get_item_name()

    if t.getItemCount() > 0 then
        return t.getItemDetail().name
    end

    return "Empty Slot"
end

function M.is_item_name(item_name)

    if t.get_item_name() == item_name then
        return true
    end

    return false
end

function M.is_full()
    for i = 1, 16 do
        t.select(i)
        if M.get_item_name() == "Empty Slot" then
            t.select(1)
            return false
        end
    end
            t.select(1)
    return true
end

function M.build_pillar(height)
    if turtle.getFuelLevel() < height then
        print("[ERROR] Pillar: fuel")
    end
    if t.getItemCount() >= height then
        for i = 1, height do
            t.up()
            t.placeDown()
        end
    else
        print("[ERROR] Pillar: item count")
    end
    print("Pillar " .. height)
end

function M.build_bridge(length)
    if turtle.getFuelLevel() < length+1 then
        print("[ERROR] Bridge: fuel")
    end
    turtle.up()
    if t.getItemCount() >= length then
        for i = 1, length do
            M.walk(1)
            t.placeDown()
        end
    else
        print("[ERROR] Bridge: item count")
    end
    print("Bridge " .. length)
end

-- TODO: M.ruler(max)
-- TODO: M.build_pillar(height)
-- TODO: M.build_bridge(length)
-- TODO: M.build_ground(width, length)
-- TODO: M.build_wall(height, length)

-- TODO API: [ ] movement, turning
-- TODO API: [ ] turtle.select(number slotNum)
-- TODO API: [ ] turtle.getSelectedSlot()
-- TODO API: [ ] turtle.getItemCount([number slotNum])
-- TODO API: [ ] turtle.getItemSpace([number slotNum])
-- TODO API: [ ] turtle.getItemDetail([number slotNum])
-- TODO API: [ ] turtle.equipLeft()
-- TODO API: [ ] turtle.equipRight()
-- TODO API: [ ] turtle.place()
-- TODO API: [ ] turtle.detect()
-- TODO API: [ ] turtle.inspect()
-- TODO API: [ ] turtle.compare() ; turtle.compareTo(number slot)
-- TODO API: [ ] turtle.drop([number count])
-- TODO API: [ ] turtle.suck([number amount])
-- TODO API: [ ] turtle.refuel([number quantity])
-- TODO API: [ ] turtle.getFuelLimit()
-- TODO API: [ ] turtle.transferTo(number slot [, number quantity])

return M
