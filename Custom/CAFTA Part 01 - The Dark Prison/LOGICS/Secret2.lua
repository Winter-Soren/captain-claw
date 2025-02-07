function main(self)
    if self.State == 0 then
        self.State = 1
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
    end
end
function attack(self)
	PlaySound("LEVEL_TRIGGER_WDOOROPEN2")
	TextOut("'Use the AngelCatnip to go back'")
	self.obj151 = CreateObject {x=7781, y=3514, z=1000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=8412, SpeedY=4421}
	self.obj151.DrawFlags.NoDraw = true
	self.obj152 = CreateObject {x=9361, y=3466, z=2000, logic="CustomLogic", name="AngelCatnip"}
	self:Destroy()
end
