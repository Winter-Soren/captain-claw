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
		TextOut("Tiger Docks?!")
		self.obj15 = CreateObject {x=3901, y=4545, z=900, logic="DoNothing", image="CUSTOM_ANOTHER"}
		self.obj15:SetFrame(6)
		self.obj16 = CreateObject {x=3987, y=4398, z=1000, logic="DoNothing", image="CUSTOM_ANOTHER"}
		self.obj16:SetFrame(7)
		self.obj17 = CreateObject {x=3840, y=4398, z=800, logic="DoNothing", image="CUSTOM_ANOTHER"}
		self.obj17:SetFrame(7)
		self.obj17.DrawFlags.Mirror = true
		self.obj18 = CreateObject {x=3845, y=4610, z=1000, logic="Elevator", image="LEVEL_ELEVATOR"}
		self.obj18.DrawFlags.NoDraw = true
		self.obj19 = CreateObject {x=3895, y=4610, z=1000, logic="Elevator", image="LEVEL_ELEVATOR"}
		self.obj19.DrawFlags.NoDraw = true
		self.obj20 = CreateObject {x=3955, y=4610, z=1000, logic="Elevator", image="LEVEL_ELEVATOR"}
		self.obj20.DrawFlags.NoDraw = true
		CameraToPoint(3895,4535)
	end
end