function init(self)
	if self.SpeedX == 0 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(1)
	elseif self.SpeedX == 1 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(2)
	elseif self.SpeedX == 2 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(3)
	elseif self.SpeedX == 3 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(4)
	elseif self.SpeedX == 4 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(5)
	elseif self.SpeedX == 5 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(6)
	elseif self.SpeedX == 6 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(7)
	elseif self.SpeedX == 7 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(8)
	elseif self.SpeedX == 8 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(9)
	elseif self.SpeedX == 9 then
		self:SetImage("CUSTOM_PRE2P300")
		self:SetFrame(10)
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
	claw.Score = claw.Score + 300
	self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
	self.points:SetFrame(8)
	self:Destroy()
end