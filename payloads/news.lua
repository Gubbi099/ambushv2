surface.CreateFont( "NEWS1", {font = "Arial",size = 70,weight = 2000,})
surface.CreateFont( "NEWS2", {font = "Arial",size = 150,weight = 2000,})
local newsPan1 = vgui.Create("DPanel")
		newsPan1:SetSize(ScrW(), 150)
		newsPan1:SetPos(0, ScrH()-150)
		newsPan1.Paint = function()
			surface.SetDrawColor(255,255,255,255)
			surface.DrawRect(0,0,newsPan1:GetWide(),newsPan1:GetTall())
			surface.SetDrawColor(124,0,90,255)
			surface.DrawRect(0,4,newsPan1:GetWide(),newsPan1:GetTall())
		end
	local newsPan2 = vgui.Create("DPanel")
		newsPan2:SetSize(ScrW(),ScrH())
		newsPan2:SetPos(0,0)
		newsPan2.Paint = function()
		local trap3 = {
			{x = ScrW()-504, y = ScrH()-150},
			{x = ScrW()-439, y = ScrH()-254},
			{x = ScrW(), y = ScrH()-254},
			{x = ScrW(), y = ScrH()-150},
		}
		local trap4 = {
			{x = ScrW()-500, y = ScrH()-146},
			{x = ScrW()-435, y = ScrH()-250},
			{x = ScrW(), y = ScrH()-250},
			{x = ScrW(), y = ScrH()-146},
		}
		local trap5 = {
			{x = ScrW()-475, y = ScrH()-156},
			{x = ScrW()-432, y = ScrH()-235},
			{x = ScrW()-8, y = ScrH()-235},
			{x = ScrW()-8, y = ScrH()-156},
		}
			draw.NoTexture()
			surface.SetDrawColor(255,255,255,255)
			surface.DrawPoly(trap3)
			draw.NoTexture()
			surface.SetDrawColor(124,0,90,255)	
			surface.DrawPoly(trap4)
			draw.NoTexture()
			surface.SetDrawColor(143,36,113,180)	
			surface.DrawPoly(trap5)
		end
	local title2 = vgui.Create("DLabel", newsPan2)
	title2:SetFont("NEWS1")
	title2:SetText("Gmod News")
	title2:SizeToContents()
	title2:SetPos(ScrW()-title2:GetWide()-55, ScrH()-254+title2:GetTall()/2-12)
	title2:SetColor(Color(255,255,255))

	local title3 = vgui.Create("DLabel", newsPan1)
	title3:SetFont("NEWS2")
	title3:SetText("Breaking News " .. GetHostName() .. " Has been Taken Over By Ambush")
	title3:SizeToContents()
	title3:SetPos(ScrW(), 10)
	title3:SetColor(Color(255,255,255))
	timer.Create("movingtext2",.05,0,function()
		if title3:GetPos() >= 0-title3:GetWide() then
			title3:SetPos(Lerp(.5,title3:GetPos(),title3:GetPos()-10),10)
		else
			title3:SetPos(ScrW(),10)
		end
	end)

sound.PlayURL("http://ambush.pw/songs/46910792.mp3", "mono", function() end)
