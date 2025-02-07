function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
		self.anipow = CreateObject {x=self.X+200, y=self.Y-100, z=2500, logic="AniCycle", image="GAME_WARPGLITTER"}
	end
	if self.startTime then
		if GetTicks() - self.startTime > 3000 then
			claw.State = self.prevClawState
			self:Destroy()
			self.anipow:Destroy()
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
		TextOut("I need to find 5 portal frames to activate the door!")
	end
end
