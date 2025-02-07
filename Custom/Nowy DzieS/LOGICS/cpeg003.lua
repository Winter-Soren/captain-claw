function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("OMG!")
	self:Destroy()
	self.cpeg3 = CreateObject {x=8670, y=1440, z=1000, logic="CrumblingPeg", image="CUSTOM_CRUMBLINPEG"}
end