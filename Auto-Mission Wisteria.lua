local plr = game.Players.LocalPlayer

function miner()
    game:GetService("ReplicatedStorage").CheckCondition:InvokeServer("Miner")
    repeat
        wait()
    until workspace:FindFirstChild("Coalaaaa")
    fireclickdetector(workspace.Coalaaaa.ClickDetector)
    game:GetService("ReplicatedStorage").CheckCondition:InvokeServer("Miner")
end

function farmer()
    game:GetService("ReplicatedStorage").CheckCondition:InvokeServer("Farmer")
    repeat
        wait()
    until workspace:FindFirstChild("StrawHat")
    fireclickdetector(workspace.StrawHat.ClickDetector)
    game:GetService("ReplicatedStorage").CheckCondition:InvokeServer("Farmer")
end

function mizu()
    game:GetService("ReplicatedStorage").CheckCondition:InvokeServer("Mizuhara")
    fireclickdetector(game:GetService("Workspace").NPC.Nanami.Head.ClickDetector)
end

if workspace.NPC.Farmer.Quest.Transparency == 0 then
    farmer()
else
    print("sorry quest unavaliable")
end

if workspace.NPC.Miner.Quest.Transparency == 0 then
    miner()
else
    print("sorry quest unavaliable")
end

if workspace.NPC.Mizuhara.Quest.Transparency == 0 then
    mizu()
else
    print("sorry quest unavaliable")
end
