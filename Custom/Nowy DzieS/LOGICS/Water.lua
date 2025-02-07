function main(self)
	local Claw = GetClaw()
	local str = ffi.cast("char*",0x522738)
	if Claw.X > self.XMin and Claw.X < self.XMax and Claw.Y < self.YMax and Claw.Y > self.YMin then
		SetDeathType(DeathType.Goo)
		self.Flags.AlwaysActive = true
		str[0],str[1],str[2],str[3],str[4],str[5],str[6] = 67, 85, 83, 84, 79, 77, 95
		str[7],str[8],str[9],str[10],str[11],str[12],str[13] = 83, 80, 73, 75, 69, 83, 0
	elseif self.Flags.AlwaysActive then
		SetDeathType(DeathType.Spikes)
		self.Flags.AlwaysActive = false
		str[0],str[1],str[2],str[3],str[4],str[5] = 76, 69, 86, 69, 76, 95
		str[6],str[7],str[8],str[9],str[10],str[11],str[12],str[13] = 68, 69, 65, 84, 72, 84, 73, 76
	end
end