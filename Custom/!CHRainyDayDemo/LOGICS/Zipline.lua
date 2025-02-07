local seglen = 64 -- segment length

function main(self)
	local claw = GetClaw()
	if self.State ~= Attempt()+1 then
		if self.State == 0 then
		if self.SpeedY == 0 then
			self.SpeedY = 4
		end
		-- compute frame index
		local w, h = self.XMax - self.XMin, self.YMax - self.YMin
		self.w, self.h = w, h
		local angle = math.deg(math.atan2(h, w))
		angle = (360 - angle) % 180
		local frame = math.floor(angle / 4) + 1
		assert(frame >= 1 and frame <= 45)
		-- create all segments
		local len = math.sqrt(w*w + h*h)
		local n = math.ceil(len/seglen)
		for i=0,n-1 do
			local ratio = i/n + (seglen/2)/len
			local x, y = self.XMin + ratio * w, self.YMin + ratio * h
			local seg = CreateObject {x=x, y=y, z=1000, logic="DoNothing", image="CUSTOM_ZIPLINE"}
			seg:SetFrame(frame-1)
		end
		end
		self.State = Attempt()+1
		local y = self.MoveRect.Top
		local x = self.XMin + self.w * (tonumber(y - self.YMin)/self.h)
		-- create handle
		if(self.handle) then self.handle:Destroy() if(self.handle.rope) then self.handle.rope:Destroy() end end
		self.handle = CreateObject {x=x, y=y, z=1100, logic="CustomLogic", name="ZiplineHandle"}
		self.handle.zipline = self
	end
end
