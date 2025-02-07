function init(self)
	self.precamX = 15250
	self.precamY = 6430
end
function main(self)
	local claw = GetClaw()
	if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x53) and self.State == 0 then
		self.State = 210
		TextOut("Prehistorik2 Mode")
		PlaySound("GAME_MINORCHEAT")
		CreateObject {x=self.precamX, y=self.precamY, z=z, logic="CustomLogic", name="prehistorikman"}
	end
	if claw.X > self.X - 50 and claw.X < self.X + 50 and claw.Y > self.Y - 50 and claw.Y < self.Y + 50 and KeyPressed(0x50) and self.State == 210 then
		self.State = 211
		PlaySound("CUSTOM_MMM")
		CameraToPoint(self.precamX,self.precamY)
	end
	if KeyPressed(0x43) and self.State == 211 then
		self.State = 210
		PlaySound("CUSTOM_HIT")
		CameraToClaw()
	end
end