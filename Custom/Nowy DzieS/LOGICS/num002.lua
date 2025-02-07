function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 500 then
			claw.State = self.prevClawState
			self:Destroy()
			self.obj35:Destroy()
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
		TextOut("Weird.")
		self.obj34 = CreateObject {x=11655, y=2323, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
		self.obj34:SetFrame(12)
		PlaySound("GAME_MINORCHEAT")
		self.obj35 = CreateObject {x=11500, y=2150, z=1000, logic="FrontAniCandy", image="CUSTOM_NUMBER1"}
	end
end