TB_LOGIN_FUN = {} -- script viet hoa By http://tranhba.com  dïng sè nµy tæ tíi ghi chÐp tÊt c¶ muèn thªm t¸i ®Ých Login hµm sè 

-- script viet hoa By http://tranhba.com  t¨ng thªm mét Login# hoÆc duyªn lóc cïng b­íc # lóc muèn thªm t¸i ®Ých hµm sè 
-- script viet hoa By http://tranhba.com  truyÒn vµo tham sæ # 
-- script viet hoa By http://tranhba.com  fun muèn gia t¨ng ®Ých function 
-- script viet hoa By http://tranhba.com  n_time khi nµo vËn hµnh , 0#Login lóc #1# lÇn ®Çu tiªn duyªn lóc cïng b­íc lóc #2# lÇn thø hai duyªn lóc cïng b­íc lóc #…… 
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
	{"\\script\\missions\\sevencity\\loginout.lua", "login"},				-- script viet hoa By http://tranhba.com  Æß³Ç´óÕ½
	{"\\script\\global\\jingli.lua", 				"WorldEntranceLogin"},	-- script viet hoa By http://tranhba.com  ¾«Á¶Ê¯ÏµÍ³
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
