function main(self)
	if self.State == 0 then
		SetMusicSpeed(0, 0)
		self.State = 1
	end
end
function attack(self)
	self:Destroy()
end
