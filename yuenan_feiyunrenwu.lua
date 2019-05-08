-- script viet hoa By http://tranhba.com  ViÖt Nam bay v©n nhiÖm vô : ho¹t ®éng b¾t ®Çu sau ng­êi míi vËt ®¹t tíi quy ®Þnh cÊp bËc #60 cÊp , 90 cÊp , 100 cÊp # , lµ nh­ng ®Õn NPC chç nhËn lÊy t­¬ng øng t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  a. nhµ ch¬i ®¹t tíi 60 cÊp sau , cã thÓ ®Õn tr­íc khi an thî rÌn chç ( täa ®é 166/191) ®èi tho¹i còng nhËn lÊy t­ëng th­ëng , t­ëng th­ëng v× cô cã hai 
-- script viet hoa By http://tranhba.com  Èn nóp thuéc tÝnh # thuéc tÝnh ngÉu nhiªn # ®Ých mµu xanh da trêi trang bÞ mét ( chiÕc nhÉn hoÆc hé th©n phï / gi©y chuyÒn hoÆc ngäc béi / vßng ngäc )# 
-- script viet hoa By http://tranhba.com  b. nhµ ch¬i ®¹t tíi 90 cÊp sau , cã thÓ ®Õn t­¬ng d­¬ng thî rÌn chç ( täa ®é 195/205) ®èi tho¹i còng nhËn lÊy t­ëng th­ëng , t­ëng th­ëng v× cô cã ba Èn nóp 
-- script viet hoa By http://tranhba.com  thuéc tÝnh # thuéc tÝnh ngÉu nhiªn # ®Ých mµu xanh da trêi vò khÝ mét ( vò khÝ chñng lo¹i coi nhµ ch¬i m«n ph¸i mµ ®Þnh )# 
-- script viet hoa By http://tranhba.com  c. nhµ ch¬i ®¹t tíi 100 cÊp sau , cã thÓ ®Õn t­¬ng d­¬ng l­u uÈn cæ chç ( täa ®é 201/199) ®èi tho¹i còng nhËn lÊy t­ëng th­ëng , t­ëng th­ëng v× bay v©n thÇn m· mét thÊt . 


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
V_FY_SZ_ACTIONNAME = "v_feiyun06_permanent"; -- script viet hoa By http://tranhba.com  ViÖt Nam vÜnh cöu tÝnh ho¹t ®éng 
V_FY_TK_GETSIGN = 1781; 

tab_Reference = { 
[60] = {60, 150, 160}, 
[90] = {90, 150, 190}, 
[100] = {100, 160, 190}, 
}; 

-- script viet hoa By http://tranhba.com  common interface following 
function v_fy_is_active() -- script viet hoa By http://tranhba.com  Active check up 
do return 0 end -- script viet hoa By http://tranhba.com  ho¹t ®éng ®· kÕt thóc , vÜnh cöu t¾t by tö kh«ng ph¶i lµ ng­ 
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
Say("Ng­¬i cßn ch­a ®¹t tíi cÊp bËc yªu cÇu !", 0); 
return 0; 
end; 

if (v_fy_is_got(nLevel) == 0) then 
Say("Ngµi ®· nhËn lÊy t­ëng th­ëng , kh«ng thÓ tiÕp tôc nhËn lÊy !", 0); 
return 0; 
end; 

if (v_fy_is_newrole() == 0) then 
Say("Ngµi kh«ng ph¶i tõ nî míi sè ch¬i , kh«ng thÓ dÉn t­ëng .", 0); 
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
Say("Qu©n Kim thÕ lùc m·nh nh­ hång thñy , t­¬ng d­¬ng s¾p thÊt thñ # Hoµng th­îng ®· triÖu tËp c¸c n¬i anh hïng nghÜa sÜ th­¬ng l­îng , ®ång thêi ®­a mét mãn tri ©m trang bÞ cho c¸c vÞ ®· ®¹t tíi 60 cÊp ®Ých anh hïng hµo kiÖt . ", 2, 
" nhËn lÊy 60 cÊp t­ëng th­ëng /v_fy_60_next", 
" thuËn tiÖn ®i ngang qua xem mét chót mµ th«i !/no"); 
end; 

function v_fy_60_next() 
local tab_Content = { 
" ta muèn dÉn chiÕc nhÉn /v_fy_60_ring", 
" ta muèn nhËn lÊy ngäc béi ( h­¬ng nang )/v_fy_60_yu", 
" hé th©n phï ( gi©y chuyÒn )/v_fy_60_necklace", 
" rêi ®i /no" 
}; 
Say("Ng­¬i nghÜ nhËn lÊy t­ëng th­ëng g× ?", getn(tab_Content), tab_Content); 
end; 

function v_fy_60_ring() -- script viet hoa By http://tranhba.com  nhËn lÊy 60 cÊp ®Ých chiÕc nhÉn 
if (v_fy_awardcheck(60) == 0) then 
return 
end; 

	local nSeries = GetSeries() + 1;
local Index1 = random(1, getn(tab_vn_fy_ring[nSeries])); 
local Index2 = random(1, getn(tab_vn_fy_ring[nSeries][Index1])); 
local str = " ngµi ®¹t ®­îc 1 <color=yellow> T« mÉu xanh biÕc chiÕc nhÉn ?color>"; 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 60); 
AddItemEx(4,tab_vn_fy_ring[nSeries][Index1][Index2],0, 0,3,0, 6,0,200, 6,6,6,6,0,0) 
Say(str, 0); 
Msg2Player(str); 
end; 

function v_fy_60_necklace() -- script viet hoa By http://tranhba.com  nhËn lÊy 60 cÊp ®Ých hé th©n phï ( gi©y chuyÒn ) 
if (v_fy_awardcheck(60) == 0) then 
return 
end; 

local tab_award = tab_vn_fy_hushenhu; 
if (nSex == 1) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ c¸ n÷ vai trß 
tab_award = tab_vn_fy_xianglian; 
end; 
	local nSeries = GetSeries() + 1;
local Index1 = random(1, getn(tab_award[nSeries])); 
local Index2 = random(1, getn(tab_award[nSeries][Index1])); 
local nSex = GetSex(); 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 60); 
local szItemName; 
if (nSex == 0) then 
szItemName = " hæ ph¸ch hé th©n phï "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,4,1, 6,0,200, 6,6,6,6,0,0); 
elseif (nSex == 1) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ c¸ n÷ vai trß 
szItemName = " xanh biÕc tïng th¹ch gi©y chuyÒn "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,4,0, 6,0,200, 6,6,6,6,0,0); 
end; 
local str = " ngµi ®¹t ®­îc <color=yellow>"..szItemName.."<color>"; 
Say(str, 0); 
Msg2Player(str); 
end; 

function v_fy_60_yu() -- script viet hoa By http://tranhba.com  nhËn lÊy 60 cÊp ®Ých gi©y chuyÒn 
if (v_fy_awardcheck(60) == 0) then 
return 
end; 


local tab_award = tab_vn_fy_yupei; 
if (nSex == 1) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ c¸ nam vai trß 
tab_award = tab_vn_fy_xiangrang; 
end; 
	local nSeries = GetSeries() + 1;
local Index1 = random(1, getn(tab_award[nSeries])); 
local Index2 = random(1, getn(tab_award[nSeries][Index1])); 
local nSex = GetSex(); 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 60); 
local szItemName; 
if (nSex == 0) then 
szItemName = " thanh ngäc ngäc béi "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,9,1, 6,2,200, 6,6,6,6,0,0) 
elseif (nSex == 1) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ c¸ nam vai trß 
szItemName = " tö t« h­¬ng nang "; 
AddItemEx(4,tab_award[nSeries][Index1][Index2],0, 0,9,0, 6,0,200, 6,6,6,6,0,0) 
end; 
local str = " ngµi ®¹t ®­îc <color=yellow>"..szItemName.."<color>"; 
Say(str, 0); 
Msg2Player(str); 
end; 

-- script viet hoa By http://tranhba.com  field level 60: Prize when a role level up at 90: 
function v_fy_90_entrance() 
Say("Qu©n Kim khÝ thÕ m·nh nh­ hång thñy , t­¬ng d­¬ng s¾p thÊt thñ # Hoµng th­îng triÖu tËp anh hïng hiÖp sÜ cøu n­íc , ®ång thêi ®­a 1 mãn lÔ vËt cho ®· ®¹t 90 cÊp ®Ých anh hïng hµo kiÖt .", 2, 
" nhËn lÊy 90 cÊp t­ëng th­ëng /v_fy_90_next", 
" thuËn tiÖn tíi xem mét chót !/no"); 
end; 

v_fy_90_tab_weapon = { 
["cuiyan"] = {"Giã lín ®ao ","Th«n nhËt chÐm "}, 
["emei"] = {"ThÐp kiÕm ( Nga Mi kiÕm )","ThÐp kiÕm ( Nga Mi khÝ "}, 
["tangmen"] = {"B¸ v­¬ng phiªu ","BÓ th¸ng ®ao ","Khæng t­íc linh "}, 
["wudu"] = {"Giã lín ®ao ( n¨m ®éc ch­ëng )","Giã lín ®ao ( n¨m ®éc ®ao )"}, 
["tianwang"] = {"XÐ trêi kÝch ","XÐ trêi chïy ","Giã lín ®ao "}, 
["shaolin"] = {"Giã lín ®ao ","Kim c« ca tông "}, 
["wudang"] = {"ThÐp kiÕm ( Vâ §­¬ng kiÕm )","ThÐp kiÕm ( Vâ §­¬ng khÝ "}, 
["kunlun"] = {"Giã lín ®ao ","ThÐp kiÕm "}, 
["gaibang"] = {"Kim c« ca tông ( C¸i Bang ch­ëng )","Tr¶i qua lµm ( C¸i Bang c«n )"}, 
["tianren"] = {"XÐ trêi kÝch ( ngµy nhÉn kÝch )","XÐ trêi kÝch ( ngµy nhÉn ch­ëng )"} 
}; 

function v_fy_90_next() 
local player_Faction = GetFaction(); -- script viet hoa By http://tranhba.com  Get Faction Name 
-- script viet hoa By http://tranhba.com  player_Faction = "tianren"; 
if (not player_Faction or not v_fy_90_tab_weapon[player_Faction]) then -- script viet hoa By http://tranhba.com  skip if role not in Faction 
Say("Mêi/xin ng­¬i tr­íc gia nhËp m«n ph¸i tíi t×m ta n÷a .", 0); 
return 
end; 

local tab_Content = {} 
for i = 1, getn(v_fy_90_tab_weapon[player_Faction]) do 
tinsert(tab_Content,"Ta muèn nhËn lÊy "..v_fy_90_tab_weapon[player_Faction][i].."/#v_fy_90_weapon([["..player_Faction.."]],"..i..")"); 
end; 
tinsert(tab_Content,"Rêi ®i /no"); 

Say("Ng­¬i nghÜ nhËn lÊy t­ëng th­ëng g× ", getn(tab_Content), tab_Content); 
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
local str = " ngµi ®¹t ®­îc <color=yellow>"..v_fy_90_tab_weapon[player_Faction][i].."<color>."; 
if (player_Faction == "emei" or player_Faction == "wudang") then 
str = " ngµi ®¹t ®­îc <color=yellow> thÐp kiÕm <color>."; 
elseif (player_Faction == "gaibang") then 
str = " ngµi ®¹t ®­îc <color=yellow> kim c« ca tông <color>."; 
elseif (player_Faction == "wudu") then 
str = " ngµi ®¹t ®­îc <color=yellow> giã lín ®ao <color>."; 
elseif (player_Faction == "tianren") then 
str = " ngµi ®¹t ®­îc <color=yellow> xÐ trêi kÝch <color>."; 
end; 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 90); 
AddItemEx(_t[i][1],table[i][nIndex],_t[i][3], _t[i][4],_t[i][5],_t[i][6], _t[i][7],_t[i][8],_t[i][9], _t[i][10],_t[i][11],_t[i][12],_t[i][13],_t[i][14],_t[i][15]); 
Say(str, 0); 
Msg2Player(str); 
end; 

-- script viet hoa By http://tranhba.com  field level 60: Prize when a role level up at 100: 
function v_fy_100_entrance() 
Say("Qu©n Kim thÕ lùc m·nh nh­ hång thñy , t­¬ng d­¬ng s¾p thÊt thñ # Hoµng th­îng ®· triÖu tËp anh hïng thiªn h¹ nghÜa sÜ th­¬ng l­îng , ®ång thêi ®­a ra bay v©n thÇn m· tíi c¶m t¹ c¸c vÞ anh hïng . .", 2, 
" nhËn lÊy 100 cÊp t­ëng th­ëng /v_fy_100_next", 
" thuËn tiÖn xem mét chót mµ th«i !/no"); 
end; 

function v_fy_100_next() 
if (v_fy_awardcheck(100) == 0) then 
return 
end; 

-- script viet hoa By http://tranhba.com  thªm mét thÊt thÇn m· 
v_fy_tkvalueadd(V_FY_TK_GETSIGN, 100); 
AddItem(0, 10, 8, 1, 0, 0, 0); 
Msg2Player("Ngµi ®¹t ®­îc <color=yellow> bay v©n thiªn m· color>"); 
end; 


function no() 
end; 


end; -- script viet hoa By http://tranhba.com __H_V_FEIYUNACTION__ 
