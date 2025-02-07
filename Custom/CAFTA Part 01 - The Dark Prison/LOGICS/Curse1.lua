function main(self)
    if self.State == 0 then
        self.State = 1
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
    end
end
function attack(self)
	PlaySound("GAME_CURSED")
	TextOut("What is this?")
	self.obj001 = CreateObject {x=8510, y=5381, z=100, logic="CustomLogic", name="Boi"}
	self:Destroy()
end
