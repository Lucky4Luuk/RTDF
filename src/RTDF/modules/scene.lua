Scene = {}
Scene.__index = Scene

function Scene.new(resolution, size, objects) --Size is supposed to be a vec3
   local t = {}
   setmetatable(t,Scene)
   t.resolution = Utils.type_error_check(resolution, "vector3")
   t.size = Utils.type_error_check(size, "vector3")
   t.objects = objects or {}
   t:_createVolume()
   return t
end

function Scene.setSize(self, size) --Size is supposed to be a vec3
   self.size = Utils.type_error_check(size, "vector3")
end

function Scene._createVolume(self)
  local layers = {}
  for i=1, self.resolution.y + 1 do
    layers[i] = love.image.newImageData(self.resolution.x, self.resolution.z)
  end
  self.volume = love.graphics.newVolumeImage(layers, {linear=true})
end

return Scene
