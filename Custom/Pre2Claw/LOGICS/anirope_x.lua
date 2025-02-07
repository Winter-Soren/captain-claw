local RIGHT = 0
local LEFT = 46
function init(self)
	self.rope = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="AniRope", image="LEVEL_ROPE", SpeedX = self.SpeedX}
	if self.Speed == 0 then
		self.Speed = 1
	end
	if self.Direction == 1 then
		self.State = RIGHT
	else
		self.State = LEFT
	end
end
function main(self)
	self.rope.X = self.X
	if self.State == RIGHT then
		self.X = self.X + self.Speed
			if self.X >= self.XMax then
				self.State = LEFT
			end
	elseif self.State == LEFT then
		self.X = self.X - self.Speed
			if self.X <= self.XMin then
				self.State = RIGHT
			end
	end
end