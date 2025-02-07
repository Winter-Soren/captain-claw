function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 1000 then
			claw.State = self.prevClawState
			self:Destroy()
			self.obj101:Destroy()
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
		TextOut("Hidden platform?!")
		self.obj100 = CreateObject {x=15900, y=3575, z=1000, logic="Elevator", image="CUSTOM_TPEG2"}
		self.obj100:SetFrame(1)
		self.obj100.DrawFlags.NoDraw = true
		self.obj101 = CreateObject {x=15900, y=3575, z=1000, logic="DoNothing", image="CUSTOM_TPEG2"}
		self.obj101:SetFrame(1)
	end
end