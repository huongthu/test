-- script viet hoa By http://tranhba.com  bang chñ ph¸n ®o¸n ch©n vèn 
-- script viet hoa By http://tranhba.com By Suyu 2003.11.5 

Include("\\script\\global\\repute_head.lua")

function CheckTongMasterPower() 
-- script viet hoa By http://tranhba.com Change request 14/06/2011 - Modified by DinhHQ 
local nWeekDay = tonumber(GetLocalDate("%w")) 
local nHour = tonumber(GetLocalDate("%H%M")) 
if nWeekDay == 5 and nHour >= 1800 and nHour <= 2350 then 
return 0 
end 
if((GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 1) and (GetLeadLevel() >= 10))then 
return 1 
else 
return 0 
end 
end; 
