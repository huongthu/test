-- script viet hoa By http://tranhba.com baijuwanhead.lua 
-- script viet hoa By http://tranhba.com  ��nh ngh�a th��ng l��ng 

AEXP_SMALL_TIME_TASKID = 1801; -- script viet hoa By http://tranhba.com  ghi ch�p ti�u B�ch c�u # l�y ��y l� b�i s� ��ch # kinh nghi�m treo ky c�n th�a l�i th�i gian 
AEXP_TASKID = 605; -- script viet hoa By http://tranhba.com  ghi ch�p r� r�ng c�u # ti�u B�ch c�u ��ch 1.5 l�n # c�n th�a l�i treo ky th�i gian nhi�m v� thay ��i l��ng 
AEXP_SPECIAL_TIME_TASKID = 2317; -- script viet hoa By http://tranhba.com  ghi ch�p ��c hi�u r� r�ng c�u # ti�u B�ch c�u ��ch 2 l�n hi�u qu� # kinh nghi�m treo ky c�n th�a l�i th�i gian 
AEXP_TIANXING_TIME_TASKID = 2655; -- script viet hoa By http://tranhba.com  ghi ch�p thi�n tinh b�ch c�u ho�n # ti�u B�ch c�u ��ch 5 l�n # c�n th�a l�i treo ky th�i gian nhi�m v� thay ��i l��ng 

AEXP_SMALL_SKILL_TASKID = 1802 -- script viet hoa By http://tranhba.com  ghi ch�p k� n�ng ti�u B�ch c�u # l�y ��y l� b�i s� ��ch # k� n�ng treo ky c�n th�a l�i th�i gian 
AEXP_SKILL_TIME_TASKID = 2315; -- script viet hoa By http://tranhba.com  ghi ch�p k� n�ng r� r�ng c�u # k� n�ng ti�u B�ch c�u ��ch 1.5 l�n hi�u qu� # c�n th�a l�i treo k� n�ng th�i gian nhi�m v� thay ��i l��ng 
AEXP_SPECIAL_SKILL_TASKID = 2318; -- script viet hoa By http://tranhba.com  ghi ch�p ��c hi�u k� n�ng r� r�ng c�u # k� n�ng ti�u B�ch c�u ��ch 2 l�n hi�u qu� # k� n�ng treo ky c�n th�a l�i th�i gian 

AEXP_SKILL_ID_TASKID = 2316; -- script viet hoa By http://tranhba.com  ghi ch�p c�ch tuy�n treo k� n�ng th�ng c�p ��ch k� n�ng ID nhi�m v� thay ��i l��ng 

AEXP_FREQ = 5; -- script viet hoa By http://tranhba.com  kh�u tr� l�c m�i l�n tu�n ho�n kh�u tr� th�i gian , kinh nghi�m m�i 5 ph�t gia t�ng m�t l�n 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com  �em th�i gian chuy�n h�a th�nh trinh ��m , 18 trinh t��ng ���ng v�i trong tr� ch�i 1 gi�y 
AEXP_MAXTIME = 10000 * 3600 * FRAME2TIME; -- script viet hoa By http://tranhba.com  d�ng h� c� th� t�ch l�y ��ch l�n nh�t th�i gian 
AEXP_BIGCHANGE = 8 * 3600 * FRAME2TIME; -- script viet hoa By http://tranhba.com  m�t r� r�ng c�u ho�n gia t�ng ��ch th�i gian 8 gi� 
AEXP_SMALLCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  m�t b�ch c�u ho�n gia t�ng ��ch th�i gian 
AEXP_SKILLCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  m�t k� n�ng r� r�ng c�u ho�n gia t�ng ��ch th�i gian 
AEXP_SPECIALCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  m�t ��c hi�u b�ch c�u ho�n gia t�ng ��ch th�i gian 
AEXP_SPECIALSKILLCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  m�t ��c hi�u k� n�ng r� r�ng c�u ho�n gia t�ng ��ch th�i gian 

AEXP_INTERVAL = 5 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  gia t�ng kinh nghi�m chu k� 
-- script viet hoa By http://tranhba.com  r� r�ng c�u ho�n ��ch c�n k� tin t�c 
AEXP_BIG_NGENTYPE = 6; 
AEXP_BIG_DETAILTYPE = 1; 
AEXP_BIG_PARTYPE = 130; 
-- script viet hoa By http://tranhba.com  b�ch c�u ho�n ��ch c�n k� tin t�c 
AEXP_SMALL_NGENTYPE = 6; 
AEXP_SMALL_DETAILTYPE = 1; 
AEXP_SMALL_PARTYPE = 74; 
-- script viet hoa By http://tranhba.com  th�m kinh nghi�m c�p b�c h�n ch� 
AEXP_NEEDLEVEL = 50; 
AEXP_NEEDLEVEL_PARTNER = 10; -- script viet hoa By http://tranhba.com  ��ng b�n � b�y qu�n l�c ��t ���c kinh nghi�m th�p nh�t c�p b�c 
AEXP_OFFLINE_PLAYERCOUNT_LIMIT = 800; -- script viet hoa By http://tranhba.com  khi m�t m�y ph�c v� kh� nh�n s� c�a v��t qua n�y s� l��ng , l� kh�ng cho ph�p nh� ch�i � n�i n�y thai ph�c v� kh� b�n trong ti�n h�nh c�ch tuy�n b�y qu�n 
AEXP_OFFLINE_PLAYERCOUNT_SPECIAL = 750; -- script viet hoa By http://tranhba.com  chuy�n d�ng b�y qu�n ph�c v� kh� cho ph�p b�y qu�n nh�n s� 
AEXP_INVALIDTIMEBEGIN = 18; -- script viet hoa By http://tranhba.com  c�ch tuy�n treo ky kh�ng c� hi�u qu� ��ch l�c ��u th�i gian 
AEXP_INVALIDTIMEEND = 24; -- script viet hoa By http://tranhba.com  c�ch tuy�n treo ky kh�ng c� hi�u qu� ��ch ng�ng h�n th�i gian 

AEXP_TEMPOFFLINETASKID = 170; -- script viet hoa By http://tranhba.com  s� d�ng b�ch c�u ho�n l�c ��ch nhi�m v� thay ��i l��ng 

AEXP_120SKILL_UPGRADE_EXP = 137500; -- script viet hoa By http://tranhba.com 120 k� n�ng �� thu�n th�c t�ng l�n v� ��nh tr� gi� 

-- script viet hoa By http://tranhba.com  c�ch tuy�n treo k� n�ng c�c k� n�ng c�p b�c ��i �ng �� thu�n th�c t�ng l�n t� l� 
ARY_UPGRADE_SKILL_EXP_PERCENT = { 0.0775, 0.0388, 0.0258, 0.0194, 0.0155, 0.013, 0.0111, 0.0097, 0.0086, 0.0039, 
0.0035, 0.0032, 0.0030, 0.0028, 0.0026, 0.0024, 0.0023, 0.0022, 0.0020 }; 
-- script viet hoa By http://tranhba.com  c�ch tuy�n treo k� n�ng nh�ng t�ng l�n k� n�ng ID 
ARY_UPGRADE_SKILL = { 318, 319, 321, 322, 323, 325, 339, 302, 342, 353, 355, 328, 380, 336, 337, 357, 359, 362, 361, 368, 365, 375, 372, 709, 708, 710, 711, 712, 713, 714, 715, 716, 717 }; 

-- script viet hoa By http://tranhba.com  ��i �ng m�n ph�i 1 0 2 3 4 5 6 7 8 9 
ARY_120SKILLID = { 708, 709, 710, 711, 712, 713, 714, 715, 716, 717 }; 
-- script viet hoa By http://tranhba.com  150 c�p k� n�ng 
ARY_UPGRADE_SKILL_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,} 

-- script viet hoa By http://tranhba.com Include("\\script\\missions\\boss\\makeboss_head.lua") 
IncludeLib("SETTING") 

if (GetProductRegion() == "cn_ib") then 
Include("\\script\\item\\ib\\zimudai.lua"); 
end 

-- script viet hoa By http://tranhba.com  tu�n tra c�n th�a l�i th�i gian 
function get_left_time() 
-- script viet hoa By http://tranhba.com  b�ch c�u ho�n 
local nSmallExpSpareTime = GetTask(AEXP_SMALL_TIME_TASKID); 
local nSmallExpSpareTime_Hours, nSamllExpSpareTime_Minutes = getFrame2MinAndSec(nSmallExpSpareTime); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 

-- script viet hoa By http://tranhba.com  k� n�ng b�ch c�u ho�n 
local nSamllSkillSpareTime = GetTask(AEXP_SMALL_SKILL_TASKID); 
local nSamllSkillSpareTime_Hours, nSamlllSkillSpareTime_Minutes = getFrame2MinAndSec(nSamllSkillSpareTime); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 

-- script viet hoa By http://tranhba.com  b�nh th��ng r� r�ng c�u ho�n 
local nExpSpareTime = GetTask(AEXP_TASKID); 
local nExpSpareTime_Hours, nExpSpareTime_Minutes = getFrame2MinAndSec(nExpSpareTime); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 

-- script viet hoa By http://tranhba.com  k� n�ng r� r�ng c�u ho�n 
local nSkillExpSpareTime = GetTask(AEXP_SKILL_TIME_TASKID); 
local nSkillExpSpareTime_Hours, nSkillExpSpareTime_Minutes = getFrame2MinAndSec(nSkillExpSpareTime); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 

-- script viet hoa By http://tranhba.com  ��c hi�u r� r�ng c�u ho�n 
local nSpecialExpSpareTime = GetTask(AEXP_SPECIAL_TIME_TASKID); 
local nSpecialExpSpareTime_Hours, nSpecialExpSpareTime_Minutes = getFrame2MinAndSec(nSpecialExpSpareTime); 

-- script viet hoa By http://tranhba.com  ��c hi�u k� n�ng r� r�ng c�u ho�n 
local nSpecialSkillSpareTime = GetTask(AEXP_SPECIAL_SKILL_TASKID); 
local nSpecialSkillSpareTime_Hours, nSpecialSkillSpareTime_Minutes = getFrame2MinAndSec(nSpecialSkillSpareTime); 

-- script viet hoa By http://tranhba.com  thi�n tinh b�ch c�u ho�n 
local nTianxingExpSpareTime = GetTask(AEXP_TIANXING_TIME_TASKID); 
local nTianxingExpSpareTime_Hours, nTianxingExpSpareTime_Minutes = getFrame2MinAndSec(nTianxingExpSpareTime); 


if (GetProductRegion() == "cn_ib") then 
-- script viet hoa By http://tranhba.com  b�y s�p 
local restStall = GetTask(AEXP_STALL_TIME_TASKID) 
local nStall_Hour, nStall_Min = getFrame2MinAndSec(restStall) 

-- script viet hoa By http://tranhba.com  o�nh lai ti�n th�o l� 
local nXianCaoTime = GetTask(AEXP_XIANCAO_TIME_TASKID); 
local nXianCao_Hour, nXianCao_Min = getFrame2MinAndSec(nXianCaoTime); 
end 

local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID); 
local szSkillExpName = ""; 
if (nSkillExpID ~= 0) then 
szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>"; 
else 
szSkillExpName = "<color=blue> kh�ng l�a ch�n k� n�ng <color>"; 
end 

local szmsg = format("Ng��i c�ch tuy�n b�y qu�n c�n th�a l�i th�i gian l� : thi�n tinh b�ch c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> ��c hi�u r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> b�ch c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> k� n�ng �� thu�n th�c (%s): ��c hi�u k� n�ng r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> k� n�ng r� r�ng c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> k� n�ng b�ch c�u ho�n <color=red>%d<color> gi� <color=red>%d<color> ph�t ".. 
"<enter> b�y qu�n l�c n�u nh� c� thi�n tinh b�ch c�u ho�n hi�u qu� , �u ti�n theo nh� n�y hi�u qu� cho c�ng kinh nghi�m c�ng kh�u tr� k� ��i �ng hi�u qu� th�i gian . ", 
nTianxingExpSpareTime_Hours, nTianxingExpSpareTime_Minutes, 
nSpecialExpSpareTime_Hours,nSpecialExpSpareTime_Minutes, 
nExpSpareTime_Hours,nSamllExpSpareTime_Minutes, 
nSmallExpSpareTime_Hours,nExpSpareTime_Minutes, 
szSkillExpName, nSpecialSkillSpareTime_Hours,nSpecialSkillSpareTime_Minutes, 
nSkillExpSpareTime_Hours,nSkillExpSpareTime_Minutes, 
nSamllSkillSpareTime_Hours,nSamlllSkillSpareTime_Minutes); 

Describe(szmsg, 1,"K�t th�c ��i tho�i /cancel"); 
end 


-- script viet hoa By http://tranhba.com  tr� gi�p ch�c n�ng 
function help() 
Talk(1,"help1","C�ch tuy�n b�y qu�n c�n k� gi�i thi�u # ng��i c� th� � k� tr�n c�c ch� d�ng kim t� mua r� r�ng c�u ho�n . "); 
end 
function help1() 
Talk(2,"help2","M�t <color=blue> b�ch c�u ho�n <color> c� th� c�ch tuy�n b�y qu�n <color=red>1 gi� <color> , m�t <color=blue> r� r�ng c�u ho�n <color> c� th� c�ch tuy�n b�y qu�n <color=red>8<color> gi� , m�t <color=blue> tr��ng hi�u r� r�ng c�u ho�n <color> c� th� c�ch tuy�n b�y qu�n <color=red>80<color> gi� , c� th� t�ch l�y c�ch tuy�n b�y qu�n th�i gian . ", 
" ng��i c� th� � b�y ��i th�nh th� ��ch <color=red> s� kh�ng phi�n <color> ch� tu�n tra ng��i c�n th�a l�i c�ch tuy�n b�y qu�n th�i gian , c�ng c� th� �ang s� d�ng c�ch tuy�n b�y qu�n v�t ph�m l�c tu�n tra . "); 
end 

function help2() 
Talk(1,"help3","S� d�ng h�n ch� # ng��i c� th� � t�t c� th�nh tr�n # th�n trang c�ng v�i th�p ��i b�n trong m�n ph�i , l�a ch�n th�i lui ra gi�i m�t # theo nh� Esc ki�n b�n ra ��ch gi�i m�t # trung ��ch c�ch tuy�n b�y qu�n ch�n h�ng , t� ��ng ti�n v�o c�ch tuy�n b�y qu�n tr�ng th�i . "); 
end 
function help3() 
Talk(2,"help4", "# ��i # b�ch c�u ho�n s� d�ng hi�u qu� # � ng��i ti�n v�o c�ch tuy�n b�y qu�n tr�ng th�i sau , c�ch tuy�n b�y qu�n th�i gian b�t ��u t�nh to�n . h� th�ng s� c�t gi� ng��i tr��c m�t tr�ng th�i # bao g�m b�y s�p � b�n trong # ti�n v�o c�ch tuy�n b�y qu�n . c�ch tuy�n b�y qu�n tr�ng th�i trung , <color=red>50 c�p tr� xu�ng <color> ��ch nh� ch�i s� kh�ng ��t ���c kinh nghi�m tr� gi� . ","<color=red>50 c�p c�ng 50 c�p tr� l�n <color> ��ch nh� ch�i m�i <color=red>5 ph�t <color> c� th� ��t ���c t��ng �ng kinh nghi�m tr� gi� , nh�ng l� c�ch tuy�n b�y qu�n tr�ng th�i trung s� d�ng nh�ng kh�c gia t�ng kinh nghi�m v�t ph�m # ti�n th�o l� # t�m tr�n ph�c th�ng �o�n vi�n b�nh # kh�ng c� hi�u qu� , th� v�t ph�m ��ch c�ng hi�u th�i gian v�n s� suy gi�m . c�ch tuy�n b�y qu�n tr�ng th�i trung , ti�p t�c t�nh to�n ng��i nh�ng ti�n h�nh tr� ch�i th�i gian . "); 
end 
function help4() 
Talk(2,"help5","K� n�ng # ��i # b�ch c�u ho�n s� d�ng hi�u qu� # � ng��i ti�n v�o c�ch tuy�n b�y qu�n tr�ng th�i sau , c�ch tuy�n b�y qu�n th�i gian b�t ��u t�nh to�n . h� th�ng s� c�t gi� ng��i tr��c m�t tr�ng th�i # bao g�m b�y s�p � b�n trong # ti�n v�o c�ch tuy�n b�y qu�n . c�ch tuy�n b�y qu�n tr�ng th�i trung , 90 c�p k� n�ng ��ch �� thu�n th�c m�i 5 ph�t s� t� ��ng t�ng l�n 1 l�n . ","Ng��i c� th� � b�y qu�n tr��c l�a ch�n h�o c�n t�ng l�n �� thu�n th�c ��ch 90 c�p k� n�ng . c�ch tuy�n b�y qu�n tr�ng th�i trung , ti�p t�c t�nh to�n ng��i nh�ng ti�n h�nh tr� ch�i th�i gian . "); 
end 
function help5() 
Talk(2,"","Khi ng��i ��ch c�ch tuy�n b�y qu�n th�i gian ho�c l� ng��i nh�ng ti�n h�nh tr� ch�i th�i gian l� <color=red>0<color> , ng��i s� t� ��ng h� tuy�n . khi ng��i � ti�n v�o c�ch tuy�n b�y qu�n tr�ng th�i sau , n�u nh� ph�c v� kh� m� l�i , ng��i s� t� ��ng h� tuy�n , ��ng th�i b�o t�n ng��i c�n th�a l�i c�ch tuy�n b�y qu�n th�i gian , h�n n�a s� kh�ng n�ng ngay c� . ","Khi ng��i l�n n�a ��ng l�c tr� ch�i l�c , s� t� ��ng k�t th�c c�ch tuy�n b�y qu�n tr�ng th�i , ��ng th�i b�o t�n ng��i c�n th�a l�i c�ch tuy�n b�y qu�n th�i gian . "); 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i c� th� c�ch tuy�n treo k� n�ng th�ng c�p ��ch k� n�ng 
function getexpskill() 
local aryExpSkill = {}; 
local nExpSkillCount = 0; 
local nAllUpgradeSkillCount = getn(ARY_UPGRADE_SKILL); 
for i = 1, nAllUpgradeSkillCount do 
local nCurSkillID = ARY_UPGRADE_SKILL[i]; 
local nCurSkillLevel = GetCurrentMagicLevel(nCurSkillID, 0); 
if (nCurSkillLevel >= 1 and nCurSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then 
			nExpSkillCount = nExpSkillCount + 1;
aryExpSkill[nExpSkillCount] = {}; 
aryExpSkill[nExpSkillCount][1] = nCurSkillID; 
aryExpSkill[nExpSkillCount][2] = GetSkillName(nCurSkillID); 
end 
end 
return aryExpSkill; 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n c�ch tuy�n b�y qu�n k� n�ng 
function selectofflineskill() 
local aryExpSkill = getexpskill(); 
local nExpSkillCount = getn(aryExpSkill); 
local aryszExpSkill = {}; 
local szSayCmd = " xin/m�i l�a ch�n ng�i c�n c�ch tuy�n b�y qu�n k� n�ng :"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill,"Tr� v� /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ch tuy�n b�y qu�n k� n�ng 
function onSetUpgradeSkill(nUpgradeSkillID, funcCallBack) 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
funcCallBack(); 
end 

-- script viet hoa By http://tranhba.com  c�n c� k� n�ng c�p b�c �� thu�n th�c t� ��ng thi�t tr� c�ch tuy�n treo k� n�ng th�ng c�p ��ch k� n�ng ID 
function autosetupgradeskill() 
local nSkillCount = getn(ARY_UPGRADE_SKILL); 
local nUpgradeSkillID = 0; 
local nUpgradeSkillLevel = 0; 
local nUpgradeSkillExp = 0; 
for i = 1, nSkillCount do 
local nCurSkillID = ARY_UPGRADE_SKILL[i]; 
local nCurSkillLevel = GetCurrentMagicLevel(nCurSkillID, 0); 
local nCurSkillExp = GetSkillExp(nCurSkillID); 
if (nCurSkillLevel >= 1 and nCurSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT) and 
(nCurSkillLevel > nUpgradeSkillLevel or 
(nCurSkillLevel == nUpgradeSkillLevel and nCurSkillExp > nUpgradeSkillExp))) then 
nUpgradeSkillID = nCurSkillID; 
nUpgradeSkillLevel = nCurSkillLevel; 
nUpgradeSkillExp = nCurSkillExp; 
end 
end 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
end 

function getFrame2MinAndSec(nframe) 
local minutes = floor(nframe / (FRAME2TIME * 60)); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 
local hours = floor(minutes / 60); 
local minutes = minutes - hours * 60; 
return hours, minutes; 
end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� hay kh�ng sung qu� t�p 
function IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end 
end; 

function cancel() 
-- script viet hoa By http://tranhba.com do nothing 
end; 

function getBaiJutimeinfo() 
-- script viet hoa By http://tranhba.com  ��c hi�u r� r�ng c�u ho�n b�nh th��ng r� r�ng c�u ho�n b�ch c�u ho�n 
local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID, 
-- script viet hoa By http://tranhba.com  ��c hi�u k� n�ng r� r�ng c�u ho�n k� n�ng r� r�ng c�u ho�n k� n�ng b�ch c�u ho�n 
AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID}; 
local tbszItem = {"offlineitem_tianxing", "offlineitem_special", "offlineitem_normal", "offlineitem_small", 
"skillofflineitem_special", "skillofflineitem_normal", "skillofflineitem_small"}; 
local szmsg = ""; 
for i = 1, getn(tbAexpTask) do 
local nhour, nminite = getFrame2MinAndSec(GetTask(tbAexpTask[i])); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 
szmsg = format("%s\n %s lasttime:%d hour %d minite", szmsg, tbszItem[i], nhour, nminite); 
end; 
return szmsg; 
end; 

function writeUseBaiJulog(szitem, nhour,nmin) 
local szlog = format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tuse<%s>, lasttime %d hour %d minite", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), szitem, nhour, nmin); 
WriteLog(szlog); 
end;
