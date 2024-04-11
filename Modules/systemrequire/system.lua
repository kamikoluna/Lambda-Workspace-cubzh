local apis = {}
  local api = require("system_api", System) 
  if api then 
    print("hi")
end
  api:postSecret("hi", function() return error("hi") end)
return apis
