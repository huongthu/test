Include("\\script\\nationalwar\\login.lua")
Include("\\script\\nationalwar\\nationalwar.lua")

function main(type) 
local pos = NW_GetDuty() 
if (pos ~= NWPOSITION_NONE) then 
-- script viet hoa By http://tranhba.com  l�n n�a th�m t�i h�o quang c�ng k� n�ng 
nationalwar_login() 
nationalwar_mapevent(1) 
end 
end 
