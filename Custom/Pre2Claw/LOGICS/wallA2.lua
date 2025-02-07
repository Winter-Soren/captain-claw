function main(self)
	if self.State == 0 then
		self.State = 134
		self.AttackRect = {-48,-32,32,64}
		self.AttackTypeFlags = ObjectType.Player
		self.HitRect = {-48,-32,32,64}
		self.HitTypeFlags = ObjectType.Player

		self.fragA2 = CreateObject {x=14816, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragA2:SetFrame(36)
		self.fragB2 = CreateObject {x=14880, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragB2:SetFrame(37)
		self.fragC2 = CreateObject {x=14816, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragC2:SetFrame(37)
		self.fragD2 = CreateObject {x=14880, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragD2:SetFrame(36)
	
		self.fragE2 = CreateObject {x=14752, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragE2:SetFrame(40)
		self.fragF2 = CreateObject {x=14752, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragF2:SetFrame(39)
		self.fragG2 = CreateObject {x=14944, y=3424, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragG2:SetFrame(42)
		self.fragH2 = CreateObject {x=14944, y=3488, z=100, logic="DoNothing", image="PRE2_TILES"}
		self.fragH2:SetFrame(43)
	end
end
function attack(self)
	local claw = GetClaw()
	if self.State == 134 then
		if claw.X > self.X -65 then
			claw.X = claw.X - 15
		end
	end
end
function hit(self)
	if self.State == 134 then
		self.State = 135
		CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2wall"}
		CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="pre2super"}
		CreateObject {x=self.X-20, y=self.Y+20, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		CreateObject {x=self.X+35, y=self.Y+10, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		CreateObject {x=self.X+5, y=self.Y-5, z=self.Z, logic="CustomLogic", name="pre2smokes"}
		
		ClawJump(50)
		PlaySound("CUSTOM_HIT")
		
		self.fragA2:Destroy()
		self.fragB2:Destroy()
		self.fragC2:Destroy()
		self.fragD2:Destroy()
		self.fragE2:Destroy()
		self.fragF2:Destroy()
		self.fragG2:Destroy()
		self.fragH2:Destroy()
	end
end