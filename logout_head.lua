TB_LOGOUT_FILEFUN = { 
	{"\\script\\missions\\sevencity\\loginout.lua", "logout"},				-- script viet hoa By http://tranhba.com  �߳Ǵ�ս
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogout"},	-- script viet hoa By http://tranhba.com  ����ʯϵͳ
	{"\\script\\global\\offlineaward.lua",			"logout"},				-- script viet hoa By http://tranhba.com  �����콱
} 

-- script viet hoa By http://tranhba.com  nh�y qua d�ng/u�ng s� ki�n x� l� h�m s� , ch� � kh�ng th� s�a ��i nh� ch�i s� li�u b�i v� s�a ��i ��ch nh� ch�i s� li�u s� kh�ng b� b�o t�n ### 
TB_EXCHANGE_FILEFUN = { 
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogout"},	-- script viet hoa By http://tranhba.com  ����ʯϵͳ
	{"\\script\\global\\offlineaward.lua",			"logout"},				-- script viet hoa By http://tranhba.com  �����콱
} 

function IsLogoutFileFunction(script, func) 
for i = 1, getn(TB_LOGOUT_FILEFUN) do 
local tb = TB_LOGOUT_FILEFUN[i] 
if (tb[1] == script and tb[2] == func) then 
return 1 
end 
end 
return 0 
end 

function AddLogoutFileFunction(script, func) 
local tb = {} 
tinsert(tb, script) 
tinsert(tb, func) 
tinsert(TB_LOGOUT_FILEFUN, tb) 
end 

function IsExchangeFileFunction(script, func) 
for i = 1, getn(TB_EXCHANGE_FILEFUN) do 
local tb = TB_EXCHANGE_FILEFUN[i] 
if (tb[1] == script and tb[2] == func) then 
return 1 
end 
end 
return 0 
end 

function AddExchangeFileFunction(script, func) 
local tb = {} 
tinsert(tb, script) 
tinsert(tb, func) 
tinsert(TB_EXCHANGE_FILEFUN, tb) 
end 
