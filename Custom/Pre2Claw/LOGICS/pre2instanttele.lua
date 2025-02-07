function main(self)
	local claw = GetClaw()
		if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x28) then
			self.p2x = self.SpeedX
			self.p2y = self.SpeedY
			Teleport(self.p2x,self.p2y)
			self:Destroy()
		end
end