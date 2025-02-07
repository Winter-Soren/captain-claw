local RIGHT = 0
local LEFT = 1
function init(self)
	if self.SpeedX == 0 then
		self.SpeedX = 1
	end
	if self.Direction == 1 then
		self.State = RIGHT
	else
		self.State = LEFT
	end
end
function main(self)
	self.ObjectTypeFlags = 128
	self.HitRect = {-32,-14,32,16}
	
	if self.State == RIGHT then
		self.X = self.X + self.SpeedX
		self.MoveClawX = self.SpeedX
			if self.X >= self.XMax then
				self.State = LEFT
			end
	elseif self.State == LEFT then
		self.X = self.X - self.SpeedX
		self.MoveClawX = 0-self.SpeedX
			if self.X <= self.XMin then
				self.State = RIGHT
			end
	end
end