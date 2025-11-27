local maps = {
	"prompt_sandy_joshua",
	"prompt_sandy_university"
}

local events = {}

CreateThread(function()
  local exists = false
  TriggerEvent("lyn-mapdata:exists", function(exists)
    if exists then
      exists = true
    end
  end)

  if exists == true then
    print("^6[Prompt]^1 Map data already exists. There must be only one mapdata installed!^0")
  end
end)

RegisterNetEvent("lyn-mapdata:exists", function(cb)
  cb(true)
end)

for i = 1, #maps do
  local eventName = maps[i] .. ":mapDataExists"
  if Debug == true then
    print("Creating event: ", eventName)
  end
  local event = RegisterNetEvent(eventName, function(cb)
    cb(true)
  end)
  table.insert(events, event)
end
