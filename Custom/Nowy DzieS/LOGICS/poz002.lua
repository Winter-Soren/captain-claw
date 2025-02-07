function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-20,-20,20,20}
		self.AttackTypeFlags = ObjectType.Player
	end
	if self.startTime then
		if GetTicks() - self.startTime > 4500 then
			claw.State = self.prevClawState
			self.obj14:Destroy()
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
		TextOut("Ehmm, Earthquake?!")
		PlaySound("CUSTOM_TREMOR")
		self.obj08 = CreateObject {x=2029, y=5354, z=1000, logic="DoNothing", image="LEVEL_MERCAT"}
		self.obj08:SetFrame(203)
		self.obj08.DrawFlags.Mirror = true
		self.obj09 = CreateObject {x=2116, y=5364, z=1000, logic="TogglePeg", image="CUSTOM_TPEG"}
		self.obj09.DrawFlags.NoDraw = true
		self.obj09.SpeedX = 9999
		self.obj09.SpeedY = 9999
		self.obj10 = CreateObject {x=1928, y=5378, z=1000, logic="DoNothing", image="CUSTOM_ANOTHER"}
		self.obj10:SetFrame(4)
		self.obj11 = CreateObject {x=1902, y=5360, z=1000, logic="TogglePeg", image="CUSTOM_TPEG"}
		self.obj11.DrawFlags.NoDraw = true
		self.obj11.SpeedX = 9999
		self.obj11.SpeedY = 9999
		self.obj12 = CreateObject {x=1690, y=5399, z=1000, logic="DoNothing", image="CUSTOM_ANOTHER"}
		self.obj12:SetFrame(5)
		self.obj12.DrawFlags.Mirror = true
		self.obj13 = CreateObject {x=1704, y=5394, z=1000, logic="TogglePeg", image="CUSTOM_TPEG"}
		self.obj13.DrawFlags.NoDraw = true
		self.obj13.SpeedX = 9999
		self.obj13.SpeedY = 9999
		self.obj14 = CreateObject {x=305, y=3150, z=1000, logic="Shake", image="GAME_SOUNDICON"}
		self.obj14.DrawFlags.NoDraw = true
		self.obj14.AttackRect = {-20,-20,20,20}
	end
end