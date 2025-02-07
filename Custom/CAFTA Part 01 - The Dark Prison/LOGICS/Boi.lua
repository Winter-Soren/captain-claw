function main(self)
    if self.State == 0 then
        self.State = 1
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
        self.anipow = CreateObject {x=8500, y=5375, z=2500, logic="AniCycle", image="GAME_CURSES_LIFE"}
        self.anipow2 = CreateObject {x=8495, y=5385, z=2500, logic="AniCycle", image="CUSTOM_GLITTER"}
    end
end
function attack(self)
	PlaySound("GAME_CURSE5")
	self:Destroy()
	self.anipow:Destroy()
	self.anipow2:Destroy()
end
