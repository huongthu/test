TONGNAMERES_SUCCESS = 0 -- script viet hoa By http://tranhba.com  th�nh c�ng 
TONGNAMERES_FAILURE = 1 -- script viet hoa By http://tranhba.com  th�t b�i 
TONGNAMERES_INVALID = 2 -- script viet hoa By http://tranhba.com  bang h�i t�n phi ph�p 
TONGNAMERES_FREE = 3 -- script viet hoa By http://tranhba.com  bang h�i t�n c� th� s� d�ng 
TONGNAMERES_USED = 4 -- script viet hoa By http://tranhba.com  bang h�i t�n �� b� s� d�ng 
TONGNAMERES_APPLY = 5 -- script viet hoa By http://tranhba.com  bang h�i t�n �� th�n th�nh 

TASKVALUE_BLEND = 2320 -- script viet hoa By http://tranhba.com  c�ng d�ng/u�ng nhi�m v� thay ��i l��ng s� 

function cancel() 
end 

-- script viet hoa By http://tranhba.com  ki�m tra c� ���c hay kh�ng s�a ��i vai tr� t�n 
function check_renamerole() 
if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then 
return 1; 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  ki�m tra c� ���c hay kh�ng s�a ��i bang h�i t�n 
function check_renametong() 
local value = GetTask(TASKVALUE_BLEND) 
if (GetBit(value, 2) == 1) then 
return 1; 
end 
return 0; 
end 

-- script viet hoa By http://tranhba.com  ki�m tra c� ���c hay kh�ng nh�n l�y nguy�n th�nh ch� b�i th��ng 
function check_castellan_remedy() 
local value = GetTask(TASKVALUE_BLEND) 
if (GetBit(value, 3) == 1) then 
return 1; 
end 
return 0; 
end 
