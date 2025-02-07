function main(self)
	if self.State == 0 then
		self.StartX = self.X
		self.StartY = self.Y
		self.son = self.User[0]
		OneWayTriggerElevator(self)
	end
	if self:IsBelow(GetClaw()) then self.Started = true end
	if self.Started then OneWayTriggerElevator(self) end
	if math.abs(self.X-self.XMax)<7 and math.abs(self.Y-self.YMax)<7 then
		self.Started = false
		self.X = self.XMax
		self.Y = self.YMax
		if self.son~=0 then GetObject(self.son).Started = true self.son=0 end
	end
end
