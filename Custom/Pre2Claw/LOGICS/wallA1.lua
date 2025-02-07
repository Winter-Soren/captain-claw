function main(self)
	if self.State == 0 then
		self.State = 132
		self.AttackRect = {-48,-32,32,64}
		self.AttackTypeFlags = ObjectType.Player
		self.HitRect = {-48,-32,32,64}
		self.HitTypeFlags = ObjectType.Player

		self.fragA1 = CreateObject {x=14816, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragA1:SetFrame(36)
		self.fragB1 = CreateObject {x=14880, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragB1:SetFrame(37)
		self.fragC1 = CreateObject {x=14816, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragC1:SetFrame(37)
		self.fragD1 = CreateObject {x=14880, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragD1:SetFrame(36)
	
		self.fragE1 = CreateObject {x=14752, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragE1:SetFrame(40)
		self.fragF1 = CreateObject {x=14752, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragF1:SetFrame(39)
		self.fragG1 = CreateObject {x=14944, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragG1:SetFrame(42)
		self.fragH1 = CreateObject {x=14944, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragH1:SetFrame(43)
	end
end
function attack(self)
	local claw = GetClaw()
	if self.State == 132 then
		if claw.X > self.X -65 then
			claw.X = claw.X - 15
		end
	end
end
function hit(self)
	if self.State == 132 then
		self.State = 133
		CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2wall"}
		CreateObject {x=self.X-25, y=self.Y+10, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		CreateObject {x=self.X+30, y=self.Y+15, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		self.wallC = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="wallA2"}
		
		ClawJump(50)
		PlaySound("CUSTOM_HIT")
		
		self.fragA1:Destroy()
		self.fragB1:Destroy()
		self.fragC1:Destroy()
		self.fragD1:Destroy()
		self.fragE1:Destroy()
		self.fragF1:Destroy()
		self.fragG1:Destroy()
		self.fragH1:Destroy()
	end
end