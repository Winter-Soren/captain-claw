function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,46,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("What was that? Button?")
	self:Destroy()
	self.obj24 = CreateObject {x=17621, y=5136, z=1000, logic="DoNothing", image="CUSTOM_ANOTHER"}
	self.obj24:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj25 = CreateObject {x=21100, y=5120, z=900, logic="PathElevator", image="CUSTOM_ANOTHER", MoveRect = {9, 150, 8, 150}, HitRect = {5, 100, 2, 150}, AttackRect = {1, 150, 5, 100}, ClipRect = {0,0,0,0}, Speed = 215}
	self.obj25:SetFrame(8)
	self.obj26 = CreateObject {x=20630, y=5225, z=1000, logic="TogglePeg", image="CUSTOM_TPEG", SpeedX = 1200, SpeedY = 800}
end