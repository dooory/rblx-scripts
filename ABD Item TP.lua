local Players = game:GetService("Players")
local plr = Players.LocalPlayer

getgenv().on = true

local dontbring = {
    "Arrow", 
    "Rokakaka", 
    "Banknote",
    "Cash"
}

local function getitems()
    for i,v in ipairs(dontbring) do
        return v
    end 
end

game.workspace.ChildAdded:Connect(function(item)
   if item:IsA("Tool") and item.Name ~= getitems() and getgenv().on and v:FindFirstChild("Handle") then
        local handle = item:FindFirstChild("Handle") 
        handle.CanCollide = false
        handle.Position = plr.Character.HumanoidRootPart.Position
    end
    for i,v in pairs(game.workspace:GetChildren()) do
        if v:IsA("Tool") and getgenv().on and v.Name ~= getitems() and v:FindFirstChild("Handle") then
            local handle = v:FindFirstChild("Handle")
            handle.CanCollide = false
            handle.Position = plr.Character.HumanoidRootPart.Position
        end
    end
end)