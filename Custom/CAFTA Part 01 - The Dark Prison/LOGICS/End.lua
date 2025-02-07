function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	TextOut("Crap! I need to find another way!")
	self.obj200 = CreateObject {x=21595, y=9885, z=1000, logic="DoNothing", image="LEVEL_SKULL"}
	self.obj201 = CreateObject {x=21789, y=9873, z=4000, logic="DoNothing", image="LEVEL_CRATES"}
	self.obj202 = CreateObject {x=21789, y=9916, z=4001, logic="DoNothing", image="LEVEL_CRATES"}
	self.obj202:SetFrame(2)
	self.obj203 = CreateObject {x=21789, y=9959, z=4002, logic="DoNothing", image="LEVEL_CRATES"}
	self.obj203:SetFrame(3)
end
