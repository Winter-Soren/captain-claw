function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	TextOut("What was that?")
	self.obj100 = CreateObject {x=10001, y=5679, z=-1, logic="TogglePeg", image="LEVEL_PEG"}
	self.obj101 = CreateObject {x=10001, y=5476, z=-1, logic="TogglePeg3", image="LEVEL_PEG"}
	self.obj102 = CreateObject {x=9524, y=5315, z=1000, logic="DoNothing", image="LEVEL_ARROWSIGN_LR"}
	self.obj102.DrawFlags.Mirror = true
end
