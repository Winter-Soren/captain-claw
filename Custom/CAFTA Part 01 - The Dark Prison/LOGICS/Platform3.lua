function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {0,0,0,0}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	TextOut("Uhm...")
	self.obj300 = CreateObject {x=7900, y=7012, z=2000, logic="TogglePeg", image="LEVEL_PEG"}
	self.obj301 = CreateObject {x=7900, y=6912, z=2000, logic="TogglePeg2", image="LEVEL_PEG"}
	self.obj302 = CreateObject {x=7900, y=6812, z=2000, logic="TogglePeg3", image="LEVEL_PEG"}
	self.obj303 = CreateObject {x=7900, y=6712, z=2000, logic="TogglePeg4", image="LEVEL_PEG"}
	self.obj304 = CreateObject {x=7900, y=6612, z=2000, logic="TogglePeg2", image="LEVEL_PEG"}
	self.obj305 = CreateObject {x=7900, y=6512, z=2000, logic="TogglePeg4", image="LEVEL_PEG"}
	self.obj306 = CreateObject {x=7900, y=6412, z=2000, logic="TogglePeg2", image="LEVEL_PEG"}
	self.obj307 = CreateObject {x=7900, y=6312, z=2000, logic="TogglePeg3", image="LEVEL_PEG"}
	self.obj308 = CreateObject {x=7900, y=6212, z=2000, logic="TogglePeg", image="LEVEL_PEG"}
end
