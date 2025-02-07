function main(self)
	if self.State == 0 then
		self.State = 130
		self.AttackRect = {-48,-32,32,64}
		self.AttackTypeFlags = ObjectType.Player
		self.HitRect = {-48,-32,32,64}
		self.HitTypeFlags = ObjectType.Player
		
		self.fragA0 = CreateObject {x=14816, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragA0:SetFrame(36)
		self.fragB0 = CreateObject {x=14880, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragB0:SetFrame(37)
		self.fragC0 = CreateObject {x=14816, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragC0:SetFrame(37)
		self.fragD0 = CreateObject {x=14880, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragD0:SetFrame(36)
	
		self.fragE0 = CreateObject {x=14752, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragE0:SetFrame(40)
		self.fragF0 = CreateObject {x=14752, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragF0:SetFrame(39)
		self.fragG0 = CreateObject {x=14944, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragG0:SetFrame(42)
		self.fragH0 = CreateObject {x=14944, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragH0:SetFrame(43)
	end
end
function attack(self)
	local claw = GetClaw()
	if self.State == 130 then
		if claw.X > self.X -65 then
			claw.X = claw.X - 15
		end
	end
end
function hit(self)
	if self.State == 130 then
		self.State = 131
		CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2wall"}
		CreateObject {x=self.X-20, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		CreateObject {x=self.X+20, y=self.Y+10, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		self.wallB = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="wallA1"}
		
		ClawJump(50)
		PlaySound("CUSTOM_HIT")
		
		self.fragA0:Destroy()
		self.fragB0:Destroy()
		self.fragC0:Destroy()
		self.fragD0:Destroy()
		self.fragE0:Destroy()
		self.fragF0:Destroy()
		self.fragG0:Destroy()
		self.fragH0:Destroy()
	end
end