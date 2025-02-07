function main(self)
	local claw = GetClaw()
	if self.State == 0 and GetClaw().Score == 2000000 then
		self.State = 1
		self.AttackRect = {10,-100,10,100}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	local claw = GetClaw()
		GetClaw().Score = GetClaw().Score - 2000000
		self:Destroy()
		self.warpback = CreateObject {x=14900, y=3480, z=1000, logic="SpecialPowerup", image="GAME_VERTWARP", SpeedX=15455, SpeedY=5550}
		self.fds = CreateObject {x=14500, y=3550, z=2000, logic="DoNothing", image="CUSTOM_ZCOVER"}
			self.word1 = CreateObject {x=14470, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
			self.word1:SetFrame(6)
				self.word2 = CreateObject {x=14480, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
				self.word2:SetFrame(18)
		self.word3 = CreateObject {x=14490, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
		self.word3:SetFrame(9)
			self.word4 = CreateObject {x=14500, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
			self.word4:SetFrame(5)
				self.word5 = CreateObject {x=14510, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
				self.word5:SetFrame(14)
		self.word6 = CreateObject {x=14520, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
		self.word6:SetFrame(4)
				self.word7 = CreateObject {x=14530, y=3640, z=2000, logic="DoNothing", image="GAME_FONT"}
				self.word7:SetFrame(19)
	for i = 0,1536,64
		do
			for j = 0,192,64
			do
				self.frag1 = CreateObject {x=13664+i, y=3168+j, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
				self.frag1:SetFrame(5)
			end
			for k = 0,128,64
			do
				self.frag2 = CreateObject {x=13664+i, y=3936+k, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
				self.frag2:SetFrame(5)
			end
		end
	for i = 0,192,64
		do
		for j = 0,448,64
			do
				self.frag3 = CreateObject {x=13664+i, y=3424+j, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
				self.frag3:SetFrame(5)
				self.frag4 = CreateObject {x=15008+i, y=3424+j, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
				self.frag4:SetFrame(5)
			end
		end
	for i = 0,192,64
		do
			for j = 0,64,64
				do
				self.frag5 = CreateObject {x=14752+i, y=3680+j, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
				self.frag5:SetFrame(5)
				end
		end
	for i = 0,576,64
		do
			for j = 0,64,64
				do
				self.frag6 = CreateObject {x=14368+i, y=3808+j, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
				self.frag6:SetFrame(5)
				end
		end
	for i = 0,896,64
		do
			self.frag7 = CreateObject {x=13984+i, y=3424, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.frag7:SetFrame(1)
		end
	for i = 0,320,64
		do
			self.frag8 = CreateObject {x=13920, y=3488+i, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.frag8:SetFrame(6)
		end
	for i = 0,256,64
		do
			self.frag9 = CreateObject {x=13984+i, y=3872, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.frag9:SetFrame(3)
		end
	for i = 0,256,64
		do
			self.frag10 = CreateObject {x=14368+i, y=3744, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.frag10:SetFrame(3)
		end
	for i = 0,128,64
		do
			self.frag11 = CreateObject {x=14752+i, y=3616, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.frag11:SetFrame(3)
		end
	self.tile01 = CreateObject {x=14304, y=3744, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
	self.tile01:SetFrame(2)
	self.tile02 = CreateObject {x=14688, y=3616, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
	self.tile02:SetFrame(2)
		self.tile03 = CreateObject {x=14688, y=3680, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
		self.tile03:SetFrame(4)
		self.tile04 = CreateObject {x=14944, y=3552, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
		self.tile04:SetFrame(4)
		self.tile05 = CreateObject {x=14944, y=3488, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
		self.tile05:SetFrame(4)
		self.tile06 = CreateObject {x=14304, y=3808, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
		self.tile06:SetFrame(4)
			self.tile07 = CreateObject {x=14688, y=3744, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.tile07:SetFrame(7)
			self.tile08 = CreateObject {x=14944, y=3616, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.tile08:SetFrame(7)
			self.tile09 = CreateObject {x=14304, y=3872, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.tile09:SetFrame(7)		
	self.tile10 = CreateObject {x=13920, y=3424, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
	self.tile10:SetFrame(8)
		self.tile11 = CreateObject {x=14944, y=3424, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
		self.tile11:SetFrame(9)
			self.tile12 = CreateObject {x=13920, y=3872, z=1000, logic="DoNothing", image="CUSTOM_CLIFFS"}
			self.tile12:SetFrame(10)
end