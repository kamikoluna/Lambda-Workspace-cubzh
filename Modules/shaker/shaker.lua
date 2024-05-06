local shake = {}

shake.deltaTime = Object()
shake.deltaTime.Tick = function(self, dt)
  shake.dt = dt
end

shake.new = function (cam,y1, x1, z1, time1)
 local currentposcam = cam.LocalPosition
        for i = 1, time1 do
                Timer(shake.dt*i, false, function()
            local x = math.random(-100,x1)/x1
            local y = math.random(-100,y1)/y1
            local z = math.random(-100,z1)/z1
            cam.LocalPosition = Number3(x,y,z)
        end)
        end
        Timer(shake.dt*time1, false function() cam.LocalPosition = currentposcam end)
end

return shake
