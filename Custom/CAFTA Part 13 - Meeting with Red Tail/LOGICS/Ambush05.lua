function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-40,-40,40,40}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 1000 then
			claw.State = self.prevClawState
			self:Destroy()
			return
		end
	end
end
function attack(self)
	local claw = GetClaw()
	if not self.startTime then
		self.startTime = GetTicks()
		self.prevClawState = claw.State
		claw.State = -1
		TextOut("Hmmm... Terraria reference")
		self.obj100 = CreateObject {x=37400, y=7118, z=1000, logic="BearSailor", image="LEVEL_BEARSAILOR", Powerup = 22, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj101 = CreateObject {x=36400, y=7118, z=1000, logic="RedTailPirate", image="LEVEL_REDTAILPIRATE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj102 = CreateObject {x=36800, y=7118, z=1000, logic="RedTailPirate", image="LEVEL_REDTAILPIRATE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj103 = CreateObject {x=36800, y=7118, z=1000, logic="RedTailPirate", image="LEVEL_REDTAILPIRATE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj104 = CreateObject {x=37400, y=7118, z=1000, logic="RedTailPirate", image="LEVEL_REDTAILPIRATE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj105 = CreateObject {x=37400, y=7118, z=1000, logic="BearSailor", image="LEVEL_BEARSAILOR", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj106 = CreateObject {x=36400, y=7118, z=1000, logic="BearSailor", image="LEVEL_BEARSAILOR", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj107 = CreateObject {x=36500, y=7118, z=1000, logic="Wolvington", image="CUSTOM_IMAGE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj108 = CreateObject {x=37400, y=7118, z=1000, logic="Siren", image="CUSTOM_IMAGE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj109 = CreateObject {x=36500, y=7118, z=1000, logic="Siren", image="CUSTOM_IMAGE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj110 = CreateObject {x=36900, y=7118, z=1000, logic="Siren", image="CUSTOM_IMAGE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
		self.obj111 = CreateObject {x=37000, y=7118, z=1000, logic="Wolvington", image="CUSTOM_IMAGE", Powerup = 0, UserRect1 = {0,0,0,0}, UserRect2 = {0,0,0,0}}
	end
end
