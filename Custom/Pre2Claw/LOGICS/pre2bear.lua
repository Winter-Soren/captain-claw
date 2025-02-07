local bearA = 0
local bearB = 70
local bearC = 71
local bearD = 72
local bearE = 73
function init(self)
	if self.Image == nil then
		self:SetImage("CUSTOM_PRE2BEAR")
	end
	if self._Animation_ == 0 then
		self:SetAnimation("CUSTOM_CYCLE75")
	end
	if self.Direction == 1 then
		self.State = bearA
	else
		self.State = bearB
	end
	if self.SpeedX == 0 then
		self.SpeedX = 2
	end
	if self.SpeedY == 0 then
		self.SpeedY = 250
	end
	
	self.startY = self.Y
	self.maxjump = self.SpeedY
	self.startTicks = GetTicks()
	self.leftborder = self.X - 400
	self.rightborder = self.X + 400
end
function main(self)
	local claw = GetClaw()
	self:AnimationStep()
	self.AttackRect = {-32,-30,32,30}
	self.AttackTypeFlags = ObjectType.Player
	self.HitRect = {-32,-30,32,30}
	self.HitTypeFlags = ObjectType.Player
	
	if self.State == bearA then
		self.X = self.X + self.SpeedX
			if self.X >= self.XMax then
				self.State = bearB
				self.DrawFlags.Mirror = true
			end
	elseif self.State == bearB then
		self.X = self.X - self.SpeedX
			if self.X <= self.XMin then
				self.State = bearA
				self.DrawFlags.Mirror = false
			end
	end
	if self.State == bearD then
		self.X = self.X - 5
		self.Y = claw.Y + 180*(math.sin((self.X - self.startX)*0.01))
			if self.X <= self.leftborder then
				self:Destroy()
			end
	end
	if self.State == bearE then
		self.X = self.X + 5
		self.Y = claw.Y - 180*(math.sin((self.X - self.startX)*0.01))
			if self.X >= self.rightborder then
				self:Destroy()
			end
	end
end
function hit(self)
	local claw = GetClaw()
	if self.State == bearA and claw.X > self.X then
		self.State = bearC
		self:SetImage("CUSTOM_PRE2BEARD")
		self.DrawFlags.Mirror = false
	elseif self.State == bearA and claw.X < self.X then
		self.State = bearC
		self:SetImage("CUSTOM_PRE2BEARD")
		self.DrawFlags.Mirror = true
	elseif self.State == bearB and claw.X > self.X then
		self.State = bearC
		self:SetImage("CUSTOM_PRE2BEARD")
		self.DrawFlags.Mirror = false
	elseif self.State == bearB and claw.X < self.X then
		self.State = bearC
		self:SetImage("CUSTOM_PRE2BEARD")
		self.DrawFlags.Mirror = true
	end
	if self.State == bearC and claw.X > self.X then
		self.State = bearD
		self.startX = self.X
		claw.Score = claw.Score + 500
		self.bearpointsA = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.bearpointsA:SetFrame(9)
		PlaySound("CUSTOM_HIT")
	elseif self.State == bearC and claw.X < self.X then
		self.State = bearE
		self.startX = self.X
		claw.Score = claw.Score + 500
		self.bearpointsB = CreateObject {x=claw.X, y=claw.Y-64, z=9000, logic="PointsIcon", image="CUSTOM_PRE2P"}
		self.bearpointsB:SetFrame(9)
		PlaySound("CUSTOM_HIT")
	end
end
function attack(self)
	local claw = GetClaw()
	local input = GetInput()
	local randamage = math.random(4)
	local ranhit = math.random(2)
	
	if self.State == bearA or self.State == bearB then
		if claw.Y > self.Y -34 then
			local chit = CreateObject {x=claw.X, y=claw.Y-50, z=5000, logic="PointsIcon", image="CUSTOM_PRE2HIT"}
				if ranhit == 1 then
					claw:SetAnimation("CLAW_DAMAGE1")
				elseif ranhit == 2 then
					claw:SetAnimation("CLAW_DAMAGE2")
				end
				if randamage == 1 then
					PlaySound("CLAW_1110048")
				elseif randamage == 2 then
					PlaySound("CLAW_1110049")
				elseif randamage == 3 then
					PlaySound("CLAW_1110050")
				elseif randamage == 4 then
					PlaySound("CLAW_1110051")
				end
		end
			if self.State == bearA and claw.X > self.X and claw.Y > self.Y -34 then
				ClawTakeDamage(5)
				claw.X = claw.X + 50
			elseif self.State == bearA and claw.X < self.X and claw.Y > self.Y -34 then
				ClawTakeDamage(5)
				claw.X = claw.X - 25
			elseif self.State == bearB and claw.X > self.X and claw.Y > self.Y -34 then
				ClawTakeDamage(5)
				claw.X = claw.X + 25
			elseif self.State == bearB and claw.X < self.X and claw.Y > self.Y -34 then
				ClawTakeDamage(5)
				claw.X = claw.X - 50
					if claw.Health <= 0 then
						KillClaw()
				end
			end

		if claw.Y <= self.Y -34 then
			ClawJump(50)
			PlaySound("CUSTOM_BEARUP")
				if AND(input,0x4000000)~=0 then
					ClawJump(self.maxjump)
					PlaySound("CUSTOM_BEARUP")
			end
		end
	end
end