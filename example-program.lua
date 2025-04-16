-- 1. Add api path
package.path = package.path .. ";lua/turtle/?.lua"

-- 2. Import api
local api = require("turtle.core")

-- 3. Use api: example
print("From api")
api.refuel()
print("api refuel complete")
print("From shell")
shell.run("refuel-all")
print("shell refuel complete")


