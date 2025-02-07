function main(self)
	local claw = GetClaw()
		if self.State == 0 then
			self.State = 1
			self.bonusS = CreateObject {x=self.X, y=self.Y, z=self.Z, image="CUSTOM_PRE2BONUSS", logic="AniCycle"}
			self.bonusS:SetAnimation("CUSTOM_CYCLE60")
		end
		if claw.X > self.bonusS.X - 50 and claw.X < self.bonusS.X + 50 and claw.Y > self.bonusS.Y - 50 and claw.Y < self.bonusS.Y + 50 and self.State == 1 then
			PlaySound("CUSTOM_FOOD")
			self.bonusS:Destroy()
			self.bonusFridge = CreateObject {x=claw.X, y=claw.Y-125, z=z, logic="CustomLogic", name="Fridge"}
			self:Destroy()
		end
end