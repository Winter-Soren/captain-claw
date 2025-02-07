function main(self)
	if self.State == 0 then self.sx,self.sy = self.SpeedX,self.SpeedY end
	if self.timer == nil then
		self.timer = 0
	elseif self.timer <= 0 then
		if self.enemyN == nil then
			self.enemyN = 0
		elseif self.enemyN < 2 then
			Officer(self)
		elseif self.enemyN == 2 then
			Soldier(self)
		end
		if self.State == 2004 and self.Coins > 0 and not self.Packed then self:DropCoin() self.Coins = self.Coins-1 end
		if self.State == 2004 and self.enemyN < 2 then
			if self.sx>0 and self.sy>0 then self.SpeedX,self.SpeedY = self.X,self.Y end
			--if self.Powerup == 0 then self:DropCoin() end
			self.enemyN = self.enemyN + 1
			self.State = 0
			self.timer = 10
		end
		if self.State == 2004 and self.Coins > 0 and self.Packed then self:DropCoin() self.Coins = self.Coins-1 end
		if self.State == 2004 and self.enemyN == 2 and self.Map then
			CreateGoodie {x=self.X, y=self.Y, z=self.Z+1, powerup=31}
			self.Map = false
		end
	else self.timer = self.timer - 1
	end
	if self.sx>0 and self.sy>0 and self.State~=0 then
		self.X,self.Y = self.sx,self.sy
		self.sx,self.sy = 0,0
	end
end

function init(self)
	if self.Powerup == 0 then self.Coins = 3 RegisterTreasure(TreasureType.Coin,3) end
	if self.Powerup == 1 then self.Coins = 0 self.Map=true end
	if self.Powerup == 2 then self.Packed = true self.Coins = 5 RegisterTreasure(TreasureType.Coin,3) end
	self.Powerup = 0
end
