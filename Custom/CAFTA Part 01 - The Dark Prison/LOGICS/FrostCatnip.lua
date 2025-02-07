function main(self)
    if self.State == 0 then
        self.State = 1
        self:SetImage("CUSTOM_FROSTCATNIP")
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
        self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_GREENGLITTER"}
    end
end
function attack(self)
    PlaySound("GAME_MAGICPOWERUP")
	TextOut("Argh... Brain freeze!")
	ClawGivePowerup(9914, 25)
	SetMusicSpeed(0, 0)
	self:Destroy()
	self.anipow:Destroy()
end
