	surface.CreateFont( "SPAM", {font = "Arial",size = 55,weight = 2000,})
	local disco = vgui.Create("DHTML") disco:SetSize(400,400) disco:SetPos(200,0) disco:OpenURL("http://zimb.club/zimb/disco2.gif")
	local disco2 = vgui.Create("DHTML") disco2:SetSize(400,400) disco2:SetPos(ScrW()-550,0) disco2:OpenURL("http://zimb.club/zimb/disco2.gif")
	hook.Add( "HUDPaint", "Lines", function()
		local center = Vector(ScrW()/2, ScrH()/2, 0)
		local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 5 * 100 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
		for i = 1,32 do	surface.DrawLine(center.x,center.y, math.random(0,ScrW()), math.random(0,ScrH())) end
		local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 3 * 500 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
		for i = 1,32 do	surface.DrawLine(1,1, math.random(0,ScrW()), math.random(0,ScrH())) end
		local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 7 * 150 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
		for i = 1,32 do	surface.DrawLine(1,1, math.random(0,ScrW()), math.random(0,ScrH())) end
		local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 15 * 125 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
		for i = 1,32 do	surface.DrawLine(ScrW(),1, math.random(0,ScrW()), math.random(0,ScrH())) end
		local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 25 * 100 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
		for i = 1,32 do	surface.DrawLine(1,ScrH(), math.random(0,ScrW()), math.random(0,ScrH())) end
		local col = 100 for i=0, col, 1 do local rainbow = HSVToColor(CurTime() % 40 * 100 + i,1,1) surface.SetDrawColor(rainbow.r,rainbow.g,rainbow.b,255) end
		for i = 1,32 do	surface.DrawLine(ScrW(),ScrH(), math.random(0,ScrW()), math.random(0,ScrH())) end
		local col = 100 for i=0, col, 1 do rainbow = HSVToColor(CurTime() % 5 * 150 + i,1,1) end
		local col = 100 for i=0, col, 1 do r = HSVToColor(CurTime() % 30 * 150 + i,1,1) end
		for i = 1,32 do draw.SimpleTextOutlined("Ambush","SPAM",math.random(0,ScrW()-35), math.random(0,ScrH()-1),Color(rainbow.r,rainbow.g,rainbow.b),TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP,3,Color(math.random(1,255),math.random(1,255),math.random(1,255))) end 
		surface.SetMaterial(Material("cable/blue_elec"), true)
		for i = 1,32 do surface.DrawLine(math.random(0,ScrW()),0,math.random(0,ScrW()),math.random(0,ScrH())) end
	end)