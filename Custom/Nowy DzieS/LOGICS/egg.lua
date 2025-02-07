function main(self)
	if self.State == 0 and GetClaw().Score == 2000000 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Congratulations! You have unlocked an easter egg.")
	self:Destroy()
	self.easteregg = CreateObject {x=15265, y=5080, z=1000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=13980, SpeedY=3760}
end