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
		TextOut("Aaaaand... the fifth!")
		self.obj608 = CreateObject {x=8920, y=6534, z=2000, logic="TogglePeg4", image="LEVEL_PEG"}
		self.obj609 = CreateObject {x=8424, y=6451, z=2000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=23317, SpeedY=11060}
		self.obj609.DrawFlags.NoDraw = true
		self.obj610 = CreateObject {x=11781, y=7966, z=2000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=12106, SpeedY=7547}
		self.obj610.DrawFlags.NoDraw = true
	end
end
