TONGNAMERES_SUCCESS = 0 -- script viet hoa By http://tranhba.com  thµnh c«ng 
TONGNAMERES_FAILURE = 1 -- script viet hoa By http://tranhba.com  thÊt b¹i 
TONGNAMERES_INVALID = 2 -- script viet hoa By http://tranhba.com  bang héi tªn phi ph¸p 
TONGNAMERES_FREE = 3 -- script viet hoa By http://tranhba.com  bang héi tªn cã thÓ sö dông 
TONGNAMERES_USED = 4 -- script viet hoa By http://tranhba.com  bang héi tªn ®· bÞ sö dông 
TONGNAMERES_APPLY = 5 -- script viet hoa By http://tranhba.com  bang héi tªn ®· th©n thØnh 

TASKVALUE_BLEND = 2320 -- script viet hoa By http://tranhba.com  còng dïng/uèng nhiÖm vô thay ®æi l­îng sè 

function cancel() 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra cã ®­îc hay kh«ng söa ®æi vai trß tªn 
function check_renamerole() 
if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then 
return 1; 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra cã ®­îc hay kh«ng söa ®æi bang héi tªn 
function check_renametong() 
local value = GetTask(TASKVALUE_BLEND) 
if (GetBit(value, 2) == 1) then 
return 1; 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra cã ®­îc hay kh«ng nhËn lÊy nguyªn thµnh chñ båi th­êng 
function check_castellan_remedy() 
local value = GetTask(TASKVALUE_BLEND) 
if (GetBit(value, 3) == 1) then 
return 1; 
end 
return 0; 
end 
