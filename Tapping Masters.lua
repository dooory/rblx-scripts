--< Settings >--
local codes = {"update11", "5000likes", "500likes", "bestfansever", "epictapbuff", "release"}
local rebirthamounts = {}
local values = {
    ["Rebirth_Amount"] = nil
}
local Name = "Tapping Masters!"
_G.toggle = true



--< Functions >--
function unpacker(table)
    return unpack(table)
end

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameHUD.PopUps.Rebirth.Back.Main.Drop.Top.RebirthButtons:GetChildren()) do
    if not v:IsA("UIListLayout") then
        table.insert( rebirthamounts,i,tostring(v.Name))
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v.Name ==  Name then
        v:Destroy()
    end
end

--< Library >--
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local UI = library.new("Tapping Masters!", nil)

--< Main >--
local mainP = UI:addPage("Main")
local auto = mainP:addSection("Automation")
local codes = mainP:addSection("Codes")
local islands = mainP:addSection("Unlock Islands")

auto:addToggle("Auto-Click", false, function(state) -- Trying to get this to work
    toggle = state
    while toggle == true and _G.toggle == true and wait() do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
    end
end)

auto:addToggle("Auto-Rebirth", false, function(state)
    toggle = state
    while toggle == true and _G.toggle == true and wait() do 
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer("Rebirth", values["Rebirth_Amount"])
    end
end)

auto:addDropdown("RebirthAmount", {unpacker(rebirthamounts)}, function(state)
    values["Rebirth_Amount"] = state
end)

codes:addButton("Redeem All Codes", function()
    for i,v in ipairs(codes) do
        game:GetService("ReplicatedStorage").Events.Code:FireServer(v)
        print(v)
    end
end)

islands:addButton("Unlock All Islands", function()
    for i,v in pairs(game:GetService("Workspace").PortalUnlocks:GetChildren()) do
        v.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
end)

--< Misc >--
local credits = UI:addPage("Misc")
local destroy = credits:addSection("Destroy UI:")
local uilib = credits:addSection("UI Library Used: Venyx")
local creator = credits:addSection("Script made by: dory")

destroy:addButton("Destroy()", function()
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v.Name ==  Name then
            v:Destroy()
        end
    end
end)

uilib:addButton("Copy V3rmillion post link", function()
    setclipboard("https://v3rmillion.net/showthread.php?pid=7233501#pid7233501")
end)


uilib:addButton("Copy Venyx creators V3rmillion profile link", function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=244024")
end)

creator:addButton("Copy Gui v3rmillion Profile", function()
    setclipboard("https://v3rmillion.net/member.php?action=profile&uid=501204")
end)

creator:addButton("Copy Discord", function()
    setclipboard("dory#5547")
end)

UI:SelectPage(UI.pages[1], true)