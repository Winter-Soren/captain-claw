function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.Flags.AutoHitDamage = true
		self.Damage = 10
		self:SetImage("CUSTOM_MATI")
		self.I = -1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = NOT(0)
	end
	self.DrawFlags.NoDraw = true -- set NoDraw
	if self.startTime then
		if GetTicks() - self.startTime > 1500 then
			claw.State = self.prevClawState
			claw:SetAnimation("CLAW_WALK")
			ClawTakeDamage(self.Damage)
			self:Destroy()
			return
		end
		self.X = claw.X+200
		claw:AnimationStep()
		if(GetTicks() % 100 < 50) then
			self.DrawFlags.NoDraw = false
		end
	end
end

function attack(self)
	local claw = GetClaw()
	if not self.startTime then
		self.startTime = GetTicks()
		self.prevClawState = claw.State
		claw.State = -1
		claw:SetAnimation("CLAW_PUNCH")
	end
end
