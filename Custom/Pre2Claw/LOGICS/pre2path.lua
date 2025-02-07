function main(self)
	if self.State == 0 then
  		PathElevator(self)
  		self:SetImage("CUSTOM_PRE2ELEV")
	else
  		PathElevator(self)
	end
end