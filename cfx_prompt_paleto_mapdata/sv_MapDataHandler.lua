local maps = {
	"prompt_trainstation_paleto",
	"prompt_repair_shops",
	"prompt_tuco_paleto_sheriff"
}

local events = {}

-- Paleto mapdata exists event
RegisterNetEvent("prompt:mapdata_paleto_exists", function(cb)
  cb(true)
end)

-- Paleto mapdata list event
RegisterNetEvent("prompt:mapdata_paleto_sendList", function(returnevent)
  TriggerEvent(returnevent, maps)
end)

-- Legacy support for individual map checks
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
