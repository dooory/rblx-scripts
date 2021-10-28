local startTime = tick()

local library = {}

--ty wally for this https://github.com/wally-rblx/uwuware-ui/blob/main/main.lua line 20
function library:round(num, bracket)
	bracket = bracket or 1
	local a = math.floor(num/bracket + (math.sign(num) * 0.5)) * bracket
	if a < 0 then
		a = a + bracket
	end
	return a
end

--ty inf yield https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source
function library:serverhop()
    	local x = {}
    
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	end
end

function library:rspy()
    local owner = "Upbolt"
    local branch = "revision"
    
    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end
    
    webImport("init")
    webImport("ui/main")
end

function library:dex()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end

function library:decompiler()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/dooory/rblx-scripts/main/Tools/Advanced%20Decompiler.lua"))()
end

function library:CheckIfAlive(Char, Debug)
    local oldError = getrenv().error
    
    if (not Debug) then
        getrenv().error = function() return end
    end
    
    if Char ~= nil then
        local cHumanoid = Char:FindFirstChildOfClass("Humanoid")
        local cHead = Char:FindFirstChild("Head")
        
        if cHumanoid then
            if cHumanoid.Health > 0 then
                if cHead then
                    return true
                else
                    error(Char.Name.."'s Head == nil")
                    
                    return false
                end
            else
                error(Char.Name.."'s Humanoid Health == 0")
                
                return false
            end
        else
            error(Char.Name.."'s Humanoid == nil")
            
            return false
        end
    else
        error("Character == nil")
        
        return false
    end
    
    getrenv.error = oldError
end

getgenv().functions = library

print("Loaded Function Library in " .. tostring(tick() - startTime))
