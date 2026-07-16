-- LARS KEY SYSTEM + ACCESS PANEL
local p=game.Players.LocalPlayer;local g=p.PlayerGui;local h=game.HttpService
if getgenv().LH then getgenv().LH:Destroy()end
local ok,d=pcall(function()return readfile("lh_key")end)
local s=ok and d and h:JSONDecode(d)or{}
if s.k and os.time()-s.t<86400 then
local s=game:GetService("Players").LocalPlayer
local o=game:GetService("UserInputService")
local f=Instance.new("ScreenGui")
f.Parent=s.PlayerGui
local m=Instance.new("Frame")
m.Size=UDim2.new(0,450,0,420)
m.Position=UDim2.new(0.5,-225,0.5,-210)
m.BackgroundColor3=Color3.fromRGB(10,10,22)
m.BorderSizePixel=0
m.ClipsDescendants=true
local mc=Instance.new("UICorner")
mc.CornerRadius=UDim.new(0,25)
mc.Parent=m
m.Parent=f
local gl=Instance.new("Frame")
gl.Size=UDim2.new(1,0,0,3)
gl.Position=UDim2.new(0,0,0,0)
gl.BackgroundColor3=Color3.fromRGB(108,92,231)
gl.BorderSizePixel=0
local glc=Instance.new("UICorner")
glc.CornerRadius=UDim.new(0,25)
glc.Parent=gl
gl.Parent=m
local t=Instance.new("TextLabel")
t.Size=UDim2.new(1,0,0,45)
t.Position=UDim2.new(0,0,0,18)
t.BackgroundTransparency=1
t.Text="✦ ACCESS PANEL ✦"
t.TextColor3=Color3.fromRGB(240,240,255)
t.Font=Enum.Font.GothamBold
t.TextSize=28
t.Parent=m
local u=Instance.new("TextLabel")
u.Size=UDim2.new(1,0,0,25)
u.Position=UDim2.new(0,0,0,65)
u.BackgroundTransparency=1
u.Text="Join the group to continue"
u.TextColor3=Color3.fromRGB(140,140,180)
u.TextSize=15
u.Font=Enum.Font.Gotham
u.Parent=m
local icon=Instance.new("TextLabel")
icon.Size=UDim2.new(0,40,0,40)
icon.Position=UDim2.new(1,-55,0,10)
icon.BackgroundTransparency=1
icon.Text="✖"
icon.TextColor3=Color3.fromRGB(80,80,120)
icon.TextSize=24
icon.Font=Enum.Font.Gotham
icon.Parent=m
local l={"▸ Click JOIN GROUP","▸ Link copied to clipboard","▸ Paste in Chrome browser","▸ Join & enjoy your script"}
for i=1,#l do
    local a=Instance.new("TextLabel")
    a.Size=UDim2.new(1,-30,0,30)
    a.Position=UDim2.new(0,15,0,105+(i-1)*35)
    a.BackgroundTransparency=1
    a.Text=l[i]
    a.TextColor3=Color3.fromRGB(190,190,220)
    a.TextSize=16
    a.Font=Enum.Font.Gotham
    a.TextXAlignment=Enum.TextXAlignment.Left
    a.Parent=m
end
local b=Instance.new("TextButton")
b.Size=UDim2.new(0.85,0,0,58)
b.Position=UDim2.new(0.075,0,0,270)
b.BackgroundColor3=Color3.fromRGB(108,92,231)
b.BorderSizePixel=0
b.Text="▶ JOIN GROUP"
b.TextColor3=Color3.fromRGB(255,255,255)
b.TextSize=20
b.Font=Enum.Font.GothamBold
local bc=Instance.new("UICorner")
bc.CornerRadius=UDim.new(0,15)
bc.Parent=b
b.Parent=m
local c2=Instance.new("TextLabel")
c2.Size=UDim2.new(1,0,0,25)
c2.Position=UDim2.new(0,0,1,-30)
c2.BackgroundTransparency=1
c2.Text="✉ jmes.kgn. on Discord"
c2.TextColor3=Color3.fromRGB(60,60,90)
c2.TextSize=13
c2.Font=Enum.Font.Gotham
c2.Parent=m
local copied=Instance.new("TextLabel")
copied.Size=UDim2.new(0,220,0,45)
copied.Position=UDim2.new(0.5,-110,0.5,-22)
copied.BackgroundColor3=Color3.fromRGB(25,25,45)
copied.BorderSizePixel=2
copied.BorderColor3=Color3.fromRGB(0,255,180)
copied.Text="✓ COPIED!"
copied.TextColor3=Color3.fromRGB(0,255,200)
copied.TextSize=20
copied.Font=Enum.Font.GothamBold
copied.Visible=false
local copc=Instance.new("UICorner")
copc.CornerRadius=UDim.new(0,12)
copc.Parent=copied
copied.Parent=m
b.MouseButton1Click:Connect(function()
    local clip=setclipboard or toclipboard
    if clip then
        clip("https://t.me/larskeys_bot")
    else
        local fr=Instance.new("Frame")
        fr.Size=UDim2.new(0,0,0,0)
        fr.Parent=s.PlayerGui
        local tb=Instance.new("TextBox")
        tb.Text="https://t.me/larskeys_bot"
        tb.Size=UDim2.new(0,0,0,0)
        tb.Parent=fr
        tb:CaptureFocus()
        tb:ReleaseFocus()
        fr:Destroy()
    end
    copied.Visible=true
    b.Text="✓ JOINED!"
    b.BackgroundColor3=Color3.fromRGB(0,200,150)
    wait(2)
    copied.Visible=false
    b.Text="▶ JOIN GROUP"
    b.BackgroundColor3=Color3.fromRGB(108,92,231)
end)
else
local kg=Instance.new("ScreenGui",g)kg.Name="LH"
local bg=Instance.new("Frame",kg)bg.Size=UDim2.new(0,400,0,300)bg.Position=UDim2.new(.5,-200,.5,-150)bg.BackgroundColor3=Color3.fromRGB(10,10,22)bg.Draggable=true;Instance.new("UICorner",bg).CornerRadius=UDim.new(0,25)
local gl2=Instance.new("Frame",bg)gl2.Size=UDim2.new(1,0,0,3)gl2.BackgroundColor3=Color3.fromRGB(108,92,231)Instance.new("UICorner",gl2).CornerRadius=UDim.new(0,25)
local tt=Instance.new("TextLabel",bg)tt.Size=UDim2.new(1,0,0,45)tt.Position=UDim2.new(0,0,0,18)tt.BackgroundTransparency=1;tt.Text="✦ KEY SYSTEM ✦"tt.TextColor3=Color3.fromRGB(240,240,255)tt.Font=Enum.Font.GothamBold;tt.TextSize=28
local inp=Instance.new("TextBox",bg)inp.Size=UDim2.new(1,-40,0,45)inp.Position=UDim2.new(0,20,0,80)inp.BackgroundColor3=Color3.fromRGB(25,25,45)inp.TextColor3=Color3.new(1,1,1)inp.PlaceholderText="Введите ключ..."inp.PlaceholderColor3=Color3.fromRGB(120,120,120)inp.Font=Enum.Font.Gotham;inp.TextSize=15;inp.ClearTextOnFocus=false;Instance.new("UICorner",inp).CornerRadius=UDim.new(0,12)
Instance.new("UIStroke",inp).Color=Color3.fromRGB(108,92,231)
local gk=Instance.new("TextButton",bg)gk.Size=UDim2.new(1,-40,0,45)gk.Position=UDim2.new(0,20,0,140)gk.BackgroundColor3=Color3.fromRGB(108,92,231)gk.Text="GET KEY"gk.Font=Enum.Font.GothamBold;gk.TextSize=14;Instance.new("UICorner",gk).CornerRadius=UDim.new(0,12)
local ex=Instance.new("TextButton",bg)ex.Size=UDim2.new(1,-40,0,50)ex.Position=UDim2.new(0,20,0,200)ex.BackgroundColor3=Color3.fromRGB(50,200,100)ex.Text="АКТИВИРОВАТЬ"ex.Font=Enum.Font.GothamBold;ex.TextSize=16;Instance.new("UICorner",ex).CornerRadius=UDim.new(0,12)
local st=Instance.new("TextLabel",bg)st.Size=UDim2.new(1,-40,0,20)st.Position=UDim2.new(0,20,0,262)st.BackgroundTransparency=1;st.Text=""st.TextColor3=Color3.fromRGB(150,150,150)st.Font=Enum.Font.Gotham;st.TextSize=11
local keys={"МОПС","СКИТ","ТАКСА","КИТ","LARS","MOPS","ARDOR","MALTUIPY"}
gk.MouseButton1Click:Connect(function()pcall(function()setclipboard("https://t.me/larskeys_bot")end)gk.Text="СКОПИРОВАНО!"gk.BackgroundColor3=Color3.fromRGB(0,200,150)task.wait(1.5)gk.Text="GET KEY"gk.BackgroundColor3=Color3.fromRGB(108,92,231)end)
ex.MouseButton1Click:Connect(function()local k=inp.Text;local ok=false;for _,v in ipairs(keys)do if k==v then ok=true break end end
if ok then
ex.Text="АКТИВИРОВАНО!"ex.BackgroundColor3=Color3.fromRGB(0,200,150)st.Text="✅ Ключ верный!"writefile("lh_key",h:JSONEncode({key=k,time=os.time()}))
task.wait(0.5)kg:Destroy()
loadstring(game:HttpGet("https://pastebin.com/raw/GdQULgA6"))()
else
kg:Destroy()
spawn(function()
local fs=Instance.new("ScreenGui",g)fs.Name="LARS_OVERLAY"
local img=Instance.new("ImageLabel",fs)img.Size=UDim2.new(1,0,1,0)img.BackgroundTransparency=0;img.Image="rbxassetid://102718346392194"img.ScaleType=Enum.ScaleType.Stretch;img.ZIndex=10
local snd=Instance.new("Sound",fs)snd.SoundId="rbxassetid://113111351541536"snd.Volume=10;snd.Looped=true;snd:Play()
local colors={Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0),Color3.fromRGB(0,0,255),Color3.fromRGB(255,255,0),Color3.fromRGB(255,0,255),Color3.fromRGB(0,255,255),Color3.fromRGB(255,100,0),Color3.fromRGB(100,0,255)}
local bgOverlay=Instance.new("Frame",fs)bgOverlay.Size=UDim2.new(1,0,1,0)bgOverlay.BackgroundTransparency=0.5;bgOverlay.ZIndex=5
spawn(function()while true do for _,c in ipairs(colors)do bgOverlay.BackgroundColor3=c;task.wait(0.3)end end end)
spawn(function()while true do for _,c in ipairs(colors)do img.ImageColor3=c;task.wait(0.3)end end end)
local rot=0
spawn(function()while true do rot=rot+1;img.Rotation=rot;task.wait(0.05)end end)
end)
end end)
getgenv().LH=kg
end
