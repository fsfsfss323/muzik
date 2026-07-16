repeat task.wait() until game:IsLoaded()
local p=game.Players.LocalPlayer;local g=p.PlayerGui;local h=game.HttpService
if getgenv().LH then getgenv().LH:Destroy()end
local ok,d=pcall(function()return readfile("lh_key")end)
local s=ok and d and h:JSONDecode(d)or{}
if s.k and os.time()-s.t<86400 then
print("KEY OK!")
else
local kg=Instance.new("ScreenGui",g)kg.Name="LH"
local b=Instance.new("Frame",kg)b.Size=UDim2.new(0,380,0,240)b.Position=UDim2.new(.5,-190,.5,-120)b.BackgroundColor3=Color3.fromRGB(20,20,30)b.Draggable=true;Instance.new("UICorner",b).CornerRadius=UDim.new(0,10)
Instance.new("UIStroke",b).Color=Color3.fromRGB(100,100,255)
local t=Instance.new("TextLabel",b)t.Size=UDim2.new(1,0,0,35)t.Position=UDim2.new(0,0,0,12)t.BackgroundTransparency=1;t.Text="LARS HUB KEY"t.TextColor3=Color3.new(1,1,1)t.TextSize=20;t.Font=Enum.Font.GothamBold
local inp=Instance.new("TextBox",b)inp.Size=UDim2.new(1,-30,0,38)inp.Position=UDim2.new(0,15,0,55)inp.BackgroundColor3=Color3.fromRGB(35,35,50)inp.TextColor3=Color3.new(1,1,1)inp.PlaceholderText="Key..."inp.Font=Enum.Font.Gotham;inp.TextSize=14;Instance.new("UICorner",inp).CornerRadius=UDim.new(0,7)
local gk=Instance.new("TextButton",b)gk.Size=UDim2.new(1,-30,0,38)gk.Position=UDim2.new(0,15,0,103)gk.BackgroundColor3=Color3.fromRGB(100,100,255)gk.Text="GET KEY"gk.Font=Enum.Font.GothamBold;gk.TextSize=13;Instance.new("UICorner",gk).CornerRadius=UDim.new(0,7)
local ex=Instance.new("TextButton",b)ex.Size=UDim2.new(1,-30,0,38)ex.Position=UDim2.new(0,15,0,151)ex.BackgroundColor3=Color3.fromRGB(50,200,100)ex.Text="EXECUTE"ex.Font=Enum.Font.GothamBold;ex.TextSize=13;Instance.new("UICorner",ex).CornerRadius=UDim.new(0,7)
local keys={"МОПС","СКИТ","ТАКСА","КИТ","LARS","MOPS","ARDOR","MALTUIPY"}
gk.MouseButton1Click:Connect(function()pcall(function()setclipboard("https://t.me/larskeys_bot")end)gk.Text="COPIED!"gk.BackgroundColor3=Color3.fromRGB(50,180,80)task.wait(1.5)gk.Text="GET KEY"gk.BackgroundColor3=Color3.fromRGB(100,100,255)end)
ex.MouseButton1Click:Connect(function()local k=inp.Text;local ok=false;for _,v in ipairs(keys)do if k==v then ok=true break end end
if ok then ex.Text="SUCCESS!"ex.BackgroundColor3=Color3.fromRGB(50,180,80)writefile("lh_key",h:JSONEncode({key=k,time=os.time()}))task.wait(0.5)kg:Destroy()loadstring(game:HttpGet("https://pastebin.com/raw/GdQULgA6"))()
else ex.Text="ERROR!"ex.BackgroundColor3=Color3.fromRGB(220,60,60)task.wait(1.2)ex.Text="EXECUTE"ex.BackgroundColor3=Color3.fromRGB(50,200,100)end end)
getgenv().LH=kg
end
