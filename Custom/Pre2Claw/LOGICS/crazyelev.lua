local STAN_A = 0
local STAN_B = 1
function init(self)
	if self.Direction == 1 then
		self.State = STAN_A
	end
	if self.SpeedY == 0 then
		self.SpeedY = 2
	end
	if self.Speed == 0 then
		self.Speed = 15
	end
end
function main(self)
	self.ObjectTypeFlags = 128
	self.HitRect = {-32,-14,32,16}
		if self.State == STAN_A then
			self.Y = self.Y - self.SpeedY
			self.MoveClawY = 0 - self.SpeedY
				if self.Y <= self.YMin then
					self.State = STAN_B
				end
		elseif self.State == STAN_B then
			self.Y = self.Y + self.Speed
			self.MoveClawY = self.Speed
				if self.Y >= self.YMax then
					self.State = STAN_A
				end
		end
end
