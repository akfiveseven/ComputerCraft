-- install startup.lua
shell.run("pastebin get TDNnhumW startup.lua")
-- mkdir lua -> cd lua
shell.run("mkdir lua")
shell.run("cd lua")
-- mkdir turtle -> cd turtle
shell.run("mkdir turtle")
shell.run("cd turtle")
-- install core.lua
shell.run("pastebin get VME5KdVm core.lua")
-- cd ../..
shell.run("cd ../..")
-- reboot
os.reboot()
