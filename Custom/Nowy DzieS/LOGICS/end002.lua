function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	self.obj205 = CreateObject {x=17954, y=3990, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj205:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj206 = CreateObject {x=12840, y=5440, z=1000, logic="OneWayStartElevator", image="CUSTOM_TPEG2", SpeedX=150, SpeedY=150, XMin=12840, XMax=13340, YMin=5440, YMax=5440, Direction=6}
	self.obj206:SetFrame(1)
	self.obj207 = CreateObject {x=17820, y=3950, z=5000, logic="DoNothing", image="LEVEL_ARROWUP"}
	self.obj208 = CreateObject {x=17825, y=3750, z=1000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=11100, SpeedY=4775}
	self.obj209 = CreateObject {x=19800, y=2355, z=1000, logic="Elevator", image="CUSTOM_TPEG2"}
	self.obj209:SetFrame(1)
end