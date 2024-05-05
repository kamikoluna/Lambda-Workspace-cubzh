local shake = {}
local clock = 0
local FPSlimit = 30
shake.new = function (cam,y1, x1, z1, time1)
 local currentposcam = cam.LocaPosition
	for i = 1, time1 do
		Timer(tick(), false, function()
            local x = math.random(-100,x1)/x1
            local y = math.random(-100,y1)/y1
            local z = math.random(-100,z1)/z1
            cam.LocalPosition = Number3(x,y,z)
        end)
	end
	cam.LocalPosition = Number3(0,0,0)
end

function tick()
    local Start = os.clock()
    local DeltaTime = os.clock()-Start
    return Deltatime
end


return shake
