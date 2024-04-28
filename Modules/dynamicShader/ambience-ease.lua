-- self: The table of ambiences to ease (must not be nil)
-- self: The table of ambiences to ease (must be a table)
-- well this is just a mess
local ambience_ease = {}
local ambience = require("ambience")
local regularcycle = {
    {
		config = ambience.noon,
		duration = 10.0, -- in seconds
		-- cross-fade with next ambience (total time == fadeOut + next ambience's fadeIn)
		fadeOut = 5.0, -- optional, duration * 0.5 by default
		fadeIn = 5.0, -- optional, duration * 0.5 by default
	},
	{
		config = ambience.dusk,
		duration = 3.0,
	},
	{
		config = ambience.midnight,
		duration = 4.0,
	},
	{
		config = ambience.dawn,
		duration = 3.0,
	},

}

function ambience_ease.ease( self, config ,duration)
    if not self then
                error( "ambience_ease.ease should not be passed nil as self" )
            end
            if type( self ) ~= "table" then
                error( "ambience_ease.ease should be passed a table as self" )
            end
	for _, ambience in ipairs( self ) do
		ambience.config = config
		ambience:startCycle( self, regularcycle )
	end
    for _, cycle in ipairs(regularcycle) do
        if cycle.duration == duration then
            print("Found cycle with duration 10.0 seconds")
            Timer(cycle.duration,false,function()
                ambience:pauseCycle()
                ambience:stopCycle()
            end)
        end
    end
end


ambience_ease.ease = ambience_ease.ease

return ambience_ease
