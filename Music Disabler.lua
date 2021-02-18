for i,v in pairs(game:GetDescendants()) do
    if v.Name == "Music" then
        v.Playing = false
    end
end