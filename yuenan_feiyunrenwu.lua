-- script viet hoa By http://tranhba.com  Vi�t Nam bay v�n nhi�m v� : ho�t ��ng b�t ��u sau ng��i m�i v�t ��t t�i quy ��nh c�p b�c #60 c�p , 90 c�p , 100 c�p # , l� nh�ng ��n NPC ch� nh�n l�y t��ng �ng t��ng th��ng 
-- script viet hoa By http://tranhba.com  a. nh� ch�i ��t t�i 60 c�p sau , c� th� ��n tr��c khi an th� r�n ch� ( t�a �� 166/191) ��i tho�i c�ng nh�n l�y t��ng th��ng , t��ng th��ng v� c� c� hai 
-- script viet hoa By http://tranhba.com  �n n�p thu�c t�nh # thu�c t�nh ng�u nhi�n # ��ch m�u xanh da tr�i trang b� m�t ( chi�c nh�n ho�c h� th�n ph� / gi�y chuy�n ho�c ng�c b�i / v�ng ng�c )# 
-- script viet hoa By http://tranhba.com  b. nh� ch�i ��t t�i 90 c�p sau , c� th� ��n t��ng d��ng th� r�n ch� ( t�a �� 195/205) ��i tho�i c�ng nh�n l�y t��ng th��ng , t��ng th��ng v� c� c� ba �n n�p 
-- script viet hoa By http://tranhba.com  thu�c t�nh # thu�c t�nh ng�u nhi�n # ��ch m�u xanh da tr�i v� kh� m�t ( v� kh� ch�ng lo�i coi nh� ch�i m�n ph�i m� ��nh )# 
-- script viet hoa By http://tranhba.com  c. nh� ch�i ��t t�i 100 c�p sau , c� th� ��n t��ng d��ng l�u u�n c� ch� ( t�a �� 201/199) ��i tho�i c�ng nh�n l�y t��ng th��ng , t��ng th��ng v� bay v�n th�n m� m�t th�t . 


-- script viet hoa By http://tranhba.com Date: November fifteenth 2006 
-- script viet hoa By http://tranhba.com Author: liaozhishan 
-- script viet hoa By http://tranhba.com Right: Kingsoft all rights reserved@ 
-- script viet hoa By http://tranhba.com file: yuenan_feiyunrenwu.lua 

if (not __H_V_FEIYUNACTION__) then -- script viet hoa By http://tranhba.com __H_V_FEIYUNACTION__ 
__H_V_FEIYUNACTION__ = 1; 

Include([[\script\lib\gb_taskfuncs.lua]]); 
Include([[\script\event\feiyunrenwu\vn_feiyun_lvl60.lua]]); 
Include([[\script\event\feiyunrenwu\vn_feiyun_lvl90.lua]]); 

-- script viet hoa By http://tranhba.com  Date define field: following lines lies date defination; 
V_FY_SZ_ACTIONNAME = "v_feiyun06_permanent"; -- script viet hoa By http://tranhba.com  Vi�t Nam v�nh c�u t�nh ho�t ��ng 
V_FY_TK_GETSIGN = 1781; 

tab_Reference = { 
[60] = {60, 150, 160}, 
[90] = {90, 150, 190}, 
[100] = {100, 160, 190}, 
}; 

-- script viet hoa By http://tranhba.com  common interface following 
function v_fy_is_active() -- script viet hoa By http://tranhba.com  Active check up 
do return 0 end -- script viet hoa By http://tranhba.com  ho�t ��ng �� k�t th�c , v�nh c�u t�t by t� kh�ng ph�i l� ng� 
if (gb_GetTask(V_FY_SZ_ACTIONNAME, 1) ~= 0) then 
return 0; 
end; 
return 1; 
end; 

function v_fy_is_newrole() -- script viet hoa By http://tranhba.com make sure Role is of new type 
local nPoint = GetExtPoint(6); 
local nBit = GetBit(nPoint, 7); 
if (nBit == 1) then 
return 1; 
end; 
return 0; 
end; 

-- script viet hoa By http://tranhba.com  check if he has gotten the level prize; 
-- script viet hoa By http://tranhba.com  return value: has gotten return 1; in opposition return 0 
function v_fy_is_got(nLevel) 
if (not tab_Reference[nLevel]) then 
return 0; 
end; 

local UWorld1781 = GetTask(V_FY_TK_GETSIGN); 
if (UWorld1781 >= 250) then 
return 0 
end; 
local table = tab_Reference[nLevel]; 
for i = 1, getn(table) do 
if (UWorld1781 == table[i]) then 
return 0; 
end; 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  check get prize 
-- script viet hoa By http://tranhba.com  return value: yes return 1; no return 0; 
function v_fy_awardcheck(nLevel) 
if (GetLevel() < nLevel) then 
Say("Ng��i c�n ch�a ��t t�i c�p b�c y�u c�u !", 0); 
return 0; 
end; 

if (v_fy_is_got(nLevel) == 0) then 
Say("Ng�i �� nh�n l�y t��ng th��ng , kh�ng th� ti�p t�c nh�n l�y !", 0); 
return 0; 
end; 

if (v_fy_is_newrole() == 0) then 
Say("Ng�i kh�ng ph�i t� n� m�i s� ch�i , kh�ng th� d�n t��ng .", 0); 
return 0; 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  add a number into task 
function v_fy_tkvalueadd(nTaskID, nAddend) 
	SetTask(nTaskID, ( GetTask(nTaskID) + nAddend ) );
SyncTaskValue( nTaskID ); 
end; 

-- script viet hoa By http://tranhba.com  common interface above 

-- script viet hoa By http://tranhba.com  field level 60: Prize when a role level up at 60: 
function v_fy_60_entrance() 
Say("Qu�n Kim th� l�c m�nh nh� h�ng th�y , t��ng d��ng s�p th�t th� # Ho�ng th��ng �� tri�u t�p c�c n�i anh h�ng ngh�a s� th��ng l��ng , ��ng th�i ��a m�t m�n tri �m trang b� cho c�c v� �� ��t t�i 60 c�p ��ch anh h�ng h�o ki�t . ", 2, 
" nh�n l�y 60 c�p t��ng th��ng /v_fy_60_next", 
" thu�n ti�n �i ngang qua xem m�t ch�t m� th�i !/no"); 
end; 

function v_fy_60_next() 
local tab_Content = { 
" ta mu�n d�n chi�c nh�n /v_fy_60_ring", 
" ta mu�n nh�n l�y ng�c b�i ( h��ng nang )/v_fy_60_yu", 
" h� th�n ph� ( gi�y chuy�n )/v_fy_60_necklace", 
" r�i �i /no" 
}; 
Say("Ng��i ngh� nh�n l�y t��ng th��ng g� ?", getn(tab_Content), tab_Content); 
end; 

function v_fy_60_ring() -- script viet hoa By http://tranhba.com  nh�n l�y 60 c�p ��ch chi�c nh�n 
if (v_fy_awardcheck(60) == 0) then 
return 
end; 

	local nSeries = GetSeries() + 1;
local Index1 = random(1, getn(tab_vn_fy_ring[nSeries])); 
local Index2 = random(1, getn(tab_vn_fy_ring[nSeries][Index1])); 
local str = " ng�i ��t ���c 1 <color=yellow> T� m�u xanh bi�c chi�c nh�n ?color>"; 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 60); 
AddItemEx(4,tab_vn_fy_ring[nSeries][Index1][Index2],0, 0,3,0, 6,0,200, 6,6,6,6,0,0) 
Say(str, 0); 
Msg2Player(str); 
end; 

function v_fy_60_necklace() -- script viet hoa By http://tranhba.com  nh�n l�y 60 c�p ��ch h� th�n ph� ( gi�y chuy�n ) 
if (v_fy_awardcheck(60) == 0) then 
return 
end; 

local tab_award = tab_vn_fy_hushenhu; 
if (nSex == 1) then -- script viet hoa By http://tranhba.com  n�u nh� l� c� n� vai tr� 
tab_award = tab_vn_fy_xianglian; 
end; 
	local nSeries = GetSeries() + 1;
local Index1 = random(1, getn(tab_award[nSeries])); 
local Index2 = random(1, getn(tab_award[nSeries][Index1])); 
local nSex = GetSex(); 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 60); 
local szItemName; 
if (nSex == 0) then 
szItemName = " h� ph�ch h� th�n ph� "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,4,1, 6,0,200, 6,6,6,6,0,0); 
elseif (nSex == 1) then -- script viet hoa By http://tranhba.com  n�u nh� l� c� n� vai tr� 
szItemName = " xanh bi�c t�ng th�ch gi�y chuy�n "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,4,0, 6,0,200, 6,6,6,6,0,0); 
end; 
local str = " ng�i ��t ���c <color=yellow>"..szItemName.."<color>"; 
Say(str, 0); 
Msg2Player(str); 
end; 

function v_fy_60_yu() -- script viet hoa By http://tranhba.com  nh�n l�y 60 c�p ��ch gi�y chuy�n 
if (v_fy_awardcheck(60) == 0) then 
return 
end; 


local tab_award = tab_vn_fy_yupei; 
if (nSex == 1) then -- script viet hoa By http://tranhba.com  n�u nh� l� c� nam vai tr� 
tab_award = tab_vn_fy_xiangrang; 
end; 
	local nSeries = GetSeries() + 1;
local Index1 = random(1, getn(tab_award[nSeries])); 
local Index2 = random(1, getn(tab_award[nSeries][Index1])); 
local nSex = GetSex(); 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 60); 
local szItemName; 
if (nSex == 0) then 
szItemName = " thanh ng�c ng�c b�i "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,9,1, 6,2,200, 6,6,6,6,0,0) 
elseif (nSex == 1) then -- script viet hoa By http://tranhba.com  n�u nh� l� c� nam vai tr� 
szItemName = " t� t� h��ng nang "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,9,0, 6,0,200, 6,6,6,6,0,0) 
end; 
local str = " ng�i ��t ���c <color=yellow>"..szItemName.."<color>"; 
Say(str, 0); 
Msg2Player(str); 
end; 

-- script viet hoa By http://tranhba.com  field level 60: Prize when a role level up at 90: 
function v_fy_90_entrance() 
Say("Qu�n Kim kh� th� m�nh nh� h�ng th�y , t��ng d��ng s�p th�t th� # Ho�ng th��ng tri�u t�p anh h�ng hi�p s� c�u n��c , ��ng th�i ��a 1 m�n l� v�t cho �� ��t 90 c�p ��ch anh h�ng h�o ki�t .", 2, 
" nh�n l�y 90 c�p t��ng th��ng /v_fy_90_next", 
" thu�n ti�n t�i xem m�t ch�t !/no"); 
end; 

v_fy_90_tab_weapon = { 
["cuiyan"] = {"Gi� l�n �ao ","Th�n nh�t ch�m "}, 
["emei"] = {"Th�p ki�m ( Nga Mi ki�m )","Th�p ki�m ( Nga Mi kh� "}, 
["tangmen"] = {"B� v��ng phi�u ","B� th�ng �ao ","Kh�ng t��c linh "}, 
["wudu"] = {"Gi� l�n �ao ( n�m ��c ch��ng )","Gi� l�n �ao ( n�m ��c �ao )"}, 
["tianwang"] = {"X� tr�i k�ch ","X� tr�i ch�y ","Gi� l�n �ao "}, 
["shaolin"] = {"Gi� l�n �ao ","Kim c� ca t�ng "}, 
["wudang"] = {"Th�p ki�m ( V� ���ng ki�m )","Th�p ki�m ( V� ���ng kh� "}, 
["kunlun"] = {"Gi� l�n �ao ","Th�p ki�m "}, 
["gaibang"] = {"Kim c� ca t�ng ( C�i Bang ch��ng )","Tr�i qua l�m ( C�i Bang c�n )"}, 
["tianren"] = {"X� tr�i k�ch ( ng�y nh�n k�ch )","X� tr�i k�ch ( ng�y nh�n ch��ng )"} 
}; 

function v_fy_90_next() 
local player_Faction = GetFaction(); -- script viet hoa By http://tranhba.com  Get Faction Name 
-- script viet hoa By http://tranhba.com  player_Faction = "tianren"; 
if (not player_Faction or not v_fy_90_tab_weapon[player_Faction]) then -- script viet hoa By http://tranhba.com  skip if role not in Faction 
Say("M�i/xin ng��i tr��c gia nh�p m�n ph�i t�i t�m ta n�a .", 0); 
return 
end; 

local tab_Content = {} 
for i = 1, getn(v_fy_90_tab_weapon[player_Faction]) do 
tinsert(tab_Content,"Ta mu�n nh�n l�y "..v_fy_90_tab_weapon[player_Faction][i].."/#v_fy_90_weapon([["..player_Faction.."]],"..i..")"); 
end; 
tinsert(tab_Content,"R�i �i /no"); 

Say("Ng��i ngh� nh�n l�y t��ng th��ng g� ", getn(tab_Content), tab_Content); 
end; 

-- script viet hoa By http://tranhba.com  Get tanle 
function v_fy_90_gettable(player_Faction) 
if (player_Faction == "cuiyan") then 
return tab_vn_fy_cym, tab_vn_fy_cym_add 
elseif(player_Faction == "emei") then 
return tab_vn_fy_emp, tab_vn_fy_emp_add 
elseif(player_Faction == "tangmen") then 
return tab_vn_fy_tm, tab_vn_fy_tm_add 
elseif(player_Faction == "wudu") then 
return tab_vn_fy_wdj, tab_vn_fy_wdj_add 
elseif(player_Faction == "tianwang") then 
return tab_vn_fy_twb, tab_vn_fy_twb_add 
elseif(player_Faction == "shaolin") then 
return tab_vn_fy_slp, tab_vn_fy_slp_add 
elseif(player_Faction == "wudang") then 
return tab_vn_fy_wdp, tab_vn_fy_wdp_add 
elseif(player_Faction == "kunlun") then 
return tab_vn_fy_klp, tab_vn_fy_klp_add 
elseif(player_Faction == "gaibang") then 
return tab_vn_fy_gb, tab_vn_fy_gb_add 
elseif(player_Faction == "tianren") then 
return tab_vn_fy_trj, tab_vn_fy_trj_add 
end; 
return nil; 
end; 

-- script viet hoa By http://tranhba.com  Get the prize of level up to 90 
function v_fy_90_weapon(player_Faction, i) 
if (v_fy_awardcheck(90) == 0) then 
return 
end; 

local table = {}; 
local _t = {}; 
table, _t = v_fy_90_gettable(player_Faction); 
if (not table or not _t) then 
return 
end; 
local nIndex = random(1, getn(table[i])); 
local str = " ng�i ��t ���c <color=yellow>"..v_fy_90_tab_weapon[player_Faction][i].."<color>."; 
if (player_Faction == "emei" or player_Faction == "wudang") then 
str = " ng�i ��t ���c <color=yellow> th�p ki�m <color>."; 
elseif (player_Faction == "gaibang") then 
str = " ng�i ��t ���c <color=yellow> kim c� ca t�ng <color>."; 
elseif (player_Faction == "wudu") then 
str = " ng�i ��t ���c <color=yellow> gi� l�n �ao <color>."; 
elseif (player_Faction == "tianren") then 
str = " ng�i ��t ���c <color=yellow> x� tr�i k�ch <color>."; 
end; 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 90); 
AddItemEx(_t[i][1],table[i][nIndex],_t[i][3], _t[i][4],_t[i][5],_t[i][6], _t[i][7],_t[i][8],_t[i][9], _t[i][10],_t[i][11],_t[i][12],_t[i][13],_t[i][14],_t[i][15]); 
Say(str, 0); 
Msg2Player(str); 
end; 

-- script viet hoa By http://tranhba.com  field level 60: Prize when a role level up at 100: 
function v_fy_100_entrance() 
Say("Qu�n Kim th� l�c m�nh nh� h�ng th�y , t��ng d��ng s�p th�t th� # Ho�ng th��ng �� tri�u t�p anh h�ng thi�n h� ngh�a s� th��ng l��ng , ��ng th�i ��a ra bay v�n th�n m� t�i c�m t� c�c v� anh h�ng . .", 2, 
" nh�n l�y 100 c�p t��ng th��ng /v_fy_100_next", 
" thu�n ti�n xem m�t ch�t m� th�i !/no"); 
end; 

function v_fy_100_next() 
if (v_fy_awardcheck(100) == 0) then 
return 
end; 

-- script viet hoa By http://tranhba.com  th�m m�t th�t th�n m� 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 100); 
AddItem(0, 10, 8, 1, 0, 0, 0); 
Msg2Player("Ng�i ��t ���c <color=yellow> bay v�n thi�n m� color>"); 
end; 


function no() 
end; 


end; -- script viet hoa By http://tranhba.com __H_V_FEIYUNACTION__ 
