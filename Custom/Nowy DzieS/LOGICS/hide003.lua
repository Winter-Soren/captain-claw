function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-10,-10,10,10}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 1000 then
			claw.State = self.prevClawState
			self:Destroy()
			self.obj107:Destroy()
			self.obj109:Destroy()
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
		TextOut("No way!")
		self.obj106 = CreateObject {x=19205, y=2260, z=1000, logic="OneWayTriggerElevator", image="CUSTOM_TPEG2", YMin=2260, YMax=2360, SpeedY=270, Direction=2}
		self.obj106:SetFrame(1)
		self.obj106.DrawFlags.NoDraw = true
		self.obj107 = CreateObject {x=19205, y=2260, z=1000, logic="DoNothing", image="CUSTOM_TPEG2"}
		self.obj107:SetFrame(1)
	self.obj108 = CreateObject {x=19090, y=2170, z=1000, logic="OneWayTriggerElevator", image="CUSTOM_TPEG2", YMin=2170, YMax=2270, SpeedY=270, Direction=2}
		self.obj108:SetFrame(1)
		self.obj108.DrawFlags.NoDraw = true
		self.obj109 = CreateObject {x=19090, y=2170, z=1000, logic="DoNothing", image="CUSTOM_TPEG2"}
		self.obj109:SetFrame(1)
	end
end