function main(self)
	if self.State == 0 then
		self.State = 1
		if self.Powerup == 0 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_COINS", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 33 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_COINS", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 1 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_GOLDBARS", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 2 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_RINGS_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 3 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_RINGS_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 4 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_RINGS_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 5 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_RINGS_PURPLE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 7 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROSSES_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 8 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROSSES_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 9 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROSSES_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 10 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROSSES_PURPLE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 11 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_SCEPTERS_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 12 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_SCEPTERS_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 13 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_SCEPTERS_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 14 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_SCEPTERS_PURPLE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 15 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_GECKOS_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 16 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_GECKOS_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 17 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_GECKOS_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 18 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_GECKOS_PURPLE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 41 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CHALICES_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 42 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CHALICES_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 43 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CHALICES_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 44 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CHALICES_PURPLE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 45 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROWNS_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 46 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROWNS_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 47 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROWNS_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 48 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_CROWNS_PURPLE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 49 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_JEWELEDSKULL_RED", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 50 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_JEWELEDSKULL_GREEN", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 51 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_JEWELEDSKULL_BLUE", logic="GlitterlessPowerup"}
		end
		if self.Powerup == 52 then
			self.magtrea = CreateObject {x=self.X, y=self.Y, z=self.Z, image="GAME_TREASURE_JEWELEDSKULL_PURPLE", logic="GlitterlessPowerup"}
		end
	end
end