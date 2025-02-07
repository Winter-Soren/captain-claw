function init(self)
	self.startY = self.Y
	self.pre2L = CreateObject {x=12430, y=7350, z=1000, logic="DoNothing", image="CUSTOM_PRE2LIGHT"}
	self.pre2L:SetFrame(1)
	self.lightY = self.pre2L.Y
	self.pre2F = CreateObject {x=self.X, y=self.Y, z=1000, logic="DoNothing", image="CUSTOM_PRE2FIRE"}
	self.pre2F.X = self.X
end
function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20, -20, 20, 20}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.State == 1 then
		self.pre2F.X = self.pre2F.X
		self.pre2F.Y = self.startY + 6*math.sin(GetTicks()*0.01075)
		self.pre2L.Y = self.lightY + 6*math.sin(GetTicks()*0.01075)
	end
	if self.State == 2 then
		self.pre2L.Y = self.lightY + 6*math.sin(GetTicks()*0.01075)
	end
end
function attack(self)
	if self.State == 1 then
		self.State = 2
		self.pre2L.X = self.pre2L.X + 30
		self.pre2L:SetFrame(2)
		self.prehend = CreateObject {x=12451, y=7310, z=-1000, logic="SpecialPowerup", image="LEVEL_GEM"}
		self.prehend.DrawFlags.NoDraw = true
		PlaySound("CUSTOM_FOOD")
		self.pre2F:Destroy()
	end
end