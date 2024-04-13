local Buffer = {}
Buffer.__index = Buffer
-- this to call buffer @@local myBuffer = Buffer()
-- called a meta moduel
setmetatable(Buffer, {
    __call = function(cls, ...)
        return cls:new(...)
    end
})
-- str format Buffer:new("somethign")
function Buffer:new()
    local instance = setmetatable({data = {}}, Buffer)
    return instance
end
-- string type at item
function Buffer:add(item)
    table.insert(self.data, item)
end
-- find index str format
function Buffer:get(index)
    return self.data[index]
end
-- destroy  a index str format
function Buffer:remove(index)
    table.remove(self.data, index)
end
-- return 
function Buffer:size()
    return #self.data
end

return Buffer
