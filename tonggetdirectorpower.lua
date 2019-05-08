-- script viet hoa By http://tranhba.com  tr­ëng l·o ph¸n ®o¸n ch©n vèn 
-- script viet hoa By http://tranhba.com By Suyu 2003.11.5 

Include("\\script\\global\\repute_head.lua")

function CheckTongDirectorPower() 
if((GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 1) and (GetLeadLevel() >= 10))then 
return 1 
else 
return 0 
end 
end; 
