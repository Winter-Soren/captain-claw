function main(self)
    if self.State == 0 then
        self.State = 1
        self.AttackRect = {0,0,0,0}
        self.AttackTypeFlags = ObjectType.Player
    end
end
function attack(self)
	TextOut("'Kill the officer with the FrozenCatnip'")
	self.obj150 = CreateObject {x=8983, y=4596, z=2002, logic="Officer", image="LEVEL_OFFICER", UserRect1={11,11,15,0}}
	self:Destroy()
end
