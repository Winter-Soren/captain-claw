function main(self)
	local claw = GetClaw()
	if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x30) and self.State == 0 then
		self.State = 200
		PlaySound("GAME_MINORCHEAT")
	end
	if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x37) and self.State == 200 then
		self.State = 201
		PlaySound("GAME_MINORCHEAT")
	end
	if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x33) and self.State == 201 then
		self.State = 202
		PlaySound("GAME_MINORCHEAT")
	end
	if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x45) and self.State == 202 then
		self.State = 203
		PlaySound("GAME_MAJORCHEAT")
		self.p2x = self.SpeedX
		self.p2y = self.SpeedY
		Teleport(self.p2x,self.p2y)
		self:Destroy()
	end
end