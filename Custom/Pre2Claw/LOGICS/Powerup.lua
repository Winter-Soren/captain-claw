function main(self)
	self:AnimationStep()
	if self.State == 0 then
		self.State = 1
		self:SetImage("CUSTOM_PRE2CAT")
		self:SetAnimation("CUSTOM_CYCLE60")
		self.AttackRect = {-40, -40, 40, 40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
		if self.SpeedX == 0 then
			ClawGivePowerup(9916, 10)
		elseif self.SpeedX == 1 then
			ClawGivePowerup(9916, 20)
		end
	PlaySound("GAME_CATNMAG")
	self:Destroy()
end