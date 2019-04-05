Scene = {}
Scene.__index = Scene

function Scene.new(size) --Size is supposed to be a vec3
   local t = {}
   setmetatable(t,Scene)
   t.size = size
   return t
end

function Scene.setSize(self, size) --Size is supposed to be a vec3
   self.size = size
end

return Scene
