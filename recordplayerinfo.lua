Include("\\script\\global\\login_head.lua")

-- script viet hoa By http://tranhba.com  d�ng cho ghi ch�p nh� ch�i ��ch tin t�c 
G_TSK_PlayerLastLoginTime = 601 

local _SetPlayerLoginTime = function (bExchangeIn) 
if bExchangeIn ~= 1 then 
SetTask(G_TSK_PlayerLastLoginTime, GetCurServerTime()) 
end 

end 



if login_add then 
login_add(_SetPlayerLoginTime, 0) 
end
