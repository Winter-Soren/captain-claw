function main(self)
    if self.State == 0 then
        self.State = 1
        self:SetImage("CUSTOM_MAPPIECE2")
        self.AttackRect = {-20,-20,20,20}
        self.AttackTypeFlags = ObjectType.Player
        self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_WARPGLITTER"}
    end
end
function attack(self)
    TextOut("One piece left!")
	PlaySound("GAME_MAPPIECE")
	self:Destroy()
	self.anipow:Destroy()
end
