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
Say("V� khen ng�i � chi�n tr��ng ��ch c�ng lao , n�u nh� v�n chu bi�u hi�n h�o , �em c� tr�ng th��ng ", 4,"Hi�u r� quy t�c chi ti�t /getrule","Nh�n chi�n tr��ng ��ng h�ng th�ng k� /getranklist","Nh�n tr��c m�t ��ch chi�n tr��ng ��ng h�ng /getcurranklist","Ta mu�n d�n t��ng /guanghuan_sure","Ch�ng qua l� t�i ch�i m� th�i ./no") 
end 

function getrule() 
Say("Trong v�ng m�t tu�n l� ��t ���c tr��c m��i t�n ��ch �em ��t ���c 1 ��n 10 �i�m , � trong v�ng m�t tu�n l� n�u nh� ��t t�i �i�m ��m cao nh�t �em ��t ���c tri�u ��nh s�c phong ��ch v� song m�nh t��ng c�ng tr�ng th��ng ","Ta mu�n hi�u r� nh�ng chuy�n kh�c /wushuangmengjiang","K�t th�c ��i tho�i /no"); 
end 

function getranklist() 
local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"} 
local szranklist = "" 
for i = 1, 10 do 
local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10251, i); 
if szname ~= nil and nrank ~= 0 then 
szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank); 
else 
szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh t�n g", 0); 
end 
end 
local tbOpt = {} 
tinsert(tbOpt, {"Ta mu�n hi�u r� nh�ng chuy�n kh�c ", wushuangmengjiang}) 
tinsert(tbOpt, {"K�t th�c ��i tho�i "}) 
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
Talk(1, "","��i hi�p kh�ng ph�i l� �� d�n t��ng li�u sao ?") 
end 
return 
end 
end 
Say("Ch� c� � v�n chu b�n trong ��t t�i �i�m cao nh�t ��ch m�nh t��ng m�i c� th� ��t ���c t��ng th��ng ! mu�n l�y ���c t��ng th��ng s� ph�i c� g�ng gi�t ��ch ", 2,"Ta mu�n hi�u r� nh�ng chuy�n kh�c /wushuangmengjiang","K�t th�c ��i tho�i /no") 
end 

function get_wushuangguanghuan(nCutDownTime) 
do 
return 
end 
AddSkillState(966, 1,2, nCutDownTime, 1) 
AddSkillState(979, 1,2, nCutDownTime, 1) 
end 

-- script viet hoa By http://tranhba.com Change Song Jin Box bind state - Modified By DinhHQ - 20120319 
local tbProduct = {szName=" t�ng kim b� b�o ",tbProp={6, 1, 2741, 1, 0, 0},nBindState=-2} 

function tetan2mibao() 
local G = 6 
local D = 1 
local P = 2740 -- script viet hoa By http://tranhba.com  ��c d� b�o r��ng ��ch p 
if GetTask(751) < 2000 then 
Say("# ng�i ��ch t�ch ph�n kh�ng �� #.", 1,"T�t /no") 
return 
end 
-- script viet hoa By http://tranhba.com  ph�n ��nh c� hay kh�ng t�n t�i ��c d� b�o r��ng 
local nCount = CalcItemCount(3, G, D, P, -1) 

if nCount == 0 then 
Say("Kh�ng c� ��c d� b�o r��ng kh�ng th� ��i .", 1,"T�t /no") 
return 
end 
-- script viet hoa By http://tranhba.com  gi�m �i b�o r��ng 
ConsumeItem(3, 1, G, D, P, -1) -- script viet hoa By http://tranhba.com  ��c d� b�o r��ng ��ch p 
tbAwardTemplet:GiveAwardByList(%tbProduct, "tetanbaoxiang2songjingmibao", 1) 
end 

function jifen2mibao() 
local nEnergyMark = 100 
local nJifenMark = 500 
local nEnergy = GetEnergy() 
if nEnergy < nEnergyMark then 
Say("Ng�i ��ch tinh luy�n th�ch kh�ng �� , l�n sau tr� l�i �i ", 1,"T�t /no") 
return 
end 

local nJifen = nt_getTask(747) 
if nJifen < nJifenMark then 
Say("# ng�i ��ch t�ch ph�n kh�ng �� #.", 1,"T�t /no") 
return 
end 

ReduceEnergy(nEnergyMark) -- script viet hoa By http://tranhba.com  c�p tinh luy�n th�ch 
nt_setTask(747, floor(nt_getTask(747) - nJifenMark)) -- script viet hoa By http://tranhba.com  c�p t�ch ph�n 
tbAwardTemplet:GiveAwardByList(%tbProduct, "jifenjingli2songjingmibao", 1) 
Jilu_jinglixiaohao(nEnergyMark) -- script viet hoa By http://tranhba.com  s� li�u ch�n �i�m th� nh�t k� 
end 

nWidth = 1 
nHeight = 1 
nFreeItemCellLimit = 0.02 

function duihuangmibao() 
local szMsg = format(" l�a ch�n ��i l�y h�nh th�c :") 
local tbOpt = {} 

if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then 
Say(format("V� b�o v� ng�i ��ch v�t ph�m an to�n , xin/m�i b�o ��m trang b� c�n l�i 1 %dx%d", nWidth, nHeight)) 
return 
end 

tinsert(tbOpt, {"��c d� b�o r��ng ", tetan2mibao}) 
tinsert(tbOpt, {"# t�ch ph�n c�ng tinh luy�n th�ch ", jifen2mibao}) 
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
szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank); 
else 
szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i],"Kh�ng ", 0); 
end 
end 
local tbOpt = {} 
tinsert(tbOpt, {"Ta mu�n hi�u r� nh�ng kh�c ", wushuangmengjiang}) 
tinsert(tbOpt, {"K�t th�c ��i tho�i "}) 
CreateNewSayEx(szranklist, tbOpt) 
end 

function get_TTTCAward(nRank) 
local tbExp = 
{ 
{nExp =400e6}, 
{nExp =300e6}, 
{nExp =200e6} 
}; 
local szLog = format("T�ng kim thi�n t� tham chi�n t��ng th��ng %d", nRank) 
tbAwardTemplet:GiveAwardByList(tbExp[nRank], szLog) 
end 
