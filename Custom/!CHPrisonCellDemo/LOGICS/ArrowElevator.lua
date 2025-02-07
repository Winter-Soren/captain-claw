function main(self)
	if (self.State == 0) then
		self.State = 1
		self.MoveRect = {-36,-8,36,32}
		self.HitRect = {-36,-8,36,32}
		self.ObjectTypeFlags = 128
		self:SetImage("CUSTOM_ZELEV")
	else
		self:SetFrame(1)
		self.MoveClawX = 0
		local claw = GetClaw()
		if (self:IsBelow(claw)) then
		 if (claw.X > self.X+15) then
			self.MoveClawX = 3
			self:SetFrame(3)
		 elseif (claw.X < self.X-15) then
			self.MoveClawX = -3
			self:SetFrame(2)
		 end
		end
	self.X = self.X + self.MoveClawX
	end
end
