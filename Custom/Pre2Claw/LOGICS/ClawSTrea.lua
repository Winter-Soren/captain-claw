function init(self)
	self:SetImage("CUSTOM_CLAWSTREA")
	self.startY = self.Y
end
function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-18, -18, 18, 18}
		self.AttackTypeFlags = ObjectType.Player
		if self.SpeedX == 0 then
			self:SetFrame(1)
		end
		if self.SpeedX == 1 then
			self:SetFrame(2)
		end
		if self.SpeedX == 2 then
			self:SetFrame(3)
		end
		if self.SpeedX == 3 then
			self:SetFrame(4)
		end
		if self.SpeedX == 4 then
			self:SetFrame(5)
		end
	end
end
function attack(self)
	local claw = GetClaw()
	PlaySound("CUSTOM_MMM")
	if self.SpeedX == 0 then
		claw.Score = claw.Score + 12500
		self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.points:SetFrame(18)
	elseif self.SpeedX == 1 then
		claw.Score = claw.Score + 1000000
		self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.points:SetFrame(19)
	elseif self.SpeedX == 2 then
		claw.Score = claw.Score + 250000
		self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.points:SetFrame(20)
	elseif self.SpeedX == 3 then
		claw.Score = claw.Score + 50000
		self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.points:SetFrame(21)
	elseif self.SpeedX == 4 then
		claw.Score = claw.Score + 22000
		self.points = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.points:SetFrame(22)
	end
	self:Destroy()
end