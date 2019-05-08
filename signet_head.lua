IncludeLib("TONG") 
TASKID_MONEYBOX_LASTTIME = 2446 -- script viet hoa By http://tranhba.com  ��o chu t�i ti�n hi�u l�c ch�n ch� th�i gian 
TONGTSK_MONEYBOX_DROPMAX = 1035 -- script viet hoa By http://tranhba.com  ��o chu t�i ti�n g�p b�i r�i xu�ng boss b�o �n ��ch h�n ch� 
SIGNET_MAXDROP = 180 

function getSignetDropRate(nCnt) 
local rate = random(14,18) * nCnt; 
local resid = mod(rate, 10); 
if (resid > 5) then 
return ceil(rate / 10); 
else 
return floor(rate / 10); 
end; 
end; 

function IsDoubledMoneyBox(nTongID) 
if (floor(GetCurServerTime()/60) < GetTask(TASKID_MONEYBOX_LASTTIME) and TONG_GetTaskValue(nTongID, TONGTSK_MONEYBOX_DROPMAX) < SIGNET_MAXDROP) then 
return 1 
end 
return nil 
end 

function getSignetYMD(nDay) 
nDay = floor(nDay/ 1000000) 
local nDate = mod(nDay, 100) 
local nMonth = mod(floor(nDay / 100), 100) 
local nYear = floor(nDay / 10000) 
return nYear, nMonth, nDate 
end 
