function main(self)
	if self.State == 0 then
		self.HitTypeFlags=2
		self.HitRect = {8, 8, 16, 16}
	elseif self.State <80 then
		self.State = self.State + 1
	elseif self.State == 80 then self.State = 81 CameraToClaw() GetClaw().State=self.bState
	end
end

function hit(self)
	self.HitTypeFlags=0
	local claw = GetClaw()
	self.bState = claw.State
	claw.State = 666
	self.State = 1
	local obj = CreateObject {x=37857, y=2018, z=1000, logic="TogglePeg"}
	obj:SetImage("LEVEL_BOSSPEG")
	obj.Speed = 1500
	CameraToObject(obj)
end
