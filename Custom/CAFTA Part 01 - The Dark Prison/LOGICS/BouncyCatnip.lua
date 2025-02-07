function main(self)
    if self.State == 0 then
        self.State = 1
        self:SetImage("CUSTOM_BOUNCYCATNIP")
        self.AttackRect = {-20,-20,20,20}
        self.AttackTypeFlags = ObjectType.Player
        self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_GLITTER"}
    end
end
function attack(self)
	PlaySound("GAME_FOODITEM")
	ClawJump(400)
	ClawSound("CUSTOM_TRIGGER_1000")
	self:Destroy()
	self.anipow:Destroy()
end
