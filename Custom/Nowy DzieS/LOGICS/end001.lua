function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	self.obj200 = CreateObject {x=16392, y=3545, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj200:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj201 = CreateObject {x=13480, y=5440, z=1000, logic="OneWayStartElevator", image="CUSTOM_ANOTHER", SpeedX=150, SpeedY=150, XMin=13480, XMax=13780, YMin=5440, YMax=5740, Direction=3}
	self.obj201:SetFrame(8)
	self.obj202 = CreateObject {x=16122, y=3534, z=1500, logic="DoNothing", image="LEVEL_ARROWUP"}
	self.obj203 = CreateObject {x=16200, y=3300, z=1000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=11100, SpeedY=4775}
	self.obj204 = CreateObject {x=16345, y=4360, z=1000, logic="Elevator", image="CUSTOM_TPEG2"}
	self.obj204:SetFrame(1)
end