local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dooory/rblx-scripts/main/Tools/edited-turtle-ui.lua"))()
local window = library:window("Made by dory")

window:button("Hydroxide", function()
    local owner = "Upbolt"
    local branch = "revision"

    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end

    webImport("init")
    webImport("ui/main")
end)

window:button("Dex Explorer", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end)
