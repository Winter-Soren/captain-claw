function main(self)
	local claw = GetClaw()
	self.X, self.Y = claw.X - 500, claw.Y - 450
	if self.State == 0 then
		self.State = 1
		self.Flags.flags = OR(self.Flags.flags, 2)
		local y = self.YMin
		for x = 0, 800, 20 do
			local rain = CreateObject {x=0, y=0, z=5000, logic="CustomLogic", name="Rain"}
			rain.x, rain.y = x, y
			rain.cloud = self
		end
	end
end