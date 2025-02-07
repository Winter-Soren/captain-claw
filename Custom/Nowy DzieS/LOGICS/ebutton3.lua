function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	self.obj40 = CreateObject {x=17901, y=2133, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj40:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj41 = CreateObject {x=14560, y=2740, z=1000, logic="OneWayStartElevator", image="CUSTOM_TPEG2", SpeedX=200, YMin=2740, YMax=2940, Direction=2}
	self.obj41:SetFrame(1)
end