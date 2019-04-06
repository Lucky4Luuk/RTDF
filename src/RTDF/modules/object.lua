Object = {}
Object.__index = Object

function Object.new(name)
   local t = {}
   setmetatable(t,Object)
   return t
end

return Object
