function main(object)
	local claw = GetClaw()
	if _CurrentPowerup[0]~=666 or _PowerupTime[0]<=1 or claw.Health<=0 then
		object:Destroy()
	end
	if type(object.CPN)=="function" then
		object.CPN(object)
	end
end