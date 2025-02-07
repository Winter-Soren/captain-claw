function main(self)
	if (self.State == 0) then
		self.State = 1
		self.Flags.AlwaysActive = true
		self.ObjectTypeFlags = 128
		self.HitRect = {0,-2,128+40,64}
		self.sega = CreateObject {x=self.X+64, y=self.Y, z=self.Z+1, logic="DoNothing"}
		self.segb = CreateObject {x=self.X+128, y=self.Y, z=self.Z+2, logic="DoNothing"}
		self.segc = CreateObject {x=self.X-9, y=self.Y-47, z=self.Z, logic="DoNothing"}
		self.cuma = CreateObject {x=self.X-190, y=self.Y-58, z=-1, logic="CustomLogic", name="Cuma"}
		self.flag = CreateObject {x=self.X+72, y=self.Y-64, z=self.Z+4, logic="SimpleAnimation"}
		self.sega:SetImage("ACTION") self.segb:SetImage("ACTION")
		self.segc:SetImage("LEVEL_PROJECTILES")
		self.sega:SetFrame(231) self.segb:SetFrame(234) self.segc:SetFrame(3)
		self.flag:SetImage("GAME_CHECKPOINTFLAG")
		self.MoveClawX = 0
		self.MoveClawY = 0
		self.Z = self.Z+1
	else
		if self.cuma.I > 10 and self.State == 1 then
			self.State = 2
			self.MoveClawX = 2
			self.flag:SetAnimation("GAME_CHECKPOINT_RISE")
		end
		if self.State == 2 then
			self.X = self.X + self.MoveClawX
			self.sega.X = self.X+64
			self.segb.X = self.X+128
			self.segc.X = self.X-8
			self.flag.X = self.X+64
			self.sega.Flags.AlwaysActive = true
			self.segb.Flags.AlwaysActive = true
			self.segc.Flags.AlwaysActive = true
			self.flag.Flags.AlwaysActive = true
			if self.flag.I == 5 then self.flag:SetAnimation("GAME_CHECKPOINT_WAVE") end
		end
	end
end