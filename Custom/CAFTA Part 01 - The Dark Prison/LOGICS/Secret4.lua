function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 2000 then
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
		PlaySound("LEVEL_TRIGGER_WDOOROPEN1")
		TextOut("'Use the GummyCatnip for a boost in power, speed, time and jump height'")
		self.obj550 = CreateObject {x=11859, y=2623, z=2000, logic="CustomLogic", name="GummyCatnip"}
		CameraToPoint(12719,2526)
	end
end
