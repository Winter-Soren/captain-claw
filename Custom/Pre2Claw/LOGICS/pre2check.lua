function main(self)
	if self.State == 0 then
		self.State = 15
		self.AttackRect = {-15,-60,15,60}
		self.AttackTypeFlags = ObjectType.Player
		self.check = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="AniCycle", image="CUSTOM_PRE2CHRED"}
		self.check:SetAnimation("CUSTOM_CYCLE60")
	
		self.realchr = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="Checkpoint", image="GAME_CHECKPOINTFLAG"}
		self.realchr.DrawFlags.NoDraw = true
		self.realchr.AttackRect = {-15,-60,15,60}
		self.realchr.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	self.check:Destroy()
	self.realchg = CreateObject {x=self.X+20, y=self.Y+3, z=self.Z, logic="AniCycle", image="CUSTOM_PRE2CHGREEN"}
	self.realchg:SetAnimation("CUSTOM_CYCLE60")
	self:Destroy()
end