TB_LOGIN_FUN = {} -- script viet hoa By http://tranhba.com  d�ng s� n�y t� t�i ghi ch�p t�t c� mu�n th�m t�i ��ch Login h�m s� 

-- script viet hoa By http://tranhba.com  t�ng th�m m�t Login# ho�c duy�n l�c c�ng b��c # l�c mu�n th�m t�i ��ch h�m s� 
-- script viet hoa By http://tranhba.com  truy�n v�o tham s� # 
-- script viet hoa By http://tranhba.com  fun mu�n gia t�ng ��ch function 
-- script viet hoa By http://tranhba.com  n_time khi n�o v�n h�nh , 0#Login l�c #1# l�n ��u ti�n duy�n l�c c�ng b��c l�c #2# l�n th� hai duy�n l�c c�ng b��c l�c #�� 
function login_add(fun, n_time) 
if (not fun) then 
return 
end 
if (not n_time) then 
n_time = 0 
end 
local tb = TB_LOGIN_FUN[n_time] 
if (not tb) then 
TB_LOGIN_FUN[n_time] = {fun} 
else 
local count = getn(tb) 
for i = 1, count do 
if (tb[i] == fun) then 
return 
end 
end 
		tb[count + 1] = fun
end 
end 

TB_LOGIN_FILEFUN = { 
	{"\\script\\missions\\sevencity\\loginout.lua", "login"},				-- script viet hoa By http://tranhba.com  �߳Ǵ�ս
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogin"},	-- script viet hoa By http://tranhba.com  ����ʯϵͳ
} 



function IsLoginFileFunction(script, func) 
for i = 1, getn(TB_LOGIN_FILEFUN) do 
local tb = TB_LOGIN_FILEFUN[i] 
if (tb[1] == script and tb[2] == func) then 
return 1 
end 
end 
return 0 
end 

function AddLoginFileFunction(script, func) 
local tb = {} 
tinsert(tb, script) 
tinsert(tb, func) 
tinsert(TB_LOGIN_FILEFUN, tb) 
end 
