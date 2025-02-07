function main(self)
	if self.State == 0 then self.sy = 1 self.fr = 0
	else if self.fr > 3 then
		local father = GetObject(self.User[0])
		self.X = self.X+father.X-father.StartX
		self.Y = self.Y+father.Y-father.StartY
		father.StartX = father.X
		father.StartY = father.Y
	end end
	AniRope(self)
	if self.fr < 10 then self.fr = self.fr + 1 end
end