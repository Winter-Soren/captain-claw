function main(self)
	if self.State == 0 then
		self.State = 20
		self.startAX = self.X
		self.startBX = self.X
		self.downborder = self.Y
	
	self.starA = CreateObject{x=self.X, y=self.Y, z=970, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.starA:SetFrame(4)
	self.starB = CreateObject{x=self.X, y=self.Y, z=970, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.starB:SetFrame(4)
	
		elseif self.State == 20 then
			self.starA.X = self.starA.X + 3
			self.starA.Y = self.starA.Y + 100*(math.sin((self.starA.X - self.startAX)*0.0004))
			self.starB.X = self.starB.X - 3
			self.starB.Y = self.starB.Y - 100*(math.sin((self.starB.X - self.startBX)*0.0004))
				if self.starA.Y > self.downborder + 350 then
					self.starA:Destroy()
					self:Destroy()
				end
				if self.starB.Y > self.downborder + 350 then
					self.starB:Destroy()
					self:Destroy()
				end
	end
end