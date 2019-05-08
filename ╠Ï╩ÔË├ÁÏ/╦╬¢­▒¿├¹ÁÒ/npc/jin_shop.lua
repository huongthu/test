
-- script viet hoa By http://tranhba.com  t鑞g kim ghi danh 甶觤 kim qu﹏ quan ti誴 li謚 
-- script viet hoa By http://tranhba.com  lixin 2004-12-13 
IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\global\\特殊用地\\宋金报名点\\npc\\head.lua")
Include("\\script\\global\\特殊用地\\宋金报名点\\npc\\songjin_shophead.lua")

Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")

-- script viet hoa By http://tranhba.com # 甶襲 ch豱h i l蕐 t輈h ph﹏ l骳 ch kinh nghi謒 tr?gi?h筺 ch?- Modified by DinhHQ - 20110810 
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

-- script viet hoa By http://tranhba.com  trc m苩 kh玭g c?b蕋 k?chi課 d辌h nh vang 
if (battlemapid <= 0) then 
maintalk() 
return 
end 
SyncTaskValue(747);-- script viet hoa By http://tranhba.com  c飊g bc nh?ch琲 ch t鎛g t輈h ph﹏ cho kh竎h h祅g b璶g , d飊g cho t輈h ph﹏ mua ch鴆 n╪g 
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
Talk(1,"","Quan ti誴 li謚 # ph輆 trc chi課 trng 產ng k辌h li謙 chi課 u , c竎 v?c莕 t筸 th阨 tr竛h n?m閠 c竔 !") 
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

-- script viet hoa By http://tranhba.com str1 = " kim qu﹏ quan ti誴 li謚 # kim qu鑓 ch c竎 d騨g s?, ngi n誹 hng 鴑g ta ch?hi謚 tri謚 , tham gia ta kim qu鑓 di謙 t鑞g i qu﹏ , li襫 c?th??ch?n祔 c馻 ta d飊g t鑞g kim t輈h ph﹏ <color=yellow> i h鋍 h醝 kinh nghi謒 nghi謒 # nh筩 vng h錸 chi th筩h <color> , c遪 c?th?mua <color=yellow> t鑞g kim chuy猲 d鬾g o c?<color> . " 
-- script viet hoa By http://tranhba.com str2 = " n誹 nh?, ngi c?nh筩 vng h錸 chi th筩h l阨 c馻 , c遪 c?th??ch?n祔 c馻 ta luy謓 t筼 nh筩 vng ki誱 nga #" 
function maintalk() 
-- script viet hoa By http://tranhba.com Say(str1..str2.." ngi c?<color=yellow>"..nt_getTask(747).."<color> t鎛g t輈h ph﹏ , c?g?c莕 sao ? ", 8,"Ta mu鑞 mua t鑞g kim o c?/jinshop_sell","Ta mu鑞 d飊g t鑞g kim t輈h ph﹏ i h鋍 h醝 kinh nghi謒 nghi謒 /exp_exchange","Xem m閠 ch髏 t鑞g kim nh gi?danh hi謚 - c th?h譶h tng /person_change","Xem m閠 ch髏 t鑞g kim nh gi?danh hi謚 - c hi謚 h祇 quang /effect_aura","D飊g nh筩 vng h錸 chi th筩h luy謓 t筼 nh筩 vng ki誱 /yuewang_want","Mua ho祅g kim  ph?/goldenitem_menu","Mua huy襫 tinh qu竛g th筩h c飊g thu閏 t輓h qu竛g th筩h /ore","Ta suy ngh?m閠 ch髏 n鱝 /no"); 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog) 
-- script viet hoa By http://tranhba.com  b緉 ra i tho筰 khu玭g 

tbDailog.szTitleMsg = " quan ti誴 li謚 # ngi c莕 ta gi髉 c竔 g??" 
tbDailog:AddOptEntry("Ta mu鑞 mua o c?", jinshop_sell) 
tbDailog:AddOptEntry("Ta mu鑞 i h鋍 h醝 kinh nghi謒 nghi謒 tr?gi?", exp_exchange) 
tbDailog:AddOptEntry("S?d鬾g nh筩 vng h錸 chi th筩h luy謓 nh筩 vng ki誱 ", yuewang_want) 
tbDailog:AddOptEntry("V?song m穘h tng chi課 trng ",wushuangmengjiang)-- script viet hoa By http://tranhba.com  v?song m穘h tng 
tbDailog:AddOptEntry("Tinh luy謓 th筩h c鯽 h祅g ", energy_sale); 
tbDailog:AddOptEntry("фi l蕐 b?b秓 ", duihuangmibao) 
-- script viet hoa By http://tranhba.com  t筸 th阨 t総 ki誱 m?m?cung - Modified by DinhHQ - 20110810 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("D飊g nh筩 vng h錸 chi th筩h i l蕐 ng鋍 long anh h飊g thi誴 ", talk_yulongtie) 

tbDailog:Show() 
end 

function xunzhang_exchange() 
if( GetLevel() < 40 ) then 
Talk( 1, "","Quan ti誴 li謚 # ch?c?50 c蕄 tr?l猲 nh?ch琲 m韎 c?th?nh薾 l蕐 huy chng "); 
return 0 
elseif ( GetExtPoint(0)==0 ) then 
Talk( 1, "","Quan ti誴 li謚 # ch?c? sung tr?gi?nh?ch琲 m韎 c?th?nh薾 l蕐 huy chng "); 
return 0 
elseif ( CalcFreeItemCellCount() < 1 ) then 
Talk( 1, "","Xin/m阨 chu萵 b?m閠 ch?tr鑞g t韎  1 c?huy chng "); 
return 0; 
else 
Say("Quan ti誴 li謚 # ngi ngh?d飊g 500 t輈h ph﹏ i l蕐 huy chng sao ?", 2,"фi l蕐 huy chng /xunzhang_do","Trc m総 kh玭g mu鑞 i l蕐 /no"); 
end 
end 

function xunzhang_do() 
if nt_getTask(747) < 500 then 
Say("# t輈h ph﹏ ch璦  500 , kh玭g th?nh薾 l蕐 huy chng ",0); 
return 0; 
end 
nt_setTask(747, floor(nt_getTask(747) - 500)); 
local nidx = AddItem(6,1,1412,1,0,0) -- script viet hoa By http://tranhba.com  t 頲 t鑞g kim huy chng 
WriteLog(format("[GetZhanGongXunZhang]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s Del:500SongJinJiFen\t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nidx))); 
Say("Х th祅h c玭g nh薾 l蕐 m閠 huy chng ",0); 
end 

function exp_exchange() 
-- script viet hoa By http://tranhba.com Say("V鑞 ch鴆 n╪g t筸 kh玭g ra  , k輓h xin mong i #", 0 ) 
if( GetLevel() < 40 ) then 
Talk( 1, "","Quan ti誴 li謚 # ngi kh玭g c?t t韎 40 c蕄 , kh玭g th?tham gia phong v﹏ lu薾 ki誱 , t筰 sao c?th?d飊g t輈h ph﹏ i h鋍 h醝 kinh nghi謒 nghi謒 tr?gi??"); 
else 
if (GetTiredDegree() == 2) then 
Say("Quan ti誴 li謚 # 產ng ng ?m謙 nh鋍 tr筺g th竔 , kh玭g th?i h鋍 h醝 kinh nghi謒 nghi謒 tr?gi?.",0); 
else 
local tbOpt = 
{ 
"500 t輈h ph﹏ /#wantpay(500)", 
"1000 t輈h ph﹏ /#wantpay(1000)", 
"2000 t輈h ph﹏ /#wantpay(2000)", 
"5000 t輈h ph﹏ /#wantpay(5000)", 
" t蕋 c?t輈h ph﹏ /#wantpay(9999)", 
" b﹜ gi?kh玭g mu鑞 i l蕐 /no" 
} 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 
local nHM = tonumber(GetLocalDate("%%H%M")) 


if 20090925 <= nDate and nDate <= 20091101 then 
-- script viet hoa By http://tranhba.com  tinsert(tbOpt, 5, format("%d 甶觤 t輈h ph﹏ /#wantpayex(%d,%d)",80000,80000,0)) 
end 
-- script viet hoa By http://tranhba.com  ho箃 ng trong l骳 (2009/09/25 t韎 2009/11/01) t?12h30 t韎 23h30 

Say("Quan ti誴 li謚 # ngi ngh?ti猽 hao bao nhi猽 t輈h ph﹏ t韎 nh薾 l蕐 kinh nghi謒 tr?gi??", getn(tbOpt), tbOpt); 
end; 
end 
end; 


function wantpayex(mark, nStep) 

if GetLevel() < 120 then 
Talk(1, "", format("Y猽 c莡 c莕 %d c蕄 tr?l猲 m韎 c?th?i l蕐 .", 120)) 
return 
end 

if PlayerFunLib:CheckTaskDaily(2645, 1,"N猲 tng thng m鏸 ng祔 ch?c?th?nh薾 l蕐 m閠 l莕 .", "<") ~= 1 then 
return 
end 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 

if gb_GetTask("songjin butianshi2009", 1) ~= nDate then 
gb_SetTask("songjin butianshi2009", 1, nDate) 
gb_SetTask("songjin butianshi2009", 2, 0) 
end 

if gb_GetTask("songjin butianshi2009", 2) >= 10 then 
Talk(1, "","M鏸 ng祔 m鏸 ph鬰 v?kh?, nhanh nh蕋 mi ngi m韎 c?th?i l蕐 n猲 tng thng .") 
return 
end 

if( mark > nt_getTask(747) ) then 
Say("Quan ti誴 li謚 # ng礽 ch t輈h ph﹏ ch璦  , mu鑞 t 頲 kinh nghi謒 tr?gi?.", 1,"T総 /no"); 
elseif (mark == 0) then 
Say("Quan ti誴 li謚 # kh玭g c?kinh nghi謒 tr?gi?c遪 mu鑞 i h鋍 h醝 kinh nghi謒 nghi謒 tr?gi?a , th藅 l?hoang 阯g .", 1,"T総 /no"); 
else 
local level = GetLevel(); 
local bonus = bt_exchangeexp(level, mark) 

local tbItem = {szName=" b?ng祔  b?phi課 ( trung )", tbProp={6, 1, 1309, 1, 0, 0}} 
if nStep == 1 then 
if (expchange_limit(mark) == 1) then 
nt_setTask(747, floor(nt_getTask(747) - mark)) 
AddOwnExp( bonus); 
Add120SkillExp(bonus); 

tbAwardTemplet:GiveAwardByList(tbItem, "MidAutumn,GetItemFromSongjin") 
gb_AppendTask("songjin butianshi2009", 2, 1) 
PlayerFunLib:AddTaskDaily(2645, 1) 
Msg2Player("<#> ng礽  ti猽 hao "..mark.."<#> t輈h ph﹏ , i l蕐 "..bonus .."<#> kinh nghi謒 tr?gi?."); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]:  ti猽 hao "..mark.." t輈h ph﹏ , i l蕐 "..bonus.." kinh nghi謒 tr?gi?."); 
end 



elseif nStep == 0 then 
Say("Quan ti誴 li謚 # ng礽 c?th?i l蕐 "..bonus.."# kinh nghi謒 tr?gi?, x竎 nh i l蕐 ph秈 kh玭g ?", 2,"цi v韎 , ta ph秈 thay i /#wantpayex("..mark..",1"..")", " ?d?,  cho ta suy ngh?l筰 m閠 ch髏 !/no") 
end 

end 
end 

function wantpay(mark) 
if (mark == 9999) then -- script viet hoa By http://tranhba.com  i l蕐 t蕋 c?t輈h ph﹏ 
mark = nt_getTask(747) 
end 

if( mark > nt_getTask(747) ) then 
Say("Quan ti誴 li謚 # ng礽 ch t輈h ph﹏ ch璦  , mu鑞 t 頲 kinh nghi謒 tr?gi?", 1,"T総 /no"); 
elseif (mark == 0) then 
Say("Quan ti誴 li謚 # kh玭g c?t輈h ph﹏ c遪 mu鑞 i kinh nghi謒 tr?gi?a , th藅 l?hoang 阯g .", 1,"T総 /no"); 
else 
local level = GetLevel(); 
local bonus = bt_exchangeexp(level, mark) 
Say("Quan ti誴 li謚 # ng礽 c?th?i ph秈 "..bonus.." kinh nghi謒 tr?gi?, x竎 nh i l蕐 sao ?", 2,"цi v韎 , ta c莕 i l蕐 /#paymark("..mark..")", " ?d?,  cho ta suy ngh?l筰 m閠 ch髏 !/no") 
end 
end 

function paymark(mark) 
if (mark == 9999) then -- script viet hoa By http://tranhba.com  i l蕐 t蕋 c?t輈h ph﹏ 
mark = nt_getTask(747) 
end 

if( mark > nt_getTask(747) ) then 
Say("Quan ti誴 li謚 # ng礽 ch t輈h ph﹏ kh玭g  , mu鑞 t 頲 kinh nghi謒 tr?gi?", 1,"T総 /no"); 
elseif (mark == 0) then 
Say("Quan ti誴 li謚 # kh玭g c?t輈h ph﹏ c遪 mu鑞 i kinh nghi謒 tr?gi?a , th藅 l?hoang 阯g .", 1,"T総 /no"); 
else 
local level = GetLevel(); 
local bonus = bt_exchangeexp(level, mark) 
if (expchange_limit(mark) == 1) then 
nt_setTask(747, floor(nt_getTask(747) - mark)) 
AddOwnExp( bonus); 
Add120SkillExp(bonus); 
Msg2Player("<#> ng礽  ti猽 hao "..mark.."<#> t輈h ph﹏ , i ph秈 "..bonus .."<#> kinh nghi謒 tr?gi?."); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]:  ti猽 hao "..mark.." t輈h ph﹏ , i ph秈 "..bonus.." kinh nghi謒 tr?gi?."); 
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
Say("Quan ti誴 li謚 # kh玭g mu鑞 nh?v藋 tham lam , trong v遪g m閠 tu莕 l?kh玭g th?i l蕐 vt qua <color=red>"..Limit_Exp.."<color> t輈h ph﹏ ch kinh nghi謒 tr?gi?", 0) 
return -1 
end 
end 

function nt_setTask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  c飊g bc n kh竎h h祅g b璶g 
end 

-- script viet hoa By http://tranhba.com  l蕐 頲 nhi謒 v?tr筺g th竔 
function nt_getTask(nTaskID) 
return GetTask(nTaskID) 
end 

function person_change() 
Say("Quan ti誴 li謚 # ?<color=yellow> ng h祅g b譶h lu薾 b秐g thng <color> ng h祅g <color=yellow> 5 t猲 <color> th?nh蕋 nh?ch琲 甧m t 頲 c bi謙 danh hi謚 c飊g uy phong h譶h tng ", 3,"Nh譶 t鑞g kim nam nh﹏ v藅 h譶h tng /title_male","Nh譶 t鑞g kim n?nh﹏ v藅 h譶h tng /title_female","Kh玭g mu鑞 xem !/no" ) 
end; 

function title_male() 
Describe("<link=image:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr> t鑞g kim nam nh﹏ v藅 h譶h tng <link> ?ng h祅g b秐g tr猲 c?5 c?t猲 ch nam nh﹏ v藅 b譶h lu薾 甧m t 頲 tng 鴑g h譶h tng ", 1,"T総 /no" ); 
end 

function title_female() 
Describe("<link=image:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr> t鑞g kim n?nh﹏ v藅 h譶h tng <link> ?ng h祅g b秐g tr猲 c?5 c?t猲 ch n?nh﹏ v藅 b譶h lu薾 甧m t 頲 tng 鴑g h譶h tng ", 1,"T総 /no" ); 
end 

function effect_aura() 
Say("Quan ti誴 li謚 # ?<color=yellow> ng h祅g b譶h lu薾 b秐g thng <color> ng h祅g <color=yellow>5 t猲 <color> ngi th?nh蕋 v藅 tng t 頲 c bi謙 v遪g tr遪 c hi謚 ", 6,"Nh譶 nh nc Nguy猲 so竔 c hi謚 /aura_dingguo","Nh譶 an bang Чi tng qu﹏ c hi謚 /aura_anbang","Nh譶 phi猽 k?tng qu﹏ c hi謚 /aura_biaoji","Nh譶 trong ch鑞 v?l﹎ lang c hi謚 /aura_yulin","Nh譶 chi猽 v?gi竜 髖 c hi謚 /aura_zhaowu","Kh玭g mu鑞 xem !/no" ); 
end 

function aura_dingguo() 
Describe("<link=image:\\spr\\skill\\others\\title_dg.spr> nh nc Nguy猲 so竔 c hi謚 <link> nh﹏ v藅 b譶h lu薾 x誴 h祅g th?nh蕋 n鉯 t 頲 v遪g tr遪 c hi謚 ", 1,"T総 /no" ); 
end 

function aura_anbang() 
Describe("<link=image:\\spr\\skill\\others\\title_ab.spr> an bang Чi tng qu﹏ c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th?hai 甧m t 頲 v遪g tr遪 c hi謚 ", 1,"T総 /no" ); 
end 

function aura_biaoji() 
Describe("<link=image:\\spr\\skill\\others\\title_bj.spr> phi猽 k?tng qu﹏ c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th?ba n鉯 t 頲 v遪g tr遪 c hi謚 ", 1,"T総 /no" ); 
end 

function aura_yulin() 
Describe("<link=image:\\spr\\skill\\others\\title_yl.spr> trong ch鑞 v?l﹎ lang c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th?t?n鉯 t 頲 v遪g tr遪 c hi謚 ", 1,"T総 /no" ); 
end 

function aura_zhaowu() 
Describe("<link=image:\\spr\\skill\\others\\title_zw.spr> chi猽 v?gi竜 髖 c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th?n╩ n鉯 t 頲 v遪g tr遪 c hi謚 ", 1,"T総 /no" ); 
end 

function yuewang_want() 
Say("Quan ti誴 li謚 # t?nh筩 vng h錸 chi th筩h trung ch tinh hoa ch?t筼 ra nh筩 vng ki誱 , c莕 ti猽 hao "..YUEWANGHUN_STONECOUNT.." n猲 nh筩 vng h錸 chi th筩h nh蕋 nh ph秈 i ph秈 kh玭g ?", 2,"Mu鑞 /yuewang_change","Ta nh譶 l筰 m閠 ch髏 /no") 
end 

function yuewang_change() 
Say("Quan ti誴 li謚 # nh筩 vng ki誱 chi誱 d鬾g trang b?ch kh玭g gian v?<color=yellow>6 (2 X 3)<color> ch?tr鑞g , ngi x竎 nh trang b?trong c遪 c?ch?tr鑞g sao ", 2,"Mu鑞 /yuewang_sure","в cho ta an b礽 trc m閠 c竔 trang b?#/no") 
end 

function yuewang_sure() 
if (CalcEquiproomItemCount(4, 507, 1, -1) >= YUEWANGHUN_STONECOUNT) then 
ConsumeEquiproomItem(YUEWANGHUN_STONECOUNT, 4, 507, 1, -1) 
AddEventItem(195) 
Say("Quan ti誴 li謚 # c竔 n祔 nh筩 vng ki誱 r蕋 tr﹏ qu?, ngi mu鑞 hi觰 d飊g h秓 n?nga !", 0) 
Msg2Player("Ta t 頲 nh筩 vng ki誱 ") 
else 
Say("Quan ti誴 li謚 # ngi kh玭g c?r蕋 nhi襲 nh筩 vng h錸 chi th筩h , mau ki觤 tra m閠 c竔 # nh筩 vng ki誱 kh玭g ph秈 ai c騨g c?th?c?.", 0) 
end 
end 

function ore() 
Sale( 102, 4); 
end 

function goldenitem_menu() 
Sale( 103, 4); 
end 
