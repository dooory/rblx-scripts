--[[

Getting Loadstring

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

Creating UI Library Window

local Window = Library.CreateLib("TITLE", "DarkTheme")

Themes:
    LightTheme
    DarkTheme
    GrapeTheme
    BloodTheme
    Ocean
    Midnight
    Sentinel
    Synapse

Creating Tabs

local Tab = Window:NewTab("TabName")

Creating Section

local Section = Tab:NewSection("Section Name")

Creating Buttons

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)
Creating Toggles

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
Creating Sliders

Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Creating Textboxes

Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)

Creating Keybinds

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

Creating Dropdowns

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

Applying Custom Themes / Colors

Make new table, here you are going to put your colors, as shown below.
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

Applying it: Change your window code little bit.
local Window = Library.CreateLib("TITLE", colors)

]]