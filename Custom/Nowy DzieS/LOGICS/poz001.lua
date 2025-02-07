function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 3000 then
			claw.State = self.prevClawState
			CameraToClaw(x,y)
			self:Destroy()
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
		TextOut("Oh my...")
		self.obj01 = CreateObject {x=5410, y=5815, z=1000, logic="TriggerElevator", image="CUSTOM_TPEG"}
		self.obj01.XMin = 5040
		self.obj01.XMax = 5410
		self.obj01.SpeedX = 250
		self.obj02 = CreateObject {x=5225, y=5695, z=1000, logic="TogglePeg2", image="CUSTOM_TPEG"}
		self.obj02.SpeedX = 800
		self.obj02.SpeedY = 800
		self.obj03 = CreateObject {x=5040, y=5575, z=1000, logic="TriggerElevator", image="CUSTOM_TPEG"}
		self.obj03.XMin = 5040
		self.obj03.XMax = 5410
		self.obj03.SpeedX = 250
		self.obj04 = CreateObject {x=5225, y=5455, z=1000, logic="TogglePeg", image="CUSTOM_TPEG"}
		self.obj04.SpeedX = 1300
		self.obj04.SpeedY = 1300
		self.obj05 = CreateObject {x=5280, y=5335, z=1000, logic="TogglePeg2", image="CUSTOM_TPEG"}
		self.obj05.SpeedX = 1300
		self.obj05.SpeedY = 1300
		self.obj06 = CreateObject {x=5215, y=5500, z=1500, logic="AniCycle", image="CUSTOM_FAN"}
		self.obj07 = CreateObject {x=5603, y=5539, z=4000, logic="Mercat", image="LEVEL_MERCAT"}
		self.obj07.XMin = 5601
		self.obj07.XMax = 5605
		self.obj07.YMin = 5539
		self.obj07.YMax = 5539
		CameraToPoint(5225,5570)
	end
end