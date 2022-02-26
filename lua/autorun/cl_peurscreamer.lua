if CLIENT then

local function peurscream()

if LocalPlayer():GetNWBool("peurscream") then
	    surface.SetDrawColor( 255, 255, 255, 255 )
        surface.SetMaterial( Material("kyscreamer/peurscreame.jpg"))
        surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
end

end
hook.Add("HUDPaint", "peurscream", peurscream)
end