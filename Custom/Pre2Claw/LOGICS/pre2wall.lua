function main(self)
	if self.State == 0 then
		self.State = 22
		self.startAX = self.X
		self.startBX = self.X
		self.downborder = self.Y
	
	self.walA = CreateObject{x=self.X, y=self.Y, z=980, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.walA:SetFrame(5)
	self.walB = CreateObject{x=self.X, y=self.Y, z=980, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.walB:SetFrame(5)
	
		elseif self.State == 22 then
			self.walA.X = self.walA.X + 3
			self.walA.Y = self.walA.Y + 100*(math.sin((self.walA.X - self.startAX)*0.00045))
			self.walB.X = self.walB.X - 3
			self.walB.Y = self.walB.Y - 100*(math.sin((self.walB.X - self.startBX)*0.00045))
				if self.walA.Y > self.downborder + 350 then
					self.walA:Destroy()
					self:Destroy()
				end
				if self.walB.Y > self.downborder + 350 then
					self.walB:Destroy()
					self:Destroy()
				end
	end
end