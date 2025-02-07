function main(self)
    local claw = GetClaw()
    if self.State == 0 then
        self.State = 1
        self.AttackRect = {-40,-40,40,40}
        self.AttackTypeFlags = ObjectType.Player
    end
    if self.startTime then
        if GetTicks() - self.startTime > 1000 then
            claw.State = self.prevClawState
            self:Destroy()
            return
        end
    end
end
function attack(self)
    local claw = GetClaw()
    if not self.startTime then
        self.startTime = GetTicks()
        self.prevClawState = claw.State
        claw.State = -1
        TextOut("Yes! The 13th curse! I will need that later!")
        PlaySound("GAME_CURSED")
        self.obj101 = CreateObject {x=25908, y=2424, z=100, logic="TreasurePowerup", image="GAME_CURSES_HEALTH"}
    end
end
