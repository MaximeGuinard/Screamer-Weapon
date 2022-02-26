if CLIENT then

local function chancla()

if LocalPlayer():GetNWBool("chancla") then
	    surface.SetDrawColor( 255, 255, 255, 255 )
        surface.SetMaterial( Material("kyscreamer/chanclascream.png"))
        surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
end

end
hook.Add("HUDPaint", "chancla", chancla)
end