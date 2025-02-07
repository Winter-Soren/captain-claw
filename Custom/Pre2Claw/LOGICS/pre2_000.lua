function main(self)
	local flags = ffi.new("Flags_t")
	flags.AlwaysActive = true
	self.Flags = flags
	if self.State == 0 and KeyPressed(0x59) then
		self.State = 666
		TextOut("What a cheater!!!")
		KillClaw()
	end
	if self.State == 666 and KeyPressed(0x59) then
		self.State = 668
		TextOut("What a cheater!!!")
		KillClaw()
	end
	if self.State == 668 and KeyPressed(0x59) then
		self.State = 667
		TextOut("What a cheater!!!")
		KillClaw()
	end
	if self.State == 667 and KeyPressed(0x59) then
		self.State = 668
		TextOut("What a cheater!!!")
		KillClaw()
	end
end