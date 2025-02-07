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
			self.obj39:Destroy()
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
		TextOut("Ekhm.")
		self.obj38 = CreateObject {x=16023, y=1491, z=1500, logic="FrontCandy", image="CUSTOM_ANOTHER"}
		self.obj38:SetFrame(12)
		PlaySound("GAME_MINORCHEAT")
		self.obj39 = CreateObject {x=16225, y=1330, z=1000, logic="FrontAniCandy", image="CUSTOM_NUMBER3"}
	end
end