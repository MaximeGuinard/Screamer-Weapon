if CLIENT then

local function draw087()

if LocalPlayer():GetNWBool("draw087") then
	    surface.SetDrawColor( 255, 255, 255, 255 )
        surface.SetMaterial( Material("kyscreamer/kyscreamere.png"))
        surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
end

end
hook.Add("HUDPaint", "draw087", draw087)
end