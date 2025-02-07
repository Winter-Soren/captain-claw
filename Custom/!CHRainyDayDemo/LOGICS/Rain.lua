function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.Flags.flags = OR(self.Flags.flags, 2)
		self.lastDropTime = 0
		self.interval = 100 + math.random(50)
	else
		local cloud = self.cloud
		self.X, self.Y = self.x + cloud.X, self.y + cloud.Y
		if 	GetTime() > self.lastDropTime + self.interval
			and claw.X > self.X - 800
			and claw.X < self.X + 800
		then
			self.lastDropTime = GetTime()
			CreateObject {x=self.X, y=self.Y, z=5000, logic="CustomLogic", name="Raindrop"}
		end
	end
end