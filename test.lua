local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/mag"))()
local Main = Library.Category("Main", "Main Code", Color3.fromRGB(0, 204, 204))
Main:Section("Player")
Main:Button(
    "Sit",
    function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end
)
Main:Toggle(
    "Noclip",
    function(State)
        if State == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        else
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
        end
    end
)
Main:Slider(
    "Speed",
    16,
    200,
    true,
    function(numbers)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = numbers
    end
)
Main:Box(
    "print",
    "text",
    function(text)
        print(text)
    end
)
Main:Dropdown(
    "Printer",
    {"A", "B", "C"},
    function(update)
        print(update)
    end
)
Main:ColorPick(
    "Color",
    function(color)
        print(color)
    end
)
Main:SearchBox(
    "Items",
    {"Axe", "Pickaxe", "Block", "Item"},
    function(update)
        print(update)
    end
)
Main:Bind(
    "Reset",
    "R",
    function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
)