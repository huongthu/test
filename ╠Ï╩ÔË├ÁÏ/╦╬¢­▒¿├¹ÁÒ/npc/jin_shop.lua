
-- script viet hoa By http://tranhba.com  t�ng kim ghi danh �i�m kim qu�n quan ti�p li�u 
-- script viet hoa By http://tranhba.com  lixin 2004-12-13 
IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\global\\�����õ�\\�ν�����\\npc\\head.lua")
Include("\\script\\global\\�����õ�\\�ν�����\\npc\\songjin_shophead.lua")

Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")

-- script viet hoa By http://tranhba.com # �i�u ch�nh ��i l�y t�ch ph�n l�c ��ch kinh nghi�m tr?gi?h�n ch?- Modified by DinhHQ - 20110810 
-- script viet hoa By http://tranhba.com Limit_Exp = 550000 
-- script viet hoa By http://tranhba.com Limit_Exp = 700000 
tbLimit_Exp = { 
[0] = 700000, 
[3] = 800000, 
[4] = 1000000, 
}; 
YUEWANGHUN_STONECOUNT = 100 
nState = 0; 

function main(sel) 
local nWorld, _, _ = GetWorldPos() 

nOldSW = SubWorld 
SubWorld = SubWorldID2Idx(325) 
if (nState == 0) then 
bt_setnormaltask2type() 
nState = 1; 
end 
battlemapid = BT_GetGameData(GAME_MAPID); 

-- script viet hoa By http://tranhba.com  tr��c m�t kh�ng c?b�t k?chi�n d�ch ��nh vang 
if (battlemapid <= 0) then 
maintalk() 
return 
end 
SyncTaskValue(747);-- script viet hoa By http://tranhba.com  c�ng b��c nh?ch�i ��ch t�ng t�ch ph�n cho kh�ch h�ng b�ng , d�ng cho t�ch ph�n mua ch�c n�ng 
battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID)); 
if (battlemap < 0) then 
Msg2Player("error"..battlemap) 
return 
end 

tempSubWorld = SubWorld; 
SubWorld = battlemap 
state = GetMissionV(MS_STATE); 

if (state == 0 or state == 1) then 
maintalk() 
SubWorld = tempSubWorld; 
return 
else 
Talk(1,"","Quan ti�p li�u # ph�a tr��c chi�n tr��ng �ang k�ch li�t chi�n ��u , c�c v?c�n t�m th�i tr�nh n?m�t c�i !") 
SubWorld = tempSubWorld; 
return 
end; 
SubWorld = nOldSW; 
end; 

function no() 
end; 

function jinshop_sell() 
Sale(98, 4); 
end; 

-- script viet hoa By http://tranhba.com str1 = " kim qu�n quan ti�p li�u # kim qu�c ��ch c�c d�ng s?, ng��i n�u h��ng �ng ta ch?hi�u tri�u , tham gia ta kim qu�c di�t t�ng ��i qu�n , li�n c?th??ch?n�y c�a ta d�ng t�ng kim t�ch ph�n <color=yellow> ��i h�c h�i kinh nghi�m nghi�m # nh�c v��ng h�n chi th�ch <color> , c�n c?th?mua <color=yellow> t�ng kim chuy�n d�ng ��o c?<color> . " 
-- script viet hoa By http://tranhba.com str2 = " n�u nh?, ng��i c?nh�c v��ng h�n chi th�ch l�i c�a , c�n c?th??ch?n�y c�a ta luy�n t�o nh�c v��ng ki�m nga #" 
function maintalk() 
-- script viet hoa By http://tranhba.com Say(str1..str2.." ng��i c?<color=yellow>"..nt_getTask(747).."<color> t�ng t�ch ph�n , c?g?c�n sao ? ", 8,"Ta mu�n mua t�ng kim ��o c?/jinshop_sell","Ta mu�n d�ng t�ng kim t�ch ph�n ��i h�c h�i kinh nghi�m nghi�m /exp_exchange","Xem m�t ch�t t�ng kim ��nh gi?danh hi�u - ��c th?h�nh t��ng /person_change","Xem m�t ch�t t�ng kim ��nh gi?danh hi�u - ��c hi�u h�o quang /effect_aura","D�ng nh�c v��ng h�n chi th�ch luy�n t�o nh�c v��ng ki�m /yuewang_want","Mua ho�ng kim �� ph?/goldenitem_menu","Mua huy�n tinh qu�ng th�ch c�ng thu�c t�nh qu�ng th�ch /ore","Ta suy ngh?m�t ch�t n�a /no"); 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog) 
-- script viet hoa By http://tranhba.com  b�n ra ��i tho�i khu�ng 

tbDailog.szTitleMsg = " quan ti�p li�u # ng��i c�n ta gi�p c�i g??" 
tbDailog:AddOptEntry("Ta mu�n mua ��o c?", jinshop_sell) 
tbDailog:AddOptEntry("Ta mu�n ��i h�c h�i kinh nghi�m nghi�m tr?gi?", exp_exchange) 
tbDailog:AddOptEntry("S?d�ng nh�c v��ng h�n chi th�ch luy�n nh�c v��ng ki�m ", yuewang_want) 
tbDailog:AddOptEntry("V?song m�nh t��ng chi�n tr��ng ",wushuangmengjiang)-- script viet hoa By http://tranhba.com  v?song m�nh t��ng 
tbDailog:AddOptEntry("Tinh luy�n th�ch c�a h�ng ", energy_sale); 
tbDailog:AddOptEntry("��i l�y b?b�o ", duihuangmibao) 
-- script viet hoa By http://tranhba.com  t�m th�i t�t ki�m m?m?cung - Modified by DinhHQ - 20110810 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("D�ng nh�c v��ng h�n chi th�ch ��i l�y ng�c long anh h�ng thi�p ", talk_yulongtie) 

tbDailog:Show() 
end 

function xunzhang_exchange() 
if( GetLevel() < 40 ) then 
Talk( 1, "","Quan ti�p li�u # ch?c?50 c�p tr?l�n nh?ch�i m�i c?th?nh�n l�y huy ch��ng "); 
return 0 
elseif ( GetExtPoint(0)==0 ) then 
Talk( 1, "","Quan ti�p li�u # ch?c?�� sung tr?gi?nh?ch�i m�i c?th?nh�n l�y huy ch��ng "); 
return 0 
elseif ( CalcFreeItemCellCount() < 1 ) then 
Talk( 1, "","Xin/m�i chu�n b?m�t ch?tr�ng t�i �� 1 c?huy ch��ng "); 
return 0; 
else 
Say("Quan ti�p li�u # ng��i ngh?d�ng 500 t�ch ph�n ��i l�y huy ch��ng sao ?", 2,"��i l�y huy ch��ng /xunzhang_do","Tr��c m�t kh�ng mu�n ��i l�y /no"); 
end 
end 

function xunzhang_do() 
if nt_getTask(747) < 500 then 
Say("# t�ch ph�n ch�a �� 500 , kh�ng th?nh�n l�y huy ch��ng ",0); 
return 0; 
end 
nt_setTask(747, floor(nt_getTask(747) - 500)); 
local nidx = AddItem(6,1,1412,1,0,0) -- script viet hoa By http://tranhba.com  ��t ���c t�ng kim huy ch��ng 
WriteLog(format("[GetZhanGongXunZhang]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s Del:500SongJinJiFen\t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nidx))); 
Say("�� th�nh c�ng nh�n l�y m�t huy ch��ng ",0); 
end 

function exp_exchange() 
-- script viet hoa By http://tranhba.com Say("V�n ch�c n�ng t�m kh�ng ra �� , k�nh xin mong ��i #", 0 ) 
if( GetLevel() < 40 ) then 
Talk( 1, "","Quan ti�p li�u # ng��i kh�ng c?��t t�i 40 c�p , kh�ng th?tham gia phong v�n lu�n ki�m , t�i sao c?th?d�ng t�ch ph�n ��i h�c h�i kinh nghi�m nghi�m tr?gi??"); 
else 
if (GetTiredDegree() == 2) then 
Say("Quan ti�p li�u # �ang ��ng ?m�t nh�c tr�ng th�i , kh�ng th?��i h�c h�i kinh nghi�m nghi�m tr?gi?.",0); 
else 
local tbOpt = 
{ 
"500 t�ch ph�n /#wantpay(500)", 
"1000 t�ch ph�n /#wantpay(1000)", 
"2000 t�ch ph�n /#wantpay(2000)", 
"5000 t�ch ph�n /#wantpay(5000)", 
" t�t c?t�ch ph�n /#wantpay(9999)", 
" b�y gi?kh�ng mu�n ��i l�y /no" 
} 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 
local nHM = tonumber(GetLocalDate("%%H%M")) 


if 20090925 <= nDate and nDate <= 20091101 then 
-- script viet hoa By http://tranhba.com  tinsert(tbOpt, 5, format("%d �i�m t�ch ph�n /#wantpayex(%d,%d)",80000,80000,0)) 
end 
-- script viet hoa By http://tranhba.com  ho�t ��ng trong l�c (2009/09/25 t�i 2009/11/01) t?12h30 t�i 23h30 

Say("Quan ti�p li�u # ng��i ngh?ti�u hao bao nhi�u t�ch ph�n t�i nh�n l�y kinh nghi�m tr?gi??", getn(tbOpt), tbOpt); 
end; 
end 
end; 


function wantpayex(mark, nStep) 

if GetLevel() < 120 then 
Talk(1, "", format("Y�u c�u c�n %d c�p tr?l�n m�i c?th?��i l�y .", 120)) 
return 
end 

if PlayerFunLib:CheckTaskDaily(2645, 1,"N�n t��ng th��ng m�i ng�y ch?c?th?nh�n l�y m�t l�n .", "<") ~= 1 then 
return 
end 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 

if gb_GetTask("songjin butianshi2009", 1) ~= nDate then 
gb_SetTask("songjin butianshi2009", 1, nDate) 
gb_SetTask("songjin butianshi2009", 2, 0) 
end 

if gb_GetTask("songjin butianshi2009", 2) >= 10 then 
Talk(1, "","M�i ng�y m�i ph�c v?kh?, nhanh nh�t m��i ng��i m�i c?th?��i l�y n�n t��ng th��ng .") 
return 
end 

if( mark > nt_getTask(747) ) then 
Say("Quan ti�p li�u # ng�i ��ch t�ch ph�n ch�a �� , mu�n ��t ���c kinh nghi�m tr?gi?.", 1,"T�t /no"); 
elseif (mark == 0) then 
Say("Quan ti�p li�u # kh�ng c?kinh nghi�m tr?gi?c�n mu�n ��i h�c h�i kinh nghi�m nghi�m tr?gi?a , th�t l?hoang ���ng .", 1,"T�t /no"); 
else 
local level = GetLevel(); 
local bonus = bt_exchangeexp(level, mark) 

local tbItem = {szName=" b?ng�y �� b?phi�n ( trung )", tbProp={6, 1, 1309, 1, 0, 0}} 
if nStep == 1 then 
if (expchange_limit(mark) == 1) then 
nt_setTask(747, floor(nt_getTask(747) - mark)) 
AddOwnExp( bonus); 
Add120SkillExp(bonus); 

tbAwardTemplet:GiveAwardByList(tbItem, "MidAutumn,GetItemFromSongjin") 
gb_AppendTask("songjin butianshi2009", 2, 1) 
PlayerFunLib:AddTaskDaily(2645, 1) 
Msg2Player("<#> ng�i �� ti�u hao "..mark.."<#> t�ch ph�n , ��i l�y "..bonus .."<#> kinh nghi�m tr?gi?."); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: �� ti�u hao "..mark.." t�ch ph�n , ��i l�y "..bonus.." kinh nghi�m tr?gi?."); 
end 



elseif nStep == 0 then 
Say("Quan ti�p li�u # ng�i c?th?��i l�y "..bonus.."# kinh nghi�m tr?gi?, x�c ��nh ��i l�y ph�i kh�ng ?", 2,"��i v�i , ta ph�i thay ��i /#wantpayex("..mark..",1"..")", " ?d?, �� cho ta suy ngh?l�i m�t ch�t !/no") 
end 

end 
end 

function wantpay(mark) 
if (mark == 9999) then -- script viet hoa By http://tranhba.com  ��i l�y t�t c?t�ch ph�n 
mark = nt_getTask(747) 
end 

if( mark > nt_getTask(747) ) then 
Say("Quan ti�p li�u # ng�i ��ch t�ch ph�n ch�a �� , mu�n ��t ���c kinh nghi�m tr?gi?", 1,"T�t /no"); 
elseif (mark == 0) then 
Say("Quan ti�p li�u # kh�ng c?t�ch ph�n c�n mu�n ��i kinh nghi�m tr?gi?a , th�t l?hoang ���ng .", 1,"T�t /no"); 
else 
local level = GetLevel(); 
local bonus = bt_exchangeexp(level, mark) 
Say("Quan ti�p li�u # ng�i c?th?��i ph�i "..bonus.." kinh nghi�m tr?gi?, x�c ��nh ��i l�y sao ?", 2,"��i v�i , ta c�n ��i l�y /#paymark("..mark..")", " ?d?, �� cho ta suy ngh?l�i m�t ch�t !/no") 
end 
end 

function paymark(mark) 
if (mark == 9999) then -- script viet hoa By http://tranhba.com  ��i l�y t�t c?t�ch ph�n 
mark = nt_getTask(747) 
end 

if( mark > nt_getTask(747) ) then 
Say("Quan ti�p li�u # ng�i ��ch t�ch ph�n kh�ng �� , mu�n ��t ���c kinh nghi�m tr?gi?", 1,"T�t /no"); 
elseif (mark == 0) then 
Say("Quan ti�p li�u # kh�ng c?t�ch ph�n c�n mu�n ��i kinh nghi�m tr?gi?a , th�t l?hoang ���ng .", 1,"T�t /no"); 
else 
local level = GetLevel(); 
local bonus = bt_exchangeexp(level, mark) 
if (expchange_limit(mark) == 1) then 
nt_setTask(747, floor(nt_getTask(747) - mark)) 
AddOwnExp( bonus); 
Add120SkillExp(bonus); 
Msg2Player("<#> ng�i �� ti�u hao "..mark.."<#> t�ch ph�n , ��i ph�i "..bonus .."<#> kinh nghi�m tr?gi?."); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: �� ti�u hao "..mark.." t�ch ph�n , ��i ph�i "..bonus.." kinh nghi�m tr?gi?."); 
end 
end 
end 


function expchange_limit(cost) 
-- script viet hoa By http://tranhba.com local ww = tonumber(date("%W")) 
-- script viet hoa By http://tranhba.com local yy = tonumber(date("%Y")) - 2000 
local nNumber = tbVNG2011_ChangeSign:GetTransLife() 
local Limit_Exp = tbLimit_Exp[nNumber] 
	if ( (nt_getTask(1017) + cost) <= Limit_Exp) then
		nt_setTask(1017, nt_getTask(1017) + cost)
return 1 
else 
Say("Quan ti�p li�u # kh�ng mu�n nh?v�y tham lam , trong v�ng m�t tu�n l?kh�ng th?��i l�y v��t qua <color=red>"..Limit_Exp.."<color> t�ch ph�n ��ch kinh nghi�m tr?gi?", 0) 
return -1 
end 
end 

function nt_setTask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  c�ng b��c ��n kh�ch h�ng b�ng 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nhi�m v?tr�ng th�i 
function nt_getTask(nTaskID) 
return GetTask(nTaskID) 
end 

function person_change() 
Say("Quan ti�p li�u # ?<color=yellow> ��ng h�ng b�nh lu�n b�ng th��ng <color> ��ng h�ng <color=yellow> 5 t�n <color> th?nh�t nh?ch�i �em ��t ���c ��c bi�t danh hi�u c�ng uy phong h�nh t��ng ", 3,"Nh�n t�ng kim nam nh�n v�t h�nh t��ng /title_male","Nh�n t�ng kim n?nh�n v�t h�nh t��ng /title_female","Kh�ng mu�n xem !/no" ) 
end; 

function title_male() 
Describe("<link=image:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr> t�ng kim nam nh�n v�t h�nh t��ng <link> ?��ng h�ng b�ng tr�n c?5 c?t�n ��ch nam nh�n v�t b�nh lu�n �em ��t ���c t��ng �ng h�nh t��ng ", 1,"T�t /no" ); 
end 

function title_female() 
Describe("<link=image:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr> t�ng kim n?nh�n v�t h�nh t��ng <link> ?��ng h�ng b�ng tr�n c?5 c?t�n ��ch n?nh�n v�t b�nh lu�n �em ��t ���c t��ng �ng h�nh t��ng ", 1,"T�t /no" ); 
end 

function effect_aura() 
Say("Quan ti�p li�u # ?<color=yellow> ��ng h�ng b�nh lu�n b�ng th��ng <color> ��ng h�ng <color=yellow>5 t�n <color> ng��i th?nh�t v�t t��ng ��t ���c ��c bi�t v�ng tr�n ��c hi�u ", 6,"Nh�n ��nh n��c Nguy�n so�i ��c hi�u /aura_dingguo","Nh�n an bang ��i t��ng qu�n ��c hi�u /aura_anbang","Nh�n phi�u k?t��ng qu�n ��c hi�u /aura_biaoji","Nh�n trong ch�n v?l�m lang ��c hi�u /aura_yulin","Nh�n chi�u v?gi�o �y ��c hi�u /aura_zhaowu","Kh�ng mu�n xem !/no" ); 
end 

function aura_dingguo() 
Describe("<link=image:\\spr\\skill\\others\\title_dg.spr> ��nh n��c Nguy�n so�i ��c hi�u <link> nh�n v�t b�nh lu�n x�p h�ng th?nh�t n�i ��t ���c v�ng tr�n ��c hi�u ", 1,"T�t /no" ); 
end 

function aura_anbang() 
Describe("<link=image:\\spr\\skill\\others\\title_ab.spr> an bang ��i t��ng qu�n ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th?hai �em ��t ���c v�ng tr�n ��c hi�u ", 1,"T�t /no" ); 
end 

function aura_biaoji() 
Describe("<link=image:\\spr\\skill\\others\\title_bj.spr> phi�u k?t��ng qu�n ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th?ba n�i ��t ���c v�ng tr�n ��c hi�u ", 1,"T�t /no" ); 
end 

function aura_yulin() 
Describe("<link=image:\\spr\\skill\\others\\title_yl.spr> trong ch�n v?l�m lang ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th?t?n�i ��t ���c v�ng tr�n ��c hi�u ", 1,"T�t /no" ); 
end 

function aura_zhaowu() 
Describe("<link=image:\\spr\\skill\\others\\title_zw.spr> chi�u v?gi�o �y ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th?n�m n�i ��t ���c v�ng tr�n ��c hi�u ", 1,"T�t /no" ); 
end 

function yuewang_want() 
Say("Quan ti�p li�u # t?nh�c v��ng h�n chi th�ch trung ��ch tinh hoa ch?t�o ra nh�c v��ng ki�m , c�n ti�u hao "..YUEWANGHUN_STONECOUNT.." n�n nh�c v��ng h�n chi th�ch nh�t ��nh ph�i ��i ph�i kh�ng ?", 2,"Mu�n /yuewang_change","Ta nh�n l�i m�t ch�t /no") 
end 

function yuewang_change() 
Say("Quan ti�p li�u # nh�c v��ng ki�m chi�m d�ng trang b?��ch kh�ng gian v?<color=yellow>6 (2 X 3)<color> ch?tr�ng , ng��i x�c ��nh trang b?trong c�n c?ch?tr�ng sao ", 2,"Mu�n /yuewang_sure","�� cho ta an b�i tr��c m�t c�i trang b?#/no") 
end 

function yuewang_sure() 
if (CalcEquiproomItemCount(4, 507, 1, -1) >= YUEWANGHUN_STONECOUNT) then 
ConsumeEquiproomItem(YUEWANGHUN_STONECOUNT, 4, 507, 1, -1) 
AddEventItem(195) 
Say("Quan ti�p li�u # c�i n�y nh�c v��ng ki�m r�t tr�n qu?, ng��i mu�n hi�u d�ng h�o n?nga !", 0) 
Msg2Player("Ta ��t ���c nh�c v��ng ki�m ") 
else 
Say("Quan ti�p li�u # ng��i kh�ng c?r�t nhi�u nh�c v��ng h�n chi th�ch , mau ki�m tra m�t c�i # nh�c v��ng ki�m kh�ng ph�i ai c�ng c?th?c?.", 0) 
end 
end 

function ore() 
Sale( 102, 4); 
end 

function goldenitem_menu() 
Sale( 103, 4); 
end 
