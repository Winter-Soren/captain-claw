function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-70,-50,70,50}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 3000 then
			claw.State = self.prevClawState
			self:Destroy()
			self.pre2loading:Destroy()
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
		self.pre2loading = CreateObject {x=GetClaw().X, y=GetClaw().Y, z=9999, logic="DoNothing", image="CUSTOM_PRE2LOAD"}
	end
end