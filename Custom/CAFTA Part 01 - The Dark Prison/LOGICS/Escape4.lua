function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-10,-10,10,10}
		self.AttackTypeFlags = ObjectType.Player
		self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_WARPGLITTER"}
	end
	if self.startTime then
		if GetTicks() - self.startTime > 2000 then
			claw.State = self.prevClawState
			self:Destroy()
			self.anipow:Destroy()
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
		TextOut("Fourth!")
		self.obj606 = CreateObject {x=9050, y=6534, z=2000, logic="TogglePeg3", image="LEVEL_PEG"}
		self.obj607 = CreateObject {x=8790, y=6534, z=2000, logic="TogglePeg", image="LEVEL_PEG"}
	end
end
