function main(self)
    if self.State == 0 then
        self.State = 1
        self:SetImage("CUSTOM_DEADCATNIP")
        self.AttackRect = {-20,-20,20,20}
        self.AttackTypeFlags = ObjectType.Player
        self.anipow = CreateObject {x=self.X, y=self.Y, z=2500, logic="AniCycle", image="GAME_GLITTERRED"}
    end
end
function attack(self)
    PlaySound("GAME_CURSED")
    KillClaw()
    self.anipow:Destroy()
    self:Destroy()
end
