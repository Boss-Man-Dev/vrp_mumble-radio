local mumbleRadio = class("mumbleRadio", vRP.Extension)

function mumbleRadio:__construct()
  vRP.Extension.__construct(self)

  self.dept1 = false
  self.dept2 = false
  self.dept3 = false
  self.dept4 = false
  self.dept5 = false
  self.basic = false
  
end

-- set player as dept_1 (true or false)
function mumbleRadio:setDept1(flag)
  self.dept_1 = flag
  --SetPedAsCop(GetPlayerPed(-1),flag)
  exports["rp-radio"]:SetRadio(flag)
  if(flag == true) then
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(1)
  else
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,5)
  end
  
end

-- set player as dept_2 (true or false)
function mumbleRadio:setDept2(flag)
  self.dept_2 = flag
  exports["rp-radio"]:SetRadio(flag)
  if(flag == true) then
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
    exports["rp-radio"]:GivePlayerAccessToFrequencies(2)
  else
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,5)
  end

end

-- set player as dept_3 (true or false)
function mumbleRadio:setDept3(flag)
  self.dept_3 = flag
  exports["rp-radio"]:SetRadio(flag)
  if(flag == true) then
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
    exports["rp-radio"]:GivePlayerAccessToFrequencies(3)
  else
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,5)
  end

end

-- set player as dept_4 (true or false)
function mumbleRadio:setDept4(flag)
  self.dept_4 = flag
  exports["rp-radio"]:SetRadio(flag)
  if(flag == true) then
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(4)
  else
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,5)
  end

end

-- set player as dept_5 (true or false)
function mumbleRadio:setDept5(flag)
  self.dept_5 = flag
  exports["rp-radio"]:SetRadio(flag)
  if(flag == true) then
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(5)
  else
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,5)
  end

end

-- set player as dept_1 (true or false)
function mumbleRadio:setBasic(flag)
  self.basic = flag
  --SetPedAsCop(GetPlayerPed(-1),flag)
  exports["rp-radio"]:SetRadio(flag)
  if(flag == true) then
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
  else
    exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,2,3,4,5)
  end
  
end

-- TUNNEL
mumbleRadio.tunnel = {}

mumbleRadio.tunnel.setDept1 = mumbleRadio.setDept1
mumbleRadio.tunnel.setDept2 = mumbleRadio.setDept2
mumbleRadio.tunnel.setDept3 = mumbleRadio.setDept3
mumbleRadio.tunnel.setDept4 = mumbleRadio.setDept4
mumbleRadio.tunnel.setDept5 = mumbleRadio.setDept5
mumbleRadio.tunnel.setBasic = mumbleRadio.setBasic

vRP:registerExtension(mumbleRadio)