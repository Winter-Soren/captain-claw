function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Uhm.")
	self:Destroy()
	self.obj36 = CreateObject {x=12411, y=1488, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj36:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj37 = CreateObject {x=13150, y=2290, z=1000, logic="PathElevator", image="CUSTOM_ANOTHER", MoveRect = {6, 150, 5, 50}, HitRect = {4, 150, 5, 50}, AttackRect = {0, 0, 0, 0}, ClipRect = {0,0,0,0}, Speed = 300}
	self.obj37:SetFrame(3)
end