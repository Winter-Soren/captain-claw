function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-10,-10,10,10}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 2000 then
			claw.State = self.prevClawState
			self:Destroy()
			self.obj103:Destroy()
			self.obj105:Destroy()
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
		TextOut("Are you kidding me?")
		self.obj102 = CreateObject {x=17305, y=4065, z=1000, logic="Elevator", image="CUSTOM_TPEG2"}
		self.obj102:SetFrame(1)
		self.obj102.DrawFlags.NoDraw = true
		self.obj103 = CreateObject {x=17305, y=4065, z=1000, logic="DoNothing", image="CUSTOM_TPEG2"}
		self.obj103:SetFrame(1)
	self.obj104 = CreateObject {x=17495, y=4000, z=1000, logic="Elevator", image="CUSTOM_TPEG2"}
		self.obj104:SetFrame(1)
		self.obj104.DrawFlags.NoDraw = true
		self.obj105 = CreateObject {x=17495, y=4000, z=1000, logic="DoNothing", image="CUSTOM_TPEG2"}
		self.obj105:SetFrame(1)
		CameraToPoint(17395,3965)
	end
end