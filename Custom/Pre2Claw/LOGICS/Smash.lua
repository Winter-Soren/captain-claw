function init(self)
	self.startX = self.X
	self.startY = self.Y
end
function main(self)
	if self.State == 0 then
		self.State = 50
		self.HitTypeFlags = ObjectType.Player
		self.HitRect = {-30,-30,30,30}
	end
end
function hit(self)
	ClawJump(50)
	PlaySound("CUSTOM_HIT")
	self.elev = CreateObject {x=self.X, y=self.Y, z=1000, logic="Elevator", image="CUSTOM_ANOTHER"}
	self.elev:SetFrame(2)
	CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2stars"}
	CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2super"}
	self:Destroy()
end