function main(self)
	local claw = GetClaw()
		if self.State == 0 then
			self.State = 1
			self.bonusB = CreateObject {x=self.X, y=self.Y, z=1000, image="CUSTOM_PRE2BONUSB", logic="AniCycle"}
			self.bonusB:SetAnimation("CUSTOM_CYCLE60")
		end
		if claw.X > self.bonusB.X - 50 and claw.X < self.bonusB.X + 50 and claw.Y > self.bonusB.Y - 50 and claw.Y < self.bonusB.Y + 50 and self.State == 1 then
			PlaySound("CUSTOM_FOOD")
			self.bonusB:Destroy()
			self.bonusOO = CreateObject {x=9920, y=2670, z=1000, logic="CustomLogic", name="bonusO"}
			self:Destroy()
		end
end