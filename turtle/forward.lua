local args = {...}
local n = tonumber(args[1]) or 1

for i = 1, n do
  if not turtle.forward() then
    print("Movement blocked in front")
    break
  end
end
