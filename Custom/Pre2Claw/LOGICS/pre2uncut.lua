function main(self)
	if self.State == 0 then
		self.State = 60
		self.HitTypeFlags = ObjectType.PShot
		self.HitRect = {-15,-15,15,15}
	end
end
function hit(self)
	self.cpegA = CreateObject {x=8300, y=4195, z=1000, logic="CrumblingPegNoRespawn", image="LEVEL_CRUMBLEPEG"}
	self:Destroy()
end