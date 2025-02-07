function main(self)
    if self.State == 0 then
        self.State = 1
        self:SetImage("CUSTOM_GUMMYCATNIP")
        self.AttackRect = {-20,-20,20,20}
        self.AttackTypeFlags = ObjectType.Player
        self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_GLITTER"}
    end
end
function attack(self)
	PlaySound("GAME_CATNMAG")
	ClawGivePowerup(9916, 45)
	SetMusicSpeed(0, 0)
	self:Destroy()
	self.anipow:Destroy()
end
