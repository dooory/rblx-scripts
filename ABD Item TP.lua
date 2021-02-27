--< Settings >--



--< Library >--
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dooory/rblx-scripts/main/Tools/Venyx-UI.lua"))()
local UI = library.new("ABDM")

--< Windows >--
local auto = UI:addPage("Automation")
local itemtp = auto:addSection("Item Tp")

itemtp:addToggle("Item TP")