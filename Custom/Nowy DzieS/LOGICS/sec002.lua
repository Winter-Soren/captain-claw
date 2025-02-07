function main(self)
	if self.State == 0 then
		self.State = 1
		self.AttackRect = {-50, -50, 50, 50}
		self.AttackTypeFlags = ObjectType.Player
	end
end
function attack(self)
	TextOut("Congratulations! You have found a second secret.")
	self:Destroy()
end