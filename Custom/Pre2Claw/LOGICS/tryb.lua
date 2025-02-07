function main(self)
	local claw = GetClaw()
	if self.State == 0 then
		self.State = 1
		claw.State = -1
		self.modeA = CreateObject {x=claw.X, y=claw.Y, z=99995, logic="DoNothing", image="CUSTOM_MODE"}
		self.modeA:SetFrame(1)
		self.modeB = CreateObject {x=claw.X, y=claw.Y-50, z=99999, logic="DoNothing", image="CUSTOM_MODE"}
		self.modeB:SetFrame(2)
		self.modeN = CreateObject {x=claw.X, y=claw.Y, z=99999, logic="DoNothing", image="CUSTOM_MODE"}
		self.modeN:SetFrame(3)
		self.modeE = CreateObject {x=claw.X, y=claw.Y+50, z=99999, logic="DoNothing", image="CUSTOM_MODE"}
		self.modeE:SetFrame(4)
		self.choose = CreateObject {x=claw.X, y=claw.Y-160, z=99999, logic="DoNothing", image="CUSTOM_MODE"}
		self.choose:SetFrame(5)
	end
		if KeyPressed(0x61) then
			Teleport(1965,2240)
			TextOut("Baby mode")
			PlayerData().PistolAmmo = 25
			PlayerData().MagicAmmo = 15
			PlayerData().TNTAmmo = 10
			PlayerData().Lives = 10
			self:Destroy()
		end
		if KeyPressed(0x62) then
			Teleport(1965,2240)
			TextOut("Normal mode")
			PlayerData().PistolAmmo = 10
			PlayerData().MagicAmmo = 5
			PlayerData().TNTAmmo = 3
			PlayerData().Lives = 7
			self:Destroy()
		end
		if KeyPressed(0x63) then
			Teleport(1965,2240)
			TextOut("Expert mode")
			PlayerData().PistolAmmo = 5
			PlayerData().MagicAmmo = 1
			PlayerData().TNTAmmo = 2
			PlayerData().Lives = 3
			--local anticheat = CreateObject {x=1965, y=2240, z=-1000, logic="CustomLogic", name="pre2_000"}
			self:Destroy()
		end
end