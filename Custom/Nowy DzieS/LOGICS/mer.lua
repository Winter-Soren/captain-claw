function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Hmm..?")
	self:Destroy()
	self.mer = CreateObject {x=9740, y=1365, z=4000, logic="Mercat", image="LEVEL_MERCAT", Powerup = 33, UserRect1 = {33,7,8,9}, UserRect2 = {10,0,0,0}}
	self.mer.XMin = 9586
	self.mer.XMax = 9785
	self.mer.YMin = 1365
	self.mer.YMax = 1365
	self.mer1 = CreateObject {x=9620, y=1365, z=4000, logic="Mercat", image="LEVEL_MERCAT", Powerup = 33, UserRect1 = {33,2,3,4}, UserRect2 = {5,0,0,0}}
	self.mer1.XMin = 9600
	self.mer1.XMax = 9570
	self.mer1.YMin = 1365
	self.mer1.YMax = 1365
	self.mowa1 = CreateObject {x=10015, y=1340, z=1000, logic="CustomLogic", name="mowa"}
end