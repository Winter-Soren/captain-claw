function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-10,-10,10,10}
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
		TextOut("No...")
		self.obj500 = CreateObject {x=4963, y=4922, z=2000, logic="StartSteppingStone", image="LEVEL_PEG"}
		self.obj501 = CreateObject {x=5113, y=4922, z=2000, logic="StartSteppingStone", image="LEVEL_PEG"}
		self.obj502 = CreateObject {x=5263, y=4922, z=2000, logic="StartSteppingStone", image="LEVEL_PEG"}
		self.obj503 = CreateObject {x=5413, y=4922, z=2000, logic="StartSteppingStone", image="LEVEL_PEG"}
		self.obj504 = CreateObject {x=5563, y=4922, z=2000, logic="StartSteppingStone", image="LEVEL_PEG"}
		CameraToPoint(5228,4825)
	end
end
