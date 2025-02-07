function main(self)
	local claw = GetClaw()
		if self.State == 0 then
			self.State = 1
			self.bonusO = CreateObject {x=self.X, y=self.Y, z=self.Z, image="CUSTOM_PRE2BONUSO", logic="AniCycle"}
			self.bonusO:SetAnimation("CUSTOM_CYCLE60")
		end
		if claw.X > self.bonusO.X - 50 and claw.X < self.bonusO.X + 50 and claw.Y > self.bonusO.Y - 50 and claw.Y < self.bonusO.Y + 50 and self.State == 1 then
			PlaySound("CUSTOM_FOOD")
			self.bonusO:Destroy()
			self.bonusNN = CreateObject {x=11270, y=3375, z=1000, logic="CustomLogic", name="bonusN"}
			self:Destroy()
		end
end