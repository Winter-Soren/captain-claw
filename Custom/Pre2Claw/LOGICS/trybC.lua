function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		ClawJump(1)
	end
end