function main(self)
	if self.State==1 then self:Destroy()
	else self:SetImage("CUSTOM_WINGS") self.DrawFlags.Mirror=GetClaw().DrawFlags.Mirror self.State=1 end
end