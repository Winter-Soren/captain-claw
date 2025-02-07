function HugoCopter(self)
	local claw = GetClaw()
	local input = GetInput()

	if self.State == 0 then
		self.DrawFlags.NoDraw = true
		self:SetImage("CUSTOM_WINGS")
		self:SetAnimation("GAME_CYCLE100")
		self.State = 1
	end

	local wings = CreateObject {x=claw.X,y=claw.Y+claw.MoveRect.Top*0.5+10,z=claw.Z-1,logic="CustomLogic",name="Wings"}
	wings:SetFrame(self.I)
	self:AnimationStep()

	if AND(input,0x1)~=0 then
		ClawJump(10)
		claw:SetFrame(401)
	end
end

function attack(self)
	CustomPowerup(HugoCopter,10000)
	SetMusicSpeed(0, 0)
	self.pglitter:Destroy()
	self:Destroy()
end

function main(self)
	if self.State==0 then
		self.AttackTypeFlags=2
		self.AttackRect = {-20, -20, 20, 20}
		self:SetAnimation("GAME_CYCLE50")
		self:SetImage("CUSTOM_ANGELCATNIP")
		self.pglitter = CreateObject { x=self.X, y=self.Y, z=self.Z+1, logic="PowerupGlitter"}
		self.State = 1
	else
		self:AnimationStep()
	end
end
