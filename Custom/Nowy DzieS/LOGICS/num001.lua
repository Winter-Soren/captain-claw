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
			self.obj30:Destroy()
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
		TextOut("??")
		self.obj29 = CreateObject {x=11740, y=3602, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
		self.obj29:SetFrame(12)
		PlaySound("GAME_MINORCHEAT")
		self.obj30 = CreateObject {x=11900, y=3380, z=1000, logic="FrontAniCandy", image="CUSTOM_NUMBER2"}
	end
end