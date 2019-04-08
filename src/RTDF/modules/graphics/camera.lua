--[[
local Camera = {}
Camera.__index = Camera

function Camera.new(name, position)
  local t = {}
  setmetatable(t, Object)
  t.screen_mesh = love.graphics.newMesh({
      {0,0, 0,0, 1,1,1,1},
      {1,0, 1,0, 1,1,1,1},
      {1,1, 1,1, 1,1,1,1},
      {0,1, 0,1, 1,1,1,1}
    }, "fan", "static")

  t.position = Utils.type_error_check(position, "vector3")

  return t
end

return Camera
]]

local Camera = class(Object, function(self, name, position)
  self.name = name
  self.position = Utils.type_error_check(position, "vector3")
  t.screen_mesh = love.graphics.newMesh({
      {0,0, 0,0, 1,1,1,1},
      {1,0, 1,0, 1,1,1,1},
      {1,1, 1,1, 1,1,1,1},
      {0,1, 0,1, 1,1,1,1}
    }, "fan", "static")
  self.type = "Camera"
end)

return Camera
