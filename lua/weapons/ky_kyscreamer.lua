
-----------------------------------------------------
SWEP.Category 			    = "KY_Sceamer"
SWEP.PrintName				= "KY-Screamer"			
SWEP.Author					= "Kayxy"
SWEP.Instructions			= "Pouf pouf les gens !"
SWEP.ViewModelFOV = 56
SWEP.Spawnable 				= true
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay          = 2
SWEP.Primary.Ammo			= "None"
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Ammo			= "None"
SWEP.Weight					= 1
SWEP.Slot					= 0
SWEP.SlotPos				= 2
SWEP.DrawCrosshair			= true
SWEP.IdleAnim				= true
SWEP.ViewModel				= "models/weapons/v_pistol.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"
 
SWEP.HoldType 				= "pistol"


function SWEP:Initialize()
        self:SetWeaponHoldType( self.HoldType )
end


local attente = 1
function SWEP:PrimaryAttack()
	if not SERVER then return end
if attente == 0 then return end
attente = 0
timer.Simple(4, function() attente = 1 end)

trace = self.Owner:GetEyeTrace()
if trace.Entity:IsPlayer() then
	trace.Entity:SetNWBool("draw087", true)
	trace.Entity:EmitSound("screamersound/criescreamer.wav")
	timer.Simple(4, function() trace.Entity:SetNWBool("draw087", false) end)
end
timer.Simple(4, function() trace.Entity:SetNWBool("draw087", false) end)

end

local attentee = 1
function SWEP:SecondaryAttack()
	if not SERVER then return end
		if attentee == 0 then return end
		attentee = 0
		timer.Simple(4, function() attentee = 1 end)


	if self.Owner:IsPlayer() then
		self.Owner:SetNWBool("draw087", true)
		self.Owner:EmitSound("screamersound/criescreamer.wav")
		timer.Simple(4, function() self.Owner:SetNWBool("draw087", false) end)
	end
	
end