os.pullEvent = os.pullEventRaw
function clear()
	term.setBackgroundColor(colors.black)
	term.clear()
	term.setCursorPos(1,1)
end

function done()
               term.setTextColor(colors.red)
	clear()
	print("Done!")
	print("Press Any Key")
	os.pullEvent("key")
	os.reboot()
end

--function gh(url, name)
	--f = fs.open(name, "w")
	--f.write(http.get(name).readAll)
	--f.close()
	--sleep(1)
--end

function install()
	--Make Url Here!
	fs.makeDir(".sertexsecurity")
	monitor = http.get("https://raw.githubusercontent.com/CubeSpaceCC/CubeCore/master/monitor.lua")
	
	core = http.get("https://raw.githubusercontent.com/CubeSpaceCC/CubeCore/master/core.lua")
	
	lock = http.get("https://github.com/CubeSpaceCC/CubeCore/raw/master/lock.lua")
	
	mon = http.get("https://github.com/CubeSpaceCC/CubeCore/raw/master/mon.lua")
	

	
	startup = http.get("https://github.com/CubeSpaceCC/CubeCore/raw/master/startup.lua")
	
	
	
	config = http.get("https://raw.githubusercontent.com/CubeSpaceCC/CubeCore/master/.sertexsecurity/config")
	
	sertexsecurity = http.get("https://github.com/CubeSpaceCC/CubeCore/raw/master/.sertexsecurity/udb/Core")
	
	
	
	f = fs.open("monitor", "w")
	f.write(monitor.readAll)
	f.close()
	
	f = fs.open("core", "w")
	f.write(core.readAll)
	f.close()
	
	f = fs.open("lock", "w")
	f.write(cm.readAll)
	f.close()
	
	f = fs.open("mon", "w")
	f.write(cmd.readAll)
	f.close()
	
	f = fs.open("startup", "w")
	f.write(startup.readAll)
	f.close()
	
	shell.run("mkdir .sertexsecurity")
	f = fs.open("/.sertexsecurity/config","w")
	f.write(config.readAll)
	f.close()
	
	shell.run("mkdir .sertexsecurity/udb")
	f = fs.open("Core", "w")
	f.write(sertexsecurity.readAll)
	f.close()
	
	done()
end
term.setBackgroundColor(colors.white)
clear()
term.setTextColor(colors.red)
print("CubeCore 1.0 Installer")

print("Install CubeCore 1.0? Y or N")

while true do
	local id, key = os.pullEvent("key")
	
	if key == 21 then
		install()
		break
	end
	
	if key == 49 then
		printError("Terminated")
		shell.run("shell")
	end
	sleep(0)
end
