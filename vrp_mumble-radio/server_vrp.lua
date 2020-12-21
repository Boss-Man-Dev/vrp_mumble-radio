
local mumbleRadio = class("mumbleRadio", vRP.Extension)

function mumbleRadio:__construct()
	vRP.Extension.__construct(self)
  
	self.cfg = module("vrp_mumble-radio", "cfg/cfg")
	
	-- task: mission
	local function task_dept()
		SetTimeout(10,task_dept)
		self:taskDept()
	end
	async(function()
		task_dept()
	end)
	
end

function mumbleRadio:taskDept()
	vRP:triggerEvent("setDept")
end

mumbleRadio.event = {}

function mumbleRadio.event:setDept()
	local users = vRP.EXT.Group:getUsersByPermission(self.cfg.perm)
	local config = self.cfg.info
	
	for _,user in pairs(users) do
		if user:hasPermission(config.dept_1.perm) then
			self.remote._setDept1(user.source,true)
		
		elseif user:hasPermission(config.dept_2.perm) then
			self.remote._setDept2(user.source,true)
			
		elseif user:hasPermission(config.dept_3.perm) then
			self.remote._setDept3(user.source,true)
			
		elseif user:hasPermission(config.dept_4.perm) then
			self.remote._setDept4(user.source,true)
			
		elseif user:hasPermission(config.dept_5.perm) then
			self.remote._setDept5(user.source,true)
		
		else
			self.remote._setBasic(user.source,true)
		end
	end
end

function mumbleRadio.event:playerSpawn(user, first_spawn)
	local config = self.cfg.info
	
	if first_spawn then
		if user:hasPermission(config.dept_1.perm) then
			self.remote._setDept1(user.source,true)
		
		elseif user:hasPermission(config.dept_2.perm) then
			self.remote._setDept2(user.source,true)
			
		elseif user:hasPermission(config.dept_3.perm) then
			self.remote._setDept3(user.source,true)
			
		elseif user:hasPermission(config.dept_4.perm) then
			self.remote._setDept4(user.source,true)
			
		elseif user:hasPermission(config.dept_5.perm) then
			self.remote._setDept5(user.source,true)
			
		end
	end
end

vRP:registerExtension(mumbleRadio)