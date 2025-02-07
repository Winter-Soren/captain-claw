function main(self)
	if self.State == 0 then
		self.State = 21
		self.startAX = self.X
		self.startBX = self.X
		self.downborder = self.Y
	
	self.superA = CreateObject{x=self.X, y=self.Y, z=990, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.superA:SetFrame(3)
	self.superB = CreateObject{x=self.X, y=self.Y, z=990, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.superB:SetFrame(3)
	
		elseif self.State == 21 then
			self.superA.X = self.superA.X + 4
			self.superA.Y = self.superA.Y + 100*(math.sin((self.superA.X - self.startAX)*0.00045))
			self.superB.X = self.superB.X - 4
			self.superB.Y = self.superB.Y - 100*(math.sin((self.superB.X - self.startBX)*0.00045))
				if self.superA.Y > self.downborder + 350 then
					self.superA:Destroy()
					self:Destroy()
				end
				if self.superB.Y > self.downborder + 350 then
					self.superB:Destroy()
					self:Destroy()
				end
	end
end