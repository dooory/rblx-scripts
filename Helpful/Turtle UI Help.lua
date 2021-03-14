--[[
V3rmillion link: 
https://v3rmillion.net/showthread.php?tid=1058356

Load library:
Code:
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()

Add windows:
Code:
local window = library:window("Window")

Add a button:
Code:
-- Name of button, callback

window:button("Button name", function()
   print("pressed button")
end)

Add a toggle:
Code:
-- Name of the toggle, default state of the toggle, callback

window:toggle("Example toggle", true, function(bool)
    print(bool) -- bool is true or false depending on the state of the toggle
end)

Add a color picker:

Code:
-- Name, default color (set to true to make the default rainbow), callback

window:colorpicker("Color Picker", Color3.fromRGB(255, 255, 255), function(color)
   print(color)
end)

Add a slider:
Code:
-- Name of slider, minimum value, maximum value, default value, callback

window:slider("Example Slider",0,100,20, function(value)
   print(value)
end)

Add a label:
Code:
-- Text, color: setting color to true will give it a rainbow effect!

window:label("Credits to Intrer#0421", Color3.fromRGB(127, 143, 166))

Add an input box (aka textbox):
Code:
-- Name, callback

window:box("Walkspeed", function(text, focuslost)
   if focuslost then
   print(text)
   end
end)
-- The callback will be called with two arguments, the text that the player inputted and whether the player has stopped writing

Add a dropdown:
Code:
-- Name, table with names of the button that you want, callback that will be called with the name of the button that was pressed

local dropdown = window:dropdown("Example dropdown", {"Button 1", "Button 2", "Third button"}, function(name)
   print(name)
end)

Add buttons to the dropdown after the fact:
Code:
-- Name

dropdown:button("New button")

Remove buttons from the dropdown after the fact, will warn you if the button doesn't exist:
Code:
-- Name

dropdown:remove("Button")

Add a keybind for showing and hiding the UI:
Code:
-- Key

library:keybind("P")

Destroy the UI:
Code:
library:Destroy()
--]]
