-- script viet hoa By http://tranhba.com  tr� ch�i th�i gian 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com  18 trinh t��ng ���ng v�i trong tr� ch�i 1 gi�y 
-- script viet hoa By http://tranhba.com  th��ng thi�n l�m t��ng th��ng , th�i gian bao l�u b�n trong g�p ��i kinh nghi�m 
AEXP_ADWARD_TIME = 4 

-- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t v�n ki�n c�c th�nh ph� th��ng thi�n l�m ��ch tab v�n ki�n 
-- script viet hoa By http://tranhba.com windows ph�a d��i 
-- script viet hoa By http://tranhba.com CITYPRIZETABFILENAME = "data\\cityprize.txt" 
-- script viet hoa By http://tranhba.com Linux ph�a d��i 
CITYPRIZETABFILENAME = "data//cityprize.txt" 

AEXP_LOAD = 0 

-- script viet hoa By http://tranhba.com  th��ng thi�n l�m 
AEXP_AWARDMEDIAL_NGENTYPE = 6; 
AEXP_AWARDMEDIAL_DETAILTYPE = 1; 
AEXP_AWARDMEDIAL_PARTYPE = 197; 

-- script viet hoa By http://tranhba.com  ph�t �c l�m 
AEXP_PUNISHMEDIAL_NGENTYPE = 6; 
AEXP_PUNISHMEDIAL_DETAILTYPE = 1; 
AEXP_PUNISHMEDIAL_PARTYPE = 198; 

-- script viet hoa By http://tranhba.com  c� th� d�n t��ng k�o d�i ng�y ��m 
AEXP_ADWARD_HOURNUM = 24 
-- script viet hoa By http://tranhba.com  b�t ��u t��ng th��ng ��ch l�n nh�t tr� gi� 
AEXP_MAXADWARDNUM = 9999 

-- script viet hoa By http://tranhba.com  to�n c�c nhi�m v� thay ��i l��ng ( th�nh ph� th��ng thi�n l�m s� l��ng ) 
AEXP_GLOBAL_FENGXIANG = 20 
AEXP_GLOBAL_CHNEGDU = 21 
AEXP_GLOBAL_DALI = 22 
AEXP_GLOBAL_BIANJING = 23 
AEXP_GLOBAL_XIANGYANG = 24 
AEXP_GLOBAL_YANGZHOU = 25 
AEXP_GLOBAL_LINAN = 26 
-- script viet hoa By http://tranhba.com  tr��c m�t khai t��ng th�nh ph� 
AEXP_GLOBAL_ADWARD_CITY = 27 
-- script viet hoa By http://tranhba.com  khai t��ng cu�i c�ng nh�t k� 
AEXP_GLOBAL_ENDDATE = 28 
-- script viet hoa By http://tranhba.com  c� hay kh�ng th�m t�i qu� t�n m�m v�n ki�n 
AEXP_BLNLOADFILE = 29 


-- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng 
AEXP_TASK_ADWARDDATE = 606 -- script viet hoa By http://tranhba.com  t�n tr� nh� ch�i d�n t��ng nh�t k� 
AEXP_PLAYERTONG_LIMIT = 1 -- script viet hoa By http://tranhba.com  nh� ch�i v�o gi�p th�i gian nh�t ��nh ph�i l�n h�n n�n tr� gi� , m�i c� th� nh�n l�y ph�n th��ng . ��n v� l� tr�i ��m ( c�ng ch�n v�n t��ng ��i l�c xin ch� � ) 

-- script viet hoa By http://tranhba.com  th�nh ph� c�ng to�n c�c thay ��i l��ng ��ch ��i �ng bi�u 
arraycitytoglobalvalue = 
{ 
AEXP_GLOBAL_FENGXIANG, 
AEXP_GLOBAL_CHNEGDU, 
AEXP_GLOBAL_DALI, 
AEXP_GLOBAL_BIANJING, 
AEXP_GLOBAL_XIANGYANG, 
AEXP_GLOBAL_YANGZHOU, 
AEXP_GLOBAL_LINAN, 
}; 

-- script viet hoa By http://tranhba.com  th�nh ph� t�c d�n c�ng th�nh ph� t�n ��i �ng bi�u 
arraycityindextoname = 
{ 
" ph��ng t��ng ", 
" th�nh �� ", 
" ��i L� ", 
" bi�n kinh ", 
" t��ng d��ng ", 
" D��ng Ch�u ", 
" tr��c khi an ", 
}; 

-- script viet hoa By http://tranhba.com  m�t m�i k� l�n h�n m�t tr� gi� l�c t�n m�m 
AEXP_ADDMAX_SAVE = 1000 
-- script viet hoa By http://tranhba.com  m�t m�i k� �t h�n m�t tr� gi� l�c t�n m�m 
AEXP_REDUCEMAX_SAVE = 1000 

function loadsavevalue() 
blnLoad = GetGlbValue(AEXP_BLNLOADFILE) 
if (blnLoad == nil or blnLoad == 0) then 
SetGlbValue(AEXP_BLNLOADFILE, 1) 

handle = openfile(CITYPRIZETABFILENAME, "r") 
if (handle == nil) then 
return 
end 

for nIndex=AEXP_GLOBAL_FENGXIANG, AEXP_GLOBAL_ENDDATE do 
nValue = read(handle, "*l") 
if (nValue == nil or nValue == "") then 
nValue = 0 
else 
nValue = tonumber(nValue) 
end 

SetGlbValue(nIndex, nValue) 
end 

closefile(handle) 
end 
end 

-- script viet hoa By http://tranhba.com  v� ph�ng ng�a seek t�m ki�m file b� l�i , h�n n�a tr��c m�t s� d�ng s� li�u �t , t�n m�m l�c thanh tr� v�n ki�n l�n n�a vi�t m�t m�i v�n ki�n 
function savevalue() 
	handle = openfile(CITYPRIZETABFILENAME, "w+")
if (handle == nil) then 
return 0 
end 

for nIndex=AEXP_GLOBAL_FENGXIANG, AEXP_GLOBAL_ENDDATE do 
local nValue = GetGlbValue(nIndex) 
write(handle, nValue.."\n") 
end 

closefile(handle) 
end 
