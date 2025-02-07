function main(self)
    if self.State == 0 then
        self.State = 1
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
    end
end
function attack(self)
	PlaySound("CUSTOM_KARL")
	ClawSound("CUSTOM_TRIGGER_KARL")
	self:Destroy()
end
