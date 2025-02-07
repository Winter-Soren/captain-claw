function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	TextOut("Hmmm...")
	self.obj100 = CreateObject {x=9886, y=5576, z=-1, logic="TogglePeg2", image="LEVEL_PEG"}
	self.obj101 = CreateObject {x=9886, y=5376, z=-1, logic="TogglePeg4", image="LEVEL_PEG"}
	self.obj102 = CreateObject {x=9943, y=5178, z=1000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=10707, SpeedY=5686}
end
