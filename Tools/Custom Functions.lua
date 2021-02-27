-- < Functions > --
local tpto = tpto

-- < Upvalues > --
local LocalPlayer = Players.LocalPlayer
local LocalMouse = LocalPlayer:GetMouse()
local instance_table = game:GetDescendants()
local env = (getgenv and getgenv or getrenv and getrenv or getfenv)()
local env_add = function(p1, p2, p3, p4)
if rawget(env, p1) then return end
if p4 and not rawget(env, p4) then return end
rawset((p4 and env[p4] or env), p1, (p3 and newcclosure or function(p1) 
return p1
end)(p2))
end

-- < Source > --

env_add("tpto", function(p1)
        success, error = pcall(function()
            if p1:IsA("MeshPart") or p1:IsA("BasePart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(p1.Position)
            else
                
                LocalPlayer.Character.HumanoidRootPart.Cframe = CFrame.new(p1.Position)
            end
        end)
end)