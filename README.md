
# Quick Install \[Recommended\]

1. Install via startup script: `pastebin get ru2ab2X4 setup.lua`
2. Run setup: `setup`

## Alternative install

1. Download git clone on computer (in computercraft): `pastebin get DHC1cFQL clone.lua`
2. Clone repo: `clone https://www.github.com/akfiveseven/ComputerCraft.git lua`
3. Move `startup.lua` to root of computer: `mv lua/startup.lua ./startup.lua`
4. Reboot: `reboot`

---

# To use api/library

To use api in root/home dir: 
```
package.path = package.path .. ";lua/turtle/?.lua"
local t = require("turtle.core")
```
