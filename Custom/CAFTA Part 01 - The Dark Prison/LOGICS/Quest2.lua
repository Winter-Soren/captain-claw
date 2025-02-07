function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 3000 then
			claw.State = self.prevClawState
			self:Destroy()
			CameraToClaw(x,y)
			return
		end
	end
end
function attack(self)
	local claw = GetClaw()
	if not self.startTime then
		self.startTime = GetTicks()
		self.prevClawState = claw.State
		claw.State = -1
		TextOut("I can't let those scumbags breaking out this prison!")
	end
end
