TB_LOGOUT_FILEFUN = { 
	{"\\script\\missions\\sevencity\\loginout.lua", "logout"},				-- script viet hoa By http://tranhba.com  Æß³Ç´óÕ½
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogout"},	-- script viet hoa By http://tranhba.com  ¾«Á¶Ê¯ÏµÍ³
	{"\\script\\global\\offlineaward.lua",			"logout"},				-- script viet hoa By http://tranhba.com  ÏßÏÂÁì½±
} 

-- script viet hoa By http://tranhba.com  nh¶y qua dïng/uèng sù kiÖn xö lý hµm sè , chó ý kh«ng thÓ söa ®æi nhµ ch¬i sè liÖu bëi v× söa ®æi ®Ých nhµ ch¬i sè liÖu sÏ kh«ng bÞ b¶o tån ### 
TB_EXCHANGE_FILEFUN = { 
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogout"},	-- script viet hoa By http://tranhba.com  ¾«Á¶Ê¯ÏµÍ³
	{"\\script\\global\\offlineaward.lua",			"logout"},				-- script viet hoa By http://tranhba.com  ÏßÏÂÁì½±
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
