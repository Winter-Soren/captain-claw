function main(self)
	if self.State == 0 then
		self.State = 50
		self.AttackTypeFlags = ObjectType.Player
		self.AttackRect = {-30,-30,30,30}
	end
end
function attack(self)
	PlaySound("CUSTOM_MMM")
	self.ropeA = CreateObject {x=7230, y=6365, z=-100, logic="AniRope", image="GAME_POWERUPS_EXTRALIFE", SpeedX=99999}
	self.ropeA.DrawFlags.NoDraw = true
	self.ropeB = CreateObject {x=7310, y=6250, z=-100, logic="AniRope", image="GAME_POWERUPS_EXTRALIFE", SpeedX=99999}
	self.ropeB.DrawFlags.NoDraw = true
	self.ropeC = CreateObject {x=7260, y=6075, z=-100, logic="AniRope", image="GAME_POWERUPS_EXTRALIFE", SpeedX=99999}
	self.ropeC.DrawFlags.NoDraw = true
	self.cpegB = CreateObject {x=7300, y=6065, z=0, logic="CrumblingPegNoRespawn", image="LEVEL_CRUMBLEPEG"}
	self:Destroy()
end