function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Ochhh!")
	self:Destroy()
	self.cpeg2 = CreateObject {x=8500, y=1505, z=1000, logic="CrumblingPeg", image="CUSTOM_CRUMBLINPEG"}
end