-- LARS KEY SYSTEM + ACCESS PANEL
local p=game.Players.LocalPlayer;local g=p.PlayerGui;local h=game.HttpService
if getgenv().LH then getgenv().LH:Destroy()end
local ok,d=pcall(function()return readfile("lh_key")end)
local s=ok and d and h:JSONDecode(d)or{}
if s.k and os.time()-s.t<86400 then
loadstring(game:HttpGet("https://pastebin.com/raw/GdQULgA6"))()
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
