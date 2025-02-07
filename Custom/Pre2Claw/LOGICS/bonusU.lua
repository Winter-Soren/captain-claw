function main(self)
	local claw = GetClaw()
		if self.State == 0 then
			self.State = 1
			self.bonusU = CreateObject {x=self.X, y=self.Y, z=self.Z, image="CUSTOM_PRE2BONUSU", logic="AniCycle"}
			self.bonusU:SetAnimation("CUSTOM_CYCLE60")
		end
		if claw.X > self.bonusU.X - 50 and claw.X < self.bonusU.X + 50 and claw.Y > self.bonusU.Y - 50 and claw.Y < self.bonusU.Y + 50 and self.State == 1 then
			PlaySound("CUSTOM_FOOD")
			self.bonusU:Destroy()
			self.bonusSS = CreateObject {x=18655, y=4980, z=1000, logic="CustomLogic", name="bonusS"}
			self:Destroy()
		end
end