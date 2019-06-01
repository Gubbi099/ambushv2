local pos = LocalPlayer():GetPos()
local ang = LocalPlayer():GetAngles()
cam.Start3D2D(pos,ang,1)

	draw.RoundedBoxEx(0,0,0,20,50,Color(255,0,0,255))

cam.End2D()