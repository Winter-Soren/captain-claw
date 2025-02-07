function main(self)
	self:AnimationStep()
	if self.State == 0 then
		self.State = 1
		self:SetImage("CUSTOM_PRE2TBAN")
		self:SetAnimation("CUSTOM_CYCLE60")
		self.AttackRect = {-40, -40, 40, 40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	local claw = GetClaw()
	PlaySound("CUSTOM_MMM")
	claw.Score = claw.Score + 20000
	self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
	self.points:SetFrame(3)
	self:Destroy()
end