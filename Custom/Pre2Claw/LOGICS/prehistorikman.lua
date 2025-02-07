function main(self)
	self:AnimationStep()
	if self.State == 0 then
		self.State = 220
		self.speedAX = 4
		self.speedBY = 3
		self.precamX = 15250
		self.precamY = 6430
		self.XMin = 15210
		self.XMax = 15890
		self:SetImage("CUSTOM_PREHISTORIKA")
		self:SetAnimation("CUSTOM_CYCLE180")
	end
	
	if self.State == 220 and KeyPressed(0x66) then
		self.State = 221
		self:SetImage("CUSTOM_PREHISTORIKB")
		self:SetAnimation("CUSTOM_CYCLE100")
		self.DrawFlags.Mirror = false
	end
	if self.State == 220 and KeyPressed(0x64) then
		self.State = 222
		self:SetImage("CUSTOM_PREHISTORIKB")
		self:SetAnimation("CUSTOM_CYCLE100")
		self.DrawFlags.Mirror = true
	end
	
	if self.State == 221 and not KeyPressed(0x66) then
		self.State = 220
		self:SetImage("CUSTOM_PREHISTORIKA")
		self:SetAnimation("CUSTOM_CYCLE180")
	end
	if self.State == 222 and not KeyPressed(0x64) then
		self.State = 220
		self:SetImage("CUSTOM_PREHISTORIKA")
		self:SetAnimation("CUSTOM_CYCLE180")
	end
	
	if self.State == 221 then
		if KeyPressed(0x66) then
			self.X = self.X + self.speedAX
			self.precamX = self.precamX + self.speedAX
			CameraToPoint(self.precamX,self.precamY)
		end
	end
	
	if self.State == 222 then
		if KeyPressed(0x64) then
			self.X = self.X - self.speedAX
			self.precamX = self.precamX - self.speedAX
			CameraToPoint(self.precamX,self.precamY)
		end
	end
	
	if self.X >= self.XMax then
		self.X = self.XMax - 1
	elseif self.X <= self.XMin then
		self.X = self.XMin + 1
	end
	if self.precamX >= self.XMax then
		self.precamX = self.XMax - 1
	elseif self.precamX <= self.XMin then
		self.precamX = self.XMin + 1
	end
end