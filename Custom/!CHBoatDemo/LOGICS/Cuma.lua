function main(self)
	if self.State == 0 then
		self.State = 1
		self.HitTypeFlags = 2
		self.HitRect = {0,0,128,128}
		self:SetImage("LEVEL_ROPE")
		self.DrawFlags.Mirror = true
	end
	self:AnimationStep()
	if self.I > 15 then self.Y = self.Y + self.I/5 end
	if self.I > 20 then self:Destroy() end
end

function hit(self)
	self:SetAnimation("GAME_FORWARD50")
end