-- script viet hoa By http://tranhba.com  d� t�u nhi�m v� li�n ch�n v�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2004/12/24 l� gi�ng sinh ��m tr��c 

IncludeLib("FILESYS"); 
IncludeLib("RELAYLADDER"); -- script viet hoa By http://tranhba.com  b�ng x�p h�ng 
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- script viet hoa By http://tranhba.com  ��������ͷ�ļ�
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- script viet hoa By http://tranhba.com  �������Ľ���ͷ�ļ�
Include("\\script\\event\\storm\\function.lua")	-- script viet hoa By http://tranhba.com Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

-- script viet hoa By http://tranhba.com Storm ch�n ch�nh nh�n nhi�m v� m�i 
function storm_goon_start(gameid, b_nonext) 

local nNum = GetTask(ID_TASKLINK_LIMITNUM); 

		-- script viet hoa By http://tranhba.com  ÿ������ƴ��� +1
		nNum = nNum + 1;
SetTask(ID_TASKLINK_LIMITNUM, nNum); 

if b_nonext then return end 
tl_dealtask() 
Task_MainDialog() 
end 

-- script viet hoa By http://tranhba.com  ki�m tr�c nhi�m v� c� hay kh�ng �� qua m�i ng�y h�n ch� 
function checkTask_Limit() 

-- script viet hoa By http://tranhba.com  m�i ng�y h�n ch� s� l�n ��ch x� l� 
local nNowDate = tonumber(GetLocalDate("%y%m%d")); 
local nOldDate = GetTask(ID_TASKLINK_LIMITDATE); 
local nNum = GetTask(ID_TASKLINK_LIMITNUM); 

if nNowDate~=nOldDate then 

SetTask(ID_TASKLINK_LIMITDATE, tonumber(GetLocalDate("%y%m%d")) ); 
SetTask(ID_TASKLINK_LIMITNUM, 0); 
SetTask(ID_TASKLINK_LIMITCancelCount, 0); 
return 1; 

else 
-- script viet hoa By http://tranhba.com  40 l�n h�n ch� 
if nNum>=40 then 
Say("Ha ha , m�i ng�y nhi�m v� t�ng s� kh�ng th� v��t qua 40 l�n . ", 0); 
return 0; 
end; 

return 1; 

end; 

end; 


-- script viet hoa By http://tranhba.com Task_BuyGoods = {} 
-- script viet hoa By http://tranhba.com Task_FindGoods = {} 
-- script viet hoa By http://tranhba.com Task_ShowGoods = {} 
-- script viet hoa By http://tranhba.com Task_FindMaps = {} 
-- script viet hoa By http://tranhba.com Task_UpGround = {} 
-- script viet hoa By http://tranhba.com Task_WorldMaps = {} 
-- script viet hoa By http://tranhba.com Task_Level = {} 
-- script viet hoa By http://tranhba.com Task_MainLevelRate = {} 


-- script viet hoa By http://tranhba.com  c�u t�o nhi�m v� n�i t�n thay ��i l��ng 
Task_BuyGoods = AssignValue(Task_BuyGoods,TL_BUYGOODS) 
Task_FindGoods = AssignValue(Task_FindGoods,TL_FINDGOODS) 
Task_ShowGoods = AssignValue(Task_ShowGoods,TL_SHOWGOODS) 
Task_FindMaps = AssignValue(Task_FindMaps,TL_FINDMAPS) 
Task_UpGround = AssignValue(Task_UpGround,TL_UPGROUND) 
Task_WorldMaps = AssignValue(Task_WorldMaps,TL_WORLDMAPS) 

Task_MainTaskLink = AssignValue_TaskLink(Task_MainTaskLink,TL_LEVELLINK) 
Task_MainLevelRate = AssignValue_TaskRate(Task_MainLevelRate,TL_MAINTASKLEVEL) 

-- script viet hoa By http://tranhba.com  c�u t�o t��ng th��ng n�i t�n thay ��i l��ng 
Task_AwardBasic = AssignValue_Award(Task_AwardBasic,TL_AWARDBASIC) 

-- script viet hoa By http://tranhba.com  c�u t�o ho�n th�nh s� l�n ��ch t��ng th��ng 
Task_AwardLink = AssignValue_LinkAward(TL_AWARDLINK) 

Task_AwardLoop = AssignValue_Award(Task_AwardLoop,TL_AWARDLOOP) 

-- script viet hoa By http://tranhba.com  c�u t�o ��i tho�i n�i dung n�i t�n thay ��i l��ng 
Task_TalkGoods = AssignValue_TaskTalk(Task_TalkGoods,TL_TASKGOODSTALK) 
Task_TalkBuy = AssignValue_TaskTalk(Task_TalkBuy,TL_TASKBUYTALK) 
Task_TalkShow = AssignValue_TaskTalk(Task_TalkShow,TL_TASKSHOWTALK) 
Task_TalkFind = AssignValue_TaskTalk(Task_TalkFind,TL_TASKFINDMAPS) 
Task_TalkUp = AssignValue_TaskTalk(Task_TalkUp,TL_TASKUPGROUNDTALK) 
Task_TalkWorld = AssignValue_TaskTalk(Task_TalkWorld,TL_TASKWORLDTALK) 


function Task_NewVersionAward() 

local nNum = GetTask(ID_TASKLINK_LIMITNUM); 
local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount); 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "yesourenwu")
G_ACTIVITY:OnMessage("FinishYesou", nNum, nCancelNum); 

-- script viet hoa By http://tranhba.com  m�i ng�y ho�n th�nh th� 30 c� ng�ch ngo�i t��ng th��ng 
if (nNum - nCancelNum) == 30 then 
Msg2Player("Ch�c m�ng ng��i , ho�n th�nh 30 c� d� t�u nhi�m v� , ��t ���c ng�ch ngo�i t��ng th��ng #"); 
tbAwardTemplet:GiveAwardByList({nExp_tl = 30000000},"��t ���c ng�ch ngo�i t��ng th��ng #") 
end 

-- script viet hoa By http://tranhba.com  m�i ng�y ho�n th�nh th� 40 c� ng�ch ngo�i t��ng th��ng 
if (nNum == 40 and nCancelNum) == 0 then 
Msg2Player("Ch�c m�ng ng��i , ho�n th�nh 40 c� d� t�u nhi�m v� , ��t ���c ng�ch ngo�i t��ng th��ng #"); 
tbAwardTemplet:GiveAwardByList({nExp_tl = 100000000},"��t ���c ng�ch ngo�i t��ng th��ng #") 
end 

end 


function main() 

-- script viet hoa By http://tranhba.com  c� vu lan ti�t ho�t ��ng trong l�c ��i tho�i . 
-- script viet hoa By http://tranhba.com  local nDate = tonumber(GetLocalDate("%y%m%d")); 
-- script viet hoa By http://tranhba.com  if (nDate >= 60808 and nDate <= 60815) then 
-- script viet hoa By http://tranhba.com  local tab_Content = { 
-- script viet hoa By http://tranhba.com  "Xem c# nhi# v?g?# l# kh t�n g/tasklink_entence", 
-- script viet hoa By http://tranhba.com  } 
-- script viet hoa By http://tranhba.com  tinsert(tab_Content, "Ta mu l�p l# m# v#g Li y�t Hoa/menglanjie"); 
-- script viet hoa By http://tranhba.com  tinsert(tab_Content, "R �ch kh ta /Task_Wait"); 
-- script viet hoa By http://tranhba.com  Say("M# n# nay chi kh�a tranh tri th�ch mi y�t , d# t#h th l�p g kh? Ph#ng tr#ng Thi ph� L# t?mu l�p t?ch ch�m th?trai m v� g L?Vu Lan # m# ng#i h#ng ch l�u gi# ph l�u y y�t b#h", getn(tab_Content), tab_Content); 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end; 

tasklink_entence(); 
end; 

function menglanjie() 
if (GetExtPoint(0) <= 0 or GetLevel() < 30) then 
Say("Xin l#! Ch?c?ng#i ch b�i t?c# <color=red>30, # n# th?color> m# c?th?tham gia ho# #ng n ph� ", 0) 
return 
end; 
local tab_Content = { 
"Ta mu l�p k# v#g Kim Li y�t Hoa [c# 9 Kim Li y�t Hoa]/#process(1)", 
"Ta mu l�p h# th y�u h v#g M nhu�n Li y�t Hoa [c# 9 M nhu�n Li y�t Hoa]/#process(2)", 
"Ta mu l�p h# th y�u h v#g Th# Li y�t Hoa [c# 9 Th# Li y�t Hoa]/#process(3)", 
"Ta mu l�p h# th y�u h v#g H# Li y�t Hoa [c# 9 H# Li y�t Hoa]/#process(4)", 
"Ta mu l�p h# th y�u h v#g Th?Li y�t Hoa [c# 9 Th?Li y�t Hoa]/#process(5)", 
"Ch?#n th# t�n g ch l�u th quy�t !/Task_Wait" 
} 
Say("Ch?c# ng#i # thu th# # s?Li y�t Hoa v?<color=yellow>"..MAKING_COST.."<color> l#ng ta s?gi# ng#i k# v#g hoa tuy khi�m #p. Nh#g l# ? m# ng ph� ch?c?th?k# ## 2 v#g Li y�t Hoa c#g thu nhu�n t v�n h m?th quy�t .", getn(tab_Content), tab_Content); 
end; 

-- script viet hoa By http://tranhba.com {name, product} 
MAKING_COST = 10000; 
MAKING_COUNT = 9; 
tab_Flower = { 
{1126,"Kim ", 1131, 1760, 1761}, {1127,"M�c ", 1132, 1762, 1763}, {1128,"N��c ", 1133, 1764, 1765}, {1129, " l�a ", 1134, 1766, 1767}, {1130,"��t ", 1135, 1768, 1769} 
} 

function process(nIdx) 
if (nIdx < 1 or nIdx > getn(tab_Flower)) then 
return 
end; 

local nIndex; 
if (nIdx == 1) then 
nIndex = 1; 
elseif (nIdx == 2) then 
nIndex = 2; 
elseif (nIdx == 3) then 
nIndex = 3; 
elseif (nIdx == 4) then 
nIndex = 4; 
elseif (nIdx == 5) then 
nIndex = 5; 
end; 

Say("Mu l�p l# 1 v#g <color=yellow>"..tab_Flower[nIdx][2].." Li y�t Hoa<color> c# c?9 <color=yellow>"..tab_Flower[nIdx][2].."Li y�t Hoa<color>. Ng#i x# #nh l# ch?", 2, "#ng! Xin l# b# tr?t nh�ng !/#make_round("..nIndex..")", "Ta s?quay l t�c sau!/Task_Wait"); 
end; 

function make_round(nIdx) 
if (GetCash() < MAKING_COST) then 
Say("Xin t# # 10000 l#ng r m�nh h# quay l t�c ! Ta ?#y ch?", 1, "## th quy�t ! Ta # l# th �p ti th�ch !/Task_Wait"); 
return 
end; 

local nCount = CalcEquiproomItemCount(6,1,tab_Flower[nIdx][1],-1); 
if (nCount < 9) then 
Say("Ng#i h#h nh?ch# # <color=yellow>"..tab_Flower[nIdx][2].." Li y�t Hoa<color=yellow>. Ch# # 9 <color=yellow>"..tab_Flower[nIdx][2].." Li y�t Hoa<color> th?ta kh t�n g th?gi# ng#i k# v#g "..tab_Flower[nIdx][2].." Li y�t Hoa ho y�u ", 1, "# ta # chu oa b?#!/Task_Wait"); 
return 
end; 

local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (nDate ~= GetTask(tab_Flower[nIdx][4])) then 
SetTask(tab_Flower[nIdx][4], nDate); 
SetTask(tab_Flower[nIdx][5], 0); 
end; 

local nTimes = GetTask(tab_Flower[nIdx][5]); 
if (nTimes >= 2) then 
Say(tab_Flower[nIdx][2].."H# nay # k# th y�u h c t�n g 2 v#g r m�nh ! Mai h# #n nh?", 0) 
return 
end; 

Pay(MAKING_COST); 
ConsumeEquiproomItem(9, 6, 1, tab_Flower[nIdx][1], -1); 
	SetTask(tab_Flower[nIdx][5], nTimes + 1);
AddItem(6, 1, tab_Flower[nIdx][3], 1, 0, 0, 0); 
Say("V#g "..tab_Flower[nIdx][2].." Li y�t Hoa c# ng#i # k# xong. H# mang n?#n ch?L?Quan #!", 1, "Nh nh� v#g hoa/Task_Wait"); 
Msg2Player("B# nh nh� ## m#"..tab_Flower[nIdx][2].." Li y�t Hoa ho y�u "); 
end; 

-- script viet hoa By http://tranhba.com  nhi�m v� li�n ��ch nh�p kh�u 
function tasklink_entence() 

_TaskLinkDebug() -- script viet hoa By http://tranhba.com  ��i v�i nhi�m v� li�n kh�ng c�ch n�o ti�n h�nh �i xu�ng ��ch BUG ch�a tr� 

local myTaskTimes = tl_gettaskstate(1) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch s� l�n 
local myTaskLinks = tl_gettaskstate(2) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch li�n ��m 
local myTaskLoops = tl_gettaskstate(3) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch ho�n ��m 
local myTaskCancel = tl_gettaskstate(4) -- script viet hoa By http://tranhba.com  nh� ch�i c� th� h�y b� ��ch s� l�n 

local myCountLinks 
local myCountTimes 

local myCanceled = nt_getTask(1036) 
local myTaskTime = GetGameTime() -- script viet hoa By http://tranhba.com  l�y ���c tr� ch�i th�i gian , d�ng �� ph�n �o�n nh� ch�i c� hay kh�ng b� ��ng c�a 
local n = myTaskTime - nt_getTask(1029) 
local myTaskInfo = "" 


-- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i tr��c m�t ��ch tr�ng th�i v� c�n ch�a ph�t t��ng l�i c�a , l� l�n n�a ph�t t��ng 
if (tl_gettaskcourse() == 2) then 
Task_GiveAward() 
return 
end 

if ( myCanceled == 10) then 
if (n < 605) then 
Task_Punish() 
return 
else 
myCanceled = 0 
nt_setTask(1036,0) 
Task_Confirm() 
end 
end 

if (tl_gettaskcourse() == 0) then 
-- script viet hoa By http://tranhba.com  n�u nh� c�n ch�a c� b�t ��u d� t�u ��ch nhi�m v� li�n l�i c�a 
-- script viet hoa By http://tranhba.com  Say("V?n ph� "..GetPlayerSex().."xem ra # b t�n ba giang h?## m# th �ch gian d nh�ng r m�nh nh? c?mu l�p tham gia kh# nghi# nhi# v?li y�t t# c# ta kh t�n g?",3,"## th quy�t ! Ta kh t�n g tin c?nhi# v?n k� l# kh?d?## ta/Task_Confirm","Ta mu l�p bi# kh# nghi# c# ng#i n# c?n# dung ra sao/Task_Info","Ta b nh� r m�nh , kh t�n g r#h ng m�nh t# g c�t v# t�n g/Task_Exit"); 
Say("D� t�u # v� n�y "..GetPlayerSex().." xem ra x�ng x�o giang h� c�ng c� m�t �o�n th�i gian , c� th� hay kh�ng c� h�ng th� t�i tham gia ta <color=yellow>� ho�n ho�n li�n li�n t��ng x�ng ��i , t�ng t�ng �i�t �i�t l�y h�u l� �<color> ��ch nhi�m v� kh�o nghi�m ��y ? ",3,"H�o nha , ta c�ng kh�ng tin c� c�i g� nhi�m v� c� th� kh� ���c c�ng ta /Task_Confirm","Ta mu�n bi�t ng��i n�i kh�o nghi�m l� m�t h�nh d�ng g� /Task_Info","Ta c�n c� chuy�n , kh�ng r�nh c�ng ng��i � ��y r�i r�nh k�o /Task_Exit"); 
end 

if (tl_gettaskcourse() == 3) then 

-- script viet hoa By http://tranhba.com  ki�m tr�c c� hay kh�ng v��t qua m�i ng�y h�n ch� 
if checkTask_Limit()~=1 then return end; 

myCountLinks = tl_counttasklinknum(2) 
myCountTimes = tl_counttasklinknum(1) 

-- script viet hoa By http://tranhba.com  Say(":<enter>V?"..GetPlayerSex().."# ho y�u th y�u h <color=yellow>"..myCountTimes.."<color>, nhi# v?n ph� ng ph� h# nay c?th?th# hi# l t�c <color=yellow>"..(40 - GetTask(ID_TASKLINK_LIMITNUM)).."<color>, ng#i c?mu l�p l# n# kh t�n g?",2,"##g nhi y�t , mau cho ta bi# nhi# v?ti# theo l?g?/Task_TaskProcess","# ta ngh?ng b�i m# l# #! Ta b nh� r m�nh /Task_Wait"); 
Say("D� t�u #<enter> v� n�y "..GetPlayerSex().." �� ho�n th�nh <color=yellow>"..myCountTimes.."<color> l�n ta ��a cho nhi�m v� c�a ng��i , kh�ng bi�t ng��i c� c�n hay kh�ng h�ng th� ti�p t�c ti�p theo l�m ti�p ��y ? ",2,"D� nhi�n , mau �� cho ta bi�t ng��i/c�i k� ti�p nhi�m v� l� c�i g� /Task_TaskProcess","H�y �� cho ta ngh� m�t l�t m� �i , ta c�n kh�c bi�t chuy�n c�a t�nh /Task_Wait"); 
elseif (tl_gettaskcourse() == 1) then 
Task_MainDialog() 
end 

end 

-- script viet hoa By http://tranhba.com  ��p �ng d� t�u ��ch kh�o nghi�m , ch�nh th�c b�t ��u nhi�m v� li�n 
function Task_Confirm() 

local myTaskID 

-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng ��ch tr� s� , 1020 s� thay ��i l��ng v� nhi�m v� li�n tr�ng th�i chuy�n d�ng thay ��i l��ng , trong �� b�n ch� ti�t chia ra ��nh ngh�a v� #| # s� l�n | # li�n ��m | # ho�n ��m | # h�y b� c�n th�a l�i s� l�n | 

tl_settaskstate(1,0) -- script viet hoa By http://tranhba.com  �ang ti�n h�nh l�n ��u ti�n nhi�m v� 
tl_settaskstate(2,tl_getfirstlink()) -- script viet hoa By http://tranhba.com  �ang ti�n h�nh th� nh�t li�n nhi�m v� 
tl_settaskstate(3,tl_getfirstloop()) -- script viet hoa By http://tranhba.com  �ang ti�n h�nh th� nh�t ho�n nhi�m v� 

tl_settaskstate(4,0) -- script viet hoa By http://tranhba.com  c�n th�a l�i 0 l�n h�y b� nhi�m v� c� h�i 
nt_setTask(DEBUG_TASKVALUE, 0); 

tl_settaskstate(6,0) 

storm_ask2start(4) -- script viet hoa By http://tranhba.com Storm b�t ��u khi�u chi�n 
tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuDaTau") 
-- script viet hoa By http://tranhba.com tbLog:PlayerActionLog("Ch� y�u ��c �i�m ","NhanNhiemVuDaTau") 
end 


-- script viet hoa By http://tranhba.com  ti�n h�nh l�n sau nhi�m v� 
function Task_TaskProcess() 

local myTaskTimes = tl_gettaskstate(1) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch s� l�n 
local myTaskLinks = tl_gettaskstate(2) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch li�n ��m 
local myTaskLoops = tl_gettaskstate(3) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch ho�n ��m 
local myTaskCancel = tl_gettaskstate(4) -- script viet hoa By http://tranhba.com  nh� ch�i c� th� h�y b� ��ch s� l�n 


-- script viet hoa By http://tranhba.com  ki�m tr�c c� hay kh�ng v��t qua m�i ng�y h�n ch� 
if checkTask_Limit()~=1 then return end; 

tl_taskprocess() -- script viet hoa By http://tranhba.com  ��u ti�n thi h�nh v�ng k� ti�p h�m s� 

storm_goon_start() -- script viet hoa By http://tranhba.com Storm kh�i ph�c 

end 


-- script viet hoa By http://tranhba.com  nhi�m v� li�n ��ch ch� y�u kh�ng ch� m�t b�n 
function Task_MainDialog() 

local myTaskInfo = tl_gettaskinfo() -- script viet hoa By http://tranhba.com  nhi�m v� c�n k� tin t�c 
local myTaskTotalNum = tl_counttasklinknum(1) + 1; -- script viet hoa By http://tranhba.com  ���������ͳ��
local myTitleText = ""; 

if (myTaskInfo == nil) then 
myTaskInfo = "" 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� tr�ng th�i v� �� nh�n nhi�m v� nh�ng kh�ng ho�n th�nh 
tl_settaskcourse(1) 


if myTaskTotalNum==0 or myTaskTotalNum==nil then 
myTitleText = " d� t�u #<enter><enter>"..myTaskInfo; 
else 
myTitleText = " d� t�u #<enter><enter> ��y l� th� <color=green>"..myTaskTotalNum.."<color> c� nhi�m v� , "..myTaskInfo; 
end; 

Say(myTitleText, 
4, 
-- script viet hoa By http://tranhba.com  "Bi# r m�nh , # ta ho y�u th y�u h nhi# v?xong m# l t�c t# ng#i/Task_Wait", 
-- script viet hoa By http://tranhba.com  "ta # ho y�u th y�u h nhi# v?l# n ph� , xin h# ki# tra l t�c !/Task_Accept", 
-- script viet hoa By http://tranhba.com  "Nhi# v?l# n ph� kh?qu? Ta mu l�p h# b?kh t�n g l# n#/Task_CancelConfirm", 
-- script viet hoa By http://tranhba.com  "Ta mu l�p bi# kh# nghi# c# ng#i n# c?n# dung ra sao/Task_Info" 
" bi�t , ch� ta ho�n th�nh nhi�m v� sau l�i t�i t�m ng��i /Task_Wait", 
" ta �� ho�n th�nh nhi�m v� l�n n�y , m�i/xin ng��i nghi�m thu �i #/Task_Accept", 
" nhi�m v� l�n n�y c�ng qu� kh� kh�n , ta mu�n h�y b� r�i kh�ng l�m /Task_CancelConfirm", 
" ta mu�n bi�t ng��i n�i kh�o nghi�m l� m�t h�nh d�ng g� /Task_Info" 
); 

-- script viet hoa By http://tranhba.com  thi�t tr� h�y b� nhi�m v� d�u hi�u v� c� th� h�y b� 
nt_setTask(1045, 1); 

end 


-- script viet hoa By http://tranhba.com  h�y b� nhi�m v� l�c cho nh� ch�i m�t l�n x�c nh�n ��ch c� h�i 
function Task_CancelConfirm() 

local myTaskTimes = tl_gettaskstate(1) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch s� l�n 
local myTaskLinks = tl_gettaskstate(2) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch li�n ��m 
local myTaskLoops = tl_gettaskstate(3) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch ho�n ��m 
local myTaskCancel = tl_gettaskstate(4) -- script viet hoa By http://tranhba.com  nh� ch�i c� th� h�y b� ��ch s� l�n 

local myCountTimes = tl_counttasklinknum(1); -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ��ch nhi�m v� t�ng s� 

if (myTaskCancel==0) then 
Say("D� t�u # ng�i b�y gi� m�t l�n h�y b� ��ch c� h�i c�ng kh�ng c� , c� nh� v�y ng��i li�n ph�i b�t ��u l�i t� ��u �c # h�n n�a tr��c ng��i ��ch t��ng th��ng t�ch l�y s� l�n n�a b�t ��u ��m h�t . ",3,"��ng v�y , ta ch�nh l� kh�ng mu�n l�m c�i n�y qu� nhi�m v� /Task_NormalCancel","Ta mu�n d�ng 100 t� n�i s�ng x� t�c �� m�nh v�n t�i l�y ti�u nhi�m v� l�n n�y /#Task_Cancel(2)"," �/d� �� v�y h�y �� cho ta suy ngh� l�i m�t ch�t �i /Task_Wait"); 
else 
Say("D� t�u # ng�i b�y gi� c�n c� "..myTaskCancel.." l�n h�y b� nhi�m v� c� h�i , ng��i nh�t ��nh ph�i h�y b� nhi�m v� l�n n�y sao ? ",2,"��ng v�y , ta ch�nh l� kh�ng mu�n l�m c�i n�y qu� nhi�m v� /#Task_Cancel(1)"," �/d� �� v�y h�y �� cho ta suy ngh� l�i m�t ch�t �i /Task_Wait"); 
end 


-- script viet hoa By http://tranhba.com if (myTaskCancel==0) then 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Say("Hi# t t�c b# kh t�n g c?c?h# n k� # h# b?nhi# v? b# ch?c?th?l# l t�c t?#u th quy�t ! #ng th �ch ph# th#ng t chu h l# c# b# l b� tr#c s?## t v�n h l t�c t?#u.", 
-- script viet hoa By http://tranhba.com  3, 
-- script viet hoa By http://tranhba.com  "#ng, ta kh t�n g mu l�p l# nhi# v?qu?qu# n ph� #u/Task_NormalCancel", 
-- script viet hoa By http://tranhba.com  "Ta mu l�p s?d#g 100 m#h s# H?X?T l�ng # h# b?nhi# v?l# n ph� /#Task_Cancel(2)", 
-- script viet hoa By http://tranhba.com  "Uhm! # ta suy ngh?l t�c #/Task_Wait"); 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com else 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Say("Hi# t t�c b# c#"..myTaskCancel.." s?l# c?h# h# b?nhi# v? b# x# #nh h# b?nhi# v?l# n ph� #ng kh t�n g?", 
-- script viet hoa By http://tranhba.com  2, 
-- script viet hoa By http://tranhba.com  "#ng, ta kh t�n g mu l�p l# nhi# v?qu?qu# n ph� #u/#Task_Cancel(1)", 
-- script viet hoa By http://tranhba.com  "Uhm! # ta suy ngh?l t�c #/Task_Wait"); 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com end 

end 


-- script viet hoa By http://tranhba.com  b�nh th��ng h�y b� ph��ng th�c n�a x�c nh�n m�t l�n 
function Task_NormalCancel() 

Say("D� t�u # ng��i ngh� t�t l�m th�t mu�n l�y ti�u nhi�m v� l�n n�y sao ? ",2,"Kh�ng mu�n la toa li�u , ta ch�nh l� kh�ng mu�n l�m c�i n�y qu� nhi�m v� /#Task_Cancel(1)","V�y hay l� �� cho ta suy ngh� l�i m�t ch�t �i /Task_Wait"); 

-- script viet hoa By http://tranhba.com Say("B# suy ngh?k?h# b?nhi# v?l# n ph� #ng kh t�n g?",2,"#ng l quy�t th quy�t n#! ta kh t�n g mu l�p l# nhi# v?qu?qu# n ph� #u/#Task_Cancel(1)","Th quy�t # ta suy ngh?l t�c #!/Task_Wait"); 

end; 


-- script viet hoa By http://tranhba.com  1000 l�n tr� l�n nhi�m v� h�y b� l�c c�n nh��ng tinh 
function Task_TotalCancel() 
GiveItemUI("D� t�u nhi�m v� 1000 l�n tr� l�n h�y b� , c�n cung c�p n��c bi�c tinh m�t vi�n , xin/m�i �em th�y tinh ��t � ph�a d��i v�t ph�m khu�ng trung #", "Task_TotalCancel_Main", "Task_Wait"); 
end; 


function Task_TotalCancel_Main(nCount) 

local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = 0,0,0,0,0,0; 
local nIndex = 0; 

if nCount~=1 then 
Say("D� t�u # ng��i cho ta kh�ng ph�i l� m�u xanh l� c�y <color=yellow>1 c� <color> th�y tinh !", 0); 
return 
end; 

nIndex = GetGiveItemUnit(1); 
nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(nIndex); 

if nGenre==4 and nDetail==240 and nParticular==1 then 
Task_Cancel(1); -- script viet hoa By http://tranhba.com  to�n b� h�y b� 
else 
Say("D� t�u : ng��i cho ta kh�ng ph�i l� m�u xanh l� c�y <color=yellow>1 c� <color> th�y tinh !", 0); 
return 
end; 

end; 


-- script viet hoa By http://tranhba.com  bi�u hi�n nh� ch�i tr��c m�t ��ch nhi�m v� s� ti�n h�nh ��ch tr�nh �� # �i�u th� d�ng # 
function Task_ProcessInfo() 

local myTaskTimes = tl_gettaskstate(1) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch s� l�n 
local myTaskLinks = tl_gettaskstate(2) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch li�n ��m 
local myTaskLoops = tl_gettaskstate(3) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch ho�n ��m 
local myTaskCancel = tl_gettaskstate(4) -- script viet hoa By http://tranhba.com  nh� ch�i c� th� h�y b� ��ch s� l�n 

local myTaskType = tl_getplayertasktype() 

local myTimes = tl_gettaskstate(1) 
local myLinks = tl_gettaskstate(2) 

local myCountTimes = tl_counttasklinknum(1) 

-- script viet hoa By http://tranhba.com  local myTaskValue1 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue1")) 
-- script viet hoa By http://tranhba.com  local myTaskValue2 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue2")) 


-- script viet hoa By http://tranhba.com  local myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myCountLinks+myTimes)*0.1))

-- script viet hoa By http://tranhba.com  local myMainValueText1 = " ng��i tr��c m�t ��ch nhi�m v� v�t ph�m gi� tr� v� : "..myTaskValue1.." nhi�m v� gi� tr� v� : "..myTaskValue2.."<enter>".." nhi�m v� c�a ng��i b�y gi� t�ng gi� tr� l��ng v� : "..myMainValue 

-- script viet hoa By http://tranhba.com  Say("D� t�u # ng��i b�y gi� ti�n h�nh ���c li�u th� "..myTaskLoops.." ho�n trung ��ch th� "..myTaskLinks.." li�n trung ��ch th� "..myTaskTimes.." l�n . <enter> ng��i li�n t�c ti�n h�nh ��ch s� l�n v� #"..tl_counttasklinknum(1).." l�n <enter> ng��i li�n t�c ti�n h�nh ��ch li�n ��m v� #"..tl_counttasklinknum(2).." li�n <enter>"..myMainValueText1,0); 

-- script viet hoa By http://tranhba.com  Say("Hi# t t�c ng#i # ho y�u th y�u h <color=yellow>"..myCountTimes.."<color> s?l# nhi# v?ta giao cho, c# c?g l��ng g h# nh?", 0); 
Say("D� t�u # ng��i b�y gi� �� ho�n th�nh <color=yellow>"..myCountTimes.."<color> l�n ta ��a cho nhi�m v� c�a ng��i , k�nh xin ti�p t�c c� g�ng nga #", 0); 

end 


-- script viet hoa By http://tranhba.com  nh� ch�i �� ho�n th�nh nhi�m v� t�i tr��c cho d� t�u nghi�m thu 
function Task_Accept() 
-- script viet hoa By http://tranhba.com 2007-09-19 gia t�ng v�t ph�m t��ng th��ng l�c ��ch t�i �eo l�ng kh�ng gian ph�n �o�n 
if (CalcFreeItemCellCount() < 5) then 
Say("D� t�u # xin/m�i d�n d�p t�i x�ch c�a ng��i ph�c kh�ng thua k�m 5 c� c�ch t� , sau �� t�i nh�n l�y ph�n th��ng #",0); 
return 
end; 
local myTaskType = tl_getplayertasktype() 

if (myTaskType == 1) then 
GiveItemUI("T�m ki�m v�t ph�m nhi�m v� ","D� t�u # nga ? ta cho ng��i �i mua �� ng��i mua cho ta �� t�i ch�a ? ","Task_Accept_01","Task_Wait"); 
elseif (myTaskType == 2) then 
GiveItemUI("Mua v�t ph�m nhi�m v� ","D� t�u # nga ? ta cho ng��i �i t�m �� ng��i cho ta t�m ���c sao ? ","Task_Accept_02","Task_Wait"); 
elseif (myTaskType == 3) then 
GiveItemUI("V�t ph�m bi�u di�n nhi�m v� ","D� t�u # nga ? ta cho ng��i �i t�m �� ng��i cho ta t�m ���c sao ? ","Task_Accept_03","Task_Wait"); 
elseif (myTaskType == 4) then 
Task_Accept_04() 
elseif (myTaskType == 5) then 
Task_Accept_05() 
elseif (myTaskType == 6) then 
Task_Accept_06() 
else -- script viet hoa By http://tranhba.com  d� th��ng x� l� 
Say("D� t�u # ng��i b�y gi� l�m �� c�n kh�ng c� ��t t�i y�u c�u c�a ta nga , c�n l� m�i/xin ng��i c� g�ng n�a �i #",0); 
end 

end 


-- script viet hoa By http://tranhba.com  nhi�m v� m�t ��ch ph�n �o�n x� l� 
function Task_Accept_01(nCount) 
local myTaskGoods 
local ItemGenre,DetailType,ParticularType,Level,nSeries,Luck 

if ( nCount > 1 ) then 
Say("D� t�u # v� n�y "..GetPlayerSex().." , ng��i m�t l�n �� nhi�u nh� v�y �� �i v�o ta l� th�y con m�t b�t h� ti�p nha , c�n l� t� t� �i �i ��",0); 
return 0 
elseif ( nCount == 0) then 
Say("D� t�u # v� n�y "..GetPlayerSex().." , ng��i �� th�t �� c� �� c� � b�n trong kh�ng ? c� ph�i hay kh�ng ta l�o Hoa li�u m�t nha ? ",0); 
return 0 
end 

ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1)) 
-- script viet hoa By http://tranhba.com  magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1) 
myTaskGoods = {ItemGenre,DetailType,ParticularType,nSeries,Level} 

-- script viet hoa By http://tranhba.com  tl_print ("D� t�u ki�m nghi�m li�u v�t ph�m #"..ItemGenre..DetailType..ParticularType..nSeries..Level) 

if (tl_checktask(myTaskGoods) == 1) then 
RemoveItemByIndex(GetGiveItemUnit(1)) -- script viet hoa By http://tranhba.com  th� ti�u nh� ch�i v�t ph�m tr�n ng��i 
Task_AwardRecord() 
Task_GiveAward() 
-- script viet hoa By http://tranhba.com  ph�t t��ng x� l� 
else 
Say("D� t�u # ng��i b�y gi� ��a cho ��ch �� c�n kh�ng c� ��t t�i y�u c�u c�a ta nga , c�n l� m�i/xin ng��i c� g�ng n�a �i #",0); 
end 
end 


-- script viet hoa By http://tranhba.com  nhi�m v� hai ��ch ph�n �o�n x� l� 
function Task_Accept_02(nCount) 

local myTaskGoods 
local ItemGenre, DetailType, ParticularType, Level, nSeries, Luck 
local magictype,p1,p2,p3 
local i,n,m = 0,0,0 

if ( nCount > 1 ) then 
Say("D� t�u # v� n�y "..GetPlayerSex().." , ng��i m�t l�n �� nhi�u nh� v�y �� �i v�o ta l� th�y con m�t b�t h� ti�p nha , c�n l� t� t� �i �i ��",0); 
return 0 
elseif ( nCount == 0) then 
Say("D� t�u # v� n�y "..GetPlayerSex().." , ng��i �� th�t �� c� �� c� � b�n trong kh�ng ? c� ph�i hay kh�ng ta l�o Hoa li�u m�t nha ? ",0); 
return 0 
end 

for i=1,6 do 
ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1)) 
magictype , p1, p2, p3 = GetItemMagicAttrib(GetGiveItemUnit(1), i) 
myTaskGoods = {ItemGenre,DetailType,ParticularType,Level,nSeries,magictype,p1,p2,p3} 
-- script viet hoa By http://tranhba.com  tl_print("Ki�m nghi�m li�u ma ph�p thu�c t�nh "..i.." :".." ma ph�p ID v� : "..magictype.." ma ph�p tham s� 1 v� : "..p1.." ma ph�p tham s� 2 v� : "..p2.." ma ph�p tham s� 3 v� : "..p3); 
n = tl_checktask(myTaskGoods) 
if (n == 1) then 
m = 1 
end 
end 

if (m == 1) then 
RemoveItemByIndex(GetGiveItemUnit(1)) -- script viet hoa By http://tranhba.com  th� ti�u nh� ch�i v�t ph�m tr�n ng��i 
Task_AwardRecord() 
Task_GiveAward() 
else 
Say("D� t�u # ng��i b�y gi� ��a cho ��ch �� c�n kh�ng c� ��t t�i y�u c�u c�a ta nga , c�n l� m�i/xin ng��i c� g�ng n�a �i #",0); 
end 

end 


-- script viet hoa By http://tranhba.com  nhi�m v� ba ��ch ph�n �o�n x� l� 
function Task_Accept_03(nCount) 

local myTaskGoods 
local magictype,p1,p2,p3 
local i,n,m = 0,0,0 


if ( nCount > 1 ) then 
Say("D� t�u # v� n�y "..GetPlayerSex().." , ng��i m�t l�n �� nhi�u nh� v�y �� �i v�o ta l� th�y con m�t b�t h� ti�p nha , c�n l� t� t� �i �i ��",0); 
return 0 
elseif ( nCount == 0) then 
Say("D� t�u # v� n�y "..GetPlayerSex().." , ng��i �� th�t �� c� �� c� � b�n trong kh�ng ? c� ph�i hay kh�ng ta l�o Hoa li�u m�t nha ? ",0); 
return 0 
end 

for i=1,6 do -- script viet hoa By http://tranhba.com  tu�n ho�n l�ch l�n t�t c� ma ph�p thu�c t�nh xem m�t ch�t c� hay kh�ng c� th�ch h�p 
magictype,p1,p2,p3 = GetItemMagicAttrib(GetGiveItemUnit(1),i) 
myTaskGoods = {magictype,p1,p2,p3} 
n = tl_checktask(myTaskGoods) 
if (n == 1) then 
m = 1 
end 
end 

if (m == 1) then 
Task_AwardRecord() 
Task_GiveAward() 
-- script viet hoa By http://tranhba.com  ph�t t��ng x� l� 
else 
Say("D� t�u # ng��i b�y gi� ��a cho ��ch �� c�n kh�ng c� ��t t�i y�u c�u c�a ta nga , c�n l� m�i/xin ng��i c� g�ng n�a �i #",0); 
end 

end 


-- script viet hoa By http://tranhba.com  nhi�m v� b�n ��ch ph�n �o�n x� l� 
function Task_Accept_04() 

if (tl_checktask() == 1) then 
Task_AwardRecord() 
Task_GiveAward() 
-- script viet hoa By http://tranhba.com  ph�t t��ng x� l� 
else 
Say("D� t�u # ng��i b�y gi� chuy�n l�m c�n kh�ng c� ��t t�i y�u c�u c�a ta nga , c�n l� m�i/xin ng��i c� g�ng n�a �i #",0); 
end 

end 


-- script viet hoa By http://tranhba.com  nhi�m v� n�m ��ch ph�n �o�n x� l� 
function Task_Accept_05() 

if (tl_checktask() == 1) then 
Task_AwardRecord() 
Task_GiveAward() 
-- script viet hoa By http://tranhba.com  ph�t t��ng x� l� 
else 
Say("D� t�u # ng��i b�y gi� chuy�n l�m c�n kh�ng c� ��t t�i y�u c�u c�a ta nga , c�n l� m�i/xin ng��i c� g�ng n�a �i #",0); 
end 

end 



-- script viet hoa By http://tranhba.com  nhi�m v� s�u ��ch ph�n �o�n x� l� 
function Task_Accept_06() 

if (tl_checktask()==1) then 
Task_AwardRecord() 
Task_GiveAward() 
return 1 
else 
Say("D� t�u # ha ha ha �� v� n�y "..GetPlayerSex().." , m�t tuy b�t t�i , nh�ng c�ng hi�u tr�n giang h� n�i l� m�t tin/th� ch� , ng��i c�ng c�n kh�ng c� thu t�p ho�n ta mu�n c�u n�i s�ng x� t�c �� m�nh v�n th� n�o li�n mu�n t�i l�nh th��ng ��y ? ",0); 
return 0 
end 

end 



-- script viet hoa By http://tranhba.com  nh� ch�i l�a ch�n h�y b� nhi�m v� x� l� 
-- script viet hoa By http://tranhba.com  truy�n v�o tham s� nType# h�y b� nhi�m v� ph��ng ph�p , 1 v� d�ng h�y b� c� h�i t�i h�y b� , 2 v� d�ng 100 t� n�i s�ng x� t�c �� m�nh v�n t�i l�y ti�u 
function Task_Cancel(nType) 

local myTaskTimes = tl_gettaskstate(1) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch s� l�n 
local myTaskLinks = tl_gettaskstate(2) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch li�n ��m 
local myTaskLoops = tl_gettaskstate(3) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch ho�n ��m 
local myTaskCancel = tl_gettaskstate(4) -- script viet hoa By http://tranhba.com  nh� ch�i c� th� h�y b� ��ch s� l�n 
local myCanceled = nt_getTask(1036) -- script viet hoa By http://tranhba.com  nh� ch�i �� �c � h�y b� bao nhi�u l�n 
local myMapNum = nt_getTask(1027) -- script viet hoa By http://tranhba.com  xem m�t ch�t nh� ch�i tr�n ng��i c� bao nhi�u c� n�i s�ng x� t�c �� m�nh v�n 

local myNewCancel = GetTask(DEBUG_TASKVALUE); -- script viet hoa By http://tranhba.com  b� ph�n ��ch h�y b� c� h�i 

local nTotalTaskNum = tl_counttasklinknum(1); -- script viet hoa By http://tranhba.com  l�y ���c tr��c m�t nh� ch�i t�ng c�ng l�m bao nhi�u l�n nhi�m v� 

-- script viet hoa By http://tranhba.com  n�u nh� kh�ng ph�i t� ch� m�t b�n ti�n v�o tr�ng th�i , l� kh�ng th� ti�n h�nh tr� xu�ng ��ch h�y b� qu� tr�nh 
if nt_getTask(1045)~=1 then 
return 
end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng t�n t�i c� h�y b� c� h�i h�nh ��ng 
if _CancelTaskDebug()~=1 then 
Say("D� t�u # �/d� �� ng��i tu�i tr� , gi�ng nh� ng��i �� kh�ng c� h�y b� c� h�i nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  ki�m tr�c c� hay kh�ng v��t qua m�i ng�y h�n ch� 
if checkTask_Limit()~=1 then return end; 

if (nType==2) then 
if (myMapNum>=100) then 
myMapNum = myMapNum - 100; 
nt_setTask(1027, myMapNum); 
			myTaskCancel = myTaskCancel + 1;
Msg2Player("Ng�i s� d�ng 100 t� n�i s�ng x� t�c �� m�nh v�n t�i l�y ti�u m�t l�n nhi�m v� #"); 
Msg2Player("Ng�i b�y gi� n�i s�ng x� t�c �� m�nh v�n c�n l�i "..myMapNum.." t� #"); 
else 
Say("D� t�u # ng��i �� ng��i �� ng��i th�t mang c� <color=yellow>100<color> t� n�i s�ng x� t�c �� m�nh v�n t�i sao ? ta kh�ng c� nh�n hoa m�t �i ? ",0); 
return 
end; 
end; 

if (myTaskTimes == 0) and (myTaskLinks == tl_getfirstlink()) then 

if (myTaskCancel == 0) then 

			myCanceled = myCanceled + 1
nt_setTask(1036,myCanceled) 

if ( myCanceled > 2) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i li�n t�c � s� k� h�y b� ba l�n nhi�m v� , l� l�m x� ph�t 
myCanceled = 10 
nt_setTask(1036,myCanceled) 
nt_setTask(1029,GetGameTime()) 
Task_Punish() 

return 

end 

end 

-- script viet hoa By http://tranhba.com  l�n n�a ng�u nhi�n ph�i ph�t nhi�m v� m�i 
		SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- script viet hoa By http://tranhba.com  ���ӵ����ȡ������
storm_ask2start(4) -- script viet hoa By http://tranhba.com Storm b�t ��u khi�u chi�n 

return 

end 

if (myTaskCancel >= 1) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i c�n c� c� h�i h�y b� l�i c�a l� ti�p t�c ng�u nhi�n tr��c m�t c�p b�c ��ch nhi�m v� 

-- script viet hoa By http://tranhba.com  vi�t v�o h�y b� nhi�m v� l�c ��ch LOG 
_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel); 

myTaskCancel = myTaskCancel - 1 

tl_settaskstate(4,myTaskCancel) 

nt_setTask(DEBUG_TASKVALUE, myTaskCancel); 

else 
-- script viet hoa By http://tranhba.com  vi�t v�o h�y b� nhi�m v� l�c ��ch LOG 
_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel); 

tl_settaskstate(1,0) -- script viet hoa By http://tranhba.com  �ang ti�n h�nh l�n ��u ti�n nhi�m v� 
tl_settaskstate(2,tl_getfirstlink()) -- script viet hoa By http://tranhba.com  �ang ti�n h�nh th� nh�t li�n nhi�m v� 
tl_settaskstate(3,0) -- script viet hoa By http://tranhba.com  t� th� 0 ho�n b�t ��u 

tl_settaskstate(4,0) -- script viet hoa By http://tranhba.com  c�n th�a l�i 0 l�n h�y b� nhi�m v� c� h�i 
nt_setTask(DEBUG_TASKVALUE, 0); 

tl_settaskstate(6,0) -- script viet hoa By http://tranhba.com  tr��c m�t ��ch li�n ti�n h�nh 0 l�n 
nt_setTask(1036,0) -- script viet hoa By http://tranhba.com  tr�ng ph�t s� l�n t�ch l�y bi�n th�nh 0 
-- script viet hoa By http://tranhba.com  � ch� n�y ghi ch�p m�t c�i nhi�m v� t�ng s� 
nt_setTask(1044, tl_counttasklinknum(1)); 

-- script viet hoa By http://tranhba.com  Msg2Player("<color=yellow>Chu# nhi# v?D?T# # x# b?ho y�u to y�u , b# gi?s?ph ti�n l# l t�c t?nhi# v?#u ti y�t <color>!"); 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� h�y b� nhi�m v� d�u hi�u v� kh�ng th� h�y b� 
nt_setTask(1045, 2); 

-- script viet hoa By http://tranhba.com  l�n n�a ng�u nhi�n ph�i ph�t nhi�m v� m�i 
	SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- script viet hoa By http://tranhba.com  ���ӵ����ȡ������
storm_ask2start(4) -- script viet hoa By http://tranhba.com Storm b�t ��u khi�u chi�n 
end; 


-- script viet hoa By http://tranhba.com  nghe d� t�u gi�i th�ch to�n b� nhi�m v� li�n ��ch qu� tr�nh c�ng ph��ng ph�p 
function Task_Info() 
Talk(4, 
"tasklink_entence", 
" d� t�u # ta ��y l�n an b�i kh�o nghi�m chia l�m c�c lo�i b�t ��ng lo�i h�nh ti�u nhi�m v� t�i ki�m nghi�m c�c v� v� l�m nh�n s� ��ch v� thu�t c�ng n�i l�c . ", 
" d� t�u # m�i ho�n th�nh m�t l�n nhi�m v� ��u c� <color=red> t��ng �ng t��ng th��ng <color> ch� c�c v� , v� ph�n c� th� li�n t�c ��t th�nh <color=red> t�m ng�n l�n <color> nhi�m v� ng��i l� s� c� <color=red> ��ng gi� vui m�ng th� lao <color> ch� ng��i #", 
" d� t�u # m� n�u nh� ng��i � ��y trong �� b� qua m�t c�i nhi�m v� l�i c�a , l� �em t� nhi�m v� th� nh�t b�t ��u coi l� kh�i . b�t qu� , ta c� l�c h�u c�n l� s� cho d� ng��i h�y b� nhi�m v� c� h�i , kia ph�i xem ng��i m�nh t�i sao n�m ch�c . ", 
" d� t�u # nh� th� n�o ? ng��i tu�i tr� , c� h�ng th� hay kh�ng t�i ��n b� ta c�i n�y kh�o nghi�m nha ? " 
); 
end 


-- script viet hoa By http://tranhba.com  c� tuy�t d� t�u ��ch kh�o nghi�m �� ngh� 
function Task_Exit() 

if (GetSex() == 0) then 
Say("D� t�u # ha ha ha �� ch� c�ng t� bi�t th�ng qua kh�o nghi�m c�a ta c� nhi�u phong ph� t��ng th��ng sau li�n t� nhi�n s� tr� v� n�a t�m ta li�u . ",0); 
else 
Say("D� t�u # ha ha ha �� ch� v� n�y n� hi�p bi�t th�ng qua kh�o nghi�m c�a ta c� nhi�u phong ph� t��ng th��ng sau li�n t� nhi�n s� tr� v� n�a t�m ta li�u . ",0); 
end 
end 


-- script viet hoa By http://tranhba.com  �ang l�m nhi�m v� trong qu� tr�nh th�i lui ra d� t�u ��ch ��i tho�i , kh�ng l�m b�t k� x� l� 
function Task_Wait() 

end 


function Task_Punish() 
Say("D� t�u # v� n�y "..GetPlayerSex().." c� ph�i hay kh�ng c�ng qu� g�p g�p li�u ch�t , ta an b�i kh�o nghi�m th�t kh� kh�n nh� th� sao ? ng��i c�n l� tr� ch�t tr� l�i �i #",0); 
return 0 
end 




-- script viet hoa By http://tranhba.com  ////////////////////////////////////////////////////////////// 
-- script viet hoa By http://tranhba.com  // ph�t d� t��ng th��ng ��ch x� l� // 
-- script viet hoa By http://tranhba.com ////////////////////////////////////////////////////////////// 

function Task_GiveAward() 

local i 

local myAward 
local myLinkAward,myLoopAward 

local myGoodsText = "" 
local ShowText = {"","",""} 

local nTotalTaskNum = tl_counttasklinknum(1); -- script viet hoa By http://tranhba.com  l�y ���c tr��c m�t nh� ch�i t�ng c�ng l�m bao nhi�u l�n nhi�m v� 
-- script viet hoa By http://tranhba.com  if (nTotalTaskNum ~= 0 and mod(nTotalTaskNum, 10) == 0 and GetTask(TKS_TASKLINK_SPITEM) ~= nTotalTaskNum) then 
-- script viet hoa By http://tranhba.com  SetTask(TKS_TASKLINK_SPITEM, nTotalTaskNum); 
-- script viet hoa By http://tranhba.com  local tbItem = {tbProp = {6, 1, 2374, 1, 0, 0}} 
-- script viet hoa By http://tranhba.com  tbAwardTemplet:GiveAwardByList(tbItem, "seasonnpc_10task") 
-- script viet hoa By http://tranhba.com  Msg2Player(format("Ch b� m v� g #i hi# # ho y�u th y�u h li y�t ti# %d nhi# v?D?T#, nh nh� ## ph# th#ng %s!", 10, "B# r#ng th# b?c# D?T#")); 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com tl_print ("Cho li�n t��ng th��ng c�ng ho�n t��ng th��ng ph�t t��ng xong ###"); 
local nTongValue; 
myAward, nTongValue = tl_giveplayeraward(1); 
if (not nTongValue) then 
nTongValue = 0; 
end 
local nBeishu = greatnight_huang_event(4); 
if (nBeishu > 0) then 
nTongValue = floor(nTongValue / nBeishu); 
end; 

for i=1,3 do 
-- script viet hoa By http://tranhba.com  tl_print (" l�y ���c kim ti�n t��ng th��ng #"); 
if (myAward[i][1] == 1) then 
ShowText[i] = " l�y ���c "..myAward[i][9].."/3".."/"..myAward[i][2].."/SelectAward_Money" 
elseif (myAward[i][1] == 2) then 
ShowText[i] = " l�y ���c "..myAward[i][9].."/4".."/"..myAward[i][2].."/SelectAward_Exp" 
elseif (myAward[i][1] == 3) then 
myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8] 
ShowText[i] = " l�y ���c "..myAward[i][9].."/5".."/"..myGoodsText.."/mySG" 
elseif (myAward[i][1] == 4) then 
if (myAward[i][10]==1) then 
myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8] 
ShowText[i] = myAward[i][9].."/6".."/"..myGoodsText.."/mySG" 
elseif (myAward[i][10]==2) then 
ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Exp" 
elseif (myAward[i][10]==3) then 
ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Money" 
end 

elseif (myAward[i][1] == 5) then 
ShowText[i] = " l�y ���c "..myAward[i][9].."/7".."/"..myAward[i][1].."/SelectAward_Cancel" 
end 

end 

tl_print(ShowText[1]) 
tl_print(ShowText[2]) 
tl_print(ShowText[3]) 

Prise("D� t�u # c�c kh� , xin/m�i v� n�y "..GetPlayerSex().." xem m�t ch�t b�n n�o �� l� ng��i r�t mu�n ��ch ��y ? ",ShowText[1],ShowText[2],ShowText[3] ); 

-- script viet hoa By http://tranhba.com tl_print ("Ph�t t��ng xong #####"); 

end 



-- script viet hoa By http://tranhba.com  � �� x�c nh�n nhi�m v� ho�n th�nh nh�ng l� c�n ch�a ph�t t��ng l�c ��ch thay ��i l��ng x� l� , �� ng�a nh� ch�i c� t��ng 
function Task_AwardRecord() 
-- script viet hoa By http://tranhba.com Storm th�m t�ch ph�n 
local filename = tl_gettasktextID(tl_getplayertasktype()) 
local tabcol = tl_gettasktablecol() 
local myTaskValue1 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue1")) 
local myTaskValue2 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue2")) 
	local myMainValue = myTaskValue1 + myTaskValue2
storm_addpoint(4, myMainValue) 

tl_settaskcourse(2) -- script viet hoa By http://tranhba.com  nhi�m v� ti�n tri�n tr�nh �� v� 2 , t�c l� c�n kh�ng c� ph�t t��ng 
	nt_setTask(1037, GetGameTime() + tonumber(GetLocalDate("%H%M%S")));
end 



-- script viet hoa By http://tranhba.com  l�a ch�n v�t ph�m ��ch t��ng th��ng 
-- script viet hoa By http://tranhba.com  PS# b�i v� c�n nh�c ��n nhi�m v� m�t b�n ��ch truy�n v�o t� ph� kh�ng th� v��t qua 32 c� , cho n�n qu� tr�nh n�y gi�n vi�t th�nh mySG 
function mySG(myQuality,myGenre,myDetail,myParticular,myLevel,myFive) 

-- script viet hoa By http://tranhba.com  ph�ng ng�a nhi�u m�t b�n b�n ra t�i c� t��ng th��ng ��ch x� l� 
if (tl_gettaskcourse() == 3) then 
Say("D� t�u # ng��i �� d�n qu� ph�n th��ng nga , th� n�o c�n mu�n n�a d�n ��y ? ",0); 
return 
end 
-- script viet hoa By http://tranhba.com 2007-09-19 gia t�ng v�t ph�m t��ng th��ng l�c ��ch t�i �eo l�ng kh�ng gian ph�n �o�n 
if (CalcFreeItemCellCount() < 5) then 
Say("D� t�u # xin/m�i d�n d�p b�c qu�n �o c�ch t� kh�ng thua k�m 5 c� , sau �� s� t�i nh�n l�y t��ng th��ng #",0); 
return 
end; 

-- script viet hoa By http://tranhba.com  tl_print(" l�y ���c t��ng th��ng v�t ph�m bi�n s� #"..myQuality..myGenre..myDetail..myParticular..myLevel..myGoodsFive); 
if (myQuality == 0) then 
AddItem(myGenre,myDetail,myParticular,myLevel,myFive,0,0) 

if (myDetail==238) or (myDetail==239) or (myDetail==240) or (myDetail==252) then 
WriteLog("[ nhi�m v� li�n t��ng th��ng ghi ch�p ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." � nhi�m v� li�n t��ng th��ng trung l�y ���c b�o th�ch m�t , b�o th�ch lo�i h�nh bi�n s� v� #"..myDetail) 
end 

else 
AddGoldItem(0,myGenre) 
AddGlobalNews("Th�ng b�o # nh� ch�i "..GetName().." b�i v� ho�n th�nh nhi�m v� � d� t�u ch� l�y ���c ho�ng kim trang b� m�t m�n ###"); 
WriteLog("[ nhi�m v� li�n t��ng th��ng ghi ch�p ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." � nhi�m v� li�n t��ng th��ng trung l�y ���c ho�ng kim trang b� m�t m�n , ho�ng kim trang b� bi�n s� v� #"..myGenre) 
end 
Msg2Player("Ng�i l�y ���c m�t c�i nhi�m v� v�t ph�m t��ng th��ng #"); 

tl_settaskcourse(3) 
PayPlayerLinkAward(); 

local nBeishu = greatnight_huang_event(4); 
local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP); 
if (nBeishu > 0) then 
nTongValueGift = floor(nTongValueGift / nBeishu); 
end; 
tongaward_tasklink(nTongValueGift); -- script viet hoa By http://tranhba.com  c�ng th�m m�n ph�i t��ng th��ng 
Task_NewVersionAward() 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n kim ti�n ��ch t��ng th��ng 
function SelectAward_Money(nAward) 

-- script viet hoa By http://tranhba.com  ph�ng ng�a nhi�u m�t b�n b�n ra t�i c� t��ng th��ng ��ch x� l� 
if (tl_gettaskcourse() == 3) then 
Say("D� t�u # ng��i �� d�n qu� ph�n th��ng nga , th� n�o c�n mu�n n�a d�n ��y ? ",0); 
return 
end 

Earn(nAward) 
Msg2Player("Ng�i l�y ���c <color=green>"..nAward.."<color> l��ng b�c "); 

tl_settaskcourse(3) 
PayPlayerLinkAward(); 

-- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng ��ch kim ti�n s� l��ng l�n h�n 30W , l� nh� LOG 
if nAward>=300000 then 
WriteLog("[ nhi�m v� li�n kim ti�n ghi ch�p ]".. 
date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").. 
"[ tr��ng m�c ]"..GetAccount().. 
"[ vai tr� ]"..GetName().. 
" � nhi�m v� li�n trung thu ���c <money>"..nAward.."</money> l��ng b�c ��ch t��ng th��ng #"); 
end; 
local nBeishu = greatnight_huang_event(4); 
local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP); 
if (nBeishu > 0) then 
nTongValueGift = floor(nTongValueGift / nBeishu); 
end; 
tongaward_tasklink(nTongValueGift); -- script viet hoa By http://tranhba.com  c�ng th�m m�n ph�i t��ng th��ng 
Task_NewVersionAward() 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n kinh nghi�m tr� gi� ��ch t��ng th��ng 
function SelectAward_Exp(nAward) 

-- script viet hoa By http://tranhba.com  ph�ng ng�a nhi�u m�t b�n b�n ra t�i c� t��ng th��ng ��ch x� l� 
if (tl_gettaskcourse() == 3) then 
Say("D� t�u # ng��i �� d�n qu� ph�n th��ng nga , th� n�o c�n mu�n n�a d�n ��y ? ",0); 
return 
end 

tl_addPlayerExp(nAward) 
Msg2Player("Ng�i l�y ���c <color=green>"..nAward.."<color> ch�t kinh nghi�m tr� gi� "); 

tl_settaskcourse(3) 
PayPlayerLinkAward(); 
local nBeishu = greatnight_huang_event(4); 
local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP); 
if (nBeishu > 0) then 
nTongValueGift = floor(nTongValueGift / nBeishu); 
end; 
tongaward_tasklink(nTongValueGift); -- script viet hoa By http://tranhba.com  c�ng th�m m�n ph�i t��ng th��ng 
Task_NewVersionAward() 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n n�a ng�u nhi�n m�t l�n t��ng th��ng 
function SelectAward_Change(nAward) 

-- script viet hoa By http://tranhba.com  ph�ng ng�a nhi�u m�t b�n b�n ra t�i c� t��ng th��ng ��ch x� l� 
if (tl_gettaskcourse() == 3) then 
Say("D� t�u # ng��i �� d�n qu� ph�n th��ng nga , th� n�o c�n mu�n n�a d�n ��y ? ",0); 
return 
end 

Msg2Player("Ng�i l�y ���c ng�u nhi�n n�a l�a ch�n m�t l�n t��ng th��ng ��ch c� h�i #"); 

tl_settaskcourse(3) 
PayPlayerLinkAward(); 

end 

-- script viet hoa By http://tranhba.com  l�a ch�n h�y b� ��ch c� h�i 
function SelectAward_Cancel(nAward) 

local myCancel = 0; 
local myNewCancel = GetTask(DEBUG_TASKVALUE); 

-- script viet hoa By http://tranhba.com  ph�ng ng�a nhi�u m�t b�n b�n ra t�i c� t��ng th��ng ��ch x� l� 
if (tl_gettaskcourse() == 3) then 
Say("D� t�u # ng��i �� d�n qu� ph�n th��ng nga , th� n�o c�n mu�n n�a d�n ��y ? ",0); 
return 
end 



myCancel = tl_gettaskstate(4) 
	myCancel = myCancel + 1

if myNewCancel==0 then 
myNewCancel = myCancel; 
else 
		myNewCancel = myNewCancel + 1;		
end; 

if myNewCancel<=254 then 
-- script viet hoa By http://tranhba.com  n�a t�n m�t l�n kh�c ��ch thay ��i l��ng 
nt_setTask(DEBUG_TASKVALUE, myNewCancel); 
end; 

tl_settaskstate(4, myCancel); 

if myCancel<=254 then 
Msg2Player("Ng�i l�y ���c <color=green> m�t l�n h�y b� nhi�m v� c� h�i <color>!"); 
end; 

WriteLog("[ nhi�m v� li�n t��ng th��ng ghi ch�p ]".. 
date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n %S gi�y ]").. 
"[ tr��ng m�c ]"..GetAccount().. 
"[ vai tr� ]"..GetName().. 
" � nhi�m v� li�n trung thu ���c h�y b� c� h�i t��ng th��ng , tr��c m�t ��ch h�y b� c� h�i v� <"..myCancel.."> l�n . "); 

tl_settaskcourse(3) 
PayPlayerLinkAward(); 

local nBeishu = greatnight_huang_event(4); 
local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP); 
if (nBeishu > 0) then 
nTongValueGift = floor(nTongValueGift / nBeishu); 
end; 
tongaward_tasklink(nTongValueGift); -- script viet hoa By http://tranhba.com  c�ng th�m m�n ph�i t��ng th��ng 
Task_NewVersionAward() 
end 


-- script viet hoa By http://tranhba.com  ph�t cho nh� ch�i li�n t��ng th��ng # ho�n t��ng th��ng ho�c l� ho�ng kim trang b� 
function PayPlayerLinkAward() 

local myGolden = {2,6,11,16,21,22,26,31,39,40,42,46,51,54,56,60,61,67,71,76,81,87,92,94,96,101,106,107,115,119,121,122,126,132,136,144,145,146} -- script viet hoa By http://tranhba.com  20 ho�n t��ng th��ng ho�ng kim trang b� ��ch bi�n s� 
local nGoldenID = 0 

local myTaskTimes = tl_gettaskstate(1) 
local myTaskLinks = tl_gettaskstate(2) 
local myTaskLoops = tl_gettaskstate(3) 

local nTotalTask = tl_counttasklinknum(1); 

-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� ho�n th�nh s� l�n ��ng h�ng 
Ladder_NewLadder(10118, GetName(), nTotalTask, 1); 

-- script viet hoa By http://tranhba.com  � ch� n�y ph�t d� c� ��nh nhi�m v� s� l�n ��ch t��ng th��ng 
tl_getlinkaward(Task_AwardLink, nTotalTask); 

-- script viet hoa By http://tranhba.com  Vi�t Nam b�n ho�n th�nh 8000 l�n nhi�m v� kh�ng l�m b�t k� x� l� 
if (nTotalTask == 8000) then 

-- script viet hoa By http://tranhba.com  nGoldenID = myGolden[random(getn(myGolden))] 

-- script viet hoa By http://tranhba.com  m�n 8000 l�n nhi�m v� t��ng th��ng 1E kim ti�n 
Earn(100000000); 

-- script viet hoa By http://tranhba.com  AddGoldItem( 0, nGoldenID ) 

WriteLog("[ nhi�m v� li�n t��ng th��ng ghi ch�p ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." � nhi�m v� li�n t��ng th��ng trung b�i v� ho�n th�nh 8000 l�n nhi�m v� l�y ���c ho�ng kim trang b� m�t m�n , ho�ng kim trang b� bi�n s� v� #"..nGoldenID) 

AddGlobalCountNews("Th�ng b�o # nh� ch�i "..GetName().." b�i v� ho�n th�nh 8000 l�n nhi�m v� � d� t�u ch� l�y ���c m�n ph�i ��i ho�ng kim trang b� m�t m�n c�ng ki�m hi�p ti�n m�t �c hai ###", 3); 

for i=1,3 do 
Msg2Player("Ch�c m�ng ng��i ## b�i v� ng��i li�n t�c ho�n th�nh 8000 l�n nhi�m v� cho n�n l�y ���c m�t c�c ph�m t��ng th��ng c�ng m�t �c hai ki�m hi�p ti�n ###"); 
end 

return 

end 

storm_ask2start(4, 1) -- script viet hoa By http://tranhba.com Storm b�t ��u khi�u chi�n 

end 


-- script viet hoa By http://tranhba.com ///// nhi�m v� li�n ��ch kh�ng c�ch n�o ti�n h�nh �i xu�ng ��ch BUG ��ch tu b� ///// 

function _TaskLinkDebug() 

if (nt_getTask(1030)==0) and (tl_gettaskcourse()==1) then 
nt_setTask(1030,2); 
tl_savetalkvalue(1,2); 
tl_savetalkvalue(2,2); 
tl_savetalkvalue(3,2); 
tl_savetalkvalue(4,2); 
tl_savetalkvalue(5,2); 
tl_savetalkvalue(6,2); 
end 

end 


-- script viet hoa By http://tranhba.com  //////////////////////////////////////////////// 
-- script viet hoa By http://tranhba.com  ///// ph�n �o�n nh� ch�i c� hay kh�ng c� h�y b� c� h�i qu� tr�nh ///////////// 
-- script viet hoa By http://tranhba.com //////////////////////////////////////////////// 

function _CancelTaskDebug() 

local nOrgTask = GetTask(DEBUG_TASKVALUE); 
local nDecTask = tl_gettaskstate(4); 
local nDiff = 0; 

if nOrgTask==nDecTask or nOrgTask==0 then 
return 1; 
else 
WriteLog("[ nhi�m v� li�n b� l�i ghi ch�p ]".. 
date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n %S gi�y ]").. 
"[ tr��ng m�c ]"..GetAccount().. 
"[ vai tr� ]"..GetName().. 
" nhi�m v� h�y b� c� h�i kh�ng ��u ch� , tr��c m�t h�y b� c� h�i v� <"..nDecTask.."> , b� ph�n ��ch h�y b� c� h�i v� <"..nOrgTask.."> . "); 
return 0; 
end; 

end; 

-- script viet hoa By http://tranhba.com  ///// th�u xu�t nhi�m v� h�y b� l�c ��ch LOG ////////////////////// 
-- script viet hoa By http://tranhba.com  ///// truy�n v�o ��ch tham s� v� nhi�m v� s� l�n c�ng h�y b� nhi�m v� c� h�i ///// 
-- script viet hoa By http://tranhba.com //////////////////////////////////////////////// 

function _WriteCancelLog(nType, nTime, nCancel) 

if nType==1 then 
WriteLog("[ nhi�m v� li�n h�y b� ghi ch�p ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." � nhi�m v� s� l�n v� "..nTime.." h�y b� c� h�i c�n th�a l�i "..nCancel.." l�c h�y b� m�t l�n nhi�m v� . "); 
else 
WriteLog("[ nhi�m v� li�n h�y b� ghi ch�p ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." � nhi�m v� s� l�n v� "..nTime.." l�c d�ng 100 t� x� t�c �� h�y b� m�t l�n nhi�m v� . "); 
end; 

end; 
