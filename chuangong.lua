Include([[\script\global\特殊用地\梦境\npc\路人_叛僧.lua]])
Include("\\script\\item\\levelup_item.lua") 
Include("\\script\\global\\head_qianzhuang.lua") 
Include("\\script\\global\\systemconfig.lua") 
IncludeLib("SETTING") 

TBMONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31} 
strimg = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr> c c� ki誱 :<link>" 
function cg_getnextdate(oldday, num) -- script viet hoa By http://tranhba.com  t 頲 oldday ch th� num ng祔 ch nh藅 k� , t� nh� 060227 ch th� 5 ng祔 v� 060304 
local nDay = tonumber(oldday) 
local nYear = floor(nDay / 10000) 
local nMonth = floor((nDay - nYear * 10000) / 100) 
nDay = nDay - nYear * 10000 - nMonth * 100 
	nDay = nDay + num

while (nDay > TBMONTH[nMonth]) do 
nDay = nDay - TBMONTH[nMonth] 
if (nMonth == 12) then 
nMonth = 1 
			nYear = nYear + 1
else 
			nMonth = nMonth + 1
end 
end 
	return (nYear * 10000 + nMonth * 100 + nDay)
end 

function chuangong_main() 
-- script viet hoa By http://tranhba.com  VN_MODIFY_20060427 
if (1) then 
Say("S� li謚 sai l莔 .", 0) 
return 
end 

if (gb_GetModule("Truy襫 c玭g ") ~= 1) then 
Say("Th藅 xin l鏸 , truy襫 c玭g ch鴆 n╪g t筸 th阨 t総 , l莕 n鱝 m� ra th阨 gian li襫 ch� � quan phng th玭g b竜 !", 0) 
return 
end 
if (GetTask(TV_LAST_APPLY_TIME) > 0) then 
Say("чc c� ki誱 #"..GetName().."  l﹗ kh玭g g苝 , h玬 nay t譵 ta c� chuy謓 g� ? ",3,"Ta mu鑞 h醝 th╩ li猲 quan t韎 truy襫 c玭g chuy謓 c馻 t譶h . /chuangong_info","Ta mu鑞 h駓 b� l莕 trc ch truy襫 c玭g th﹏ th豱h !/cg_undo","Ta ch糿g qua l� t韎 b竔 ph醤g m閠 c竔 minh ch� ngi m� th玦 . /OnCancel") 
else 
Say("чc c� ki誱 #"..GetName().."  l﹗ kh玭g g苝 , h玬 nay t譵 ta c� chuy謓 g� ? ",2,"Ta mu鑞 h醝 th╩ li猲 quan t韎 truy襫 c玭g chuy謓 c馻 t譶h . /chuangong_info","Ta ch糿g qua l� t韎 b竔 ph醤g m閠 c竔 minh ch� ngi m� th玦 . /OnCancel") 
end 
end 

function chuangong_info() 
if (gb_GetModule("Truy襫 c玭g ") ~= 1) then 
Say("Th藅 xin l鏸 , truy襫 c玭g ch鴆 n╪g t筸 th阨 t総 , l莕 n鱝 m� ra th阨 gian li襫 ch� � quan phng th玭g b竜 !", 0) 
return 
end 
local nowday = tonumber(date("%y%m%d")) 
local applytime = GetTask(TV_LAST_APPLY_TIME) 
if (applytime == 0) then 
Describe(strimg.." ph祄 l� du l辌h giang h�  l﹗ , c蕄 b薱 t� 100 c蕄 n 160 c蕄 ngi c馻 , ta c騨g c� th� gi髉 h緉 甧m m閠 th﹏ c玭g l鵦 chuy觧 th祅h m閠 vi猲 ' nguy猲 th莕 產n ' , m閠 10 c蕄 tr� xu鑞g kh玭g c� v祇 m玭 ph竔 l筰 kh玭g b竔 s� ngi c馻 ch� c莕 ╪ r錳 vi猲 n祔 ' nguy猲 th莕 產n ' li襫 c� th� t 頲 truy襫 c玭g ngi m閠 th﹏ c玭g l鵦 , d� nhi猲 m閠 truy謓 ho祅 c玭g ngi c馻 v� c玭g c騨g kh玭g v� ph莕 to祅 ph� , b蕋 qu� c騨g li襫 c遪 d� l筰 80 c蕄 ch t礽 ngh� . h琻 n鱝 n╪g l鵦 ta c� h筺 , c蕄 b薱 c祅g cao ngi c馻 c祅g kh� 甧m v� c玭g chuy觧 h鉧 th祅h ' nguy猲 th莕 產n ' , t� nh� m閠 100~120 ngi c馻 v藅 truy襫 c玭g l骳 kinh nghi謒 s� hao t鎛 5% , 121~150 c蕄 s� hao t鎛 10% , m� 150 c蕄 tr� l猲 s� hao t鎛 20% , <color=yellow> h醝 th╩ nh鱪g th� n祔 ch糿g l� huynh  ngi ngh� truy襫 c玭g ? <color>", 2,"ng v藋 , ta  du l辌h giang h�  l﹗ , g莕 nh蕋 mu鑞 tho竔 萵 . /chuangong_do","D� nhi猲 kh玭g ph秈 , ch糿g qua l� t韎 h醝 th╩ m閠 ch髏 m� th玦 . /OnCancel"); 
elseif (nowday >= applytime ) then 
Describe(strimg.." truy襫 c玭g ch chu萵 b�  t鑤 l緈 ."..itemstr..".\n ngi nh蕋 nh ph秈 truy襫 c玭g sao ? c竔 n祔 m閠 truy謓 coi nh� kh玭g th� quay u l筰 a #<enter>6 th竛g 20 ng祔 sau 甧m t筸 th阨 t総 truy襫 c玭g th﹏ th豱h , 6 th竛g 29 ng祔 24#00 sau 甧m t筸 th阨 t総 truy襫 c玭g ch鴆 n╪g . ", 3,"ng v藋 , l遪g ta �  quy誸 . /chuangong_dosure","Kh玭g , ta mu鑞 h駓 b� truy襫 c玭g #/cg_undo","Ch� ta suy ngh� th猰 m閠 畂筺 ng祔 甶 . /OnCancel"); 
else 
Describe(strimg.." ta 產ng chu萵 b� truy襫 c玭g c莕 thi誸 ch t礽 li謚 , ta ph秈 "..(num2datestr(applytime)).." sau m韎 c� th� chu萵 b� xong #,", 2,"Th藅 l� phi襫 to竔 minh ch� li評 , v穘 b鑙 � ch� n祔 c竚 琻 #/OnCancel","Kh玭g , ta mu鑞 h駓 b� truy襫 c玭g #/cg_undo"); 
end 
end 



function num2datestr(nday) 
	local year = floor(nday / 10000) + 2000
local month = mod( floor(nday / 100) , 100) 
local day = mod(nday, 100) 
return year.." n╩ "..month.." th竛g "..day.." ng祔 " 
end 

function cg_undo() 
local nowday = GetTask(TV_LAST_APPLY_TIME) 
if (nowday > 0) then 
Describe(strimg.." ta n "..num2datestr(nowday).." li襫 c� th� chu萵 b� xong gi髉 ngi truy襫 c玭g li評 , ngi th藅 kh玭g mu鑞 truy謓 sao ? <enter>6 th竛g 20 ng祔 sau 甧m t筸 th阨 t総 truy襫 c玭g th﹏ th豱h , 6 th竛g 29 ng祔 24#00 sau 甧m t筸 th阨 t総 truy襫 c玭g ch鴆 n╪g . ",2,"ng v藋 , ta kh玭g mu鑞 truy襫 c玭g li評 #/cg_undo_sure","Kh玭g , ta c遪 l� mu鑞 truy謓 , m韎 v鮝 r錳 nh蕋 th阨 kh萵 trng n鉯 sai r錳 m� th玦 . /OnCancel") 
else 
Describe(strimg.." ngi kh玭g c�  n鉯 v韎 ta mu鑞 truy襫 c玭g a . ch璦 n鉯 qua nh� th� n祇 h駓 b� y ? ",1,"K誸 th骳 i tho筰 /OnCancel") 
end 
end 

function cg_undo_sure() 
SetTask(TV_LAST_APPLY_TIME, 0) 
Describe(strimg.." 頲 r錳 , v藋 nh鱪g th� n祔 t礽 li謚 ta trc thu l筰 , n誹 nh� l莕 sau mu鑞 truy謓 l阨 c馻 n鱝 chu萵 b� 甶 #",1,"C竚 琻 minh ch� #/OnCancel") 
end 

function chuangong_do() 
local nEndLevel = GetLevel() 
local nRestExp = GetExp() 
if (nEndLevel < 100) then 
Describe(strimg.." a a , v� ti觰 huynh  n祔 , l蕐 ngi b﹜ gi� ch c玭g l鵦 t鵤 h� c遪 ch璦   l蕐 truy襫 cho ngi kh竎 u . truy襫 c玭g c莕 <color=yellow>100 c蕄 <color> tr� l猲 , ngi hay l� 甶 nhi襲 ma luy謓 ma luy謓 甶 . ",1,"H秓 ta bi誸 #/OnCancel") 
return 
end 
if (nEndLevel >= 160) then 
Describe(strimg.." a a , v� huynh  n祔 , vt qua 160 c蕄 tr� l猲 l� kh玭g th� truy襫 c玭g ch . ",1,"H秓 ta bi誸 #/OnCancel") 
return 
end 

	local nLevelFullExp = tonumber(GetTabFileData(FILE_LEVEL, nEndLevel+ 1, 2))
	local fPerc = format("%.2f", (nEndLevel)+(nRestExp/nLevelFullExp))

local str = strimg.." l蕐 ngi b﹜ gi� ch v� c玭g tu vi , n誹 nh� truy襫 c玭g l阨 c馻 甧m chuy觧 h鉧 th祅h m閠 <color=yellow> c蕄 b薱 :"..fPerc.."<color> ch nguy猲 th莕 產n " 
str = str..client_main(nEndLevel, nRestExp) 
Describe(str..", b蕋 qu� ta c莕 chu萵 b� m閠 tu莕 l� , ngi � y 畂筺 trong l骳 t飝 th阨 c� th� t韎 h駓 b� truy襫 c玭g , d� sao m閠 ngi luy謓 v� n c竔 tr譶h  n祔 kh玭g d� d祅g , m阨/xin ngi � n琲 n祔 畂筺 th阨 gian suy ngh� th藅 k� c﹏ nh綾 甶 ",2,"Minh ch� , ta  quy誸 t﹎ quy 萵 , ng礽 c� th� b総 u chu萵 b� #/chuangong_doprepair1","Nh� v藋 a , v藋 ta suy ngh� m閠 ch髏 n鱝 tr� l筰 甶 . /OnCancel") 
end 

function chuangong_doprepair1() 
local nowday = tonumber(date("%y%m%d")) 
local nextday = cg_getnextdate(nowday, 7) 
SetTask(TV_LAST_APPLY_TIME , nextday); 
WriteLog("[ truy襫 c玭g ]#"..nowday.." Acc:"..GetAccount().."Role:"..GetName().." n鉯 l猲 truy襫 c玭g th﹏ th豱h #") 
Describe(strimg.." h秓 # v藋 ta l藀 t鴆 chu萵 b� ngi truy襫 c玭g s� nghi , m閠 tu莕 l� sau <color=yellow>"..num2datestr(nextday).."<color> ngi tr� l筰 , ta cho ngi ch輓h th鴆 truy襫 c玭g # d� nhi猲 ngi c騨g t飝 th阨 c� th� t韎 ta ch� n祔 h駓 b� truy襫 c玭g . ", 1,"C竚 琻 minh ch� , v藋 ta m閠 tu莕 l� sau tr� l筰 #/OnCancel") 
Msg2Player("Ngi  th祅h c玭g th﹏ th豱h truy襫 c玭g , m閠 tu莕 l� sau tr� l筰 t譵 c c� ki誱 c� th� ch輓h th鴆 ti課 h祅h truy襫 c玭g , c騨g t 頲 nguy猲 th莕 產n # c騨g c� th� t飝 th阨 t譵 c c� ki誱 h駓 b� truy襫 c玭g th﹏ th豱h #") 
end 

function chuangong_dosure() 
if (GetLevel() < 100 or GetLevel() >= 160) then 
Say("C蕄 b薱 c馻 ngi 輙 h琻 100 c蕄 ho芻 vt qua 160 c蕄 kh玭g th� truy襫 c玭g #",0) 
return 
end 
if (CalcItemCount(2,0,-1,-1,-1) > 0) then 
Say("Th藅 xin l鏸 , truy襫 c玭g l骳 , tr猲 ngi kh玭g th� gi� b� b蕋 k� ch trang b� , xin/m阨 c雐 xu鑞g trang b� n鱝 truy襫 c玭g 甶 #",0) 
return 
end 
Describe(strimg.." truy襫 c玭g c莕 tr� 2 t蕀 ng﹏ phi誹 , ngi c� hay kh玭g  b� v祇 t骾 甧o l璶g ? l骳 n祔 th藅 ph秈 h琻 truy襫 c玭g li評 , ngi nh蕋 nh ph秈 truy襫 c玭g sao ? ",2, "2 t蕀 ng﹏ phi誹  chu萵 b� xong , x竎 nh #/chuangong_doit1","Ta suy ngh� th猰 m閠 ch髏 /OnCancel") 
end 

function chuangong_doit1() 
if (GetLevel() < 100 or GetLevel() >= 160) then 
Say("C蕄 b薱 c馻 ngi 輙 h琻 100 c蕄 ho芻 vt qua 160 c蕄 kh玭g th� truy襫 c玭g #",0) 
return 
end 
Describe(strimg.." n鱝 x竎 nh m閠 l莕 # ch� � # truy襫 c玭g sau khi ho祅 th祅h , ngi vai tr� s� t� ng 畂筺 tuy課 . l莕 n鱝 ng v祇 sau , � l璶g trong t骾 x竎h t鴆 s� t錸 t筰 nguy猲 th莕 產n m閠 qu� . ",2,"X竎 nh #/chuangong_doit","Ta suy ngh� th猰 m閠 ch髏 /OnCancel") 
end 

function chuangong_doit() 
if (GetLevel() < 100 or GetLevel() >= 160) then 
Say("C蕄 b薱 c馻 ngi 輙 h琻 100 c蕄 ho芻 vt qua 160 c蕄 kh玭g th� truy襫 c玭g #",0) 
return 
end 
local result = qz_use_silver(2, "# truy襫 c玭g #") 
if ( result == 0) then 
Describe(strimg.." l璶g c馻 ngi trong t骾 x竎h kh玭g c� 2 t蕀 ng﹏ phi誹 , ta kh玭g th� cho ngi truy襫 c玭g #", 1,"Oh , th藅 xin l鏸 , ta tr� v� chu萵 b� /OnCancel") 
return 
elseif (result ~= 1) then 
return 
end 
SetTask(TV_LAST_APPLY_TIME, 0) 

local nowday = tonumber(date("%y%m%d")) 

local logstr = "[ truy襫 c玭g ]#"..nowday.." Acc:"..GetAccount().."Role:"..GetName().." truy襫 c玭g th祅h c玭g #Level:"..GetLevel().." Exp:"..GetExp(); 


DoClearSkillCore() 
DoClearPropCore() 
UpdateSkill() 
local endlevel = GetLevel() 
local restexp = GetExp() 

ST_LevelUp(80 - endlevel) 
local param5 = chuangong_item(endlevel, restexp) 
logstr = logstr.." ItemParam5:"..param5 
WriteLog(logstr) 
end 

function chuangong_item(level,restexp) 
if (restexp <0) then 
restexp = 0 
end 

nIt = AddItem(6,1,1061,1,0,0,0) 
SetItemMagicLevel(nIt, 1, level) 
SetItemMagicLevel(nIt, 2, restexp) 

m1 = GetByte(restexp, 3) 
m2 = GetByte(restexp, 4) 
m = m1 
m = SetByte(m1, 2, m2) 

n1 = SetByte(restexp, 3,0) 
n = SetByte(n1, 4, 0) 

SetItemMagicLevel(nIt, 3, m) 
SetItemMagicLevel(nIt, 4, n) 
SetItemMagicLevel(nIt, 5, FileName2Id(GetName())) 
SyncItem(nIt) 
return GetItemParam(nIt, 5) 
end 

function OnCancel() 
end
