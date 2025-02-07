function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.Flags.flags = OR(self.Flags.flags, 2)
		self.PhysicsType = 8
		self.MoveRect = {-5, -24, 5, 24}
		self.I = -1
		self:SetImage("CUSTOM_RAINDROP")
		self.SpeedX = 3 + math.random(2)
		self.SpeedY = 16 + math.random(8)
	else
		local result = self:Physics(self.X + self.SpeedX, self.Y + self.SpeedY)
		if result ~= 0 or self.Y > claw.Y + 480 then
 			self:Destroy()
		end
	end
end