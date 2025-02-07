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
		PlaySound("LEVEL_TRIGGER_WDOOROPEN2")
		TextOut("'Use the BouncyCatnip to pass this part'")
		self.obj550 = CreateObject {x=8544, y=3462, z=2000, logic="CustomLogic", name="BouncyCatnip"}
		self.obj551 = CreateObject {x=8801, y=3462, z=2000, logic="CustomLogic", name="BouncyCatnip"}
		self.obj552 = CreateObject {x=9057, y=3462, z=2000, logic="CustomLogic", name="BouncyCatnip"}
		CameraToPoint(9846,3550)
	end
end
