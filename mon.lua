os.pullEvent = os.pullEventRaw
 
function foo()
  while true do
    local event = { os.pullEvent("modem_message") }
  end
end
 
term.clear()
term.setCursorPos(1,1)
rednet.open("front")
mon = peripheral.find("monitor")
mon.setTextScale(2)
mon.setBackgroundColor(colors.blue)
term.clear()
term.setTextColor(colors.orange)
print("CubeCore v1")
print""
 
while true do
  local id, msg, prt = rednet.receive()
 
  print("[SAY] Message "..msg.." Sent from ID: "..id)
 
end
