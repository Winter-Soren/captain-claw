function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Nice!")
	self:Destroy()
	self.s001 = CreateObject {x=20030, y=6000, z=-1, logic="OneWayStartElevator", image="CUSTOM_ANOTHER", YMin = 6000, YMax=6100, Direction=2, SpeedY=150}
	self.s001:SetFrame(8)
	self.s002 = CreateObject {x=19832, y=6000, z=-1, logic="Elevator", image="CUSTOM_ANOTHER", YMin = 6020, YMax=6100, SpeedY=130}
	self.s002:SetFrame(8)
end