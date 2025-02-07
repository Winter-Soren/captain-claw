function main(self)
	if self.State == 0 then
		self.State = 60
		self.HitTypeFlags = ObjectType.PShot
		self.HitRect = {-30,-30,30,30}
	end
end
function hit(self)
	ClawJump(280)
	self.pass = CreateObject {x=6850, y=5650, z=100, logic="AniCycle", image="CUSTOM_PRE2PASS"}
	self.pass:SetAnimation("CUSTOM_CYCLE68")
	self:Destroy()
end