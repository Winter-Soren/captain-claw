local STAN_A = 0
local STAN_B = 1
local STAN_C = 2
local STAN_D = 3
local STAN_E = 4
function main(self)
	local claw = GetClaw()
	if self.State == STAN_A then
		self.State = STAN_B
		self.object1 = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="StartElevator", image="CUSTOM_ANOTHER"}
		self.object1:SetFrame(2)
		self.object1.YMin = 0
		self.object1.YMax = 0
		self.object1.SpeedY = 0
	end
	
	if claw.X > self.X - 30 and claw.X < self.X + 30 and claw.Y > self.Y - 100 and claw.Y < self.Y + 100 and KeyPressed(0x26) and self.State == STAN_B then
		self.State = STAN_C
		self.object1.SpeedY = self.SpeedY
		self.object1.YMin = self.YMin
		self.object1.YMax = self.YMax
	end
	if self.State == STAN_C and claw.Y >= 3750 then
		self.State = STAN_D
		self.object1.SpeedY = 0
	end
	if self.State == STAN_D and claw.X > 10540 and claw.X < 10640 and claw.Y > 3655 and claw.Y < 3855 then
		self.State = STAN_E
		self.object1:Destroy()
	end
	if self.State == STAN_E then
		self.State = STAN_B
		self.object1 = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="StartElevator", image="CUSTOM_ANOTHER"}
		self.object1:SetFrame(2)
		self.object1.YMin = self.YMin
		self.object1.YMax = self.YMax
		self.object1.SpeedY = 0
	end
	if claw.Health <= 0 then
		self.State = STAN_E
		self.object1:Destroy()
	end
end