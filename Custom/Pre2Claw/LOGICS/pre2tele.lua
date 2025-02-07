function main(self)
	if self.State == 0 then
		self.State = 10
		self.AttackRect = {-32,-16,32,16}
		self.AttackTypeFlags = ObjectType.Player
	
		self.wraper = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="SpecialPowerup", image="GAME_WARP"}
		self.wraper.DrawFlags.NoDraw = true
		self.wraper.SpeedX = self.SpeedX
		self.wraper.SpeedY = self.SpeedY
		self.wraper.AttackRect = {-32,-16,32,16}
		self.wraper.AttackTypeFlags = ObjectType.Player
	
		self.tele = CreateObject {x=self.X, y=self.Y, z=2000, logic="AniCycle", image="CUSTOM_PRE2TELE"}
		self.tele:SetAnimation("CUSTOM_CYCLE60")
	end
end
function attack(self)
	self.tele:Destroy()
	self:Destroy()
end