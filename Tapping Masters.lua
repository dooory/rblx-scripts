--[[
_G.ac = true
local codes = {"update11", "5000likes", "500likes", "bestfansever", "epictapbuff", "release"}
local codeindex = 1

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dooory/rblx-scripts/main/edited-turtle-ui.lua"))()
local main = library:window("Tapping Masters")

--< Main >--

main:label("Made by dory")
main:label("Credits: Turtle Ui Library")

main:toggle("Auto-Click", false, function(autoclick)
    toggle = autoclick
    while autoclick == true and wait() do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
    end
end)

--< Other > --

local other= library:window("Other")

other:label("Other")
other:button("Redeem All Codes", function()
    for i = 1, #codes do
        game:GetService("ReplicatedStorage").Events.Code:FireServer(codes[codeindex])
        codeindex = codeindex + 1
        print(codes[codeindex])
    end
end)
]]

--< Settings >--

local codes = {"update11", "5000likes", "500likes", "bestfansever", "epictapbuff", "release"}
local codeIndex = 1
_G.toggle = true

--< Library >--
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

--< Main >--

local mainW = library:CreateWindow("Tapping Masters")
local auto = mainW:CreateFolder("Automation")

auto:Toggle("Auto-Click", true, function(state) -- Trying to get this to work
    shared.toggle = state
    while shared.toggle and _G.toggle == true and wait() do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
    end
end)


--< Misc >--

local misc = library:CreateWindow("Miscellaneous")
local codes = misc:CreateFolder("Codes")
local credits = misc:CreateFolder("Credits")

codes:Button("Redeem All Codes", function()
    print(1)
    for i,v in ipairs(codes) do
        game:GetService("ReplicatedStorage").Events.Code:FireServer(v)
        print(tostring(v))
    end
end)

