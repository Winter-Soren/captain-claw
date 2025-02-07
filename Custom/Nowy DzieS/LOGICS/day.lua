function init(self)
	self.background = {}
	self.framesCount = 9
	self.interval = 180000
	self.currentFrame = self.framesCount
	
	local flags = ffi.new("Flags_t")
	flags.AlwaysActive = true
	
	for i = 0,640,64 do
		for j = 0,512,64 do
			local bgFrag = CreateObject {x=i, y=j, z=-9000, logic="BackgroundLogic", image="CUSTOM_SKY", Flags=flags}
			bgFrag:SetFrame(self.currentFrame)
			table.insert(self.background, bgFrag)
		end
	end
end
function main(self)
	local frame = self.framesCount - math.floor(GetTicks() / self.interval)
	
	if frame >= 1 and frame ~= self.currentFrame then
		for i, bgFrag in ipairs(self.background) do
			self.currentFrame = frame
			bgFrag:SetFrame(self.currentFrame)
		end
	end
end