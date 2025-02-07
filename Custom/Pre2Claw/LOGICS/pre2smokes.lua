function main(self)
	if self.State == 0 then
		self.State = 55
		self.smokeA = CreateObject {x=self.X, y=self.Y, z=950, logic="AniCycle", image="CUSTOM_PRE2SMOKE"}
		self.smokeA:SetAnimation("Forward100")
	end
	if self.smokeA.I >= 6 then
		self.smokeA:Destroy()
	end
end