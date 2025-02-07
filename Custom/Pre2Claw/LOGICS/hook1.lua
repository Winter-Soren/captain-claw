function main(self)
	if self.State == 0 then
		self.State = 65
		self.HitTypeFlags = ObjectType.Player
		self.HitRect = {-30,-30,30,30}
	end
end
function hit(self)
	PlaySound("GAME_MINORCHEAT")
	self.cpegC = CreateObject {x=14685, y=7010, z=-1000, logic="CrumblingPegNoRespawn", image="LEVEL_CRUMBLEPEG"}
	self:Destroy()
end