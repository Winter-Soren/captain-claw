function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Another button?!")
	self:Destroy()
	self.obj27 = CreateObject {x=19471, y=5905, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj27:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj28 = CreateObject {x=21260, y=4610, z=1000, logic="PathElevator", image="CUSTOM_ANOTHER", MoveRect = {7, 140, 3, 140}, HitRect = {0, 0, 0, 0}, AttackRect = {0, 0, 0, 0}, ClipRect = {0,0,0,0}, Speed = 220}
	self.obj28:SetFrame(8)
end