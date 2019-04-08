--[[
Object = {}
Object.__index = Object

function Object.new(name)
   local t = {}
   setmetatable(t,Object)
   return t
end

return Object
]]

local Object = class(function(self, name)
  self.name = name
  self.type = "Object"
end)

return Object
