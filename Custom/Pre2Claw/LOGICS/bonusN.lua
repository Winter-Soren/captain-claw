function main(self)
	local claw = GetClaw()
		if self.State == 0 then
			self.State = 1
			self.bonusN = CreateObject {x=self.X, y=self.Y, z=self.Z, image="CUSTOM_PRE2BONUSN", logic="AniCycle"}
			self.bonusN:SetAnimation("CUSTOM_CYCLE60")
		end	
		if claw.X > self.bonusN.X - 50 and claw.X < self.bonusN.X + 50 and claw.Y > self.bonusN.Y - 50 and claw.Y < self.bonusN.Y + 50 and self.State == 1 then
			PlaySound("CUSTOM_FOOD")
			self.bonusN:Destroy()
			self.bonusUU = CreateObject {x=7675, y=5600, z=1000, logic="CustomLogic", name="bonusU"}
			self:Destroy()
		end
end