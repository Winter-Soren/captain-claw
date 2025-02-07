function main(self)
    if self.State == 0 then
        self.State = 1
        self.powerup = CreateObject {x=self.X, y=self.Y, z=-9999, logic="SpecialPowerup", image="GAME_MAPPIECE"}
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
    end
end
function attack(self)
    PlaySound("GAME_MAPPIECE")
	self:Destroy()
end
