local shake = {}
local clock = 0
local FPSlimit = 30
shake.new = function (y1, x1, z1, time1)
	for i = 1, time1 do
		Timer(tick(), false, function()
            local x = math.random(-100,x1)/x1
            local y = math.random(-100,y1)/y1
            local z = math.random(-100,z1)/z1
            Camera.LocalPosition = Number3(x,y,z)
        end)
		--print(i,x,y,z)
		--game:GetService("RunService").RenderStepped:Wait()
	end
	Camera.LocalPosition = Number3(0,0,0)
end

function tick(dt)
    local Start = os.clock()
    local DeltaTime = os.clock()-Start
end


return shake
