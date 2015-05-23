 
cmd = peripheral.find("command")
os.loadAPI("/jnet")
term.clear()
jnet.open()
term.setCursorPos(1,1)
print("CubeCore v1")
print("Coded by MCFunRide")
print("All Rights Reserved.")
print()
print("Core Ready")
mon = peripheral.wrap("right")
shell.run("bg monitor monitor_173 mon")
 
function say(string)
  cmd.setCommand("sudo @a ping &d[&c&lGLa&4&lDoS&d] "..string)
  cmd.runCommand()
end
 
say("Test")
cmd = peripheral.find("command")
 
function command(data)
  cmd.setCommand(data)
  cmd.runCommand()
end
 
while true do
  local id, message = jnet.receive()
  if id == 5657 and message == "reboot" then
    say("Rebooting...")
    sleep(3)
    os.reboot()
  elseif id == 5657 and message == "shutdown" then
    say("Shutting down...")
    sleep(3)
    os.shutdown()
  elseif id == 5657 and message == "riot" then
    cmd.setCommand("sudo @a c:ヽ༼ຈل͜ຈ༽ﾉ &aR&bI&cO&dT&e!&d ヽ༼ຈل͜ຈ༽ﾉ")
    cmd.runCommand()
    say("ヽ༼ຈل͜ຈ༽ﾉ &aR&bI&cO&dT&e!&d ヽ༼ຈل͜ຈ
  elseif id == 5657 and message == "cara" then
    disk.playAudio("back")
  elseif id == 5657 and message == "stopmusic" then
    disk.stopAudio("back")
  else
    if id == 5657 then
      say(message)
    end
  end
end
