-- script viet hoa By http://tranhba.com  th«ng dông NPC thêi gian ch©n vèn 
-- script viet hoa By http://tranhba.com  wangbin 2010.12.7 
NpcEventList = { 
m_Handlers = {}, 
m_Id = 0 
} 

function NpcEventList:AddHandler(handler, param) 
if (handler ~= nil) then 
		self.m_Id = self.m_Id + 1
local tb = {} 
tb.pack = curpack() 
tb.handler = handler 
tb.param = param 
self.m_Handlers[self.m_Id] = tb 
return self.m_Id 
else 
return 0 
end 
end 

function NpcEventList:DelHandler(id) 
self.m_Handlers[id] = nil 
end 

function NpcEventList:Dialog(id) 
local tb = self.m_Handlers[id] 
if (tb ~= nil and tb.handler ~= nil and tb.handler.Dialog ~= nil) then 
local pack = usepack(tb.pack) 
tb.handler:Dialog(tb.param) 
usepack(pack) 
end 
end 

function NpcEventList:Die(id, index) 
local tb = self.m_Handlers[id] 
if (tb ~= nil and tb.handler ~= nil and tb.handler.Die ~= nil) then 
local pack = usepack(tb.pack) 
tb.handler:Die(index, tb.param) 
usepack(pack) 
end 
end 

-- script viet hoa By http://tranhba.com  ®èi tho¹i sù kiÖn 
function main(param) 
NpcEventList:Dialog(param) 
end 

-- script viet hoa By http://tranhba.com  tö vong sù kiÖn 
function OnDeath(index, param) 
NpcEventList:Die(param, index) 
end 
