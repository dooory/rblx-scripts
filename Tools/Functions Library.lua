local library = {}
library.__index = library

function new()
    local newlib = {}

    return setmetatable(newlib, library)
end


--ty wally for this https://github.com/wally-rblx/uwuware-ui/blob/main/main.lua line 20
function library:round(num , bracket)
	bracket = bracket or 1
	local a = math.floor(num/bracket + (math.sign(num) * 0.5)) * bracket
	if a < 0 then
		a = a + bracket
	end
	return a
end

getgenv().funclib = new()
