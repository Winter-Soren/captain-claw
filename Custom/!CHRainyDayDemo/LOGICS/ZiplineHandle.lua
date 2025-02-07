local function f(self, y)
	return self.XMin + self.w * (tonumber(y - self.YMin)/self.h)
end

function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self:SetImage("CUSTOM_ZIPLINE_HANDLE")
		self.rope = CreateObject {x=self.X, y=self.Y, z=1000, logic="AniRope", SpeedX = 1000000}
		self.rope.DrawFlags.flags = DrawFlags.NoDraw
	elseif self.State == 1 and claw.X - self.X == 8 and claw.Y - self.Y == 37 then
		self.State = 2
	end
	if self.State==2 then
			self.Y = self.Y + self.zipline.SpeedY
			local yMax = self.zipline.MoveRect.Bottom
			if(self.Y) >= yMax then
				if claw.State == 5007 then
					ClawJump(1)
				end
				self.Y = yMax
				self.rope:Destroy()
				self.rope = nil
				self.State = 3
				return
			end
			self.X = f(self.zipline, self.Y)
	end
	if self.rope then
		self.rope.X, self.rope.Y = self.X + 140, self.Y - 10
	end
end