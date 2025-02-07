function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Beautiful death path.")
	self:Destroy()
	self.obj21 = CreateObject {x=1610, y=5300, z=1000, logic="PathElevator", image="CUSTOM_TPEG", MoveRect = {9, 100, 7, 100}, HitRect = {2, 200, 5, 150}, AttackRect = {0,0,0,0}, ClipRect = {0,0,0,0}, Speed = 220}
	self.obj22 = CreateObject {x=1850, y=5120, z=1000, logic="PathElevator", image="CUSTOM_TPEG", MoveRect = {6, 250, 8, 150}, HitRect = {1, 125, 7, 125}, AttackRect = {2, 150, 5, 200}, ClipRect = {0,0,0,0}, Speed = 250}
	self.obj23 = CreateObject {x=1710, y=4900, z=1000, logic="PathElevator", image="CUSTOM_TPEG", MoveRect = {4, 100, 5, 150}, HitRect = {9, 100, 3, 100}, AttackRect = {5,200,4,100}, ClipRect = {0,0,0,0}, Speed = 200}
end