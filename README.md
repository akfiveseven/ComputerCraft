
To use api in root/home dir: 
```
package.path = package.path .. ";lua/?.lua;lua/?/init.lua;lua/?/?.lua;lua/?/?/.lua"
local i = require("api.core")
```

---

1. Install via startup script: `pastebin get 5g5KVp1c setup.lua`
2. Run setup: `setup`

---

1. Download git clone on computer (in computercraft): `pastebin get DHC1cFQL clone.lua`
2. Clone repo: `clone https://www.github.com/akfiveseven/ComputerCraft.git lua`
3. Move `startup.lua` to root of computer: `mv lua/startup.lua ./startup.lua`
4. Reboot: `reboot`

