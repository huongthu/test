-- script viet hoa By http://tranhba.com  ��ng l�c ch�n v�n 
-- script viet hoa By http://tranhba.com  By: LaiLiGao(2004-06-20) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-07-09) t�ng th�m t� ��ng ��i m�i k� n�ng ch�c n�ng 
Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  ϵͳ����

Include("\\script\\missions\\autohang\\function.lua")		-- script viet hoa By http://tranhba.com  for �һ�����
Include("\\script\\global\\skills_table.lua")				-- script viet hoa By http://tranhba.com  �Զ����¼���
Include("\\script\\task\\newtask\\newtask_head.lua")	

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 ��i x�c nh�n 
Include ("\\script\\event\\newbielvlup\\event.lua")
Include("\\script\\event\\qingming\\event.lua")
Include("\\script\\event\\playerlvlup\\event_temp.lua")

Include("\\script\\shitu\\shitu.lua")
Include("\\script\\global\\titlefuncs.lua")
IL("TITLE"); 

function main_old() 
check_update() -- script viet hoa By http://tranhba.com  k� n�ng ��i m�i # m�n ph�i th�m ti�u ch� #2004-05-31# 
patchShituProcess(PlayerIndex) 
-- script viet hoa By http://tranhba.com  login_enterthd() -- script viet hoa By http://tranhba.com  t� ��ng ti�n v�o treo ky b�n �� 
login_check_dupe() 
-- script viet hoa By http://tranhba.com GetNewBulletin() 
check_townpotol() 
title_loginactive() 
if (SYSCFG_PARTNER_OPEN) then 
SyncPartnerMasterTask(); -- script viet hoa By http://tranhba.com  c�ng b��c ��ng b�n k�ch t�nh nhi�m v� thay ��i l��ng 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  l�n ��u ti�n duy�n l�c c�ng b��c ��ch s� li�u , � ch� n�y t�ng th�m 
function delaysync_1() 
GetNewBulletin(); 
return 0; 
end 

-- script viet hoa By http://tranhba.com  l�n th� hai duy�n l�c c�ng b��c ��ch s� li�u , � ch� n�y t�ng th�m 
function delaysync_2() 
SyncTaskValue(1082) -- script viet hoa By http://tranhba.com  c�ng b��c Boss s�t th� nhi�m v� thay ��i l��ng ��n kh�ch h�ng b�ng 
messenger_copytaskvalue() -- script viet hoa By http://tranhba.com  c�ng b��c tin/th� khi�n cho nhi�m v� nhi�m v� thay ��i l��ng 
SyncPartnerMasterTask() -- script viet hoa By http://tranhba.com  c�ng b��c ��ng b�n k�ch t�nh nhi�m v� 
return 0; 
end 

-- script viet hoa By http://tranhba.com  l�n th� ba duy�n l�c c�ng b��c ��ch s� li�u , � ch� n�y t�ng th�m 
function delaysync_3() 
GetAllCitySummary(); 
SyncTaskValue(1569) -- script viet hoa By http://tranhba.com  trung thu b�nh Trung thu 
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

-- script viet hoa By http://tranhba.com  n�u �� � treo ky b�n �� , l� kh�ng c�n n�a v�o 
nCurSWID = SubWorldIdx2ID(); 
for i = 1, MapCount do 
if (nCurSWID == mapList[i]) then 
return 0; 
end 
end 

nMapID = random(1, MapCount); 
aexp_gotothd(mapList[nMapID]); 
end; 

-- script viet hoa By http://tranhba.com  ki�m tr�c c� hay kh�ng c� sao ch�p trang b� d�u hi�u , c�ng ph�t gi� cao c�o 
function login_check_dupe() 
local nValue = GetTask(156); 
if (nValue > 0) then 
Say("<color=red> � ng�i tr�n ng��i ph�t hi�n sao ch�p ra ngo�i v�t ph�m , �� b� h� th�ng thanh tr� . ch�ng ta c� c�n k� ��ch theo d�i ghi ch�p . n�u ng�i ��i v�i l�n n�y kh�c th��ng ngh� , xin/m�i c�ng kh�ch ph�c li�n l�c . �a t� �ng h� #<color>", 1,"T�t n�y c�nh c�o /dupe_warning"); 

SetTask(156, nValue - 1); 
end 
end 

function dupe_warning() 
Msg2Player(" � ng�i tr�n ng��i ph�t hi�n sao ch�p ra ngo�i v�t ph�m , �� b� h� th�ng thanh tr� . ch�ng ta c� c�n k� ��ch theo d�i ghi ch�p . n�u ng�i ��i v�i l�n n�y kh�c th��ng ngh� , xin/m�i c�ng kh�ch ph�c li�n l�c . �a t� �ng h� #"); 
end 

function messenger_copytaskvalue() 

SyncTaskValueMore(1201, 1247, 1) 
-- script viet hoa By http://tranhba.com for i = 1201, 1247 do 
-- script viet hoa By http://tranhba.com  SyncTaskValue(i) 
-- script viet hoa By http://tranhba.com end 
end 

function no() 
end; 

-- script viet hoa By http://tranhba.com  c�ng b��c ��ng b�n k�ch t�nh nhi�m v� thay ��i l��ng 
function SyncPartnerMasterTask() 

local i=0; 

SyncTaskValue(1262); 
SyncTaskValue(1256); 

-- script viet hoa By http://tranhba.com  c�ng b��c ��ng b�n ng�u nhi�n nhi�m v� 
SyncTaskValue(1301); 
SyncTaskValue(1302); 
SyncTaskValue(1303); 
SyncTaskValue(1304); 
SyncTaskValue(1305); 
SyncTaskValue(1306); 

-- script viet hoa By http://tranhba.com  c�ng b��c nhi�m v� d�n k�nh s� d�ng ��ch thay ��i l��ng 
for i=2000, 2300 do 
SyncTaskValue(i); 
end; 

end; 

-- script viet hoa By http://tranhba.com  gia nh�p c�u ��ch Login main h�m s� 
if login_add then login_add(main_old, 0) end 
-- script viet hoa By http://tranhba.com  gia nh�p c�u ��ch ph�n b��c c�ng b��c h�m s� 
if login_add then login_add(delaysync_1, 1) end 
if login_add then login_add(delaysync_2, 2) end 
if login_add then login_add(delaysync_3, 3) end 
