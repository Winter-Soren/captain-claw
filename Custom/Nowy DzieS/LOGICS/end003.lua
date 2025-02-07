function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self:Destroy()
	self.obj210 = CreateObject {x=18825, y=2068, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj210:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj211 = CreateObject {x=12190, y=4930, z=1000, logic="OneWayStartElevator", image="CUSTOM_TPEG", SpeedX=150, SpeedY=150, XMin=12190, XMax=12700, YMin=4930, YMax=5440, Direction=3}
	self.obj211:SetFrame(1)
	self.obj212 = CreateObject {x=18904, y=1997, z=1000, logic="DoNothing", image="LEVEL_ARROWUP"}
	self.obj212.DrawFlags.Mirror = true
	self.obj213 = CreateObject {x=18850, y=1820, z=1000, logic="SpecialPowerup", image="GAME_WARP", SpeedX=11100, SpeedY=5330}
	self.obj214 = CreateObject {x=11460, y=4695, z=500, logic="DoNothing", image="CUSTOM_LEV12"}
	self.obj214:SetFrame(4)
end