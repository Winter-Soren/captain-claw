function main(self)
	if self.State == 0 then
		self.State = 1
		self:SetImage("CUSTOM_OLDGOLD")
		self.AttackRect = {-40, -40, 40, 40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	local claw = GetClaw()
	PlaySound("GAME_TREASURE")
	claw.Score = claw.Score + 500000
	self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
	self.points:SetFrame(23)
	self:Destroy()
end