function main(self)
	if self.State == 0 then
		self.State = 1
		self.powerup = CreateObject {x=self.X, y=self.Y, z=2000, logic="GlitterlessPowerup", image="CUSTOM_GCAT"}
		self.powerup.Points = 0
		self.powerup.AttackRect = {-40,-40,40,40}
		self.powerup.AttackTypeFlags = ObjectType.Player
		self.AttackRect = {-40,-40,40,40}
		self.AttackTypeFlags = ObjectType.Player
		self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_GLITTER"}
	end
end
function attack(self)
	PlaySound("GAME_CATNMAG")
	ClawGivePowerup(9916, 20)
	self:Destroy()
	self.anipow:Destroy()
end