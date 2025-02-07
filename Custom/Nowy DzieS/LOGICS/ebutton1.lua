function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-10,20,-40}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Mhmm")
	self:Destroy()
	self.obj31 = CreateObject {x=15459, y=4371, z=1000, logic="FrontCandy", image="CUSTOM_ANOTHER"}
	self.obj31:SetFrame(12)
	PlaySound("GAME_MINORCHEAT")
	self.obj32 = CreateObject {x=11520, y=3330, z=900, logic="PathElevator", image="CUSTOM_ANOTHER", MoveRect = {9, 250, 6, 200}, HitRect = {9, 200, 5, 150}, AttackRect = {1, 200, 4, 200}, ClipRect = {1,250,5,150}, Speed = 250}
	self.obj32:SetFrame(8)
	self.obj33 = CreateObject {x=11434, y=3495, z=7000, logic="DoNothing", image="LEVEL_ARROWUP"}
end