function init(self)
	if self.SpeedX == 0 then
		self:SetImage("CUSTOM_PRE2P1000")
		self:SetFrame(1)
	elseif self.SpeedX == 1 then
		self:SetImage("CUSTOM_PRE2P1000")
		self:SetFrame(2)
	end
	self.startY = self.Y
	self.amplitude = self.Direction
end
function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20, -20, 20, 20}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.State == 1 then
		self.X = self.X
		self.Y = self.startY + self.amplitude*math.sin(GetTicks()*0.01075)
	end
end
function attack(self)
	local claw = GetClaw()
	PlaySound("CUSTOM_FOOD")
	claw.Score = claw.Score + 1000
	self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
	self.points:SetFrame(14)
	self:Destroy()
end