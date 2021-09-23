--gamelink https://www.roblox.com/games/7393403076/Anime-Artifacts-Simulator-UPDATE

--I was gonna do childadded but I got to lazy lmao

while wait(1) do
    if _G.CoinFarm == false then print("Coin Farm is disabled") break end
    
    for _,coin in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
        
        local Base = coin:FindFirstChild("Base")
        
        if Base then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, Base, 0)
            wait()
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, Base, 1)
        end
    end
end
