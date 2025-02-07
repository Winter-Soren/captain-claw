function main(self)
	if self.State == 0 then
		self.State = 1
		self.HitTypeFlags = ObjectType.Player
		self.HitRect = {-30,-30,30,30}
	end
end
function hit(self)
	PlaySound("CUSTOM_HIT")
	ClawJump(500)
	self:Destroy()
end