function CreateESPPart(BodyPart,color, Name)
    if not BodyPart:FindFirstChild("ESPLabel") then
        local ESPPartparent = BodyPart
        local Box = Instance.new("BillboardGui")
        Box.Size = UDim2.new(10,0,1,0)
        Box.Name = "ESPLabel"
        Box.Adornee = ESPPartparent
        Box.AlwaysOnTop = true
        Box.Parent = BodyPart
        
        local TextLabel = Instance.new("TextLabel")
        TextLabel.Parent = Box
        TextLabel.BackgroundTransparency = 1
        TextLabel.Text = Name
        TextLabel.Size = UDim2.new(1,0,1,0)
        TextLabel.TextColor3 = color
        TextLabel.ZIndex = 5
        TextLabel.Font = Enum.Font.Gotham
        TextLabel.TextSize = _G.Settings.TextSize
        TextLabel.TextStrokeColor3 = _G.Settings.TextStrokeColor
        TextLabel.TextStrokeTransparency = _G.Settings.TextStrokeTransparency
    else
        return
    end
end

function ClearESP()
    for i,v in pairs(game:GetService("Workspace").Drops.Active:GetDescendants()) do
        if v:IsA("BillboardGui") then
            v:Destroy()
        end
    end
end

while wait(_G.Settings.RefreshRate) do
    for i,v in pairs(game:GetService("Workspace").Drops.Active:GetChildren()) do
        if _G.Enabled == true then
            if table.find(_G.Settings.WhitelistedItems, v.Name) then
                if v:IsA("Model") then
                    local Part = v.PrimaryPart or v:FindFirstChildOfClass("MeshPart") or v:FindFirstChildOfClass("Part")
                    
                    CreateESPPart(Part, Color3.fromRGB(255,0,0), v.Name)
                elseif v:IsA("MeshPart") then
                    CreateESPPart(v, Color3.fromRGB(255,0,0), v.Name)
                end
            end
        elseif _G.Enabled == false then
            ClearESP()
            break
        end
    end
end
