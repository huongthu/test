IncludeLib("BATTLE") 
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\lib\\awardtemplet.lua")

function cutdowntimefix(nWeekDay, nDay, nMonth, nYear, nMonthDay) 
if nDay > nMonthDay then 
nDay = nDay - nMonthDay 
		nMonth = nMonth + 1
if nMonth > 12 then 
nMonth = 1 
			nYear = nYear + 1
end 
end 
return nDay, nMonth, nYear 
end 

function getcutdowntime(nWeekDay, nCurTime) 
-- script viet hoa By http://tranhba.com  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 
local tbMonthDay = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31} 
local nTmp = nCurTime 
local nYear = floor(nTmp/100000000) 
nTmp = mod(nTmp, 100000000) 
local nMonth = floor(nTmp/1000000) 
nTmp = mod(nTmp, 1000000) 
local nDay = floor(nTmp/10000) 
nTmp = mod(nTmp, 10000) 
local nHour = floor(nTmp/100) 
nTmp = mod(nTmp, 100) 
local nMinute = nTmp; 
if ((0 == mod(nYear, 4)) and (0 ~= mod(nYear, 100))) or (0 == mod(nYear, 400)) then 
		tbMonthDay[2] = tbMonthDay[2] + 1
end 
if nWeekDay > 0 then 
		nDay = nDay + 7 - nWeekDay
nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth]) 
else 
if nHour < 23 then 
else 
			nDay = nDay + 7
nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth]) 
end 
end 
local nResult = 0 
	nResult = nMonth * 1000000 + nDay * 10000 + 2300
return nResult 
end 


function wushuangmengjiang() 
Say("V× khen ngîi ë chiÕn tr­êng ®Ých c«ng lao , nÕu nh­ vèn chu biÓu hiÖn h¶o , ®em cã träng th­ëng ", 4,"HiÓu râ quy t¾c chi tiÕt /getrule","Nh×n chiÕn tr­êng ®øng hµng thèng kª /getranklist","Nh×n tr­íc m¾t ®Ých chiÕn tr­êng ®øng hµng /getcurranklist","Ta muèn dÉn t­ëng /guanghuan_sure","Ch¼ng qua lµ tíi ch¬i mµ th«i ./no") 
end 

function getrule() 
Say("Trong vßng mét tuÇn lÔ ®¹t ®­îc tr­íc m­êi tªn ®Ých ®em ®¹t ®­îc 1 ®Õn 10 ®iÓm , ë trong vßng mét tuÇn lÔ nÕu nh­ ®¹t tíi ®iÓm ®Õm cao nhÊt ®em ®¹t ®­îc triÒu ®×nh s¾c phong ®Ých v« song m·nh t­íng cïng träng th­ëng ","Ta muèn hiÓu râ nh÷ng chuyÖn kh¸c /wushuangmengjiang","KÕt thóc ®èi tho¹i /no"); 
end 

function getranklist() 
local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"} 
local szranklist = "" 
for i = 1, 10 do 
local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10251, i); 
if szname ~= nil and nrank ~= 0 then 
szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank); 
else 
szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i], "Kh tÇn g", 0); 
end 
end 
local tbOpt = {} 
tinsert(tbOpt, {"Ta muèn hiÓu râ nh÷ng chuyÖn kh¸c ", wushuangmengjiang}) 
tinsert(tbOpt, {"KÕt thóc ®èi tho¹i "}) 
CreateNewSayEx(szranklist, tbOpt) 
end 

function guanghuan_sure() 
-- script viet hoa By http://tranhba.com [dinhhq][20101230]:thay doi phan thuong TKTT 
-- script viet hoa By http://tranhba.com  local nWeekDay = tonumber(GetLocalDate("%w")); 
-- script viet hoa By http://tranhba.com  local nCurTime = tonumber(GetLocalDate("%Y%m%d%H%M")); 
-- script viet hoa By http://tranhba.com  local nCutDownTime = getcutdowntime(nWeekDay, nCurTime) 
-- script viet hoa By http://tranhba.com  get_wushuangguanghuan(nCutDownTime) 
local szPlayerName = GetName() 
for i = 1, 3 do 
local szname, nrank, nsect, ngender = Ladder_GetLadderInfo(10251, i); 
if(szPlayerName == szname and 0 ~= nrank) then 
local nWeek = tonumber(GetLocalDate("%W")); 
if (GetBitTask(2762, 12, 18) ~= nWeek) then 
SetBitTask(2762, 12, 18, nWeek) 
get_TTTCAward(i) 
else 
Talk(1, "","§¹i hiÖp kh«ng ph¶i lµ ®· dÉn t­ëng liÔu sao ?") 
end 
return 
end 
end 
Say("ChØ cã ë vèn chu bªn trong ®¹t tíi ®iÓm cao nhÊt ®Ých m·nh t­íng míi cã thÓ ®¹t ®­îc t­ëng th­ëng ! muèn lÊy ®­îc t­ëng th­ëng sÏ ph¶i cè g¾ng giÕt ®Þch ", 2,"Ta muèn hiÓu râ nh÷ng chuyÖn kh¸c /wushuangmengjiang","KÕt thóc ®èi tho¹i /no") 
end 

function get_wushuangguanghuan(nCutDownTime) 
do 
return 
end 
AddSkillState(966, 1,2, nCutDownTime, 1) 
AddSkillState(979, 1,2, nCutDownTime, 1) 
end 

-- script viet hoa By http://tranhba.com Change Song Jin Box bind state - Modified By DinhHQ - 20120319 
local tbProduct = {szName=" tèng kim bÝ b¶o ",tbProp={6, 1, 2741, 1, 0, 0},nBindState=-2} 

function tetan2mibao() 
local G = 6 
local D = 1 
local P = 2740 -- script viet hoa By http://tranhba.com  ®Æc dß b¶o r­¬ng ®Ých p 
if GetTask(751) < 2000 then 
Say("# ngµi ®Ých tÝch ph©n kh«ng ®ñ #.", 1,"T¾t /no") 
return 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®Þnh cã hay kh«ng tån t¹i ®Æc dß b¶o r­¬ng 
local nCount = CalcItemCount(3, G, D, P, -1) 

if nCount == 0 then 
Say("Kh«ng cã ®Æc dß b¶o r­¬ng kh«ng thÓ ®æi .", 1,"T¾t /no") 
return 
end 
-- script viet hoa By http://tranhba.com  gi¶m ®i b¶o r­¬ng 
ConsumeItem(3, 1, G, D, P, -1) -- script viet hoa By http://tranhba.com  ®Æc dß b¶o r­¬ng ®Ých p 
tbAwardTemplet:GiveAwardByList(%tbProduct, "tetanbaoxiang2songjingmibao", 1) 
end 

function jifen2mibao() 
local nEnergyMark = 100 
local nJifenMark = 500 
local nEnergy = GetEnergy() 
if nEnergy < nEnergyMark then 
Say("Ngµi ®Ých tinh luyÖn th¹ch kh«ng ®ñ , lÇn sau trë l¹i ®i ", 1,"T¾t /no") 
return 
end 

local nJifen = nt_getTask(747) 
if nJifen < nJifenMark then 
Say("# ngµi ®Ých tÝch ph©n kh«ng ®ñ #.", 1,"T¾t /no") 
return 
end 

ReduceEnergy(nEnergyMark) -- script viet hoa By http://tranhba.com  cóp tinh luyÖn th¹ch 
nt_setTask(747, floor(nt_getTask(747) - nJifenMark)) -- script viet hoa By http://tranhba.com  cóp tÝch ph©n 
tbAwardTemplet:GiveAwardByList(%tbProduct, "jifenjingli2songjingmibao", 1) 
Jilu_jinglixiaohao(nEnergyMark) -- script viet hoa By http://tranhba.com  sè liÖu ch«n ®iÓm thø nhÊt kú 
end 

nWidth = 1 
nHeight = 1 
nFreeItemCellLimit = 0.02 

function duihuangmibao() 
local szMsg = format(" lùa chän ®æi lÊy h×nh thøc :") 
local tbOpt = {} 

if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then 
Say(format("V× b¶o vÖ ngµi ®Ých vËt phÈm an toµn , xin/mêi b¶o ®¶m trang bÞ cßn l¹i 1 %dx%d", nWidth, nHeight)) 
return 
end 

tinsert(tbOpt, {"§Æc dß b¶o r­¬ng ", tetan2mibao}) 
tinsert(tbOpt, {"# tÝch ph©n cïng tinh luyÖn th¹ch ", jifen2mibao}) 
CreateNewSayEx(szMsg, tbOpt) 
end 

function Jilu_jinglixiaohao(nCount) 
AddStatData("jlxiaohao_duihuansongjinmibao", nCount) 
end 

function getcurranklist() 
local tbNum = {"1", "2 ", "3", "4", "5", "6", "7", "8", "9", "10"} 
local szranklist = "" 
for i = 1, 10 do 
local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10250, i); 
if szname ~= nil and nrank ~= 0 then 
szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank); 
else 
szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i],"Kh«ng ", 0); 
end 
end 
local tbOpt = {} 
tinsert(tbOpt, {"Ta muèn hiÓu râ nh÷ng kh¸c ", wushuangmengjiang}) 
tinsert(tbOpt, {"KÕt thóc ®èi tho¹i "}) 
CreateNewSayEx(szranklist, tbOpt) 
end 

function get_TTTCAward(nRank) 
local tbExp = 
{ 
{nExp =400e6}, 
{nExp =300e6}, 
{nExp =200e6} 
}; 
local szLog = format("Tèng kim thiªn tö tham chiÕn t­ëng th­ëng %d", nRank) 
tbAwardTemplet:GiveAwardByList(tbExp[nRank], szLog) 
end 
