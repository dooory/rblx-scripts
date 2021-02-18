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
