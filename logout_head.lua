TB_LOGOUT_FILEFUN = { 
	{"\\script\\missions\\sevencity\\loginout.lua", "logout"},				-- script viet hoa By http://tranhba.com  七城大战
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogout"},	-- script viet hoa By http://tranhba.com  精炼石系统
	{"\\script\\global\\offlineaward.lua",			"logout"},				-- script viet hoa By http://tranhba.com  线下领奖
} 

-- script viet hoa By http://tranhba.com  nh秠 qua d飊g/u鑞g s� ki謓 x� l� h祄 s� , ch� � kh玭g th� s鯽 i nh� ch琲 s� li謚 b雐 v� s鯽 i ch nh� ch琲 s� li謚 s� kh玭g b� b秓 t錸 ### 
TB_EXCHANGE_FILEFUN = { 
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogout"},	-- script viet hoa By http://tranhba.com  精炼石系统
	{"\\script\\global\\offlineaward.lua",			"logout"},				-- script viet hoa By http://tranhba.com  线下领奖
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
