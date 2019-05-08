-- script viet hoa By http://tranhba.com  ®¨ng lôc ch©n vèn 
-- script viet hoa By http://tranhba.com  By: LaiLiGao(2004-06-20) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-07-09) t¨ng thªm tù ®éng ®æi míi kü n¨ng chøc n¨ng 
Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  ÏµÍ³ÅäÖÃ

Include("\\script\\missions\\autohang\\function.lua")		-- script viet hoa By http://tranhba.com  for ¹Ò»ú¹¦ÄÜ
Include("\\script\\global\\skills_table.lua")				-- script viet hoa By http://tranhba.com  ×Ô¶¯¸üĞÂ¼¼ÄÜ
Include("\\script\\task\\newtask\\newtask_head.lua")	

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 ®îi x¸c nhËn 
Include ("\\script\\event\\newbielvlup\\event.lua")
Include("\\script\\event\\qingming\\event.lua")
Include("\\script\\event\\playerlvlup\\event_temp.lua")

Include("\\script\\shitu\\shitu.lua")
Include("\\script\\global\\titlefuncs.lua")
IL("TITLE"); 

function main_old() 
check_update() -- script viet hoa By http://tranhba.com  kü n¨ng ®æi míi # m«n ph¸i thªm tiªu chİ #2004-05-31# 
patchShituProcess(PlayerIndex) 
-- script viet hoa By http://tranhba.com  login_enterthd() -- script viet hoa By http://tranhba.com  tù ®éng tiÕn vµo treo ky b¶n ®å 
login_check_dupe() 
-- script viet hoa By http://tranhba.com GetNewBulletin() 
check_townpotol() 
title_loginactive() 
if (SYSCFG_PARTNER_OPEN) then 
SyncPartnerMasterTask(); -- script viet hoa By http://tranhba.com  cïng b­íc ®ång b¹n kŞch t×nh nhiÖm vô thay ®æi l­îng 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  lÇn ®Çu tiªn duyªn lóc cïng b­íc ®İch sè liÖu , ë chç nµy t¨ng thªm 
function delaysync_1() 
GetNewBulletin(); 
return 0; 
end 

-- script viet hoa By http://tranhba.com  lÇn thø hai duyªn lóc cïng b­íc ®İch sè liÖu , ë chç nµy t¨ng thªm 
function delaysync_2() 
SyncTaskValue(1082) -- script viet hoa By http://tranhba.com  cïng b­íc Boss s¸t thñ nhiÖm vô thay ®æi l­îng ®Õn kh¸ch hµng b­ng 
messenger_copytaskvalue() -- script viet hoa By http://tranhba.com  cïng b­íc tin/th¬ khiÕn cho nhiÖm vô nhiÖm vô thay ®æi l­îng 
SyncPartnerMasterTask() -- script viet hoa By http://tranhba.com  cïng b­íc ®ång b¹n kŞch t×nh nhiÖm vô 
return 0; 
end 

-- script viet hoa By http://tranhba.com  lÇn thø ba duyªn lóc cïng b­íc ®İch sè liÖu , ë chç nµy t¨ng thªm 
function delaysync_3() 
GetAllCitySummary(); 
SyncTaskValue(1569) -- script viet hoa By http://tranhba.com  trung thu b¸nh Trung thu 
return 1; 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function check_townpotol() 
if (GetTask(1505) == 1) then 
DisabledUseTownP(0) 
SetTask(1505,0) 
end 
end 

function login_enterthd() 
mapList = {235, 236, 237, 238, 239, 240, 241}; 
MapCount = getn(mapList); 

-- script viet hoa By http://tranhba.com  nÕu ®· ë treo ky b¶n ®å , lµ kh«ng cÇn n÷a vµo 
nCurSWID = SubWorldIdx2ID(); 
for i = 1, MapCount do 
if (nCurSWID == mapList[i]) then 
return 0; 
end 
end 

nMapID = random(1, MapCount); 
aexp_gotothd(mapList[nMapID]); 
end; 

-- script viet hoa By http://tranhba.com  kiÓm tr¾c cã hay kh«ng cã sao chĞp trang bŞ dÊu hiÖu , còng ph¸t gi¬ cao c¸o 
function login_check_dupe() 
local nValue = GetTask(156); 
if (nValue > 0) then 
Say("<color=red> ë ngµi trªn ng­êi ph¸t hiÖn sao chĞp ra ngoµi vËt phÈm , ®· bŞ hÖ thèng thanh trõ . chóng ta cã cÆn kÏ ®İch theo dâi ghi chĞp . nÕu ngµi ®èi víi lÇn nµy kh¸c th­êng nghŞ , xin/mêi cïng kh¸ch phôc liªn l¹c . ®a t¹ ñng hé #<color>", 1,"T¾t nµy c¶nh c¸o /dupe_warning"); 

SetTask(156, nValue - 1); 
end 
end 

function dupe_warning() 
Msg2Player(" ë ngµi trªn ng­êi ph¸t hiÖn sao chĞp ra ngoµi vËt phÈm , ®· bŞ hÖ thèng thanh trõ . chóng ta cã cÆn kÏ ®İch theo dâi ghi chĞp . nÕu ngµi ®èi víi lÇn nµy kh¸c th­êng nghŞ , xin/mêi cïng kh¸ch phôc liªn l¹c . ®a t¹ ñng hé #"); 
end 

function messenger_copytaskvalue() 

SyncTaskValueMore(1201, 1247, 1) 
-- script viet hoa By http://tranhba.com for i = 1201, 1247 do 
-- script viet hoa By http://tranhba.com  SyncTaskValue(i) 
-- script viet hoa By http://tranhba.com end 
end 

function no() 
end; 

-- script viet hoa By http://tranhba.com  cïng b­íc ®ång b¹n kŞch t×nh nhiÖm vô thay ®æi l­îng 
function SyncPartnerMasterTask() 

local i=0; 

SyncTaskValue(1262); 
SyncTaskValue(1256); 

-- script viet hoa By http://tranhba.com  cïng b­íc ®ång b¹n ngÉu nhiªn nhiÖm vô 
SyncTaskValue(1301); 
SyncTaskValue(1302); 
SyncTaskValue(1303); 
SyncTaskValue(1304); 
SyncTaskValue(1305); 
SyncTaskValue(1306); 

-- script viet hoa By http://tranhba.com  cïng b­íc nhiÖm vô dÉn k×nh sö dông ®İch thay ®æi l­îng 
for i=2000, 2300 do 
SyncTaskValue(i); 
end; 

end; 

-- script viet hoa By http://tranhba.com  gia nhËp cùu ®İch Login main hµm sè 
if login_add then login_add(main_old, 0) end 
-- script viet hoa By http://tranhba.com  gia nhËp cùu ®İch ph©n b­íc cïng b­íc hµm sè 
if login_add then login_add(delaysync_1, 1) end 
if login_add then login_add(delaysync_2, 2) end 
if login_add then login_add(delaysync_3, 3) end 
