local ply = LocalPlayer()
local a = ply:LookupBone("ValveBiped.Bip01_Head1")
local num = 1


function head()
	num = num +1
	for k,v in pairs(player.GetAll()) do
		
		v:ManipulateBoneScale(a, Vector(4,4,4)) 
		v:ManipulateBoneAngles(a, Angle(0,0,num))

	end
end

timer.Create("head", 0.01,0, head)