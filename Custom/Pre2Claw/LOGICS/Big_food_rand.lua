function main(self)
	if self.State == 0 then
		self.State = 1
		self.randfood = math.random(7)
			if self.randfood == 1 then
				self.foodA = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food"}
			elseif self.randfood == 2 then
				self.foodB = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food1"}
			elseif self.randfood == 3 then
				self.foodC = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food2"}
			elseif self.randfood == 4 then
				self.foodD = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food3"}
			elseif self.randfood == 5 then
				self.foodF = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food4"}
			elseif self.randfood == 6 then
				self.foodG = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food5"}
			elseif self.randfood == 7 then
				self.foodH = CreateObject {x=self.X, y=self.Y, z=self.Z, logic="CustomLogic", name="Big_food6"}
			end
	end
end