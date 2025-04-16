-- Add programs in /lua/ directory to PATH (can be run from anywhere)
shell.setPath(shell.path() .. ":/lua")

-- Prints out fuel level
print("Fuel: " .. turtle.getFuelLevel())

