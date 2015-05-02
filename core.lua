rednet.open("front")
cmd = peripheral.wrap("left")
term.clear()
term.setCursorPos(1,1)
print("CubeCore v1")
print("Coded by MCFunRide")
print("All Rights Reserved.")
print()
print("Core Ready")
mon = peripheral.wrap("right")
shell.run("bg monitor right mon")
 
function say(string)
  cmd.setCommand("say "..string)
  cmd.runCommand()
end
cmd = peripheral.wrap("left")
 
function command(data)
  cmd.setCommand(data)
  cmd.runCommand()
end
 
while true do
  local id, message = rednet.receive()
  if id == 17 and message == "reboot" then
    say("Rebooting...")
    sleep(3)
    os.reboot()
  elseif id == 17 and message == "shutdown" then
    say("Shutting down...")
    sleep(3)
    os.shutdown()
  elseif id == 17 and message == "riot" then
    cmd.setCommand("sudo @a c:&dヽ༼ຈل͜ຈ༽ﾉ &aR&bI&cO&dT&e! &dヽ༼ຈل͜ຈ༽ﾉ")
    cmd.runCommand()
  elseif id == 17 and message == "cmd" then
  command(message)
  else
    if id == 17 then
      say(message)
    end
  end
end
