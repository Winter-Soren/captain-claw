function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Ochh!")
	self:Destroy()
	self.cpeg1 = CreateObject {x=8330, y=1550, z=1000, logic="CrumblingPeg", image="CUSTOM_CRUMBLINPEG"}
end